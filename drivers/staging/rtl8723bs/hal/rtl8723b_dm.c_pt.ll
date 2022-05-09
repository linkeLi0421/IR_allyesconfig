; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723b_dm.c"
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
%struct.dvobj_priv = type { ptr, i32, %struct.debug_priv, %struct.spinlock, [32 x i32], %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i32, ptr, %struct.cam_ctl_t, [32 x %struct.cam_entry_cache], [2 x i32], [4 x i32], [8 x i8], i8, %struct.atomic_t, %struct.atomic_t, %struct.pwrctrl_priv, %struct.rtw_traffic_statistics, %struct.sdio_data }
%struct.debug_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cam_ctl_t = type { %struct.spinlock, i64 }
%struct.cam_entry_cache = type { i16, [6 x i8], [16 x i8] }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.work_struct, i8, %struct.work_struct, %struct.timer_list, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, ptr, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i32] }
%struct.rtw_traffic_statistics = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.sdio_data = type { i8, i8, i8, i32, ptr, ptr }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_InitHalDm(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  %zero.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %dmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140
  %2 = ptrtoint ptr %dmpriv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dmpriv, align 4
  %DMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 1
  %3 = ptrtoint ptr %DMFlag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %DMFlag, align 1
  %InitDMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 2
  %4 = ptrtoint ptr %InitDMFlag to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %InitDMFlag, align 2
  %dvobj1.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 3
  %5 = ptrtoint ptr %dvobj1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvobj1.i, align 4
  %7 = load ptr, ptr %HalData, align 8
  %odmpriv.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %zero.i) #3
  %8 = ptrtoint ptr %zero.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %zero.i, align 1
  %InitODMFlag.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 140, i32 3
  %9 = ptrtoint ptr %InitODMFlag.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 83968191, ptr %InitODMFlag.i, align 4
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv.i, i32 noundef 1, i64 noundef 83968191) #3
  %traffic_stat.i = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 23
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 20, ptr noundef %traffic_stat.i) #3
  %rx_bytes.i = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 23, i32 6
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 21, ptr noundef %rx_bytes.i) #3
  %cur_wireless_mode.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 10
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 22, ptr noundef %cur_wireless_mode.i) #3
  %nCur40MhzPrimeSC.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 12
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 23, ptr noundef %nCur40MhzPrimeSC.i) #3
  %dot11PrivacyAlgrthm.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 12, i32 1
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 24, ptr noundef %dot11PrivacyAlgrthm.i) #3
  %CurrentChannelBW.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 9
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 25, ptr noundef %CurrentChannelBW.i) #3
  %CurrentChannel.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 10
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 26, ptr noundef %CurrentChannel.i) #3
  %net_closed.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 49
  tail call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 38, ptr noundef %net_closed.i) #3
  call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 39, ptr noundef nonnull %zero.i) #3
  %u1ForcedIgiLb.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 117
  call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 40, ptr noundef %u1ForcedIgiLb.i) #3
  %ForcedDataRate.i = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 16
  call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 27, ptr noundef %ForcedDataRate.i) #3
  %bScanInProcess.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 2
  call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 31, ptr noundef %bScanInProcess.i) #3
  %bpower_saving.i = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 22, i32 14
  call void @ODM_CmnInfoHook(ptr noundef %odmpriv.i, i32 noundef 32, ptr noundef %bpower_saving.i) #3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.037.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv6.i = trunc i32 %i.037.i to i16
  call void @ODM_CmnInfoPtrArrayHook(ptr noundef %odmpriv.i, i32 noundef 60, i16 noundef zeroext %conv6.i, ptr noundef null) #3
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %Update_ODM_ComInfo_8723b.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

Update_ODM_ComInfo_8723b.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %zero.i) #3
  call void @ODM_DMInit(ptr noundef %odmpriv) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_DMInit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_HalDmWatchDog(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  %bFwPSAwake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bFwPSAwake) #3
  %0 = ptrtoint ptr %bFwPSAwake to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bFwPSAwake, align 1
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %1 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %HalData, align 8
  %hw_init_completed1 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 27
  %3 = ptrtoint ptr %hw_init_completed1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init_completed1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.skip_dm_crit_edge, label %if.end

entry.skip_dm_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_dm

if.end:                                           ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 3
  %5 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode3 = getelementptr inbounds %struct.dvobj_priv, ptr %6, i32 0, i32 22, i32 36
  %7 = ptrtoint ptr %fw_current_in_ps_mode3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_current_in_ps_mode3, align 2, !range !9
  call void @rtw_hal_get_hwreg(ptr noundef %Adapter, i8 noundef zeroext 45, ptr noundef nonnull %bFwPSAwake) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp5 = icmp eq i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %or.cond = select i1 %cmp5, i1 %tobool.not, i1 false
  br i1 %or.cond, label %land.lhs.true8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true8:                                   ; preds = %if.end
  %9 = ptrtoint ptr %bFwPSAwake to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bFwPSAwake, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end12_crit_edge, label %if.then11

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  call void @rtw_hal_check_rxfifo_full(ptr noundef %Adapter) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true8.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br i1 %cmp5, label %if.then16, label %if.end12.skip_dm_crit_edge

if.end12.skip_dm_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_dm

if.then16:                                        ; preds = %if.end12
  %call = call i32 @rtw_linked_check(ptr noundef %Adapter) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then16.if.end23_crit_edge, label %if.then18

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %fw_state.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_state.i, align 4
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 3
  %15 = and i8 %14, 1
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then16.if.end23_crit_edge
  %bLinked.0 = phi i8 [ 0, %if.then16.if.end23_crit_edge ], [ 1, %if.then18 ]
  %bsta_state.0 = phi i8 [ 0, %if.then16.if.end23_crit_edge ], [ %15, %if.then18 ]
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 141
  %conv24 = zext i8 %bLinked.0 to i64
  call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 46, i64 noundef %conv24) #3
  %conv26 = zext i8 %bsta_state.0 to i64
  call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 47, i64 noundef %conv26) #3
  %call27 = call zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef %Adapter) #3
  %lnot = xor i1 %call27, true
  %16 = zext i1 %lnot to i64
  call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 54, i64 noundef %16) #3
  call void @ODM_DMWatchdog(ptr noundef %odmpriv) #3
  br label %skip_dm

skip_dm:                                          ; preds = %if.end23, %if.end12.skip_dm_crit_edge, %entry.skip_dm_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bFwPSAwake) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_check_rxfifo_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_linked_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoUpdate(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtDisabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_DMWatchdog(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_hal_dm_in_lps(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %PWDB_rssi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %PWDB_rssi) #3
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %stapriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 11
  %RSSI_Min = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 64
  %2 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RSSI_Min, align 1
  tail call void @ODM_Write_DIG(ptr noundef %odmpriv, i8 noundef zeroext %3) #3
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call1 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address.i) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rssi_stat = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 74
  %4 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rssi_stat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 10
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_id, align 8
  %shl = shl i32 %5, 16
  %or = or i32 %7, %shl
  %8 = ptrtoint ptr %PWDB_rssi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %PWDB_rssi, align 4
  call void @rtl8723b_set_rssi_cmd(ptr noundef %padapter, ptr noundef nonnull %PWDB_rssi) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %PWDB_rssi) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_Write_DIG(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_rssi_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_HalDmWatchDog_in_LPS(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %stapriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 11
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 27
  %2 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.skip_lps_dm_crit_edge, label %if.end

entry.skip_lps_dm_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.end:                                           ; preds = %entry
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %call = tail call i32 @rtw_linked_check(ptr noundef %Adapter) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %conv5 = zext i1 %not.tobool.not to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 46, i64 noundef %conv5) #3
  br i1 %tobool.not, label %if.end.skip_lps_dm_crit_edge, label %if.end10

if.end.skip_lps_dm_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.end10:                                         ; preds = %if.end
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %4 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.skip_lps_dm_crit_edge, label %if.end13

if.end10.skip_lps_dm_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.end13:                                         ; preds = %if.end10
  %mac_address.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call15 = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address.i) #3
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end13.skip_lps_dm_crit_edge, label %if.end18

if.end13.skip_lps_dm_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.end18:                                         ; preds = %if.end13
  %rssi_stat = getelementptr inbounds %struct.sta_info, ptr %call15, i32 0, i32 74
  %6 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rssi_stat, align 8
  %EntryMinUndecoratedSmoothedPWDB = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 6
  %8 = ptrtoint ptr %EntryMinUndecoratedSmoothedPWDB to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %EntryMinUndecoratedSmoothedPWDB, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp20 = icmp slt i32 %7, 1
  br i1 %cmp20, label %if.end18.skip_lps_dm_crit_edge, label %if.end23

if.end18.skip_lps_dm_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.end23:                                         ; preds = %if.end18
  %MinUndecoratedPWDBForDM = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 8
  %9 = ptrtoint ptr %MinUndecoratedPWDBForDM to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %MinUndecoratedPWDBForDM, align 4
  %conv26 = trunc i32 %7 to i8
  %RSSI_Min = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 64
  %10 = ptrtoint ptr %RSSI_Min to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26, ptr %RSSI_Min, align 1
  %CurIGValue = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 131, i32 12
  %11 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %CurIGValue, align 4
  %conv27 = zext i8 %12 to i32
  %conv29 = and i32 %7, 255
  %add = add nuw nsw i32 %conv29, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv27)
  %cmp30 = icmp ult i32 %add, %conv27
  %sub = add nsw i32 %conv29, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv27)
  %cmp36 = icmp sgt i32 %sub, %conv27
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp36
  br i1 %or.cond, label %if.then38, label %if.end23.skip_lps_dm_crit_edge

if.end23.skip_lps_dm_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %skip_lps_dm

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  %call39 = tail call zeroext i8 @rtw_dm_in_lps_wk_cmd(ptr noundef %Adapter) #3
  br label %skip_lps_dm

skip_lps_dm:                                      ; preds = %if.then38, %if.end23.skip_lps_dm_crit_edge, %if.end18.skip_lps_dm_crit_edge, %if.end13.skip_lps_dm_crit_edge, %if.end10.skip_lps_dm_crit_edge, %if.end.skip_lps_dm_crit_edge, %entry.skip_lps_dm_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_dm_in_lps_wk_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_init_dm_priv(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %dmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140
  %2 = call ptr @memset(ptr %dmpriv, i32 0, i32 308)
  %3 = load ptr, ptr %HalData, align 8
  %odmpriv.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 141
  %4 = call ptr @memset(ptr %odmpriv.i, i32 0, i32 4936)
  %5 = ptrtoint ptr %odmpriv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %Adapter, ptr %odmpriv.i, align 8
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 0, i32 noundef 4) #3
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 2, i32 noundef 4) #3
  %PackageType.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %PackageType.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %PackageType.i, align 1
  %conv.i = zext i8 %7 to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 7, i32 noundef %conv.i) #3
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 3, i32 noundef 256) #3
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 5, i32 noundef 0) #3
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 4, i32 noundef 0) #3
  %CustomerID.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %CustomerID.i, align 4
  %conv4.i = zext i16 %9 to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 15, i32 noundef %conv4.i) #3
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 48
  %10 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wifi_spec.i, align 1
  %conv5.i = zext i8 %11 to i32
  tail call void @ODM_CmnInfoInit(ptr noundef %odmpriv.i, i32 noundef 17, i32 noundef %conv5.i) #3
  %InitODMFlag.i = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 140, i32 3
  %12 = ptrtoint ptr %InitODMFlag.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 83886080, ptr %InitODMFlag.i, align 4
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv.i, i32 noundef 1, i64 noundef 83886080) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoHook(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoPtrArrayHook(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoInit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
