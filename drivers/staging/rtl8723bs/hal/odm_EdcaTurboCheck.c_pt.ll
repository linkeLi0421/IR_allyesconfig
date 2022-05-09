; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 8]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ODM_EdcaTurboInit(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %DM_EDCA_Table = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 141
  %2 = ptrtoint ptr %DM_EDCA_Table to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %DM_EDCA_Table, align 4
  %bIsCurRDLState = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 141, i32 1
  %3 = ptrtoint ptr %bIsCurRDLState to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bIsCurRDLState, align 1
  %bIsAnyNonBEPkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %bIsAnyNonBEPkts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bIsAnyNonBEPkts, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_EdcaTurboCheck(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 13
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @odm_EdcaTurboCheckCE(ptr noundef %pDM_VOID)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_EdcaTurboCheckCE(ptr nocapture noundef %pDM_VOID) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_VOID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_VOID, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %HalData = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %HalData, align 8
  %bLinked = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 62
  %6 = ptrtoint ptr %bLinked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bLinked, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bIsAnyNonBEPkts = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %8 = ptrtoint ptr %bIsAnyNonBEPkts to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bIsAnyNonBEPkts, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14, i32 48
  %9 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %bIsAnyNonBEPkts4 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %11 = ptrtoint ptr %bIsAnyNonBEPkts4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bIsAnyNonBEPkts4, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pwirelessmode = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 40
  %12 = ptrtoint ptr %pwirelessmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwirelessmode, align 8
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %phi.cast = zext i8 %15 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %wirelessmode.0 = phi i32 [ %phi.cast, %if.then7 ], [ 255, %if.end5.if.end9_crit_edge ]
  %assoc_AP_vendor = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5, i32 18, i32 14
  %16 = ptrtoint ptr %assoc_AP_vendor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %assoc_AP_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %17)
  %cmp11 = icmp ugt i8 %17, 17
  %bIsAnyNonBEPkts14 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %bIsAnyNonBEPkts14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bIsAnyNonBEPkts14, align 8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %19 = ptrtoint ptr %bIsAnyNonBEPkts14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bIsAnyNonBEPkts14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %if.else30, label %if.else92

if.else30:                                        ; preds = %lor.lhs.false
  %cur_rx_bytes23 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 23, i32 9
  %21 = ptrtoint ptr %cur_rx_bytes23 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cur_rx_bytes23, align 8
  %cur_tx_bytes21 = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 23, i32 3
  %23 = ptrtoint ptr %cur_tx_bytes21 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cur_tx_bytes21, align 8
  %shl31 = shl i64 %24, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %shl31)
  %cmp32 = icmp ugt i64 %22, %shl31
  %. = zext i1 %cmp32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %cmp38 = icmp eq i8 %17, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %wirelessmode.0)
  %cmp41 = icmp eq i32 %wirelessmode.0, 8
  %or.cond = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.else30.if.end85_crit_edge, label %if.else45

if.else30.if.end85_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.else45:                                        ; preds = %if.else30
  %wirelessmode.0.off = add nsw i32 %wirelessmode.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %wirelessmode.0.off)
  %switch = icmp ult i32 %wirelessmode.0.off, 3
  %or.cond155 = select i1 %cmp38, i1 %switch, i1 false
  br i1 %or.cond155, label %if.else45.if.end85_crit_edge, label %if.else62

if.else45.if.end85_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.else62:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %17)
  %cmp63 = icmp eq i8 %17, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %wirelessmode.0)
  %cmp67 = icmp eq i32 %wirelessmode.0, 2
  %or.cond154 = select i1 %cmp63, i1 %cmp67, i1 false
  br i1 %or.cond154, label %if.else62.if.end85_crit_edge, label %if.else70

if.else62.if.end85_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.else70:                                        ; preds = %if.else62
  %25 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end85.fold.split [
    i8 8, label %if.else70.if.end85_crit_edge
    i8 5, label %if.then79
  ]

if.else70.if.end85_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then79:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.end85.fold.split:                              ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.end85:                                         ; preds = %if.end85.fold.split, %if.then79, %if.else70.if.end85_crit_edge, %if.else62.if.end85_crit_edge, %if.else45.if.end85_crit_edge, %if.else30.if.end85_crit_edge
  %EDCA_BE_UL.0 = phi i32 [ 6202411, %if.then79 ], [ 4105264, %if.else30.if.end85_crit_edge ], [ 6202411, %if.else62.if.end85_crit_edge ], [ 6202447, %if.else70.if.end85_crit_edge ], [ 6202411, %if.end85.fold.split ], [ 6202411, %if.else45.if.end85_crit_edge ]
  %EDCA_BE_DL.0 = phi i32 [ 42544, %if.then79 ], [ 6202928, %if.else30.if.end85_crit_edge ], [ 42544, %if.else62.if.end85_crit_edge ], [ 42063, %if.else70.if.end85_crit_edge ], [ 6202411, %if.end85.fold.split ], [ 42027, %if.else45.if.end85_crit_edge ]
  %EDCA_BE_DL.0.EDCA_BE_UL.0 = select i1 %cmp32, i32 %EDCA_BE_DL.0, i32 %EDCA_BE_UL.0
  %call = tail call i32 @rtw_write32(ptr noundef %1, i32 noundef 1288, i32 noundef %EDCA_BE_DL.0.EDCA_BE_UL.0) #3
  %DM_EDCA_Table = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 141
  %prv_traffic_idx = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 141, i32 2
  %26 = ptrtoint ptr %prv_traffic_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %., ptr %prv_traffic_idx, align 4
  %27 = ptrtoint ptr %DM_EDCA_Table to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %DM_EDCA_Table, align 4
  br label %cleanup

if.else92:                                        ; preds = %lor.lhs.false
  %DM_EDCA_Table93 = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_VOID, i32 0, i32 141
  %28 = ptrtoint ptr %DM_EDCA_Table93 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DM_EDCA_Table93, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool95.not = icmp eq i8 %29, 0
  br i1 %tobool95.not, label %if.else92.cleanup_crit_edge, label %if.then96

if.else92.cleanup_crit_edge:                      ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then96:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #5
  %AcParam_BE = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 98
  %30 = ptrtoint ptr %AcParam_BE to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %AcParam_BE, align 4
  %call97 = tail call i32 @rtw_write32(ptr noundef %1, i32 noundef 1288, i32 noundef %31) #3
  %32 = ptrtoint ptr %DM_EDCA_Table93 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %DM_EDCA_Table93, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.else92.cleanup_crit_edge, %if.end85, %if.then13, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"edca_setting_DL", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c", i32 25, i32 12}
!2 = distinct !{null, !3, !"edca_setting_UL", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c", i32 18, i32 12}
!4 = distinct !{null, !5, !"edca_setting_DL_GMode", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c", i32 10, i32 12}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
