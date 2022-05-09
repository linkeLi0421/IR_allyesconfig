; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.ht_priv = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.spinlock, %struct.registry_priv, %struct.eeprom_priv, ptr, i32, ptr, i32, %struct.hal_ops, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, %struct.rtw_wdev_priv, i32, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, i8, i32, i32, [6 x i8], ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.timer_list, %struct.atomic_t, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect_t, %struct.timer_list, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i8, i32 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_conf, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_conf = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.rt_link_detect_t = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
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
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }

@OFDMSwingTable = dso_local global { [43 x i32], [52 x i8] } { [43 x i32] [i32 2139095550, i32 2021655010, i32 1908408775, i32 1803551150, i32 1698693525, i32 1606418815, i32 1514144105, i32 1430258005, i32 1350566210, i32 1275068720, i32 1203765535, i32 1136656655, i32 1073742080, i32 1015021810, i32 956301540, i32 901775575, i32 851443915, i32 805306560, i32 759169205, i32 717226155, i32 679477410, i32 637534360, i32 603979920, i32 570425480, i32 536871040, i32 507510905, i32 478150770, i32 452984940, i32 427819110, i32 402653280, i32 381681755, i32 360710230, i32 339738705, i32 318767180, i32 301989960, i32 285212740, i32 268435520, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch1_Ch13 = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.%\1C\12\09\04", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\09\08\07\06\04\03\01\01"], [88 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch14 = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"65.\1B\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\09\08\07\04\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@OFDMSwingTable_New = dso_local global { [43 x i32], [52 x i8] } { [43 x i32] [i32 188743725, i32 201326640, i32 213909555, i32 226492470, i32 239075385, i32 251658300, i32 268435520, i32 285212740, i32 301989960, i32 318767180, i32 339738705, i32 360710230, i32 381681755, i32 402653280, i32 427819110, i32 452984940, i32 478150770, i32 507510905, i32 536871040, i32 570425480, i32 603979920, i32 637534360, i32 679477410, i32 717226155, i32 759169205, i32 805306560, i32 851443915, i32 901775575, i32 956301540, i32 1015021810, i32 1073742080, i32 1136656655, i32 1203765535, i32 1275068720, i32 1350566210, i32 1430258005, i32 1514144105, i32 1606418815, i32 1698693525, i32 1803551150, i32 1908408775, i32 2021655010, i32 2139095550], [52 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch1_Ch13_New = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"\09\08\07\06\04\03\01\01", [8 x i8] c"\09\09\08\06\05\03\01\01", [8 x i8] c"\0A\09\08\07\05\03\02\01", [8 x i8] c"\0A\0A\09\07\05\03\02\01", [8 x i8] c"\0B\0A\09\08\06\04\02\01", [8 x i8] c"\0B\0B\0A\08\06\04\02\01", [8 x i8] c"\0C\0C\0A\09\06\04\02\01", [8 x i8] c"\0D\0C\0B\09\07\04\02\01", [8 x i8] c"\0D\0D\0C\0A\07\05\02\01", [8 x i8] c"\0E\0E\0C\0A\08\05\02\01", [8 x i8] c"\0F\0F\0D\0B\08\05\03\01", [8 x i8] c"\10\10\0E\0B\08\05\03\01", [8 x i8] c"\11\11\0F\0C\09\06\03\01", [8 x i8] c"\12\12\0F\0C\09\06\03\01", [8 x i8] c"\13\13\10\0D\0A\06\03\01", [8 x i8] c"\14\14\11\0E\0B\07\03\02", [8 x i8] c"\16\15\12\0F\0B\07\04\01", [8 x i8] c"\17\16\13\10\0C\08\04\02", [8 x i8] c"\18\17\15\11\0C\08\04\02", [8 x i8] c"\1A\19\16\12\0D\09\04\02", [8 x i8] c"\1B\1A\17\13\0E\09\04\02", [8 x i8] c"\1D\1C\18\14\0F\0A\05\02", [8 x i8] c"\1F\1E\1A\15\10\0A\05\02", [8 x i8] c"  \1B\16\11\08\05\02", [8 x i8] c"\22!\1D\18\11\0B\06\02", [8 x i8] c"$#\1F\19\13\0C\06\03", [8 x i8] c"&%!\1B\14\0D\06\03", [8 x i8] c"((\22\1C\15\0D\07\03", [8 x i8] c"+*%\1E\16\0E\07\03", [8 x i8] c"--'\1F\18\0F\08\03", [8 x i8] c"0/)!\19\10\08\03", [8 x i8] c"32+#\1A\11\08\04", [8 x i8] c"65.%\1C\12\09\04"], [88 x i8] zeroinitializer }, align 32
@CCKSwingTable_Ch14_New = dso_local global { [33 x [8 x i8]], [88 x i8] } { [33 x [8 x i8]] [[8 x i8] c"\09\08\07\04\00\00\00\00", [8 x i8] c"\09\09\08\05\00\00\00\00", [8 x i8] c"\0A\09\08\05\00\00\00\00", [8 x i8] c"\0A\0A\09\05\00\00\00\00", [8 x i8] c"\0B\0A\09\05\00\00\00\00", [8 x i8] c"\0B\0B\0A\06\00\00\00\00", [8 x i8] c"\0C\0C\0A\06\00\00\00\00", [8 x i8] c"\0D\0C\0B\06\00\00\00\00", [8 x i8] c"\0D\0D\0C\07\00\00\00\00", [8 x i8] c"\0E\0E\0C\07\00\00\00\00", [8 x i8] c"\0F\0F\0D\08\00\00\00\00", [8 x i8] c"\10\10\0E\08\00\00\00\00", [8 x i8] c"\11\11\0F\09\00\00\00\00", [8 x i8] c"\12\12\0F\09\00\00\00\00", [8 x i8] c"\13\13\10\0A\00\00\00\00", [8 x i8] c"\14\14\11\0A\00\00\00\00", [8 x i8] c"\16\15\12\0B\00\00\00\00", [8 x i8] c"\17\16\13\0B\00\00\00\00", [8 x i8] c"\18\17\15\0C\00\00\00\00", [8 x i8] c"\1A\19\16\0D\00\00\00\00", [8 x i8] c"\1B\1A\17\0E\00\00\00\00", [8 x i8] c"\1D\1C\18\0E\00\00\00\00", [8 x i8] c"\1F\1E\1A\0F\00\00\00\00", [8 x i8] c"  \1B\10\00\00\00\00", [8 x i8] c"\22!\1D\11\00\00\00\00", [8 x i8] c"$#\1F\12\00\00\00\00", [8 x i8] c"&%!\13\00\00\00\00", [8 x i8] c"(($\14\00\00\00\00", [8 x i8] c"+*%\15\00\00\00\00", [8 x i8] c"--\17\17\00\00\00\00", [8 x i8] c"0/)\18\00\00\00\00", [8 x i8] c"32+\19\00\00\00\00", [8 x i8] c"65.\1B\00\00\00\00"], [88 x i8] zeroinitializer }, align 32
@TxScalingTable_Jaguar = dso_local global { [37 x i32], [44 x i8] } { [37 x i32] [i32 129, i32 136, i32 144, i32 153, i32 162, i32 172, i32 182, i32 192, i32 204, i32 216, i32 229, i32 242, i32 257, i32 272, i32 288, i32 305, i32 323, i32 342, i32 362, i32 384, i32 407, i32 431, i32 456, i32 483, i32 512, i32 542, i32 574, i32 609, i32 645, i32 683, i32 723, i32 766, i32 811, i32 860, i32 910, i32 964, i32 1022], [44 x i8] zeroinitializer }, align 32
@ODM_RAStateCheck.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ODM_RAStateCheck\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/rtl8723bs/hal/odm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong rssi level setting %d !\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 53]
@__sancov_gen_cov_switch_values.8 = internal global [24 x i64] [i64 22, i64 32, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.9 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 51, i64 52, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"OFDMSwingTable\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 12, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"CCKSwingTable_Ch1_Ch13\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 52, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"CCKSwingTable_Ch14\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 88, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"OFDMSwingTable_New\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 124, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"CCKSwingTable_Ch1_Ch13_New\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 170, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"CCKSwingTable_Ch14_New\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 206, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"TxScalingTable_Jaguar\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 242, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [39 x i8] c"../drivers/staging/rtl8723bs/hal/odm.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 503, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @OFDMSwingTable, ptr @CCKSwingTable_Ch1_Ch13, ptr @CCKSwingTable_Ch14, ptr @OFDMSwingTable_New, ptr @CCKSwingTable_Ch1_Ch13_New, ptr @CCKSwingTable_Ch14_New, ptr @TxScalingTable_Jaguar, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDMSwingTable to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch1_Ch13 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch14 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OFDMSwingTable_New to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch1_Ch13_New to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CCKSwingTable_Ch14_New to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxScalingTable_Jaguar to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ODM_Get_Rate_Bitmap(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %macid, i32 noundef %ra_mask, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 126, i32 %macid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %wireless_mode = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wireless_mode, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 3, label %sw.bb10
    i8 11, label %if.end.sw.bb23_crit_edge
    i8 9, label %if.end.sw.bb23_crit_edge57
    i8 10, label %if.end.sw.bb23_crit_edge58
  ]

if.end.sw.bb23_crit_edge58:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

if.end.sw.bb23_crit_edge57:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb23

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %ra_mask, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %. = select i1 %tobool1.not, i32 15, i32 13
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %cmp = icmp eq i8 %rssi_level, 1
  %.53 = select i1 %cmp, i32 3840, i32 4080
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp = icmp eq i8 %rssi_level, 2
  %switch.select = select i1 %switch.selectcmp, i32 4080, i32 4085
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp55 = icmp eq i8 %rssi_level, 1
  %switch.select56 = select i1 %switch.selectcmp55, i32 3840, i32 %switch.select
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end.sw.bb23_crit_edge, %if.end.sw.bb23_crit_edge57, %if.end.sw.bb23_crit_edge58
  %5 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %rssi_level, label %if.else33 [
    i8 1, label %sw.bb23.sw.epilog_crit_edge
    i8 2, label %if.then32
  ]

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else33:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %pBandWidth = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 43
  %6 = ptrtoint ptr %pBandWidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pBandWidth, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp35 = icmp eq i8 %9, 1
  %.54 = select i1 %cmp35, i32 1044501, i32 1044485
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else33, %if.then32, %sw.bb23.sw.epilog_crit_edge, %sw.bb10, %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %rate_bitmap.0 = phi i32 [ 1044480, %if.then32 ], [ %., %sw.bb ], [ %.53, %sw.bb4 ], [ 983040, %sw.bb23.sw.epilog_crit_edge ], [ %.54, %if.else33 ], [ 268435455, %if.end.sw.epilog_crit_edge ], [ %switch.select56, %sw.bb10 ]
  %and42 = and i32 %rate_bitmap.0, %ra_mask
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and42, %sw.epilog ], [ %ra_mask, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ODM_RAStateCheck(ptr nocapture noundef readonly %pDM_Odm, i32 noundef %RSSI, i1 noundef zeroext %bForceUpdate, ptr nocapture noundef %pRATRState) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %HighRSSIThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 4
  %0 = ptrtoint ptr %HighRSSIThresh to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %HighRSSIThresh, align 1
  %LowRSSIThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 5
  %2 = ptrtoint ptr %LowRSSIThresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %LowRSSIThresh, align 1
  %4 = ptrtoint ptr %pRATRState to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pRATRState, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %5, label %do.body11 [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %entry.sw.epilog_crit_edge51
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i8 %1, 5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add6 = add i8 %1, 5
  %add9 = add i8 %3, 5
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ODM_RAStateCheck.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ODM_RAStateCheck, %if.then)) #6
          to label %sw.epilog [label %if.then], !srcloc !29

if.then:                                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pDM_Odm, align 8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 8
  %11 = ptrtoint ptr %pRATRState to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pRATRState, align 1
  %conv15 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ODM_RAStateCheck.__UNIQUE_ID_ddebug345, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %conv15) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body11, %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge51
  %LowRSSIThreshForRA.0 = phi i8 [ %3, %if.then ], [ %add9, %sw.bb4 ], [ %3, %sw.bb1 ], [ %3, %entry.sw.epilog_crit_edge ], [ %3, %entry.sw.epilog_crit_edge51 ], [ %3, %do.body11 ]
  %HighRSSIThreshForRA.0 = phi i8 [ %1, %if.then ], [ %add6, %sw.bb4 ], [ %add, %sw.bb1 ], [ %1, %entry.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge51 ], [ %1, %do.body11 ]
  %conv18 = zext i8 %HighRSSIThreshForRA.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %RSSI)
  %cmp = icmp slt i32 %conv18, %RSSI
  %conv21 = zext i8 %LowRSSIThreshForRA.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %RSSI)
  %cmp22 = icmp slt i32 %conv21, %RSSI
  %. = select i1 %cmp22, i8 2, i8 3
  %RATRState.0 = select i1 %cmp, i8 1, i8 %.
  %13 = ptrtoint ptr %pRATRState to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pRATRState, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %RATRState.0)
  %cmp30.not = icmp ne i8 %14, %RATRState.0
  %brmerge = or i1 %cmp30.not, %bForceUpdate
  br i1 %brmerge, label %if.then34, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pRATRState to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %RATRState.0, ptr %pRATRState, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %sw.epilog.cleanup_crit_edge
  ret i1 %brmerge
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_TXPowerTrackingInit(ptr nocapture noundef %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef 3200, i32 noundef -4194304) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @OFDMSwingTable_New, i32 %indvars.iv.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %3)
  %cmp3.i = icmp ugt i32 %3, 1048575
  %shr.i = lshr i32 %3, 22
  %spec.select.i = select i1 %cmp3.i, i32 %shr.i, i32 %3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %spec.select.i)
  %cmp5.i = icmp eq i32 %call.i, %spec.select.i
  br i1 %cmp5.i, label %for.end.split.loop.exit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 43
  br i1 %exitcond.not.i, label %for.inc.i.getSwingIndex.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.getSwingIndex.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %getSwingIndex.exit

for.end.split.loop.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %indvars.iv.i to i8
  br label %getSwingIndex.exit

getSwingIndex.exit:                               ; preds = %for.end.split.loop.exit.i, %for.inc.i.getSwingIndex.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ %4, %for.end.split.loop.exit.i ], [ 43, %for.inc.i.getSwingIndex.exit_crit_edge ]
  %5 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pDM_Odm, align 8
  %HalData = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %HalData, align 8
  %bTXPowerTracking = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 140, i32 14
  %9 = ptrtoint ptr %bTXPowerTracking to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bTXPowerTracking, align 1
  %TXPowercount = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 140, i32 15
  %10 = ptrtoint ptr %TXPowercount to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %TXPowercount, align 4
  %bTXPowerTrackingInit = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 140, i32 16
  %11 = ptrtoint ptr %bTXPowerTrackingInit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bTXPowerTrackingInit, align 1
  %mp_mode = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 54
  %12 = ptrtoint ptr %mp_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mp_mode, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.not = icmp ne i8 %15, 1
  %spec.select69 = zext i1 %cmp.not to i8
  %16 = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 140, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select69, ptr %16, align 2
  %EEPROMThermalMeter = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 32
  %18 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 11
  %20 = ptrtoint ptr %ThermalValue to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ThermalValue, align 1
  %21 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue_IQK = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 13
  %22 = ptrtoint ptr %ThermalValue_IQK to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ThermalValue_IQK, align 1
  %23 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue_LCK = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 12
  %24 = ptrtoint ptr %ThermalValue_LCK to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ThermalValue_LCK, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %i.0.lcssa.i)
  %cmp9 = icmp ugt i8 %i.0.lcssa.i, 42
  %spec.select = select i1 %cmp9, i8 30, i8 %i.0.lcssa.i
  %DefaultOfdmIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 165
  %25 = ptrtoint ptr %DefaultOfdmIndex to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %DefaultOfdmIndex, align 1
  %DefaultCckIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 166
  %26 = ptrtoint ptr %DefaultCckIndex to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 20, ptr %DefaultCckIndex, align 2
  %BbSwingIdxCckBase = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 164
  %27 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 20, ptr %BbSwingIdxCckBase, align 4
  %CCK_index = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 26
  %28 = ptrtoint ptr %CCK_index to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 20, ptr %CCK_index, align 1
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 0
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %spec.select, ptr %arrayidx, align 1
  %arrayidx23 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 0
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select, ptr %arrayidx23, align 1
  %arrayidx26 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 0
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx26, align 1
  %arrayidx29 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 0
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx29, align 1
  %arrayidx32 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 0
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx32, align 1
  %arrayidx.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select, ptr %arrayidx.1, align 1
  %arrayidx23.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 1
  %35 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select, ptr %arrayidx23.1, align 1
  %arrayidx26.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 1
  %36 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx26.1, align 1
  %arrayidx29.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 1
  %37 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx29.1, align 1
  %arrayidx32.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 1
  %38 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx32.1, align 1
  %arrayidx.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.select, ptr %arrayidx.2, align 1
  %arrayidx23.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 2
  %40 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.select, ptr %arrayidx23.2, align 1
  %arrayidx26.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 2
  %41 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx26.2, align 1
  %arrayidx29.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 2
  %42 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx29.2, align 1
  %arrayidx32.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 2
  %43 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx32.2, align 1
  %arrayidx.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 3
  %44 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select, ptr %arrayidx.3, align 1
  %arrayidx23.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 3
  %45 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select, ptr %arrayidx23.3, align 1
  %arrayidx26.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 3
  %46 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx26.3, align 1
  %arrayidx29.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 3
  %47 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx29.3, align 1
  %arrayidx32.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 3
  %48 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx32.3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_TXPowerTrackingCheck(ptr nocapture noundef %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 13
  %2 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %TM_Trigger = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 9
  %4 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %TM_Trigger, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_hal_write_rfreg(ptr noundef %1, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #6
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ODM_TXPowerTrackingCallback_ThermalMeter(ptr noundef %1) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then3 ]
  %6 = ptrtoint ptr %TM_Trigger to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %TM_Trigger, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_TXPowerTrackingCallback_ThermalMeter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_DMInit(ptr noundef %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %call.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %1, i32 noundef 2084, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  %bCckHighPower.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 9
  %frombool.i = zext i1 %tobool.i to i8
  %2 = ptrtoint ptr %bCckHighPower.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool.i, ptr %bCckHighPower.i, align 2
  %3 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pDM_Odm, align 8
  %call2.i = tail call i32 @rtw_hal_read_bbreg(ptr noundef %4, i32 noundef 3076, i32 noundef 15) #6
  %conv.i = trunc i32 %call2.i to i8
  %RFPathRxEnable.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 10
  %5 = ptrtoint ptr %RFPathRxEnable.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %RFPathRxEnable.i, align 1
  %TxRate.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 81
  %6 = ptrtoint ptr %TxRate.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %TxRate.i, align 2
  tail call void @odm_DIGInit(ptr noundef %pDM_Odm) #6
  tail call void @odm_NHMCounterStatisticsInit(ptr noundef %pDM_Odm) #6
  tail call void @odm_AdaptivityInit(ptr noundef %pDM_Odm) #6
  %RateAdaptive.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155
  %7 = ptrtoint ptr %RateAdaptive.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %RateAdaptive.i, align 1
  %bUseRAMask.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 154
  %8 = ptrtoint ptr %bUseRAMask.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bUseRAMask.i, align 8
  %RATRState.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 6
  %9 = ptrtoint ptr %RATRState.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %RATRState.i, align 1
  %LdpcThres.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 1
  %10 = ptrtoint ptr %LdpcThres.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 35, ptr %LdpcThres.i, align 1
  %bUseLdpc.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 2
  %11 = ptrtoint ptr %bUseLdpc.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bUseLdpc.i, align 1
  %HighRSSIThresh.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 4
  %12 = ptrtoint ptr %HighRSSIThresh.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 50, ptr %HighRSSIThresh.i, align 1
  %LowRSSIThresh.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 5
  %13 = ptrtoint ptr %LowRSSIThresh.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 20, ptr %LowRSSIThresh.i, align 1
  tail call void @ODM_CfoTrackingInit(ptr noundef %pDM_Odm) #6
  tail call void @ODM_EdcaTurboInit(ptr noundef %pDM_Odm) #6
  %DM_RA_Table.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 135
  %14 = ptrtoint ptr %DM_RA_Table.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %DM_RA_Table.i, align 1
  tail call void @odm_TXPowerTrackingInit(ptr noundef %pDM_Odm)
  tail call void @ODM_ClearTxPowerTrackingState(ptr noundef %pDM_Odm) #6
  tail call void @odm_DynamicBBPowerSavingInit(ptr noundef %pDM_Odm) #6
  tail call void @odm_DynamicTxPowerInit(ptr noundef %pDM_Odm) #6
  %15 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pDM_Odm, align 8
  %call.i14 = tail call i32 @rtw_read32(ptr noundef %16, i32 noundef 2348) #6
  %SWAS_NoLink_BK_Reg92c.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 138, i32 17
  %17 = ptrtoint ptr %SWAS_NoLink_BK_Reg92c.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i14, ptr %SWAS_NoLink_BK_Reg92c.i, align 8
  %PreAntenna.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 138, i32 4
  %18 = ptrtoint ptr %PreAntenna.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %PreAntenna.i, align 1
  %CurAntenna.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 138, i32 3
  %19 = ptrtoint ptr %CurAntenna.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %CurAntenna.i, align 8
  %SWAS_NoLink_State.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 138, i32 15
  %20 = ptrtoint ptr %SWAS_NoLink_State.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %SWAS_NoLink_State.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_DIGInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_NHMCounterStatisticsInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_AdaptivityInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CfoTrackingInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_EdcaTurboInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ClearTxPowerTrackingState(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_DynamicBBPowerSavingInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_DynamicTxPowerInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_DMWatchdog(ptr noundef %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  %PWDB_rssi.i.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pBandWidth.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 43
  %0 = ptrtoint ptr %pBandWidth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pBandWidth.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else18.i

if.then.i:                                        ; preds = %entry
  %pSecChOffset.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 41
  %4 = ptrtoint ptr %pSecChOffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pSecChOffset.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %7, label %if.then.i.for.body.i.preheader_crit_edge [
    i8 1, label %if.then5.i
    i8 2, label %if.then12.i
  ]

if.then.i.for.body.i.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %pChannel.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 44
  %9 = ptrtoint ptr %pChannel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pChannel.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %sub.i = add i8 %12, -2
  br label %if.end21.sink.split.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %pChannel13.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 44
  %13 = ptrtoint ptr %pChannel13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pChannel13.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %add.i = add i8 %16, 2
  br label %if.end21.sink.split.i

if.else18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pChannel19.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 44
  %17 = ptrtoint ptr %pChannel19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pChannel19.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else18.i, %if.then12.i, %if.then5.i
  %sub.sink.i = phi i8 [ %sub.i, %if.then5.i ], [ %add.i, %if.then12.i ], [ %20, %if.else18.i ]
  %ControlChannel.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 11
  %21 = ptrtoint ptr %ControlChannel.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sub.sink.i, ptr %ControlChannel.i, align 8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end21.sink.split.i, %if.then.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %EntryCnt.049.i = phi i8 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 126, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %23, null
  %inc.i = zext i1 %tobool.not.i to i8
  %spec.select.i = add i8 %EntryCnt.049.i, %inc.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %odm_CommonInfoSelfUpdate.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

odm_CommonInfoSelfUpdate.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.i)
  %cmp29.i = icmp eq i8 %spec.select.i, 1
  %spec.select51.i = zext i1 %cmp29.i to i8
  %24 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 66
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select51.i, ptr %24, align 1
  tail call void @odm_FalseAlarmCounterStatistics(ptr noundef %pDM_Odm) #6
  tail call void @odm_NHMCounterStatistics(ptr noundef %pDM_Odm) #6
  %SupportAbility.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 13
  %26 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %SupportAbility.i, align 4
  %and.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %odm_CommonInfoSelfUpdate.exit.odm_RSSIMonitorCheck.exit_crit_edge, label %if.end.i

odm_CommonInfoSelfUpdate.exit.odm_RSSIMonitorCheck.exit_crit_edge: ; preds = %odm_CommonInfoSelfUpdate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %odm_RSSIMonitorCheck.exit

if.end.i:                                         ; preds = %odm_CommonInfoSelfUpdate.exit
  %28 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pDM_Odm, align 8
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %HalData.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %PWDB_rssi.i.i) #6
  %32 = call ptr @memset(ptr %PWDB_rssi.i.i, i32 0, i32 128)
  %bLinked.i.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 62
  %33 = ptrtoint ptr %bLinked.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bLinked.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.not.i.i = icmp eq i8 %34, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.odm_RSSIMonitorCheckCE.exit.i_crit_edge

if.end.i.odm_RSSIMonitorCheckCE.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %odm_RSSIMonitorCheckCE.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %DM_RA_Table.i.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 135
  %35 = ptrtoint ptr %DM_RA_Table.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %DM_RA_Table.i.i, align 1
  br label %for.body.i.i

for.cond44.preheader.i.i:                         ; preds = %for.inc.i.i
  %conv45.i.i = zext i8 %sta_cnt.1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sta_cnt.1.i.i)
  %cmp46122.not.i.i = icmp eq i8 %sta_cnt.1.i.i, 0
  br i1 %cmp46122.not.i.i, label %for.cond44.preheader.i.i.if.end67.i.i_crit_edge, label %for.body48.lr.ph.i.i

for.cond44.preheader.i.i.if.end67.i.i_crit_edge:  ; preds = %for.cond44.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i.i

for.body48.lr.ph.i.i:                             ; preds = %for.cond44.preheader.i.i
  %fw_ractrl.i.i = getelementptr inbounds %struct.hal_com_data, ptr %31, i32 0, i32 103
  br label %for.body48.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %sta_cnt.0121.i.i = phi i8 [ 0, %if.end.i.i ], [ %sta_cnt.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tmpEntryMinPWDB.0120.i.i = phi i32 [ 255, %if.end.i.i ], [ %tmpEntryMinPWDB.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tmpEntryMaxPWDB.0119.i.i = phi i32 [ 0, %if.end.i.i ], [ %tmpEntryMaxPWDB.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0118.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc43.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 126, i32 %i.0118.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %37, null
  br i1 %tobool8.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then9.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %hwaddr.i.i = getelementptr inbounds %struct.sta_info, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %hwaddr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hwaddr.i.i, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool10.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.then9.i.i.for.inc.i.i_crit_edge

if.then9.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i
  %rssi_stat.i.i = getelementptr inbounds %struct.sta_info, ptr %37, i32 0, i32 74
  %41 = ptrtoint ptr %rssi_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rssi_stat.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp13.i.i = icmp eq i32 %42, -1
  br i1 %cmp13.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge, label %if.then37.i.i

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then37.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 %tmpEntryMinPWDB.0120.i.i) #6
  %44 = tail call i32 @llvm.smax.i32(i32 %42, i32 %tmpEntryMaxPWDB.0119.i.i) #6
  %mac_id.i.i = getelementptr inbounds %struct.sta_info, ptr %37, i32 0, i32 10
  %45 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac_id.i.i, align 8
  %shl.i.i = shl i32 %42, 16
  %or.i.i = or i32 %46, %shl.i.i
  %inc.i.i = add i8 %sta_cnt.0121.i.i, 1
  %idxprom.i.i = zext i8 %sta_cnt.0121.i.i to i32
  %arrayidx40.i.i = getelementptr [32 x i32], ptr %PWDB_rssi.i.i, i32 0, i32 %idxprom.i.i
  %47 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i, ptr %arrayidx40.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then37.i.i, %if.end12.i.i.for.inc.i.i_crit_edge, %if.then9.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %tmpEntryMaxPWDB.2.i.i = phi i32 [ %tmpEntryMaxPWDB.0119.i.i, %if.then9.i.i.for.inc.i.i_crit_edge ], [ %tmpEntryMaxPWDB.0119.i.i, %if.end12.i.i.for.inc.i.i_crit_edge ], [ %44, %if.then37.i.i ], [ %tmpEntryMaxPWDB.0119.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %tmpEntryMinPWDB.2.i.i = phi i32 [ %tmpEntryMinPWDB.0120.i.i, %if.then9.i.i.for.inc.i.i_crit_edge ], [ %tmpEntryMinPWDB.0120.i.i, %if.end12.i.i.for.inc.i.i_crit_edge ], [ %43, %if.then37.i.i ], [ %tmpEntryMinPWDB.0120.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %sta_cnt.1.i.i = phi i8 [ %sta_cnt.0121.i.i, %if.then9.i.i.for.inc.i.i_crit_edge ], [ %sta_cnt.0121.i.i, %if.end12.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.then37.i.i ], [ %sta_cnt.0121.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc43.i.i = add nuw nsw i32 %i.0118.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc43.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond44.preheader.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body48.i.i:                                   ; preds = %for.inc60.i.i.for.body48.i.i_crit_edge, %for.body48.lr.ph.i.i
  %i.1123.i.i = phi i32 [ 0, %for.body48.lr.ph.i.i ], [ %inc61.i.i, %for.inc60.i.i.for.body48.i.i_crit_edge ]
  %arrayidx49.i.i = getelementptr [32 x i32], ptr %PWDB_rssi.i.i, i32 0, i32 %i.1123.i.i
  %48 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx49.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp50.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp50.not.i.i, label %for.body48.i.i.for.inc60.i.i_crit_edge, label %if.then52.i.i

for.body48.i.i.for.inc60.i.i_crit_edge:           ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60.i.i

if.then52.i.i:                                    ; preds = %for.body48.i.i
  %50 = ptrtoint ptr %fw_ractrl.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fw_ractrl.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp54.i.i = icmp eq i8 %51, 1
  br i1 %cmp54.i.i, label %if.then56.i.i, label %if.then52.i.i.for.inc60.i.i_crit_edge

if.then52.i.i.for.inc60.i.i_crit_edge:            ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60.i.i

if.then56.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723b_set_rssi_cmd(ptr noundef %29, ptr noundef %arrayidx49.i.i) #6
  br label %for.inc60.i.i

for.inc60.i.i:                                    ; preds = %if.then56.i.i, %if.then52.i.i.for.inc60.i.i_crit_edge, %for.body48.i.i.for.inc60.i.i_crit_edge
  %inc61.i.i = add nuw nsw i32 %i.1123.i.i, 1
  %exitcond124.not.i.i = icmp eq i32 %inc61.i.i, %conv45.i.i
  br i1 %exitcond124.not.i.i, label %for.inc60.i.i.if.end67.i.i_crit_edge, label %for.inc60.i.i.for.body48.i.i_crit_edge

for.inc60.i.i.for.body48.i.i_crit_edge:           ; preds = %for.inc60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body48.i.i

for.inc60.i.i.if.end67.i.i_crit_edge:             ; preds = %for.inc60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %for.inc60.i.i.if.end67.i.i_crit_edge, %for.cond44.preheader.i.i.if.end67.i.i_crit_edge
  %52 = getelementptr inbounds %struct.hal_com_data, ptr %31, i32 0, i32 140, i32 7
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %tmpEntryMaxPWDB.2.i.i, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tmpEntryMinPWDB.2.i.i)
  %cmp68.not.i.i = icmp eq i32 %tmpEntryMinPWDB.2.i.i, 255
  %spec.select.i.i = select i1 %cmp68.not.i.i, i32 0, i32 %tmpEntryMinPWDB.2.i.i
  %54 = getelementptr inbounds %struct.hal_com_data, ptr %31, i32 0, i32 140, i32 6
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select.i.i, ptr %54, align 4
  %56 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %HalData.i.i, align 8
  %bLinked.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 141, i32 62
  %58 = ptrtoint ptr %bLinked.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bLinked.i.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.not.i.i.i = icmp eq i8 %59, 1
  br i1 %cmp.not.i.i.i, label %if.end67.i.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end67.i.i.if.else.i.i.i_crit_edge:             ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end67.i.i
  %EntryMinUndecoratedSmoothedPWDB.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 140, i32 6
  %60 = ptrtoint ptr %EntryMinUndecoratedSmoothedPWDB.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %EntryMinUndecoratedSmoothedPWDB.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i.FindMinimumRSSI.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i.i

land.lhs.true.i.i.i.FindMinimumRSSI.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %FindMinimumRSSI.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end67.i.i.if.else.i.i.i_crit_edge
  %EntryMinUndecoratedSmoothedPWDB4.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 140, i32 6
  %62 = ptrtoint ptr %EntryMinUndecoratedSmoothedPWDB4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %EntryMinUndecoratedSmoothedPWDB4.i.i.i, align 4
  br label %FindMinimumRSSI.exit.i.i

FindMinimumRSSI.exit.i.i:                         ; preds = %if.else.i.i.i, %land.lhs.true.i.i.i.FindMinimumRSSI.exit.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ %63, %if.else.i.i.i ], [ 0, %land.lhs.true.i.i.i.FindMinimumRSSI.exit.i.i_crit_edge ]
  %MinUndecoratedPWDBForDM5.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 140, i32 8
  %64 = ptrtoint ptr %MinUndecoratedPWDBForDM5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i.i.i, ptr %MinUndecoratedPWDBForDM5.i.i.i, align 4
  %MinUndecoratedPWDBForDM.i.i = getelementptr inbounds %struct.hal_com_data, ptr %31, i32 0, i32 140, i32 8
  %65 = ptrtoint ptr %MinUndecoratedPWDBForDM.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %MinUndecoratedPWDBForDM.i.i, align 4
  %conv74.i.i = trunc i32 %66 to i8
  %RSSI_Min.i.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 64
  %67 = ptrtoint ptr %RSSI_Min.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv74.i.i, ptr %RSSI_Min.i.i, align 1
  br label %odm_RSSIMonitorCheckCE.exit.i

odm_RSSIMonitorCheckCE.exit.i:                    ; preds = %FindMinimumRSSI.exit.i.i, %if.end.i.odm_RSSIMonitorCheckCE.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %PWDB_rssi.i.i) #6
  br label %odm_RSSIMonitorCheck.exit

odm_RSSIMonitorCheck.exit:                        ; preds = %odm_RSSIMonitorCheckCE.exit.i, %odm_CommonInfoSelfUpdate.exit.odm_RSSIMonitorCheck.exit_crit_edge
  %68 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pDM_Odm, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dvobj, align 4
  %pwr_mode = getelementptr inbounds %struct.dvobj_priv, ptr %71, i32 0, i32 22, i32 5
  %72 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pwr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp.not = icmp eq i8 %73, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %odm_RSSIMonitorCheck.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @odm_DIGbyRSSI_LPS(ptr noundef %pDM_Odm) #6
  br label %if.end

if.else:                                          ; preds = %odm_RSSIMonitorCheck.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @odm_DIG(ptr noundef %pDM_Odm) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %CurIGValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 131, i32 12
  %74 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %CurIGValue, align 4
  call void @odm_Adaptivity(ptr noundef %pDM_Odm, i8 noundef zeroext %75) #6
  call void @odm_CCKPacketDetectionThresh(ptr noundef %pDM_Odm) #6
  %pbPowerSaving = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 50
  %76 = ptrtoint ptr %pbPowerSaving to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pbPowerSaving, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6:                                          ; preds = %if.end
  %80 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %SupportAbility.i, align 4
  %and.i25 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.end6.odm_RefreshRateAdaptiveMask.exit_crit_edge, label %if.end.i27

if.end6.odm_RefreshRateAdaptiveMask.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %odm_RefreshRateAdaptiveMask.exit

if.end.i27:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @odm_RefreshRateAdaptiveMaskCE(ptr noundef %pDM_Odm) #6
  br label %odm_RefreshRateAdaptiveMask.exit

odm_RefreshRateAdaptiveMask.exit:                 ; preds = %if.end.i27, %if.end6.odm_RefreshRateAdaptiveMask.exit_crit_edge
  call void @odm_EdcaTurboCheck(ptr noundef %pDM_Odm) #6
  call void @ODM_CfoTracking(ptr noundef %pDM_Odm) #6
  %82 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pDM_Odm, align 8
  %84 = ptrtoint ptr %SupportAbility.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %SupportAbility.i, align 4
  %and.i29 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %odm_RefreshRateAdaptiveMask.exit.ODM_TXPowerTrackingCheck.exit_crit_edge, label %if.end.i31

odm_RefreshRateAdaptiveMask.exit.ODM_TXPowerTrackingCheck.exit_crit_edge: ; preds = %odm_RefreshRateAdaptiveMask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ODM_TXPowerTrackingCheck.exit

if.end.i31:                                       ; preds = %odm_RefreshRateAdaptiveMask.exit
  %TM_Trigger.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 9
  %86 = ptrtoint ptr %TM_Trigger.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %TM_Trigger.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool2.not.i = icmp eq i8 %87, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtw_hal_write_rfreg(ptr noundef %83, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #6
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  call void @ODM_TXPowerTrackingCallback_ThermalMeter(ptr noundef %83) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.then3.i
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %if.then3.i ]
  %88 = ptrtoint ptr %TM_Trigger.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %.sink.i, ptr %TM_Trigger.i, align 8
  br label %ODM_TXPowerTrackingCheck.exit

ODM_TXPowerTrackingCheck.exit:                    ; preds = %cleanup.sink.split.i, %odm_RefreshRateAdaptiveMask.exit.ODM_TXPowerTrackingCheck.exit_crit_edge
  %NumQryBeaconPkt = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 128, i32 4
  %89 = ptrtoint ptr %NumQryBeaconPkt to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %NumQryBeaconPkt, align 8
  br label %return

return:                                           ; preds = %ODM_TXPowerTrackingCheck.exit, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_FalseAlarmCounterStatistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_NHMCounterStatistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_DIGbyRSSI_LPS(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_DIG(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_Adaptivity(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_CCKPacketDetectionThresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_EdcaTurboCheck(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CfoTracking(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoInit(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, i32 noundef %Value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 53, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb32
    i32 18, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 13
  %1 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %Value, ptr %SupportAbility, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %Value to i8
  %SupportPlatform = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 12
  %2 = ptrtoint ptr %SupportPlatform to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %SupportPlatform, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = trunc i32 %Value to i8
  %SupportInterface = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 14
  %3 = ptrtoint ptr %SupportInterface to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %SupportInterface, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %SupportICType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 15
  %4 = ptrtoint ptr %SupportICType to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %Value, ptr %SupportICType, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = trunc i32 %Value to i8
  %CutVersion = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 16
  %5 = ptrtoint ptr %CutVersion to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %CutVersion, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = trunc i32 %Value to i8
  %FabVersion = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 17
  %6 = ptrtoint ptr %FabVersion to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %FabVersion, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = trunc i32 %Value to i8
  %RFEType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 18
  %7 = ptrtoint ptr %RFEType to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %RFEType, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = trunc i32 %Value to i8
  %AntDivType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 33
  %8 = ptrtoint ptr %AntDivType to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %AntDivType, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = trunc i32 %Value to i8
  %PackageType = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 20
  %9 = ptrtoint ptr %PackageType to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %PackageType, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = trunc i32 %Value to i8
  %ExtLNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 25
  %10 = ptrtoint ptr %ExtLNA to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv16, ptr %ExtLNA, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv18 = trunc i32 %Value to i8
  %ExtPA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 26
  %11 = ptrtoint ptr %ExtPA to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %ExtPA, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = trunc i32 %Value to i8
  %TypeGPA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 22
  %12 = ptrtoint ptr %TypeGPA to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv20, ptr %TypeGPA, align 2
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i32 %Value to i8
  %TypeAPA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 24
  %13 = ptrtoint ptr %TypeAPA to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %TypeAPA, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = trunc i32 %Value to i8
  %TypeGLNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 21
  %14 = ptrtoint ptr %TypeGLNA to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %TypeGLNA, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv26 = trunc i32 %Value to i8
  %TypeALNA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 23
  %15 = ptrtoint ptr %TypeALNA to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv26, ptr %TypeALNA, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv28 = trunc i32 %Value to i8
  %ExtTRSW = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 27
  %16 = ptrtoint ptr %ExtTRSW to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv28, ptr %ExtTRSW, align 1
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = trunc i32 %Value to i8
  %PatchID = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 28
  %17 = ptrtoint ptr %PatchID to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv30, ptr %PatchID, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Value)
  %tobool = icmp ne i32 %Value, 0
  %bInHctTest = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 29
  %frombool = zext i1 %tobool to i8
  %18 = ptrtoint ptr %bInHctTest to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %bInHctTest, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Value)
  %tobool33 = icmp ne i32 %Value, 0
  %bWIFITest = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 30
  %frombool34 = zext i1 %tobool33 to i8
  %19 = ptrtoint ptr %bWIFITest to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool34, ptr %bWIFITest, align 2
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Value)
  %tobool36 = icmp ne i32 %Value, 0
  %bDualMacSmartConcurrent = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 31
  %frombool37 = zext i1 %tobool36 to i8
  %20 = ptrtoint ptr %bDualMacSmartConcurrent to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool37, ptr %bDualMacSmartConcurrent, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb32, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoHook(ptr noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, ptr noundef %pValue) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 19, label %sw.bb
    i32 20, label %sw.bb1
    i32 21, label %sw.bb2
    i32 22, label %sw.bb3
    i32 23, label %sw.bb4
    i32 24, label %sw.bb5
    i32 25, label %sw.bb6
    i32 26, label %sw.bb7
    i32 28, label %sw.bb8
    i32 29, label %sw.bb9
    i32 30, label %sw.bb10
    i32 31, label %sw.bb11
    i32 32, label %sw.bb12
    i32 33, label %sw.bb13
    i32 34, label %sw.bb14
    i32 35, label %sw.bb15
    i32 36, label %sw.bb16
    i32 37, label %sw.bb17
    i32 38, label %sw.bb18
    i32 27, label %sw.bb19
    i32 40, label %sw.bb20
    i32 39, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pMacPhyMode = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 37
  %1 = ptrtoint ptr %pMacPhyMode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pValue, ptr %pMacPhyMode, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pNumTxBytesUnicast = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 38
  %2 = ptrtoint ptr %pNumTxBytesUnicast to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pValue, ptr %pNumTxBytesUnicast, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pNumRxBytesUnicast = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 39
  %3 = ptrtoint ptr %pNumRxBytesUnicast to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pValue, ptr %pNumRxBytesUnicast, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pwirelessmode = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 40
  %4 = ptrtoint ptr %pwirelessmode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pValue, ptr %pwirelessmode, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pSecChOffset = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 41
  %5 = ptrtoint ptr %pSecChOffset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pValue, ptr %pSecChOffset, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pSecurity = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 42
  %6 = ptrtoint ptr %pSecurity to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pValue, ptr %pSecurity, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pBandWidth = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 43
  %7 = ptrtoint ptr %pBandWidth to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pValue, ptr %pBandWidth, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pChannel = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 44
  %8 = ptrtoint ptr %pChannel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pValue, ptr %pChannel, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbGetValueFromOtherMac = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 46
  %9 = ptrtoint ptr %pbGetValueFromOtherMac to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pValue, ptr %pbGetValueFromOtherMac, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pBuddyAdapter = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 47
  %10 = ptrtoint ptr %pBuddyAdapter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pValue, ptr %pBuddyAdapter, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbMasterOfDMSP = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 48
  %11 = ptrtoint ptr %pbMasterOfDMSP to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pValue, ptr %pbMasterOfDMSP, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbScanInProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 49
  %12 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pValue, ptr %pbScanInProcess, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbPowerSaving = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 50
  %13 = ptrtoint ptr %pbPowerSaving to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pValue, ptr %pbPowerSaving, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pOnePathCCA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 51
  %14 = ptrtoint ptr %pOnePathCCA to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pValue, ptr %pOnePathCCA, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbDriverStopped = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 144
  %15 = ptrtoint ptr %pbDriverStopped to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pValue, ptr %pbDriverStopped, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbDriverIsGoingToPnpSetPowerSleep = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 145
  %16 = ptrtoint ptr %pbDriverIsGoingToPnpSetPowerSleep to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pValue, ptr %pbDriverIsGoingToPnpSetPowerSleep, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pinit_adpt_in_progress = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 146
  %17 = ptrtoint ptr %pinit_adpt_in_progress to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pValue, ptr %pinit_adpt_in_progress, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pAntennaTest = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 52
  %18 = ptrtoint ptr %pAntennaTest to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pValue, ptr %pAntennaTest, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pbNet_closed = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 53
  %19 = ptrtoint ptr %pbNet_closed to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pValue, ptr %pbNet_closed, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pForcedDataRate = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 58
  %20 = ptrtoint ptr %pForcedDataRate to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pValue, ptr %pForcedDataRate, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pu1ForcedIgiLb = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 55
  %21 = ptrtoint ptr %pu1ForcedIgiLb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pValue, ptr %pu1ForcedIgiLb, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mp_mode = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 54
  %22 = ptrtoint ptr %mp_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pValue, ptr %mp_mode, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoPtrArrayHook(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, i16 noundef zeroext %Index, ptr noundef %pValue) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %CmnInfo)
  %cond = icmp eq i32 %CmnInfo, 60
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom = zext i16 %Index to i32
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 126, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pValue, ptr %arrayidx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ODM_CmnInfoUpdate(ptr nocapture noundef writeonly %pDM_Odm, i32 noundef %CmnInfo, i64 noundef %Value) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %CmnInfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %CmnInfo, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 1, label %sw.bb1
    i32 43, label %sw.bb2
    i32 44, label %sw.bb5
    i32 46, label %sw.bb8
    i32 47, label %sw.bb11
    i32 48, label %sw.bb14
    i32 51, label %sw.bb16
    i32 52, label %sw.bb18
    i32 54, label %sw.bb21
    i32 55, label %sw.bb24
    i32 56, label %sw.bb27
    i32 57, label %sw.bb29
    i32 58, label %sw.bb32
    i32 59, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool = icmp ne i64 %Value, 0
  %bLinkInProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 59
  %frombool = zext i1 %tobool to i8
  %1 = ptrtoint ptr %bLinkInProcess to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %bLinkInProcess, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %Value to i32
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 13
  %2 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %SupportAbility, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool3 = icmp ne i64 %Value, 0
  %bWIFI_Direct = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 60
  %frombool4 = zext i1 %tobool3 to i8
  %3 = ptrtoint ptr %bWIFI_Direct to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool4, ptr %bWIFI_Direct, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool6 = icmp ne i64 %Value, 0
  %bWIFI_Display = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 61
  %frombool7 = zext i1 %tobool6 to i8
  %4 = ptrtoint ptr %bWIFI_Display to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool7, ptr %bWIFI_Display, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool9 = icmp ne i64 %Value, 0
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 62
  %frombool10 = zext i1 %tobool9 to i8
  %5 = ptrtoint ptr %bLinked to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool10, ptr %bLinked, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool12 = icmp ne i64 %Value, 0
  %bsta_state = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 63
  %frombool13 = zext i1 %tobool12 to i8
  %6 = ptrtoint ptr %bsta_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool13, ptr %bsta_state, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv15 = trunc i64 %Value to i8
  %RSSI_Min = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 64
  %7 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv15, ptr %RSSI_Min, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = trunc i64 %Value to i8
  %HighRSSIThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 4
  %8 = ptrtoint ptr %HighRSSIThresh to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv17, ptr %HighRSSIThresh, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = trunc i64 %Value to i8
  %LowRSSIThresh = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 5
  %9 = ptrtoint ptr %LowRSSIThresh to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv19, ptr %LowRSSIThresh, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool22 = icmp ne i64 %Value, 0
  %bBtEnabled = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 67
  %frombool23 = zext i1 %tobool22 to i8
  %10 = ptrtoint ptr %bBtEnabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool23, ptr %bBtEnabled, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool25 = icmp ne i64 %Value, 0
  %bBtConnectProcess = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 68
  %frombool26 = zext i1 %tobool25 to i8
  %11 = ptrtoint ptr %bBtConnectProcess to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool26, ptr %bBtConnectProcess, align 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv28 = trunc i64 %Value to i8
  %btHsRssi = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 69
  %12 = ptrtoint ptr %btHsRssi to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv28, ptr %btHsRssi, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool30 = icmp ne i64 %Value, 0
  %bBtHsOperation = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 70
  %frombool31 = zext i1 %tobool30 to i8
  %13 = ptrtoint ptr %bBtHsOperation to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool31, ptr %bBtHsOperation, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool33 = icmp ne i64 %Value, 0
  %bBtLimitedDig = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 72
  %frombool34 = zext i1 %tobool33 to i8
  %14 = ptrtoint ptr %bBtLimitedDig to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool34, ptr %bBtLimitedDig, align 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %Value)
  %tobool36 = icmp ne i64 %Value, 0
  %bBtDisableEdcaTurbo = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 71
  %frombool37 = zext i1 %tobool36 to i8
  %15 = ptrtoint ptr %bBtDisableEdcaTurbo to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool37, ptr %bBtDisableEdcaTurbo, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_rssi_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @odm_RefreshRateAdaptiveMaskCE(ptr nocapture noundef readonly %pDM_Odm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

if.end:                                           ; preds = %entry
  %bUseRAMask = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 154
  %4 = ptrtoint ptr %bUseRAMask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bUseRAMask, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup18_crit_edge, label %for.cond.preheader

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

for.cond.preheader:                               ; preds = %if.end
  %HighRSSIThresh.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 4
  %LowRSSIThresh.i = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 155, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 126, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.body.cleanup_crit_edge, label %if.then6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %for.body
  %hwaddr = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %hwaddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hwaddr, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %rssi_stat = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 74
  %11 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rssi_stat, align 8
  %rssi_level = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 81
  %13 = ptrtoint ptr %HighRSSIThresh.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %HighRSSIThresh.i, align 1
  %15 = ptrtoint ptr %LowRSSIThresh.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %LowRSSIThresh.i, align 1
  %17 = ptrtoint ptr %rssi_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rssi_level, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %18, label %do.body11.i [
    i8 0, label %if.end9.sw.epilog.i_crit_edge
    i8 1, label %if.end9.sw.epilog.i_crit_edge33
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb4.i
  ]

if.end9.sw.epilog.i_crit_edge33:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end9.sw.epilog.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i8 %14, 5
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i = add i8 %14, 5
  %add9.i = add i8 %16, 5
  br label %sw.epilog.i

do.body11.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ODM_RAStateCheck.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@odm_RefreshRateAdaptiveMaskCE, %if.then.i)) #6
          to label %sw.epilog.i [label %if.then.i], !srcloc !29

if.then.i:                                        ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pDM_Odm, align 8
  %pnetdev.i = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 41
  %22 = ptrtoint ptr %pnetdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pnetdev.i, align 8
  %24 = ptrtoint ptr %rssi_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rssi_level, align 1
  %conv15.i = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ODM_RAStateCheck.__UNIQUE_ID_ddebug345, ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %conv15.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then.i, %do.body11.i, %sw.bb4.i, %sw.bb1.i, %if.end9.sw.epilog.i_crit_edge, %if.end9.sw.epilog.i_crit_edge33
  %LowRSSIThreshForRA.0.i = phi i8 [ %16, %if.then.i ], [ %add9.i, %sw.bb4.i ], [ %16, %sw.bb1.i ], [ %16, %if.end9.sw.epilog.i_crit_edge ], [ %16, %if.end9.sw.epilog.i_crit_edge33 ], [ %16, %do.body11.i ]
  %HighRSSIThreshForRA.0.i = phi i8 [ %14, %if.then.i ], [ %add6.i, %sw.bb4.i ], [ %add.i, %sw.bb1.i ], [ %14, %if.end9.sw.epilog.i_crit_edge ], [ %14, %if.end9.sw.epilog.i_crit_edge33 ], [ %14, %do.body11.i ]
  %conv18.i = zext i8 %HighRSSIThreshForRA.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv18.i)
  %cmp.i = icmp sgt i32 %12, %conv18.i
  %conv21.i = zext i8 %LowRSSIThreshForRA.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv21.i)
  %cmp22.i = icmp sgt i32 %12, %conv21.i
  %..i = select i1 %cmp22.i, i8 2, i8 3
  %RATRState.0.i = select i1 %cmp.i, i8 1, i8 %..i
  %26 = ptrtoint ptr %rssi_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rssi_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %RATRState.0.i)
  %cmp30.not.i.not = icmp eq i8 %27, %RATRState.0.i
  br i1 %cmp30.not.i.not, label %sw.epilog.i.cleanup_crit_edge, label %if.then14

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %rssi_level to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %RATRState.0.i, ptr %rssi_level, align 1
  tail call void @rtw_hal_update_ra_mask(ptr noundef nonnull %7, i8 noundef zeroext %RATRState.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %cleanup.cleanup18_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_update_ra_mask(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @OFDMSwingTable, !1, !"OFDMSwingTable", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 12, i32 5}
!2 = !{ptr @CCKSwingTable_Ch1_Ch13, !3, !"CCKSwingTable_Ch1_Ch13", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 52, i32 4}
!4 = !{ptr @CCKSwingTable_Ch14, !5, !"CCKSwingTable_Ch14", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 88, i32 4}
!6 = !{ptr @OFDMSwingTable_New, !7, !"OFDMSwingTable_New", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 124, i32 5}
!8 = !{ptr @CCKSwingTable_Ch1_Ch13_New, !9, !"CCKSwingTable_Ch1_Ch13_New", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 170, i32 4}
!10 = !{ptr @CCKSwingTable_Ch14_New, !11, !"CCKSwingTable_Ch14_New", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 206, i32 4}
!12 = !{ptr @TxScalingTable_Jaguar, !13, !"TxScalingTable_Jaguar", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 242, i32 5}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/hal/odm.c", i32 503, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ODM_RAStateCheck.__UNIQUE_ID_ddebug345, !15, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148831144, i64 2148831149, i64 2148831162, i64 2148831206, i64 2148831240, i64 2148831261}
!30 = !{i8 0, i8 2}
