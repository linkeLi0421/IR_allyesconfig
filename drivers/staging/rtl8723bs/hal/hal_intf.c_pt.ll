; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/hal_intf.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/hal_intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.c2h_evt_hdr_88xx = type { i8, i8, [12 x i8], i8, i8 }
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.dm_odm_t = type { ptr, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i8, i32, i8, i64, i64, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, %struct.odm_noise_monitor, [32 x ptr], i8, %struct.odm_phy_dbg_info, ptr, %struct.fat_t, %struct.dig_t, %struct.ps_t, %struct.dynamic_primary_CCA, %struct.rxhp_t, %struct.ra_t, %struct.false_ALARM_STATISTICS, %struct.false_ALARM_STATISTICS, %struct.swat_t, i8, %struct.cfo_tracking, %struct.edca_t, i32, %struct.pathdiv_t, ptr, ptr, ptr, i8, %struct.timer_list, i8, i8, i8, i8, %struct.timer_list, i8, %struct.odm_rate_adaptive, %struct.ant_detected_info, %struct.odm_rf_cal_t, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.timer_list, %struct.timer_list, %struct.timer_list }
%struct.odm_noise_monitor = type { [4 x i8], i16 }
%struct.odm_phy_dbg_info = type { [4 x i8], i32, i32, i32, i8, [4 x i32] }
%struct.fat_t = type { [6 x i8], i8, i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dig_t = type { i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, ptr }
%struct.ps_t = type { i8, i8, i8, i8, i32, i8, i32, i32, i32, i32 }
%struct.dynamic_primary_CCA = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.rxhp_t = type { i8, i8, [80 x i8], i8, i8, i8, i8, i8, i8, i8, %struct.timer_list }
%struct.ra_t = type { i8 }
%struct.false_ALARM_STATISTICS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swat_t = type { i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.timer_list, %struct.timer_list, i32, i8 }
%struct.cfo_tracking = type { i8, i8, i8, i8, i8, [2 x i32], i32, i32, i32, i8, i8 }
%struct.edca_t = type { i8, i8, i32 }
%struct.pathdiv_t = type { i8, [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.odm_rate_adaptive = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ant_detected_info = type { i8, i32, i32, i32 }
%struct.odm_rf_cal_t = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [8 x i8], i8, [14 x %struct.iqk_matrix_regs_setting], i8, i8, i8, i8, i8, [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [3 x [2 x i32]]], [2 x [2 x [2 x i32]]], [2 x [2 x i32]], i8, i8, i8, i8, i8, i8, [2 x i32] }
%struct.iqk_matrix_regs_setting = type { i8, [3 x [8 x i32]], [3 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_chip_configure(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_chip_configure = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 16
  %0 = ptrtoint ptr %intf_chip_configure to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_chip_configure, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_read_chip_info(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_adapter_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 17
  %0 = ptrtoint ptr %read_adapter_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_adapter_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_read_chip_version(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_chip_version = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 14
  %0 = ptrtoint ptr %read_chip_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_chip_version, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_def_value_init(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_default_value = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 15
  %0 = ptrtoint ptr %init_default_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_default_value, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_free_data(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtw_hal_data_deinit(ptr noundef %padapter) #5
  %free_hal_data = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 4
  %0 = ptrtoint ptr %free_hal_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_hal_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_data_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_dm_init(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_init = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %dm_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_init, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_dm_deinit(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_deinit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 13
  %0 = ptrtoint ptr %dm_deinit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_deinit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_init(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %hal_init = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %hal_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_init, align 8
  %call = tail call i32 %3(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.if.end10.i_crit_edge

if.then.if.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then
  %and1.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.else4.i:                                       ; preds = %if.else.i
  %and5.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else4.i.rtw_hal_init_opmode.exit_crit_edge, label %if.else4.i.if.end10.i_crit_edge

if.else4.i.if.end10.i_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.else4.i.rtw_hal_init_opmode.exit_crit_edge:    ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_hal_init_opmode.exit

if.end10.i:                                       ; preds = %if.else4.i.if.end10.i_crit_edge, %if.else.i.if.end10.i_crit_edge, %if.then.if.end10.i_crit_edge
  %networkType.0.i = phi i32 [ 0, %if.then.if.end10.i_crit_edge ], [ 1, %if.else.i.if.end10.i_crit_edge ], [ 4, %if.else4.i.if.end10.i_crit_edge ]
  %call11.i = tail call zeroext i8 @rtw_setopmode_cmd(ptr noundef %padapter, i32 noundef %networkType.0.i, i1 noundef zeroext false) #5
  br label %rtw_hal_init_opmode.exit

rtw_hal_init_opmode.exit:                         ; preds = %if.end10.i, %if.else4.i.rtw_hal_init_opmode.exit_crit_edge
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %padapters, align 4
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hw_init_completed, align 1
  %notch_filter = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 61
  %9 = ptrtoint ptr %notch_filter to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %notch_filter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp2 = icmp eq i8 %10, 1
  br i1 %cmp2, label %if.then4, label %rtw_hal_init_opmode.exit.if.end_crit_edge

rtw_hal_init_opmode.exit.if.end_crit_edge:        ; preds = %rtw_hal_init_opmode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %rtw_hal_init_opmode.exit
  %hal_notch_filter.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 60
  %11 = ptrtoint ptr %hal_notch_filter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hal_notch_filter.i, align 8
  %tobool.not.i21 = icmp eq ptr %12, null
  br i1 %tobool.not.i21, label %if.then4.if.end_crit_edge, label %if.then.i

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %padapter, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then4.if.end_crit_edge, %rtw_hal_init_opmode.exit.if.end_crit_edge
  %hal_reset_security_engine.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 61
  %13 = ptrtoint ptr %hal_reset_security_engine.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hal_reset_security_engine.i, align 4
  %tobool.not.i22 = icmp eq ptr %14, null
  br i1 %tobool.not.i22, label %if.end.rtw_hal_reset_security_engine.exit_crit_edge, label %if.then.i23

if.end.rtw_hal_reset_security_engine.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_hal_reset_security_engine.exit

if.then.i23:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14(ptr noundef %padapter) #5
  br label %rtw_hal_reset_security_engine.exit

rtw_hal_reset_security_engine.exit:               ; preds = %if.then.i23, %if.end.rtw_hal_reset_security_engine.exit_crit_edge
  %15 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %padapters, align 4
  tail call void @rtw_sec_restore_wep_key(ptr noundef %16) #5
  %call6 = tail call i32 @init_hw_mlme_ext(ptr noundef %padapter) #5
  tail call void @rtw_bb_rf_gain_offset(ptr noundef %padapter) #5
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %padapters7 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %padapters7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %padapters7, align 4
  %hw_init_completed8 = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %hw_init_completed8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %hw_init_completed8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %rtw_hal_reset_security_engine.exit
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_notch_filter(ptr noundef %adapter, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_notch_filter = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20, i32 60
  %0 = ptrtoint ptr %hal_notch_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_notch_filter, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %adapter, i1 noundef zeroext %enable) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_reset_security_engine(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_reset_security_engine = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20, i32 61
  %0 = ptrtoint ptr %hal_reset_security_engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_reset_security_engine, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %adapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sec_restore_wep_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_hw_mlme_ext(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bb_rf_gain_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_deinit(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj1, align 4
  %hal_deinit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %hal_deinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hal_deinit, align 4
  %call = tail call i32 %3(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %padapters = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %padapters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padapters, align 4
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hw_init_completed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %0 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SetHwRegHandler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %GetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 31
  %0 = ptrtoint ptr %GetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %GetHwRegHandler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_set_hwreg_with_buf(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %pbuf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetHwRegHandlerWithBuf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 32
  %0 = ptrtoint ptr %SetHwRegHandlerWithBuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SetHwRegHandlerWithBuf, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %pbuf, i32 noundef %len) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_hal_set_def_var(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetHalDefVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 34
  %0 = ptrtoint ptr %SetHalDefVarHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SetHalDefVarHandler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i8 %1(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i8 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %GetHalDefVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 33
  %0 = ptrtoint ptr %GetHalDefVarHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %GetHalDefVarHandler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i8 %1(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i8 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_set_odm_var(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue1, i1 noundef zeroext %bSet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetHalODMVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 36
  %0 = ptrtoint ptr %SetHalODMVarHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SetHalODMVarHandler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue1, i1 noundef zeroext %bSet) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_get_odm_var(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue1, ptr noundef %pValue2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %GetHalODMVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 35
  %0 = ptrtoint ptr %GetHalODMVarHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %GetHalODMVarHandler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i32 noundef %eVariable, ptr noundef %pValue1, ptr noundef %pValue2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_enable_interrupt(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_interrupt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 18
  %0 = ptrtoint ptr %enable_interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_interrupt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_disable_interrupt(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_interrupt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 19
  %0 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disable_interrupt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_hal_check_ips_status(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %check_ips_status = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 20
  %0 = ptrtoint ptr %check_ips_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %check_ips_status, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i8 %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i8 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i8 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_xmitframe_enqueue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 45
  %0 = ptrtoint ptr %hal_xmitframe_enqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_xmitframe_enqueue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter, ptr noundef %pxmitframe) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_xmit(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_xmit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 43
  %0 = ptrtoint ptr %hal_xmit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_xmit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter, ptr noundef %pxmitframe) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_mgnt_xmit(ptr noundef %padapter, ptr noundef %pmgntframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @update_mgntframe_attrib_addr(ptr noundef %padapter, ptr noundef %pmgntframe) #5
  %binstallBIPkey = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 12, i32 28
  %0 = ptrtoint ptr %binstallBIPkey to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %binstallBIPkey, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 23
  %2 = ptrtoint ptr %ra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ra, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %bswenc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bswenc, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge
  %.sink = phi i8 [ 4, %if.else ], [ 8, %if.then.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %6, align 1
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 2
  %8 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pkt, align 4
  %call7 = tail call i32 @rtw_mgmt_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %9, ptr noundef %pmgntframe) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %mgnt_xmit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 44
  %10 = ptrtoint ptr %mgnt_xmit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgnt_xmit, align 8
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %if.then10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 %11(ptr noundef %padapter, ptr noundef %pmgntframe) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then10 ], [ 0, %if.end8.if.end14_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_mgmt_xmitframe_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_init_xmit_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_xmit_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 8
  %0 = ptrtoint ptr %init_xmit_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_xmit_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_free_xmit_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 9
  %0 = ptrtoint ptr %free_xmit_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_xmit_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_init_recv_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_recv_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 10
  %0 = ptrtoint ptr %init_recv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_recv_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_free_recv_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 11
  %0 = ptrtoint ptr %free_recv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_recv_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_update_ra_mask(ptr noundef %psta, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %padapter1 = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 3
  %0 = ptrtoint ptr %padapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padapter1, align 4
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @add_RATid(ptr noundef %1, ptr noundef nonnull %psta, i8 noundef zeroext %rssi_level) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %UpdateRAMaskHandler = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20, i32 37
  %5 = ptrtoint ptr %UpdateRAMaskHandler to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %UpdateRAMaskHandler, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 10
  %7 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_id, align 8
  tail call void %6(ptr noundef %1, i32 noundef %8, i8 noundef zeroext %rssi_level) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_RATid(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_add_ra_tid(ptr noundef %padapter, i32 noundef %bitmap, ptr noundef %arg, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Add_RateATid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 39
  %0 = ptrtoint ptr %Add_RateATid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Add_RateATid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i32 noundef %bitmap, ptr noundef %arg, i8 noundef zeroext %rssi_level) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_start_thread(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %run_thread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 40
  %0 = ptrtoint ptr %run_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %run_thread, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_stop_thread(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cancel_thread = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 41
  %0 = ptrtoint ptr %cancel_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cancel_thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_read_bbreg(ptr noundef %padapter, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_bbreg = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 46
  %0 = ptrtoint ptr %read_bbreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_bbreg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter, i32 noundef %RegAddr, i32 noundef %BitMask) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_write_bbreg(ptr noundef %padapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_bbreg = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 47
  %0 = ptrtoint ptr %write_bbreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_bbreg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_read_rfreg(ptr noundef %padapter, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_rfreg = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 48
  %0 = ptrtoint ptr %read_rfreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_rfreg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %eRFPath to i8
  %call = tail call i32 %1(ptr noundef %padapter, i8 noundef zeroext %conv, i32 noundef %RegAddr, i32 noundef %BitMask) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_write_rfreg(ptr noundef %padapter, i32 noundef %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_rfreg = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 49
  %0 = ptrtoint ptr %write_rfreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_rfreg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %eRFPath to i8
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %conv, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_set_chan(ptr noundef %padapter, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %set_channel_handler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 24
  %0 = ptrtoint ptr %set_channel_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_channel_handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %channel) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_set_chnl_bw(ptr noundef %padapter, i8 noundef zeroext %channel, i32 noundef %Bandwidth, i8 noundef zeroext %Offset40, i8 noundef zeroext %Offset80) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %set_chnl_bw_handler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 25
  %0 = ptrtoint ptr %set_chnl_bw_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_chnl_bw_handler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter, i8 noundef zeroext %channel, i32 noundef %Bandwidth, i8 noundef zeroext %Offset40, i8 noundef zeroext %Offset80) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_dm_watchdog(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_dm_watchdog = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 28
  %0 = ptrtoint ptr %hal_dm_watchdog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hal_dm_watchdog, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_dm_watchdog_in_lps(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 36
  %2 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %hal_dm_watchdog_in_lps = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 29
  %4 = ptrtoint ptr %hal_dm_watchdog_in_lps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hal_dm_watchdog_in_lps, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %padapter) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beacon_timing_control(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %SetBeaconRelatedRegistersHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 38
  %0 = ptrtoint ptr %SetBeaconRelatedRegistersHandler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SetBeaconRelatedRegistersHandler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_xmit_thread_handler(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xmit_thread_handler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 59
  %0 = ptrtoint ptr %xmit_thread_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xmit_thread_handler, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtw_hal_c2h_valid(ptr nocapture noundef readnone %adapter, ptr nocapture noundef readonly %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %plen = getelementptr inbounds %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %plen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2 = icmp ne i8 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool2, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_c2h_handler(ptr noundef %adapter, ptr noundef %c2h_evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %c2h_handler = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20, i32 62
  %0 = ptrtoint ptr %c2h_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c2h_handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %adapter, ptr noundef %c2h_evt) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rtw_hal_c2h_id_filter_ccx(ptr nocapture noundef readonly %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %c2h_id_filter_ccx = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 20, i32 63
  %0 = ptrtoint ptr %c2h_id_filter_ccx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c2h_id_filter_ccx, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_hal_is_disable_sw_channel_plan(ptr nocapture noundef readonly %padapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %bDisableSWChannelPlan = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bDisableSWChannelPlan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDisableSWChannelPlan, align 2
  %conv = zext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_macid_sleep(ptr noundef %padapter, i32 noundef %macid) local_unnamed_addr #0 align 64 {
entry:
  %macid.addr = alloca i32, align 4
  %support = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %macid.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %macid, ptr %macid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %support) #5
  %1 = ptrtoint ptr %support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %support, align 1
  %GetHalDefVarHandler.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 33
  %2 = ptrtoint ptr %GetHalDefVarHandler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %GetHalDefVarHandler.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %rtw_hal_get_def_var.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rtw_hal_get_def_var.exit:                         ; preds = %entry
  %call.i = call zeroext i8 %3(ptr noundef %padapter, i32 noundef 30, ptr noundef nonnull %support) #5
  %4 = ptrtoint ptr %support to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp = icmp eq i8 %.pr, 0
  br i1 %cmp, label %rtw_hal_get_def_var.exit.cleanup_crit_edge, label %if.end

rtw_hal_get_def_var.exit.cleanup_crit_edge:       ; preds = %rtw_hal_get_def_var.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rtw_hal_get_def_var.exit
  %SetHwRegHandler.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %5 = ptrtoint ptr %SetHwRegHandler.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %SetHwRegHandler.i, align 8
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %if.end.cleanup_crit_edge, label %if.then.i4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i4:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %6(ptr noundef %padapter, i8 noundef zeroext 90, ptr noundef nonnull %macid.addr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4, %if.end.cleanup_crit_edge, %rtw_hal_get_def_var.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtw_hal_get_def_var.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %support) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_macid_wakeup(ptr noundef %padapter, i32 noundef %macid) local_unnamed_addr #0 align 64 {
entry:
  %macid.addr = alloca i32, align 4
  %support = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %macid.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %macid, ptr %macid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %support) #5
  %1 = ptrtoint ptr %support to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %support, align 1
  %GetHalDefVarHandler.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 33
  %2 = ptrtoint ptr %GetHalDefVarHandler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %GetHalDefVarHandler.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %rtw_hal_get_def_var.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rtw_hal_get_def_var.exit:                         ; preds = %entry
  %call.i = call zeroext i8 %3(ptr noundef %padapter, i32 noundef 30, ptr noundef nonnull %support) #5
  %4 = ptrtoint ptr %support to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp = icmp eq i8 %.pr, 0
  br i1 %cmp, label %rtw_hal_get_def_var.exit.cleanup_crit_edge, label %if.end

rtw_hal_get_def_var.exit.cleanup_crit_edge:       ; preds = %rtw_hal_get_def_var.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rtw_hal_get_def_var.exit
  %SetHwRegHandler.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %5 = ptrtoint ptr %SetHwRegHandler.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %SetHwRegHandler.i, align 8
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %if.end.cleanup_crit_edge, label %if.then.i4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i4:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %6(ptr noundef %padapter, i8 noundef zeroext 91, ptr noundef nonnull %macid.addr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4, %if.end.cleanup_crit_edge, %rtw_hal_get_def_var.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rtw_hal_get_def_var.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %support) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hal_fill_h2c_cmd(ptr noundef %padapter, i8 noundef zeroext %ElementID, i32 noundef %CmdLen, ptr noundef %pCmdBuffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fill_h2c_cmd = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 64
  %0 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fill_h2c_cmd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %padapter, i8 noundef zeroext %ElementID, i32 noundef %CmdLen, ptr noundef %pCmdBuffer) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_setopmode_cmd(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
