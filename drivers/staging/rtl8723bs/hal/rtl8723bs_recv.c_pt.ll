; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.recv_buf = type { %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.odm_packet_info = type { i8, i8, i8, i8, i8 }
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
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, i32, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, [2 x i32], %struct.phy_info }
%struct.phy_info = type { i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], i8, i8, i8, i8, [4 x i8], [4 x i8], i8, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@rtl8723bs_init_recv_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&precvpriv->free_recv_buf_queue.lock\00", [59 x i8] zeroinitializer }, align 32
@rtl8723bs_init_recv_priv.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"&precvpriv->recv_buf_pending_queue.lock\00", [56 x i8] zeroinitializer }, align 32
@initrecvbuf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&precvbuf->recvbuf_lock\00", [40 x i8] zeroinitializer }, align 32
@switch.table.rtl8723bs_recv_tasklet = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 10, i32 4, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 382, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 384, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 15, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [36 x i8] c"switch.table.rtl8723bs_recv_tasklet\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @rtl8723bs_init_recv_priv.__key, ptr @.str, ptr @rtl8723bs_init_recv_priv.__key.1, ptr @.str.2, ptr @initrecvbuf.__key, ptr @.str.3, ptr @switch.table.rtl8723bs_recv_tasklet], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bs_init_recv_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bs_init_recv_priv.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initrecvbuf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723bs_recv_tasklet to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_init_recv_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %free_recv_buf_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22
  %0 = ptrtoint ptr %free_recv_buf_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_recv_buf_queue, ptr %free_recv_buf_queue, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_recv_buf_queue, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 22, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rtl8723bs_init_recv_priv.__key, i16 noundef signext 3) #4
  %recv_buf_pending_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24
  %2 = ptrtoint ptr %recv_buf_pending_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %recv_buf_pending_queue, ptr %recv_buf_pending_queue, align 4
  %prev.i87 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %recv_buf_pending_queue, ptr %prev.i87, align 4
  %lock5 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 24, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock5, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8723bs_init_recv_priv.__key.1, i16 noundef signext 3) #4
  %call9 = tail call ptr @_rtw_zmalloc(i32 noundef 772) #4
  %pallocated_recv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 20
  %4 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %pallocated_recv_buf, align 8
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call9 to i32
  %sub = add i32 %5, 3
  %div86 = and i32 %sub, -4
  %6 = inttoptr i32 %div86 to ptr
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21
  %7 = ptrtoint ptr %precv_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %precv_buf, align 4
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %precvbuf.090 = phi ptr [ %6, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %precvbuf.090 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %precvbuf.090, ptr %precvbuf.090, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %precvbuf.090, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %precvbuf.090, ptr %prev.i.i, align 4
  %recvbuf_lock.i = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.090, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recvbuf_lock.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @initrecvbuf.__key, i16 noundef signext 3) #4
  %adapter.i = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.090, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %padapter, ptr %adapter.i, align 4
  %pskb = getelementptr inbounds %struct.recv_buf, ptr %precvbuf.090, i32 0, i32 11
  %11 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pskb, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.then14, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then14:                                        ; preds = %for.body
  %call15 = tail call ptr @_rtw_skb_alloc(i32 noundef 10248) #4
  %13 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %pskb, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.then14.if.end25_crit_edge, label %if.then19

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pnetdev, align 8
  %16 = getelementptr inbounds %struct.anon.44, ptr %call15, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %18 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pskb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  %and = and i32 %22, 7
  %sub23 = sub nuw nsw i32 8, %and
  %add.ptr.i = getelementptr i8, ptr %21, i32 %sub23
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 %sub23
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then14.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %precvbuf.090, ptr noundef %26, ptr noundef %free_recv_buf_queue) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %precvbuf.090, ptr %prev.i, align 4
  %28 = ptrtoint ptr %precvbuf.090 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %free_recv_buf_queue, ptr %precvbuf.090, align 4
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %precvbuf.090, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %precvbuf.090, i32 1
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 23
  %31 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %free_recv_buf_queue_cnt, align 4
  %recv_tasklet = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 17
  tail call void @tasklet_setup(ptr noundef %recv_tasklet, ptr noundef nonnull @rtl8723bs_recv_tasklet) #4
  br label %exit

exit:                                             ; preds = %for.end, %entry.exit_crit_edge
  %res.0 = phi i32 [ 1, %for.end ], [ 0, %entry.exit_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_skb_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bs_recv_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %pkt_info.i = alloca %struct.odm_packet_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -7336
  %HalData = getelementptr i8, ptr %t, i32 9976
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %recv_buf_pending_queue = getelementptr i8, ptr %t, i32 200
  %call257 = call ptr @rtw_dequeue_recvbuf(ptr noundef %recv_buf_pending_queue) #4
  %tobool.not258 = icmp eq ptr %call257, null
  br i1 %tobool.not258, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %free_recv_queue.i = getelementptr i8, ptr %t, i32 -244
  %ReceiveConfig.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 17
  %pnetdev = getelementptr i8, ptr %t, i32 10312
  %bssid_match.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info.i, i32 0, i32 2
  %to_self.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info.i, i32 0, i32 3
  %is_beacon.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info.i, i32 0, i32 4
  %station_id.i = getelementptr inbounds %struct.odm_packet_info, ptr %pkt_info.i, i32 0, i32 1
  %free_recv_buf_queue = getelementptr i8, ptr %t, i32 144
  br label %if.end

if.end:                                           ; preds = %while.end.if.end_crit_edge, %if.end.lr.ph
  %call259 = phi ptr [ %call257, %if.end.lr.ph ], [ %call, %while.end.if.end_crit_edge ]
  %pdata = getelementptr inbounds %struct.recv_buf, ptr %call259, i32 0, i32 8
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %ptail = getelementptr inbounds %struct.recv_buf, ptr %call259, i32 0, i32 9
  %4 = ptrtoint ptr %ptail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptail, align 4
  %cmp255 = icmp ult ptr %3, %5
  br i1 %cmp255, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %if.end.while.body_crit_edge
  %ptr.0256 = phi ptr [ %add.ptr115, %if.end111.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %call.i = call ptr @rtw_alloc_recvframe(ptr noundef %free_recv_queue.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %while.body
  %call1.i = call i32 @rtw_enqueue_recvbuf_to_head(ptr noundef nonnull %call259, ptr noundef %recv_buf_pending_queue) #4
  %state.i.i = getelementptr i8, ptr %t, i32 4
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__tasklet_schedule(ptr noundef %t) #4
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %6 = ptrtoint ptr %ptr.0256 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr.0256, align 4
  %rxdw1.i = getelementptr inbounds %struct.recv_stat, ptr %ptr.0256, i32 0, i32 1
  %8 = ptrtoint ptr %rxdw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxdw1.i, align 4
  %rxdw2.i = getelementptr inbounds %struct.recv_stat, ptr %ptr.0256, i32 0, i32 2
  %10 = ptrtoint ptr %rxdw2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxdw2.i, align 4
  %rxdw3.i = getelementptr inbounds %struct.recv_stat, ptr %ptr.0256, i32 0, i32 3
  %12 = ptrtoint ptr %rxdw3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxdw3.i, align 4
  %attrib.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6
  %14 = call ptr @memset(ptr %attrib.i, i32 0, i32 116)
  %15 = trunc i32 %11 to i8
  %16 = lshr i8 %15, 1
  %conv.i = and i8 %16, 4
  %pkt_rpt_type.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 32
  %17 = ptrtoint ptr %pkt_rpt_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %pkt_rpt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp.i = icmp eq i8 %conv.i, 0
  br i1 %cmp.i, label %if.then.i211, label %if.else.i

if.then.i211:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %report.sroa.0.sroa.0.0.insert.ext.i = zext i32 %7 to i160
  %bf.lshr11.i = lshr i32 %7, 18
  %conv13.i = trunc i32 %bf.lshr11.i to i16
  %18 = ptrtoint ptr %attrib.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv13.i, ptr %attrib.i, align 4
  %sh.diff.i = lshr i160 %report.sroa.0.sroa.0.0.insert.ext.i, 9
  %tr.sh.diff.i = trunc i160 %sh.diff.i to i8
  %shl.i = and i8 %tr.sh.diff.i, 120
  %drvinfo_sz.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %drvinfo_sz.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %shl.i, ptr %drvinfo_sz.i, align 1
  %20 = trunc i32 %7 to i8
  %21 = lshr i8 %20, 5
  %bf.cast22.i = and i8 %21, 1
  %physt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %physt.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.cast22.i, ptr %physt.i, align 2
  %bf.lshr25.i = lshr i160 %report.sroa.0.sroa.0.0.insert.ext.i, 17
  %23 = trunc i160 %bf.lshr25.i to i8
  %bf.cast27.i = and i8 %23, 1
  %crc_err.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 20
  %24 = ptrtoint ptr %crc_err.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.cast27.i, ptr %crc_err.i, align 2
  %bf.lshr30.i = lshr i160 %report.sroa.0.sroa.0.0.insert.ext.i, 16
  %25 = trunc i160 %bf.lshr30.i to i8
  %bf.cast32.i = and i8 %25, 1
  %icv_err.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 21
  %26 = ptrtoint ptr %icv_err.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.cast32.i, ptr %icv_err.i, align 1
  %27 = lshr i8 %20, 4
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %bdecrypted.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 16
  %30 = ptrtoint ptr %bdecrypted.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bdecrypted.i, align 2
  %bf.cast44.i = and i8 %tr.sh.diff.i, 7
  %encrypt.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 17
  %31 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.cast44.i, ptr %encrypt.i, align 1
  %bf.lshr47.i = lshr i160 %report.sroa.0.sroa.0.0.insert.ext.i, 8
  %32 = trunc i160 %bf.lshr47.i to i8
  %bf.cast49.i = and i8 %32, 1
  %qos.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 7
  %33 = ptrtoint ptr %qos.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.cast49.i, ptr %qos.i, align 4
  %bf.lshr52.i = lshr i32 %9, 20
  %34 = trunc i32 %bf.lshr52.i to i8
  %conv55.i = and i8 %34, 15
  %priority.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 8
  %35 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv55.i, ptr %priority.i, align 1
  %bf.lshr57.i = lshr i32 %9, 18
  %36 = trunc i32 %bf.lshr57.i to i8
  %conv60.i = and i8 %36, 1
  %amsdu.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 6
  %37 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv60.i, ptr %amsdu.i, align 1
  %bf.lshr62.i = lshr i32 %11, 20
  %conv65.i = trunc i32 %bf.lshr62.i to i16
  %seq_num.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 11
  %38 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv65.i, ptr %seq_num.i, align 4
  %bf.lshr67.i = lshr i32 %11, 16
  %39 = trunc i32 %bf.lshr67.i to i8
  %conv70.i = and i8 %39, 15
  %frag_num.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 12
  %40 = ptrtoint ptr %frag_num.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv70.i, ptr %frag_num.i, align 2
  %41 = trunc i32 %9 to i8
  %42 = lshr i8 %41, 4
  %conv75.i = and i8 %42, 1
  %mfrag.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 13
  %43 = ptrtoint ptr %mfrag.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv75.i, ptr %mfrag.i, align 1
  %44 = lshr i8 %41, 5
  %conv80.i = and i8 %44, 1
  %mdata.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 10
  %45 = ptrtoint ptr %mdata.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv80.i, ptr %mdata.i, align 1
  %bf.lshr82.i = lshr i32 %13, 25
  %conv85.i = trunc i32 %bf.lshr82.i to i8
  %data_rate.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 30
  %46 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv85.i, ptr %data_rate.i, align 2
  br label %update_recvframe_attrib.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %bf.lshr87.i = lshr i32 %7, 18
  %conv89.i = trunc i32 %bf.lshr87.i to i16
  %47 = ptrtoint ptr %attrib.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv89.i, ptr %attrib.i, align 4
  br label %update_recvframe_attrib.exit

update_recvframe_attrib.exit:                     ; preds = %if.else.i, %if.then.i211
  %48 = ptrtoint ptr %ReceiveConfig.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ReceiveConfig.i, align 4
  %and.i = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i212 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i212, label %land.lhs.true.i, label %update_recvframe_attrib.exit.if.end7_crit_edge

update_recvframe_attrib.exit.if.end7_crit_edge:   ; preds = %update_recvframe_attrib.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true.i:                                  ; preds = %update_recvframe_attrib.exit
  %crc_err.i213 = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 20
  %50 = ptrtoint ptr %crc_err.i213 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %crc_err.i213, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end7_crit_edge, label %land.lhs.true.i.while.end.sink.split_crit_edge

land.lhs.true.i.while.end.sink.split_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.i.if.end7_crit_edge, %update_recvframe_attrib.exit.if.end7_crit_edge
  %drvinfo_sz = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %drvinfo_sz to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %drvinfo_sz, align 1
  %add = add i8 %53, 24
  %conv9 = zext i8 %add to i32
  %shift_sz10 = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %shift_sz10 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift_sz10, align 4
  %conv11 = zext i8 %55 to i32
  %add12 = add nuw nsw i32 %conv9, %conv11
  %56 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %attrib.i, align 4
  %conv13 = zext i16 %57 to i32
  %add14 = add nuw nsw i32 %add12, %conv13
  %add.ptr15 = getelementptr i8, ptr %ptr.0256, i32 %add14
  %58 = ptrtoint ptr %ptail to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptail, align 4
  %cmp.i217 = icmp ugt ptr %add.ptr15, %59
  br i1 %cmp.i217, label %if.end7.while.end.sink.split_crit_edge, label %if.end19

if.end7.while.end.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end19:                                         ; preds = %if.end7
  %crc_err = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 20
  %60 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %crc_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not = icmp eq i8 %61, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end19.if.then24_crit_edge

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end19
  %icv_err = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 21
  %62 = ptrtoint ptr %icv_err to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %icv_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool23.not = icmp eq i8 %63, 0
  br i1 %tobool23.not, label %if.else, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end19.if.then24_crit_edge
  %call25 = call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #4
  br label %if.end111

if.else:                                          ; preds = %lor.lhs.false
  %qos = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 7
  %64 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool26.not = icmp eq i8 %65, 0
  %. = select i1 %tobool26.not, i32 0, i32 6
  %66 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %attrib.i, align 4
  %conv31 = zext i16 %67 to i32
  %mfrag = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 13
  %68 = ptrtoint ptr %mfrag to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mfrag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp33 = icmp eq i8 %69, 1
  br i1 %cmp33, label %land.lhs.true, label %if.else.if.else45_crit_edge

if.else.if.else45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

land.lhs.true:                                    ; preds = %if.else
  %frag_num = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 12
  %70 = ptrtoint ptr %frag_num to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %frag_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp36 = icmp eq i8 %71, 0
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.else45_crit_edge

land.lhs.true.if.else45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else45

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1651, i16 %67)
  %cmp39 = icmp ult i16 %67, 1651
  %add43 = add nuw nsw i32 %conv31, 14
  %spec.select210 = select i1 %cmp39, i32 1664, i32 %add43
  br label %if.end47

if.else45:                                        ; preds = %land.lhs.true.if.else45_crit_edge, %if.else.if.else45_crit_edge
  %add46 = add nuw nsw i32 %conv31, 14
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then38
  %alloc_sz.0 = phi i32 [ %add46, %if.else45 ], [ %spec.select210, %if.then38 ]
  %call48 = call ptr @_rtw_skb_alloc(i32 noundef %alloc_sz.0) #4
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.while.end.sink.split_crit_edge, label %if.end.i

if.end47.while.end.sink.split_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end.i:                                         ; preds = %if.end47
  %72 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pnetdev, align 8
  %74 = getelementptr inbounds %struct.anon.44, ptr %call48, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %74, align 8
  %pkt = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call48, ptr %pkt, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 19
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %79 = ptrtoint ptr %78 to i32
  %and = and i32 %79, 7
  %sub = sub nuw nsw i32 8, %and
  %add.ptr.i = getelementptr i8, ptr %78, i32 %sub
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 16
  %80 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %81, i32 %sub
  %add.ptr.i222 = getelementptr i8, ptr %add.ptr.i, i32 %.
  store ptr %add.ptr.i222, ptr %data, align 4
  %add.ptr1.i224 = getelementptr i8, ptr %add.ptr1.i, i32 %.
  store ptr %add.ptr1.i224, ptr %tail.i, align 8
  %add.ptr57 = getelementptr i8, ptr %ptr.0256, i32 %conv9
  %82 = ptrtoint ptr %shift_sz10 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %shift_sz10, align 4
  %conv59 = zext i8 %83 to i32
  %add.ptr60 = getelementptr i8, ptr %add.ptr57, i32 %conv59
  %84 = call ptr @memcpy(ptr %add.ptr.i222, ptr %add.ptr60, i32 %conv31)
  %head = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 18
  %85 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head, align 8
  %rx_head = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 8
  %87 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %rx_head, align 4
  %88 = load ptr, ptr %data, align 4
  %rx_tail = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %rx_tail, align 4
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 9
  %90 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %88, ptr %rx_data, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call48, i32 0, i32 17
  %91 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i, align 4
  %rx_end = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 11
  %93 = ptrtoint ptr %rx_end to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %rx_end, align 4
  %add.ptr.i226 = getelementptr i8, ptr %88, i32 %conv31
  store ptr %add.ptr.i226, ptr %rx_tail, align 4
  %cmp3.i = icmp ugt ptr %add.ptr.i226, %92
  br i1 %cmp3.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %88, ptr %rx_tail, align 4
  br label %recvframe_put.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %len.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 7
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  %add.i = add i32 %96, %conv31
  store i32 %add.i, ptr %len.i, align 4
  br label %recvframe_put.exit

recvframe_put.exit:                               ; preds = %if.end6.i, %if.then4.i
  %97 = ptrtoint ptr %ReceiveConfig.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ReceiveConfig.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %tobool65.not = icmp sgt i32 %98, -1
  br i1 %tobool65.not, label %recvframe_put.exit.if.end68_crit_edge, label %if.end.i230

recvframe_put.exit.if.end68_crit_edge:            ; preds = %recvframe_put.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.end.i230:                                      ; preds = %recvframe_put.exit
  %99 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_tail, align 4
  %add.ptr.i229 = getelementptr i8, ptr %100, i32 -4
  store ptr %add.ptr.i229, ptr %rx_tail, align 4
  %101 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_data, align 4
  %cmp2.i = icmp ult ptr %add.ptr.i229, %102
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i232

if.then3.i:                                       ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #6
  %103 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %rx_tail, align 4
  br label %if.end68

if.end6.i232:                                     ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #6
  %len.i231 = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 7
  %104 = ptrtoint ptr %len.i231 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len.i231, align 4
  %sub.i = add i32 %105, -4
  store i32 %sub.i, ptr %len.i231, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end6.i232, %if.then3.i, %recvframe_put.exit.if.end68_crit_edge
  %106 = ptrtoint ptr %ReceiveConfig.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ReceiveConfig.i, align 4
  %and71 = and i32 %107, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %spec.select.v = select i1 %tobool72.not, i32 24, i32 28
  %spec.select = getelementptr i8, ptr %ptr.0256, i32 %spec.select.v
  %108 = ptrtoint ptr %pkt_rpt_type.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pkt_rpt_type.i, align 4
  %110 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values)
  switch i8 %109, label %if.end68.if.end111_crit_edge [
    i8 0, label %if.then79
    i8 4, label %if.then89
  ]

if.end68.if.end111_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then79:                                        ; preds = %if.end68
  %physt = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %physt to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %physt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool80.not = icmp eq i8 %112, 0
  br i1 %tobool80.not, label %if.then79.if.end82_crit_edge, label %get_recvframe_data.exit.i

if.then79.if.end82_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

get_recvframe_data.exit.i:                        ; preds = %if.then79
  %adapter.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 3
  %113 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter.i, align 4
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %HalData.i, align 8
  %phy_info.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 34
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pkt_info.i) #4
  %117 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %pkt_info.i, align 4
  %118 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx_data, align 4
  %mac_address.i.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 4, i32 20, i32 6, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %119, align 2
  %trunc.i.i = trunc i16 %121 to i2
  %rev.i.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i.i) #4
  %or.i.i = zext i2 %rev.i.i to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl8723bs_recv_tasklet, i32 0, i32 %or.i.i
  %122 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %122)
  %switch.load = load i32, ptr %switch.gep, align 4
  %123 = ptrtoint ptr %119 to i32
  %add11.i.i = add i32 %switch.load, %123
  %sa.0.i.i = inttoptr i32 %add11.i.i to ptr
  %124 = and i16 %121, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %124)
  %cmp.i96.not.i = icmp eq i16 %124, 1024
  br i1 %cmp.i96.not.i, label %get_recvframe_data.exit.i.land.end14.thread.i_crit_edge, label %land.lhs.true.i234

get_recvframe_data.exit.i.land.end14.thread.i_crit_edge: ; preds = %get_recvframe_data.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end14.thread.i

land.lhs.true.i234:                               ; preds = %get_recvframe_data.exit.i
  %125 = ptrtoint ptr %icv_err to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %icv_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool4.not.i = icmp eq i8 %126, 0
  br i1 %tobool4.not.i, label %land.lhs.true5.i, label %land.lhs.true.i234.land.end14.thread.i_crit_edge

land.lhs.true.i234.land.end14.thread.i_crit_edge: ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end14.thread.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i234
  %127 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %crc_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool6.not.i = icmp eq i8 %128, 0
  br i1 %tobool6.not.i, label %land.end.i, label %land.lhs.true5.i.land.end14.thread.i_crit_edge

land.lhs.true5.i.land.end14.thread.i_crit_edge:   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end14.thread.i

land.end.i:                                       ; preds = %land.lhs.true5.i
  %129 = ptrtoint ptr %sa.0.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sa.0.i.i, align 4
  %131 = ptrtoint ptr %mac_address.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mac_address.i.i, align 4
  %xor.i.i = xor i32 %132, %130
  %add.ptr.i.i = getelementptr i8, ptr %sa.0.i.i, i32 4
  %133 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.adapter, ptr %114, i32 0, i32 4, i32 20, i32 6, i32 1, i32 4
  %135 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %136, %134
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i97.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i97.i)
  %cmp.i98.i = icmp eq i32 %or.i97.i, 0
  %frombool.i = zext i1 %cmp.i98.i to i8
  %137 = ptrtoint ptr %bssid_match.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %frombool.i, ptr %bssid_match.i, align 2
  br i1 %cmp.i98.i, label %land.rhs18.i, label %land.end.i.land.end14.thread.i_crit_edge

land.end.i.land.end14.thread.i_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end14.thread.i

land.end14.thread.i:                              ; preds = %land.end.i.land.end14.thread.i_crit_edge, %land.lhs.true5.i.land.end14.thread.i_crit_edge, %land.lhs.true.i234.land.end14.thread.i_crit_edge, %get_recvframe_data.exit.i.land.end14.thread.i_crit_edge
  %138 = ptrtoint ptr %to_self.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %to_self.i, align 1
  br label %land.end20.i

land.rhs18.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_addr.i.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 15, i32 4
  %add.i.i = add i32 %123, 4
  %139 = inttoptr i32 %add.i.i to ptr
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %142 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mac_addr.i.i, align 4
  %xor.i99.i = xor i32 %143, %141
  %add.ptr.i100.i = getelementptr i8, ptr %139, i32 4
  %144 = ptrtoint ptr %add.ptr.i100.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %add.ptr.i100.i, align 2
  %add.ptr1.i101.i = getelementptr %struct.adapter, ptr %114, i32 0, i32 15, i32 4, i32 4
  %146 = ptrtoint ptr %add.ptr1.i101.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr1.i101.i, align 2
  %xor37.i102.i = xor i16 %147, %145
  %xor3.i103.i = zext i16 %xor37.i102.i to i32
  %or.i104.i = or i32 %xor.i99.i, %xor3.i103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i104.i)
  %cmp.i105.i = icmp eq i32 %or.i104.i, 0
  %frombool15.i = zext i1 %cmp.i105.i to i8
  %148 = ptrtoint ptr %to_self.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %frombool15.i, ptr %to_self.i, align 1
  %149 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %119, align 2
  %151 = and i16 %150, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %151)
  %cmp.i236 = icmp eq i16 %151, -32768
  br label %land.end20.i

land.end20.i:                                     ; preds = %land.rhs18.i, %land.end14.thread.i
  %152 = phi i1 [ %cmp.i236, %land.rhs18.i ], [ false, %land.end14.thread.i ]
  %frombool21.i = zext i1 %152 to i8
  %153 = ptrtoint ptr %is_beacon.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %frombool21.i, ptr %is_beacon.i, align 4
  %add.i106.i = add i32 %123, 10
  %154 = inttoptr i32 %add.i106.i to ptr
  %155 = ptrtoint ptr %station_id.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -1, ptr %station_id.i, align 1
  %stapriv.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 11
  %call23.i = call ptr @rtw_get_stainfo(ptr noundef %stapriv.i, ptr noundef %154) #4
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end32.critedge.i, label %if.then.i237

if.then.i237:                                     ; preds = %land.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_id.i = getelementptr inbounds %struct.sta_info, ptr %call23.i, i32 0, i32 10
  %156 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mac_id.i, align 8
  %conv25.i = trunc i32 %157 to i8
  %158 = ptrtoint ptr %station_id.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv25.i, ptr %station_id.i, align 1
  %data_rate.c.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 30
  %159 = ptrtoint ptr %data_rate.c.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %data_rate.c.i, align 2
  %161 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %pkt_info.i, align 4
  %odmpriv.c.i = getelementptr inbounds %struct.hal_com_data, ptr %116, i32 0, i32 141
  call void @odm_phy_status_query(ptr noundef %odmpriv.c.i, ptr noundef %phy_info.i, ptr noundef %spec.select, ptr noundef nonnull %pkt_info.i) #4
  %RecvSignalPower.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 34, i32 8
  %162 = ptrtoint ptr %RecvSignalPower.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %RecvSignalPower.i, align 1
  %conv31.i = sext i8 %163 to i32
  %rssi.i = getelementptr inbounds %struct.sta_info, ptr %call23.i, i32 0, i32 23
  %164 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv31.i, ptr %rssi.i, align 4
  br label %if.end32.i

if.end32.critedge.i:                              ; preds = %land.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %data_rate.c94.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 6, i32 30
  %165 = ptrtoint ptr %data_rate.c94.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %data_rate.c94.i, align 2
  %167 = ptrtoint ptr %pkt_info.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %pkt_info.i, align 4
  %odmpriv.c95.i = getelementptr inbounds %struct.hal_com_data, ptr %116, i32 0, i32 141
  call void @odm_phy_status_query(ptr noundef %odmpriv.c95.i, ptr noundef %phy_info.i, ptr noundef %spec.select, ptr noundef nonnull %pkt_info.i) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.critedge.i, %if.then.i237
  %psta33.i = getelementptr inbounds %struct.recv_frame_hdr, ptr %call.i, i32 0, i32 13
  %168 = ptrtoint ptr %psta33.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %psta33.i, align 4
  %169 = ptrtoint ptr %bssid_match.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bssid_match.i, align 2, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool35.not.i = icmp eq i8 %170, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.else.i238_crit_edge, label %land.lhs.true37.i

if.end32.i.if.else.i238_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i238

land.lhs.true37.i:                                ; preds = %if.end32.i
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 4, i32 1
  %171 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %172, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %land.lhs.true37.i.if.else.i238_crit_edge, label %if.then42.i

land.lhs.true37.i.if.else.i238_crit_edge:         ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i238

if.then42.i:                                      ; preds = %land.lhs.true37.i
  br i1 %tobool24.not.i, label %if.then42.i.update_recvframe_phyinfo.exit_crit_edge, label %if.then42.i.if.end64.sink.split.sink.split.i_crit_edge

if.then42.i.if.end64.sink.split.sink.split.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.sink.split.sink.split.i

if.then42.i.update_recvframe_phyinfo.exit_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_recvframe_phyinfo.exit

if.else.i238:                                     ; preds = %land.lhs.true37.i.if.else.i238_crit_edge, %if.end32.i.if.else.i238_crit_edge
  %173 = ptrtoint ptr %to_self.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %to_self.i, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool48.not.i = icmp eq i8 %174, 0
  br i1 %tobool48.not.i, label %lor.lhs.false.i, label %if.else.i238.if.then53.i_crit_edge

if.else.i238.if.then53.i_crit_edge:               ; preds = %if.else.i238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i

lor.lhs.false.i:                                  ; preds = %if.else.i238
  %175 = ptrtoint ptr %is_beacon.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %is_beacon.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool51.not.i = icmp eq i8 %176, 0
  br i1 %tobool51.not.i, label %lor.lhs.false.i.update_recvframe_phyinfo.exit_crit_edge, label %lor.lhs.false.i.if.then53.i_crit_edge

lor.lhs.false.i.if.then53.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i

lor.lhs.false.i.update_recvframe_phyinfo.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %update_recvframe_phyinfo.exit

if.then53.i:                                      ; preds = %lor.lhs.false.i.if.then53.i_crit_edge, %if.else.i238.if.then53.i_crit_edge
  %fw_state.i108.i = getelementptr inbounds %struct.adapter, ptr %114, i32 0, i32 4, i32 1
  %177 = ptrtoint ptr %fw_state.i108.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fw_state.i108.i, align 4
  %and.i109.i = and i32 %178, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109.i)
  %tobool.not.i110.not.i = icmp eq i32 %and.i109.i, 0
  %brmerge.i = select i1 %tobool.not.i110.not.i, i1 true, i1 %tobool24.not.i
  br i1 %brmerge.i, label %if.then53.i.if.end64.sink.split.i_crit_edge, label %if.then53.i.if.end64.sink.split.sink.split.i_crit_edge

if.then53.i.if.end64.sink.split.sink.split.i_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.sink.split.sink.split.i

if.then53.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.sink.split.i

if.end64.sink.split.sink.split.i:                 ; preds = %if.then53.i.if.end64.sink.split.sink.split.i_crit_edge, %if.then42.i.if.end64.sink.split.sink.split.i_crit_edge
  %179 = ptrtoint ptr %psta33.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call23.i, ptr %psta33.i, align 4
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.end64.sink.split.sink.split.i, %if.then53.i.if.end64.sink.split.i_crit_edge
  call void @rtl8723b_process_phy_info(ptr noundef %114, ptr noundef nonnull %call.i) #4
  br label %update_recvframe_phyinfo.exit

update_recvframe_phyinfo.exit:                    ; preds = %if.end64.sink.split.i, %lor.lhs.false.i.update_recvframe_phyinfo.exit_crit_edge, %if.then42.i.update_recvframe_phyinfo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pkt_info.i) #4
  br label %if.end82

if.end82:                                         ; preds = %update_recvframe_phyinfo.exit, %if.then79.if.end82_crit_edge
  %call83 = call i32 @rtw_recv_entry(ptr noundef nonnull %call.i) #4
  br label %if.end111

if.then89:                                        ; preds = %if.end68
  %180 = ptrtoint ptr %attrib.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %attrib.i, align 4
  %182 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rx_data, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %183, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %185)
  %cmp99 = icmp eq i8 %185, 3
  br i1 %cmp99, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr96 = getelementptr i8, ptr %183, i32 2
  %conv93 = trunc i16 %181 to i8
  %sub94 = add i8 %conv93, -2
  call void @CCX_FwC2HTxRpt_8723b(ptr noundef %add.ptr, ptr noundef %add.ptr96, i8 noundef zeroext %sub94) #4
  br label %if.end106

if.else103:                                       ; preds = %if.then89
  %conv.i239 = zext i16 %181 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp.i240 = icmp eq i16 %181, 0
  br i1 %cmp.i240, label %if.else103.if.end106_crit_edge, label %if.end.i243

if.else103.if.end106_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.end.i243:                                      ; preds = %if.else103
  %call.i241 = call ptr @_rtw_zmalloc(i32 noundef %conv.i239) #4
  %tobool.not.i242 = icmp eq ptr %call.i241, null
  br i1 %tobool.not.i242, label %if.end.i243.if.end106_crit_edge, label %if.end4.i

if.end.i243.if.end106_crit_edge:                  ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.end4.i:                                        ; preds = %if.end.i243
  %186 = call ptr @memcpy(ptr %call.i241, ptr %183, i32 %conv.i239)
  %call6.i = call zeroext i8 @rtw_c2h_packet_wk_cmd(ptr noundef %add.ptr, ptr noundef nonnull %call.i241, i16 noundef zeroext %181) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6.i)
  %tobool7.not.i = icmp eq i8 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end4.i.if.end106_crit_edge

if.end4.i.if.end106_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call.i241) #4
  br label %if.end106

if.end106:                                        ; preds = %if.then8.i, %if.end4.i.if.end106_crit_edge, %if.end.i243.if.end106_crit_edge, %if.else103.if.end106_crit_edge, %if.then101
  %call108 = call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #4
  br label %if.end111

if.end111:                                        ; preds = %if.end106, %if.end82, %if.end68.if.end111_crit_edge, %if.then24
  %sub112 = add nsw i32 %add14, -1
  %or = or i32 %sub112, 7
  %add113 = add nsw i32 %or, 1
  %187 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdata, align 4
  %add.ptr115 = getelementptr i8, ptr %188, i32 %add113
  store ptr %add.ptr115, ptr %pdata, align 4
  %189 = ptrtoint ptr %ptail to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ptail, align 4
  %cmp = icmp ult ptr %add.ptr115, %190
  br i1 %cmp, label %if.end111.while.body_crit_edge, label %if.end111.while.end_crit_edge

if.end111.while.end_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end.sink.split:                             ; preds = %if.end47.while.end.sink.split_crit_edge, %if.end7.while.end.sink.split_crit_edge, %land.lhs.true.i.while.end.sink.split_crit_edge
  %call.i219 = call i32 @rtw_free_recvframe(ptr noundef nonnull %call.i, ptr noundef %free_recv_queue.i) #4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end111.while.end_crit_edge, %if.end.while.end_crit_edge
  %call117 = call i32 @rtw_enqueue_recvbuf(ptr noundef nonnull %call259, ptr noundef %free_recv_buf_queue) #4
  %call = call ptr @rtw_dequeue_recvbuf(ptr noundef %recv_buf_pending_queue) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %if.then.i.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_os_recvbuf_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723bs_free_recv_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_tasklet = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 17
  tail call void @tasklet_kill(ptr noundef %recv_tasklet) #4
  %precv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 21
  %0 = ptrtoint ptr %precv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %precv_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %free_recv_buf_queue_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 23
  %2 = ptrtoint ptr %free_recv_buf_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %free_recv_buf_queue_cnt, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef nonnull %1) #4
  %incdec.ptr = getelementptr %struct.recv_buf, ptr %1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr) #4
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_del_init.exit.list_del_init.exit.1_crit_edge

list_del_init.exit.list_del_init.exit.1_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.1

if.end.i.i.1:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.1 = getelementptr %struct.recv_buf, ptr %1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.1, align 4
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.1, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.1

list_del_init.exit.1:                             ; preds = %if.end.i.i.1, %list_del_init.exit.list_del_init.exit.1_crit_edge
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %incdec.ptr, ptr %incdec.ptr, align 4
  %prev.i3.i.1 = getelementptr %struct.recv_buf, ptr %1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %incdec.ptr, ptr %prev.i3.i.1, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr) #4
  %incdec.ptr.1 = getelementptr %struct.recv_buf, ptr %1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.1) #4
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_del_init.exit.1.list_del_init.exit.2_crit_edge

list_del_init.exit.1.list_del_init.exit.2_crit_edge: ; preds = %list_del_init.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.2

if.end.i.i.2:                                     ; preds = %list_del_init.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.2 = getelementptr %struct.recv_buf, ptr %1, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.2, align 4
  %21 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %incdec.ptr.1, align 4
  %prev1.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.2, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.2

list_del_init.exit.2:                             ; preds = %if.end.i.i.2, %list_del_init.exit.1.list_del_init.exit.2_crit_edge
  %25 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %incdec.ptr.1, ptr %incdec.ptr.1, align 4
  %prev.i3.i.2 = getelementptr %struct.recv_buf, ptr %1, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.1, ptr %prev.i3.i.2, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.1) #4
  %incdec.ptr.2 = getelementptr %struct.recv_buf, ptr %1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.2) #4
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_del_init.exit.2.list_del_init.exit.3_crit_edge

list_del_init.exit.2.list_del_init.exit.3_crit_edge: ; preds = %list_del_init.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.3

if.end.i.i.3:                                     ; preds = %list_del_init.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.3 = getelementptr %struct.recv_buf, ptr %1, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.3, align 4
  %29 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %incdec.ptr.2, align 4
  %prev1.i.i.i.3 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.3, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit.3

list_del_init.exit.3:                             ; preds = %if.end.i.i.3, %list_del_init.exit.2.list_del_init.exit.3_crit_edge
  %33 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %incdec.ptr.2, ptr %incdec.ptr.2, align 4
  %prev.i3.i.3 = getelementptr %struct.recv_buf, ptr %1, i32 3, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %incdec.ptr.2, ptr %prev.i3.i.3, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.2) #4
  %incdec.ptr.3 = getelementptr %struct.recv_buf, ptr %1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.3) #4
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_del_init.exit.3.list_del_init.exit.4_crit_edge

list_del_init.exit.3.list_del_init.exit.4_crit_edge: ; preds = %list_del_init.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.4

if.end.i.i.4:                                     ; preds = %list_del_init.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.4 = getelementptr %struct.recv_buf, ptr %1, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.4, align 4
  %37 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %incdec.ptr.3, align 4
  %prev1.i.i.i.4 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.4, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit.4

list_del_init.exit.4:                             ; preds = %if.end.i.i.4, %list_del_init.exit.3.list_del_init.exit.4_crit_edge
  %41 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %incdec.ptr.3, ptr %incdec.ptr.3, align 4
  %prev.i3.i.4 = getelementptr %struct.recv_buf, ptr %1, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr.3, ptr %prev.i3.i.4, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.3) #4
  %incdec.ptr.4 = getelementptr %struct.recv_buf, ptr %1, i32 5
  %call.i.i.5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.4) #4
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_del_init.exit.4.list_del_init.exit.5_crit_edge

list_del_init.exit.4.list_del_init.exit.5_crit_edge: ; preds = %list_del_init.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.5

if.end.i.i.5:                                     ; preds = %list_del_init.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.5 = getelementptr %struct.recv_buf, ptr %1, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.5, align 4
  %45 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %incdec.ptr.4, align 4
  %prev1.i.i.i.5 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.5, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del_init.exit.5

list_del_init.exit.5:                             ; preds = %if.end.i.i.5, %list_del_init.exit.4.list_del_init.exit.5_crit_edge
  %49 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %incdec.ptr.4, ptr %incdec.ptr.4, align 4
  %prev.i3.i.5 = getelementptr %struct.recv_buf, ptr %1, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i3.i.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %incdec.ptr.4, ptr %prev.i3.i.5, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.4) #4
  %incdec.ptr.5 = getelementptr %struct.recv_buf, ptr %1, i32 6
  %call.i.i.6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.5) #4
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_del_init.exit.5.list_del_init.exit.6_crit_edge

list_del_init.exit.5.list_del_init.exit.6_crit_edge: ; preds = %list_del_init.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.6

if.end.i.i.6:                                     ; preds = %list_del_init.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.6 = getelementptr %struct.recv_buf, ptr %1, i32 6, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.6, align 4
  %53 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %incdec.ptr.5, align 4
  %prev1.i.i.i.6 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.6, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit.6

list_del_init.exit.6:                             ; preds = %if.end.i.i.6, %list_del_init.exit.5.list_del_init.exit.6_crit_edge
  %57 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %incdec.ptr.5, ptr %incdec.ptr.5, align 4
  %prev.i3.i.6 = getelementptr %struct.recv_buf, ptr %1, i32 6, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i3.i.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr.5, ptr %prev.i3.i.6, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.5) #4
  %incdec.ptr.6 = getelementptr %struct.recv_buf, ptr %1, i32 7
  %call.i.i.7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %incdec.ptr.6) #4
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_del_init.exit.6.list_del_init.exit.7_crit_edge

list_del_init.exit.6.list_del_init.exit.7_crit_edge: ; preds = %list_del_init.exit.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.7

if.end.i.i.7:                                     ; preds = %list_del_init.exit.6
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.7 = getelementptr %struct.recv_buf, ptr %1, i32 7, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.7, align 4
  %61 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %incdec.ptr.6, align 4
  %prev1.i.i.i.7 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.7, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit.7

list_del_init.exit.7:                             ; preds = %if.end.i.i.7, %list_del_init.exit.6.list_del_init.exit.7_crit_edge
  %65 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %incdec.ptr.6, ptr %incdec.ptr.6, align 4
  %prev.i3.i.7 = getelementptr %struct.recv_buf, ptr %1, i32 7, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i3.i.7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %incdec.ptr.6, ptr %prev.i3.i.7, align 4
  tail call void @rtw_os_recvbuf_resource_free(ptr noundef %padapter, ptr noundef %incdec.ptr.6) #4
  %67 = ptrtoint ptr %precv_buf to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %precv_buf, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit.7, %entry.if.end_crit_edge
  %pallocated_recv_buf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 10, i32 20
  %68 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pallocated_recv_buf, align 8
  tail call void @kfree(ptr noundef %69) #4
  %70 = ptrtoint ptr %pallocated_recv_buf to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %pallocated_recv_buf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_dequeue_recvbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_recvframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_recv_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @CCX_FwC2HTxRpt_8723b(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_recvbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_recvframe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_recvbuf_to_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @odm_phy_status_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_process_phy_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_c2h_packet_wk_cmd(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @rtl8723bs_init_recv_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c", i32 382, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rtl8723bs_init_recv_priv.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c", i32 384, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @initrecvbuf.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c", i32 15, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
