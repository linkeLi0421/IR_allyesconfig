; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/hal_com.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/hal_com.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.c2h_evt_hdr_88xx = type { i8, i8, [12 x i8], i8, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Chip Version Info: CHIP_8723B_%s_\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Normal_Chip\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test_Chip\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TSMC_\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UMC_\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMIC_\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"B_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"E_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"J_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"K_CUT_\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNKNOWN_CUT(%d)_\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1T1R_\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RomVer(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/rtl8723bs/hal/hal_com.c\00", [56 x i8] zeroinitializer }, align 32
@SetHwReg.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.17, ptr @.str.20, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SetHwReg\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(%s) variable(%d) not defined!\0A\00", [62 x i8] zeroinitializer }, align 32
@GetHwReg.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.21, ptr @.str.17, ptr @.str.20, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GetHwReg\00", [23 x i8] zeroinitializer }, align 32
@SetHalDefVar.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.22, ptr @.str.17, ptr @.str.23, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SetHalDefVar\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: [WARNING] HAL_DEF_VARIABLE(%d) not defined!\0A\00", [47 x i8] zeroinitializer }, align 32
@GetHalDefVar.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.17, ptr @.str.23, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GetHalDefVar\00", [19 x i8] zeroinitializer }, align 32
@Array_kfreemap = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 248, i32 14, i32 246, i32 12, i32 244, i32 10, i32 242, i32 8, i32 240, i32 6, i32 243, i32 4, i32 245, i32 2, i32 247, i32 0, i32 249, i32 0, i32 252, i32 0], [48 x i8] zeroinitializer }, align 32
@switch.table.dump_chip_info = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], [20 x i8] zeroinitializer }, align 32
@switch.table.HwRateToMRate = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\04\0B\16\0C\12\18$0H`l\80\81\82\83\84\85\86\87", [45 x i8] zeroinitializer }, align 32
@switch.table.rtw_bb_rf_gain_offset = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 9, i32 1, i32 7, i32 11, i32 5, i32 13, i32 3, i32 15, i32 1, i32 17, i32 1, i32 1, i32 19], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [21 x i64] [i64 19, i64 8, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135]
@__sancov_gen_cov_switch_values.26 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.29 = internal global [12 x i64] [i64 10, i64 8, i64 5, i64 20, i64 21, i64 24, i64 25, i64 26, i64 27, i64 37, i64 76, i64 78]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 24]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 6, i64 7, i64 19, i64 21, i64 22, i64 26, i64 31]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 6, i64 7, i64 19, i64 23, i64 26, i64 30]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 32, i64 48]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.37 = internal global [14 x i64] [i64 12, i64 8, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102]
@__sancov_gen_cov_switch_values.38 = internal global [14 x i64] [i64 12, i64 8, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 43, i32 49 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 44, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 44, i32 50 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 47, i32 50 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 49, i32 50 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 51, i32 50 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 54, i32 50 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 56, i32 50 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 58, i32 50 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 60, i32 50 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 62, i32 50 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 64, i32 50 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 66, i32 50 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 68, i32 50 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 71, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 73, i32 49 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 75, i32 49 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 590, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 650, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 670, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 740, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 790, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"Array_kfreemap\00", align 1
@___asan_gen_.117 = private constant [43 x i8] c"../drivers/staging/rtl8723bs/hal/hal_com.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1175, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"switch.table.dump_chip_info\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"switch.table.HwRateToMRate\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [35 x i8] c"switch.table.rtw_bb_rf_gain_offset\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @Array_kfreemap, ptr @switch.table.dump_chip_info, ptr @switch.table.HwRateToMRate, ptr @switch.table.rtw_bb_rf_gain_offset], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Array_kfreemap to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dump_chip_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.HwRateToMRate to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_bb_rf_gain_offset to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtw_hal_data_init(ptr nocapture noundef writeonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hal_data_sz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19
  %0 = ptrtoint ptr %hal_data_sz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16496, ptr %hal_data_sz, align 4
  %call = tail call noalias ptr @vzalloc(i32 noundef 16496) #16
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %1 = ptrtoint ptr %HalData to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %HalData, align 8
  %tobool.not = icmp ne ptr %call, null
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_data_deinit(ptr nocapture noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vfree(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %HalData to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %HalData, align 8
  %hal_data_sz = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 19
  %3 = ptrtoint ptr %hal_data_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hal_data_sz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_chip_info([5 x i32] %ChipVersion.coerce) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ChipVersion.coerce.fca.1.extract = extractvalue [5 x i32] %ChipVersion.coerce, 1
  %ChipVersion.coerce.fca.2.extract = extractvalue [5 x i32] %ChipVersion.coerce, 2
  %ChipVersion.coerce.fca.3.extract = extractvalue [5 x i32] %ChipVersion.coerce, 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ChipVersion.coerce.fca.1.extract)
  %cmp = icmp eq i32 %ChipVersion.coerce.fca.1.extract, 1
  %cond1 = select i1 %cmp, ptr @.str.1, ptr @.str.2
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %cond1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ChipVersion.coerce.fca.3.extract)
  %1 = icmp ult i32 %ChipVersion.coerce.fca.3.extract, 3
  br i1 %1, label %switch.lookup, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dump_chip_info, i32 0, i32 %ChipVersion.coerce.fca.3.extract
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %call
  %sub15 = sub i32 128, %call
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull %switch.load) #13
  %add17 = add i32 %call16, %call
  br label %if.end30

if.end30:                                         ; preds = %switch.lookup, %entry.if.end30_crit_edge
  %cnt.0 = phi i32 [ %call, %entry.if.end30_crit_edge ], [ %add17, %switch.lookup ]
  %3 = zext i32 %ChipVersion.coerce.fca.2.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ChipVersion.coerce.fca.2.extract, label %if.else117 [
    i32 0, label %if.then34
    i32 1, label %if.then45
    i32 2, label %if.then56
    i32 3, label %if.then67
    i32 4, label %if.then78
    i32 8, label %if.then89
    i32 9, label %if.then100
    i32 10, label %if.then111
  ]

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub37 = sub i32 128, %cnt.0
  %call38 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.6) #13
  br label %if.end131

if.then45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub48 = sub i32 128, %cnt.0
  %call49 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.7) #13
  br label %if.end131

if.then56:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub59 = sub i32 128, %cnt.0
  %call60 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.8) #13
  br label %if.end131

if.then67:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr69 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub70 = sub i32 128, %cnt.0
  %call71 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.9) #13
  br label %if.end131

if.then78:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub81 = sub i32 128, %cnt.0
  %call82 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.10) #13
  br label %if.end131

if.then89:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub92 = sub i32 128, %cnt.0
  %call93 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.11) #13
  br label %if.end131

if.then100:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr102 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub103 = sub i32 128, %cnt.0
  %call104 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.12) #13
  br label %if.end131

if.then111:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr113 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub114 = sub i32 128, %cnt.0
  %call115 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.13) #13
  br label %if.end131

if.else117:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr119 = getelementptr i8, ptr %buf, i32 %cnt.0
  %sub120 = sub i32 128, %cnt.0
  %call122 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef nonnull @.str.14, i32 noundef %ChipVersion.coerce.fca.2.extract) #13
  br label %if.end131

if.end131:                                        ; preds = %if.else117, %if.then111, %if.then100, %if.then89, %if.then78, %if.then67, %if.then56, %if.then45, %if.then34
  %call38.pn = phi i32 [ %call38, %if.then34 ], [ %call49, %if.then45 ], [ %call60, %if.then56 ], [ %call71, %if.then67 ], [ %call82, %if.then78 ], [ %call93, %if.then89 ], [ %call104, %if.then100 ], [ %call115, %if.then111 ], [ %call122, %if.else117 ]
  %cnt.1 = add i32 %call38.pn, %cnt.0
  %ChipVersion.coerce.fca.4.extract = extractvalue [5 x i32] %ChipVersion.coerce, 4
  %ChipVersion.sroa.17.16.extract.shift = lshr i32 %ChipVersion.coerce.fca.4.extract, 24
  %add.ptr133 = getelementptr i8, ptr %buf, i32 %cnt.1
  %sub134 = sub i32 128, %cnt.1
  %call135 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.15) #13
  %add136 = add i32 %cnt.1, %call135
  %add.ptr138 = getelementptr i8, ptr %buf, i32 %add136
  %sub139 = sub i32 128, %add136
  %call140 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.16, i32 noundef %ChipVersion.sroa.17.16.extract.shift) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @hal_com_config_channel_plan(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %hw_channel_plan, i8 noundef zeroext %sw_channel_plan, i8 noundef zeroext %def_channel_plan, i1 noundef zeroext %AutoLoadFail) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %bDisableSWChannelPlan = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bDisableSWChannelPlan to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bDisableSWChannelPlan, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %hw_channel_plan)
  %cmp = icmp eq i8 %hw_channel_plan, -1
  %spec.select = or i1 %cmp, %AutoLoadFail
  br i1 %spec.select, label %entry.if.end19_crit_edge, label %if.then2

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then2:                                         ; preds = %entry
  %and = and i8 %hw_channel_plan, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %and)
  %cmp6 = icmp ult i8 %and, 88
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %and)
  %cmp9 = icmp eq i8 %and, 127
  %or.cond = or i1 %cmp6, %cmp9
  br i1 %or.cond, label %if.then11, label %if.then2.if.end19_crit_edge

if.then2.if.end19_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then11:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %hw_channel_plan)
  %tobool14.not = icmp sgt i8 %hw_channel_plan, -1
  br i1 %tobool14.not, label %if.then11.if.end19_crit_edge, label %if.then15

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %bDisableSWChannelPlan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bDisableSWChannelPlan, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then11.if.end19_crit_edge, %if.then2.if.end19_crit_edge, %entry.if.end19_crit_edge
  %chnlPlan.1 = phi i8 [ %def_channel_plan, %entry.if.end19_crit_edge ], [ %def_channel_plan, %if.then2.if.end19_crit_edge ], [ %and, %if.then15 ], [ %and, %if.then11.if.end19_crit_edge ]
  %4 = ptrtoint ptr %bDisableSWChannelPlan to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDisableSWChannelPlan, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp22 = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %sw_channel_plan)
  %cmp25 = icmp ult i8 %sw_channel_plan, 88
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %sw_channel_plan)
  %cmp29 = icmp eq i8 %sw_channel_plan, 127
  %or.cond41 = or i1 %cmp25, %cmp29
  %6 = and i1 %or.cond41, %cmp22
  %chnlPlan.2 = select i1 %6, i8 %sw_channel_plan, i8 %chnlPlan.1
  ret i8 %chnlPlan.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @HAL_IsLegalChannel(ptr nocapture noundef readonly %adapter, i32 noundef %Channel) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %Channel, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %0)
  %1 = icmp ult i32 %0, -14
  br i1 %1, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %wireless_mode = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wireless_mode, align 2
  %4 = and i8 %3, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.not = icmp ne i8 %4, 0
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %bLegalChannel.0.off0 = phi i1 [ %tobool.not.not, %if.then ], [ false, %entry.if.end5_crit_edge ]
  ret i1 %bLegalChannel.0.off0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @MRateToHwRate(i8 noundef zeroext %rate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %rate, label %entry.sw.epilog_crit_edge [
    i8 -121, label %sw.bb19
    i8 4, label %sw.bb1
    i8 11, label %sw.bb2
    i8 22, label %sw.bb3
    i8 12, label %sw.bb4
    i8 18, label %sw.bb5
    i8 24, label %sw.bb6
    i8 36, label %sw.bb7
    i8 48, label %sw.bb8
    i8 72, label %sw.bb9
    i8 96, label %sw.bb10
    i8 108, label %sw.bb11
    i8 -128, label %sw.bb12
    i8 -127, label %sw.bb13
    i8 -126, label %sw.bb14
    i8 -125, label %sw.bb15
    i8 -124, label %sw.bb16
    i8 -123, label %sw.bb17
    i8 -122, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ret.0 = phi i8 [ 19, %sw.bb19 ], [ 18, %sw.bb18 ], [ 17, %sw.bb17 ], [ 16, %sw.bb16 ], [ 15, %sw.bb15 ], [ 14, %sw.bb14 ], [ 13, %sw.bb13 ], [ 12, %sw.bb12 ], [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @HwRateToMRate(i8 noundef zeroext %rate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %rate, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 19
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i8], ptr @switch.table.HwRateToMRate, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %ret_rate.0 = phi i8 [ 2, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %ret_rate.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HalSetBrateCfg(ptr nocapture noundef readnone %Adapter, ptr nocapture noundef readonly %mBratesOS, ptr noundef %pBrateCfg) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %mBratesOS, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = and i8 %1, 127
  %conv9 = zext i8 %2 to i32
  %3 = zext i32 %conv9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %conv9, label %if.then.for.inc_crit_edge [
    i32 2, label %if.then.for.inc.sink.split_crit_edge
    i32 4, label %sw.bb12
    i32 11, label %sw.bb16
    i32 22, label %sw.bb20
    i32 12, label %sw.bb24
    i32 18, label %sw.bb28
    i32 24, label %sw.bb32
    i32 36, label %sw.bb36
    i32 48, label %sw.bb40
    i32 72, label %sw.bb44
    i32 96, label %sw.bb48
    i32 108, label %sw.bb52
  ]

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb20:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb28:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb32:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb36:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb40:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb44:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb48:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

sw.bb52:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb36, %sw.bb32, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %if.then.for.inc.sink.split_crit_edge
  %.sink73 = phi i16 [ 2048, %sw.bb52 ], [ 1024, %sw.bb48 ], [ 512, %sw.bb44 ], [ 256, %sw.bb40 ], [ 128, %sw.bb36 ], [ 64, %sw.bb32 ], [ 32, %sw.bb28 ], [ 16, %sw.bb24 ], [ 8, %sw.bb20 ], [ 4, %sw.bb16 ], [ 2, %sw.bb12 ], [ 1, %if.then.for.inc.sink.split_crit_edge ]
  %4 = ptrtoint ptr %pBrateCfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pBrateCfg, align 2
  %6 = or i16 %5, %.sink73
  store i16 %6, ptr %pBrateCfg, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @Hal_MappingOutPipe(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %NumOutPipe) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %0 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = zext i8 %NumOutPipe to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %NumOutPipe, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %entry.sw.bb4_crit_edge
    i8 4, label %entry.sw.bb4_crit_edge18
    i8 1, label %sw.bb6
  ]

entry.sw.bb4_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj.i, align 4
  %RtOutPipe.i = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 17
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %6 to i8
  %7 = ptrtoint ptr %RtOutPipe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %RtOutPipe.i, align 8
  %conv4.i = trunc i32 %8 to i8
  br label %_TwoOutPipeMapping.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %RtOutPipe.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %RtOutPipe.i, align 8
  %conv39.i = trunc i32 %10 to i8
  %arrayidx48.i = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx48.i, align 4
  %conv49.i = trunc i32 %12 to i8
  br label %_TwoOutPipeMapping.exit

_TwoOutPipeMapping.exit:                          ; preds = %if.else.i, %if.then.i
  %conv39.sink113.i = phi i8 [ %conv.i, %if.then.i ], [ %conv39.i, %if.else.i ]
  %conv39.sink112.i = phi i8 [ %conv4.i, %if.then.i ], [ %conv39.i, %if.else.i ]
  %conv49.sink111.i = phi i8 [ %conv.i, %if.then.i ], [ %conv49.i, %if.else.i ]
  %conv49.sink.i = phi i8 [ %conv4.i, %if.then.i ], [ %conv49.i, %if.else.i ]
  %13 = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 18
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv39.sink113.i, ptr %13, align 8
  %15 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv39.sink112.i, ptr %15, align 1
  %17 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv49.sink111.i, ptr %17, align 2
  %19 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 18, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv49.sink.i, ptr %19, align 1
  %21 = getelementptr %struct.dvobj_priv, ptr %4, i32 0, i32 18, i32 4
  %22 = zext i8 %conv39.sink112.i to i32
  %23 = call ptr @memset(ptr %21, i32 %22, i32 4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge18
  %dvobj.i12 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %24 = ptrtoint ptr %dvobj.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvobj.i12, align 4
  %arrayidx3.i = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i, align 4
  %conv4.i13 = trunc i32 %27 to i8
  %arrayidx8.i = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 17, i32 2
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8.i, align 8
  %conv9.i = trunc i32 %29 to i8
  %conv4.conv9.i = select i1 %tobool.not, i8 %conv9.i, i8 %conv4.i13
  %conv39.sink112.in.in.i = getelementptr inbounds %struct.dvobj_priv, ptr %25, i32 0, i32 17
  %30 = ptrtoint ptr %conv39.sink112.in.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %conv39.sink112.in.i = load i32, ptr %conv39.sink112.in.in.i, align 8
  %conv39.sink112.i14 = trunc i32 %conv39.sink112.in.i to i8
  %31 = getelementptr inbounds %struct.dvobj_priv, ptr %25, i32 0, i32 18
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv39.sink112.i14, ptr %31, align 8
  %33 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv4.i13, ptr %33, align 1
  %35 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 18, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv9.i, ptr %35, align 2
  %37 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 18, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.conv9.i, ptr %37, align 1
  %39 = getelementptr %struct.dvobj_priv, ptr %25, i32 0, i32 18, i32 4
  %40 = zext i8 %conv39.sink112.i14 to i32
  %41 = call ptr @memset(ptr %39, i32 %40, i32 4)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dvobj.i15 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %42 = ptrtoint ptr %dvobj.i15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvobj.i15, align 4
  %RtOutPipe.i16 = getelementptr inbounds %struct.dvobj_priv, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %RtOutPipe.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %RtOutPipe.i16, align 8
  %conv.i17 = trunc i32 %45 to i8
  %Queue2Pipe.i = getelementptr inbounds %struct.dvobj_priv, ptr %43, i32 0, i32 18
  %46 = zext i8 %conv.i17 to i32
  %47 = call ptr @memset(ptr %Queue2Pipe.i, i32 %46, i32 8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %_TwoOutPipeMapping.exit, %entry.sw.epilog_crit_edge
  %result.0.off0 = phi i1 [ true, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %_TwoOutPipeMapping.exit ], [ false, %entry.sw.epilog_crit_edge ]
  ret i1 %result.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hal_init_macaddr(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 4
  tail call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 3, ptr noundef %mac_addr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_init_hal_com_default_value(ptr nocapture noundef readonly %Adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %AntDetection = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 114
  %2 = ptrtoint ptr %AntDetection to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %AntDetection, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c2h_evt_clear(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 431, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c2h_evt_read_88xx(ptr noundef %adapter, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 431) #13
  %0 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %call, label %if.end.clear_evt_crit_edge [
    i8 0, label %if.end.exit_crit_edge
    i8 -1, label %if.end8
  ]

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.end.clear_evt_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_evt

if.end8:                                          ; preds = %if.end
  %1 = call ptr @memset(ptr %buf, i32 0, i32 16)
  %call9 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 416) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call9, ptr %buf, align 1
  %call10 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 417) #13
  %seq = getelementptr inbounds %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call10, ptr %seq, align 1
  %call11 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 430) #13
  %plen = getelementptr inbounds %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %plen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call11, ptr %plen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11)
  %cmp1433.not = icmp eq i8 %call11, 0
  br i1 %cmp1433.not, label %if.end8.clear_evt_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.clear_evt_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_evt

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.034, 418
  %call16 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef %add) #13
  %arrayidx = getelementptr %struct.c2h_evt_hdr_88xx, ptr %buf, i32 0, i32 2, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call16, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.034, 1
  %6 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %plen, align 1
  %conv13 = zext i8 %7 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.clear_evt_crit_edge

for.body.clear_evt_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_evt

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

clear_evt:                                        ; preds = %for.body.clear_evt_crit_edge, %if.end8.clear_evt_crit_edge, %if.end.clear_evt_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.clear_evt_crit_edge ], [ 1, %if.end8.clear_evt_crit_edge ], [ 1, %for.body.clear_evt_crit_edge ]
  %call.i = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 431, i8 noundef zeroext 0) #13
  br label %exit

exit:                                             ; preds = %clear_evt, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.exit_crit_edge ], [ %ret.0, %clear_evt ], [ 0, %entry.exit_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_get_mgntframe_raid(ptr nocapture noundef readnone %adapter, i8 noundef zeroext %network_type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %network_type, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %conv1 = select i1 %tobool.not, i8 7, i8 8
  ret i8 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_update_sta_rate_mask(ptr nocapture noundef readnone %padapter, ptr noundef %psta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_ra_bitmap.058 = phi i32 [ %tx_ra_bitmap.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %psta, i32 0, i32 21, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = and i8 %1, 127
  %call = tail call i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext %2) #13
  %or = or i32 %call, %tx_ra_bitmap.058
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %tx_ra_bitmap.1 = phi i32 [ %or, %if.then3 ], [ %tx_ra_bitmap.058, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %htpriv = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38
  %3 = ptrtoint ptr %htpriv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %htpriv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %for.end.if.end33_crit_edge, label %for.cond12.preheader

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

for.cond12.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %mcs = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 38, i32 15, i32 2
  %5 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mcs, align 1
  %conv21 = zext i8 %6 to i32
  %and23 = shl nuw nsw i32 %conv21, 12
  %7 = and i32 %and23, 4096
  %tx_ra_bitmap.3 = or i32 %7, %tx_ra_bitmap.1
  %and23.1 = shl nuw nsw i32 %conv21, 12
  %8 = and i32 %and23.1, 8192
  %tx_ra_bitmap.3.1 = or i32 %8, %tx_ra_bitmap.3
  %and23.2 = shl nuw nsw i32 %conv21, 12
  %9 = and i32 %and23.2, 16384
  %tx_ra_bitmap.3.2 = or i32 %9, %tx_ra_bitmap.3.1
  %and23.3 = shl nuw nsw i32 %conv21, 12
  %10 = and i32 %and23.3, 32768
  %tx_ra_bitmap.3.3 = or i32 %10, %tx_ra_bitmap.3.2
  %and23.4 = shl nuw nsw i32 %conv21, 12
  %11 = and i32 %and23.4, 65536
  %tx_ra_bitmap.3.4 = or i32 %11, %tx_ra_bitmap.3.3
  %and23.5 = shl nuw nsw i32 %conv21, 12
  %12 = and i32 %and23.5, 131072
  %tx_ra_bitmap.3.5 = or i32 %12, %tx_ra_bitmap.3.4
  %and23.6 = shl nuw nsw i32 %conv21, 12
  %13 = and i32 %and23.6, 262144
  %tx_ra_bitmap.3.6 = or i32 %13, %tx_ra_bitmap.3.5
  %and23.7 = shl nuw nsw i32 %conv21, 12
  %14 = and i32 %and23.7, 524288
  %tx_ra_bitmap.3.7 = or i32 %14, %tx_ra_bitmap.3.6
  br label %if.end33

if.end33:                                         ; preds = %for.cond12.preheader, %for.end.if.end33_crit_edge
  %tx_ra_bitmap.4 = phi i32 [ %tx_ra_bitmap.1, %for.end.if.end33_crit_edge ], [ %tx_ra_bitmap.3.7, %for.cond12.preheader ]
  %ra_mask = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 29
  %15 = ptrtoint ptr %ra_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %tx_ra_bitmap.4, ptr %ra_mask, align 8
  %call34 = tail call zeroext i8 @get_highest_rate_idx(i32 noundef %tx_ra_bitmap.4) #13
  %16 = and i8 %call34, 63
  %init_rate = getelementptr inbounds %struct.sta_info, ptr %psta, i32 0, i32 28
  %17 = ptrtoint ptr %init_rate to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %init_rate, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_bit_value_from_ieee_value(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_highest_rate_idx(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hw_var_port_switch(ptr nocapture %adapter) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetHwReg(ptr noundef %adapter, i8 noundef zeroext %variable, ptr noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %conv = zext i8 %variable to i32
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %variable, label %do.body64 [
    i8 78, label %entry.sw.epilog_crit_edge
    i8 5, label %do.end
    i8 20, label %sw.bb16
    i8 21, label %sw.bb22
    i8 24, label %sw.bb40
    i8 25, label %sw.bb41
    i8 26, label %sw.bb51
    i8 27, label %sw.bb60
    i8 37, label %entry.sw.epilog_crit_edge111
    i8 76, label %entry.sw.epilog_crit_edge112
  ]

entry.sw.epilog_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 590, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %adapter, i32 noundef 1664) #13
  %3 = or i16 %call, 268
  %call21 = tail call i32 @rtw_write16(ptr noundef %adapter, i32 noundef 1664, i16 noundef zeroext %3) #13
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %call24 = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 1664) #13
  %tobool25.not = icmp eq ptr %val, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %securitypriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  %spec.select.v = select i1 %cmp.not, i8 64, i8 67
  %spec.select = or i8 %spec.select.v, %call24
  br label %if.end38

if.else:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %6 = and i8 %call24, 60
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then26
  %reg_scr23.0 = phi i8 [ %6, %if.else ], [ %spec.select, %if.then26 ]
  %call39 = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 1664, i8 noundef zeroext %reg_scr23.0) #13
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %9 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %SupportAbility, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp43 = icmp eq i8 %11, 1
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility46 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %12 = ptrtoint ptr %SupportAbility46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SupportAbility46, align 4
  %BK_SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 32
  %14 = ptrtoint ptr %BK_SupportAbility to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %BK_SupportAbility, align 8
  br label %sw.epilog

if.else47:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  %BK_SupportAbility48 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 32
  %15 = ptrtoint ptr %BK_SupportAbility48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %BK_SupportAbility48, align 8
  %SupportAbility49 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %17 = ptrtoint ptr %SupportAbility49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %SupportAbility49, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %19)
  %cmp52 = icmp eq i32 %19, 268435455
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %InitDMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 2
  %20 = ptrtoint ptr %InitDMFlag to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %InitDMFlag, align 2
  %DMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 1
  %22 = ptrtoint ptr %DMFlag to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %DMFlag, align 1
  %InitODMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 3
  %23 = ptrtoint ptr %InitODMFlag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %InitODMFlag, align 4
  %SupportAbility55 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %25 = ptrtoint ptr %SupportAbility55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %SupportAbility55, align 4
  br label %sw.epilog

if.else56:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility57 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %26 = ptrtoint ptr %SupportAbility57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %SupportAbility57, align 4
  %or58 = or i32 %27, %19
  store i32 %or58, ptr %SupportAbility57, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %SupportAbility61 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %30 = ptrtoint ptr %SupportAbility61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %SupportAbility61, align 4
  %and62 = and i32 %31, %29
  store i32 %and62, ptr %SupportAbility61, align 4
  br label %sw.epilog

do.body64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SetHwReg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SetHwReg, %if.then74)) #13
          to label %sw.epilog [label %if.then74], !srcloc !62

if.then74:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %32 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @SetHwReg.__UNIQUE_ID_ddebug345, ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %33, i32 noundef %conv) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then74, %do.body64, %sw.bb60, %if.else56, %if.then54, %if.else47, %if.then45, %sw.bb40, %if.end38, %sw.bb16, %do.end, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge111, %entry.sw.epilog_crit_edge112
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @GetHwReg(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %conv = zext i8 %variable to i32
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %variable, label %do.body2 [
    i8 6, label %sw.bb
    i8 24, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %BasicRateSet = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %BasicRateSet to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %BasicRateSet, align 2
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %val, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %6 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SupportAbility, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @GetHwReg.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@GetHwReg, %if.then)) #13
          to label %sw.epilog [label %if.then], !srcloc !62

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %9 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @GetHwReg.__UNIQUE_ID_ddebug346, ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %10, i32 noundef %conv) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @SetHalDefVar(ptr noundef %adapter, i32 noundef %variable, ptr nocapture noundef readonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %2 = zext i32 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %variable, label %do.body65 [
    i32 31, label %entry.sw.epilog_crit_edge
    i32 21, label %sw.bb1
    i32 22, label %sw.bb2
    i32 7, label %sw.bb3
    i32 6, label %sw.bb62
    i32 19, label %sw.bb63
    i32 26, label %sw.bb64
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %value, align 8
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 49, i64 noundef %4) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %conv = zext i32 %6 to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 50, i64 noundef %conv) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %8, label %sw.bb3.sw.epilog_crit_edge [
    i8 0, label %if.then6
    i8 1, label %if.then10
    i8 2, label %if.then16
    i8 3, label %if.then23
    i8 4, label %if.then30
    i8 5, label %if.then38
    i8 6, label %if.then45
  ]

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %10 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %SupportAbility, align 4
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility11 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %11 = ptrtoint ptr %SupportAbility11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %SupportAbility11, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %SupportAbility11, align 4
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility17 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %13 = ptrtoint ptr %SupportAbility17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %SupportAbility17, align 4
  %and18 = and i32 %14, -5
  store i32 %and18, ptr %SupportAbility17, align 4
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility24 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %15 = ptrtoint ptr %SupportAbility24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %SupportAbility24, align 4
  %and25 = and i32 %16, -67108865
  store i32 %and25, ptr %SupportAbility24, align 4
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %DMFlag = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 1
  %17 = ptrtoint ptr %DMFlag to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %DMFlag, align 1
  %19 = and i8 %18, -2
  store i8 %19, ptr %DMFlag, align 1
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility39 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %20 = ptrtoint ptr %SupportAbility39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %SupportAbility39, align 4
  %and40 = and i32 %21, -65
  store i32 %and40, ptr %SupportAbility39, align 4
  br label %sw.epilog

if.then45:                                        ; preds = %sw.bb3
  %SupportAbility46 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %22 = ptrtoint ptr %SupportAbility46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %SupportAbility46, align 4
  %and47 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then49, label %if.then45.if.end50_crit_edge

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 3152) #13
  %CurIGValue = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 131, i32 12
  %24 = ptrtoint ptr %CurIGValue to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call, ptr %CurIGValue, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then45.if.end50_crit_edge
  %DMFlag51 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 140, i32 1
  %25 = ptrtoint ptr %DMFlag51 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DMFlag51, align 1
  %27 = or i8 %26, 1
  store i8 %27, ptr %DMFlag51, align 1
  %28 = ptrtoint ptr %SupportAbility46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 268435455, ptr %SupportAbility46, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %value, align 1
  %bDumpRxPkt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 118
  %31 = ptrtoint ptr %bDumpRxPkt to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bDumpRxPkt, align 2
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %value, align 1
  %bDumpTxPkt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 119
  %34 = ptrtoint ptr %bDumpTxPkt to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %bDumpTxPkt, align 1
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %value, align 1
  %AntDetection = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 114
  %37 = ptrtoint ptr %AntDetection to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %AntDetection, align 2
  br label %sw.epilog

do.body65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @SetHalDefVar.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@SetHalDefVar, %if.then70)) #13
          to label %sw.epilog [label %if.then70], !srcloc !62

if.then70:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %38 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @SetHalDefVar.__UNIQUE_ID_ddebug347, ptr noundef %39, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %variable) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then70, %do.body65, %sw.bb64, %sw.bb63, %sw.bb62, %if.end50, %if.then38, %if.then30, %if.then23, %if.then16, %if.then10, %if.then6, %sw.bb3.sw.epilog_crit_edge, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %bResult.0 = phi i8 [ 1, %sw.bb64 ], [ 1, %sw.bb63 ], [ 1, %sw.bb62 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb3.sw.epilog_crit_edge ], [ 1, %if.then10 ], [ 1, %if.then23 ], [ 1, %if.then38 ], [ 1, %if.end50 ], [ 1, %if.then30 ], [ 1, %if.then16 ], [ 1, %if.then6 ], [ 0, %if.then70 ], [ 0, %do.body65 ]
  ret i8 %bResult.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoUpdate(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @GetHalDefVar(ptr noundef %adapter, i32 noundef %variable, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %2 = zext i32 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %variable, label %do.body7 [
    i32 0, label %sw.bb
    i32 7, label %sw.bb1
    i32 6, label %sw.bb2
    i32 19, label %sw.bb3
    i32 26, label %sw.bb4
    i32 30, label %sw.bb5
    i32 23, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %stapriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %mac_address = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4, i32 20, i32 6, i32 1
  %call = tail call ptr @rtw_get_stainfo(ptr noundef %stapriv, ptr noundef %mac_address) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %rssi_stat = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 74
  %3 = ptrtoint ptr %rssi_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rssi_stat, align 8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %SupportAbility = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 13
  %6 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SupportAbility, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bDumpRxPkt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 118
  %9 = ptrtoint ptr %bDumpRxPkt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bDumpRxPkt, align 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %value, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bDumpTxPkt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 119
  %12 = ptrtoint ptr %bDumpTxPkt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bDumpTxPkt, align 1
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %value, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %AntDetection = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 114
  %15 = ptrtoint ptr %AntDetection to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %AntDetection, align 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %value, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %value, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %value, align 4
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @GetHalDefVar.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@GetHalDefVar, %if.then12)) #13
          to label %sw.epilog [label %if.then12], !srcloc !62

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %20 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @GetHalDefVar.__UNIQUE_ID_ddebug348, ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %variable) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then12, %do.body7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.then, %sw.bb.sw.epilog_crit_edge
  %bResult.0 = phi i8 [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %if.then ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then12 ], [ 0, %do.body7 ]
  ret i8 %bResult.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @GetHalODMVar(ptr nocapture noundef %Adapter, i32 noundef %eVariable, ptr nocapture noundef %pValue1, ptr nocapture noundef %pValue2) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetHalODMVar(ptr nocapture noundef readonly %Adapter, i32 noundef %eVariable, ptr noundef %pValue1, i1 noundef zeroext %bSet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %2 = zext i32 %eVariable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %eVariable, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mac_id = getelementptr inbounds %struct.sta_info, ptr %pValue1, i32 0, i32 10
  %3 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_id, align 8
  %conv = trunc i32 %4 to i16
  br i1 %bSet, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ODM_CmnInfoPtrArrayHook(ptr noundef %odmpriv, i32 noundef 60, i16 noundef zeroext %conv, ptr noundef %pValue1) #13
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ODM_CmnInfoPtrArrayHook(ptr noundef %odmpriv, i32 noundef 60, i16 noundef zeroext %conv, ptr noundef null) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv5 = zext i1 %bSet to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 43, i64 noundef %conv5) #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv8 = zext i1 %bSet to i64
  tail call void @ODM_CmnInfoUpdate(ptr noundef %odmpriv, i32 noundef 44, i64 noundef %conv8) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %if.else, %if.then, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_CmnInfoPtrArrayHook(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @eqNByte(ptr nocapture noundef readonly %str1, ptr nocapture noundef readonly %str2, i32 noundef %num) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %entry.return_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %num.addr.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %num, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.addr.0)
  %cmp1.not = icmp eq i32 %num.addr.0, 0
  br i1 %cmp1.not, label %while.cond.return_crit_edge, label %while.body

while.cond.return_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.body:                                       ; preds = %while.cond
  %dec = add i32 %num.addr.0, -1
  %arrayidx = getelementptr i8, ptr %str1, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %str2, i32 %dec
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %cmp4.not = icmp eq i8 %1, %3
  br i1 %cmp4.not, label %while.body.while.cond_crit_edge, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

return:                                           ; preds = %while.body.return_crit_edge, %while.cond.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp1.not, %while.body.return_crit_edge ], [ %cmp1.not, %while.cond.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @IsHexDigit(i8 noundef zeroext %chTmp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %chTmp, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %chTmp, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false12

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false12:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = add i8 %chTmp, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  br label %return

return:                                           ; preds = %lor.lhs.false12, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %5, %lor.lhs.false12 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @MapCharToHexDigit(i8 noundef zeroext %chTmp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %chTmp to i32
  %0 = add i8 %chTmp, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i32 %conv, -48
  br label %return

if.else:                                          ; preds = %entry
  %2 = add i8 %chTmp, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nsw i32 %conv, -87
  br label %return

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %4 = add i8 %chTmp, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  %add27 = add nsw i32 %conv, -55
  %spec.select = select i1 %5, i32 %add27, i32 0
  br label %return

return:                                           ; preds = %if.else16, %if.then13, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then13 ], [ %spec.select, %if.else16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @GetHexValueFromString(ptr noundef readonly %szStr, ptr noundef %pu4bVal, ptr noundef %pu4bMove) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %szStr, null
  %tobool1.not = icmp eq ptr %pu4bVal, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %pu4bMove, null
  %or.cond51 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond51, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pu4bMove, align 4
  %1 = ptrtoint ptr %pu4bVal to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pu4bVal, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %szScan.0 = phi ptr [ %szStr, %if.end ], [ %incdec.ptr, %while.body ]
  %2 = ptrtoint ptr %szScan.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %szScan.0, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %3, label %while.cond.if.end24_crit_edge [
    i8 9, label %while.cond.while.body_crit_edge
    i8 32, label %while.cond.while.body_crit_edge77
    i8 48, label %land.lhs.true
  ]

while.cond.while.body_crit_edge77:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge77
  %incdec.ptr = getelementptr i8, ptr %szScan.0, i32 1
  %5 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pu4bMove, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %pu4bMove, align 4
  br label %while.cond

land.lhs.true:                                    ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %szScan.0, i32 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %8, label %land.lhs.true.do.body.preheader_crit_edge [
    i8 120, label %land.lhs.true.if.then22_crit_edge
    i8 88, label %land.lhs.true.if.then22_crit_edge78
  ]

land.lhs.true.if.then22_crit_edge78:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

land.lhs.true.do.body.preheader_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge78
  %add.ptr23 = getelementptr i8, ptr %szScan.0, i32 2
  %10 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pu4bMove, align 4
  %add = add i32 %11, 2
  store i32 %add, ptr %pu4bMove, align 4
  %12 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %add.ptr23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %while.cond.if.end24_crit_edge
  %13 = phi i8 [ %.pr, %if.then22 ], [ %3, %while.cond.if.end24_crit_edge ]
  %szScan.1 = phi ptr [ %add.ptr23, %if.then22 ], [ %szScan.0, %while.cond.if.end24_crit_edge ]
  %.fr63 = freeze i8 %13
  %14 = add i8 %.fr63, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %15 = icmp ult i8 %14, 10
  br i1 %15, label %if.end24.do.body.preheader_crit_edge, label %switch.early.test

if.end24.do.body.preheader_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test:                                ; preds = %if.end24
  %16 = zext i8 %.fr63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %.fr63, label %switch.early.test.cleanup_crit_edge [
    i8 102, label %switch.early.test.do.body.preheader_crit_edge
    i8 101, label %switch.early.test.do.body.preheader_crit_edge79
    i8 100, label %switch.early.test.do.body.preheader_crit_edge80
    i8 99, label %switch.early.test.do.body.preheader_crit_edge81
    i8 98, label %switch.early.test.do.body.preheader_crit_edge82
    i8 97, label %switch.early.test.do.body.preheader_crit_edge83
    i8 70, label %switch.early.test.do.body.preheader_crit_edge84
    i8 69, label %switch.early.test.do.body.preheader_crit_edge85
    i8 68, label %switch.early.test.do.body.preheader_crit_edge86
    i8 67, label %switch.early.test.do.body.preheader_crit_edge87
    i8 66, label %switch.early.test.do.body.preheader_crit_edge88
    i8 65, label %switch.early.test.do.body.preheader_crit_edge89
  ]

switch.early.test.do.body.preheader_crit_edge89:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge88:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge87:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge86:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge85:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge84:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge83:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge82:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge81:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge80:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge79:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.do.body.preheader_crit_edge:    ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.preheader

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.preheader:                                ; preds = %switch.early.test.do.body.preheader_crit_edge, %switch.early.test.do.body.preheader_crit_edge79, %switch.early.test.do.body.preheader_crit_edge80, %switch.early.test.do.body.preheader_crit_edge81, %switch.early.test.do.body.preheader_crit_edge82, %switch.early.test.do.body.preheader_crit_edge83, %switch.early.test.do.body.preheader_crit_edge84, %switch.early.test.do.body.preheader_crit_edge85, %switch.early.test.do.body.preheader_crit_edge86, %switch.early.test.do.body.preheader_crit_edge87, %switch.early.test.do.body.preheader_crit_edge88, %switch.early.test.do.body.preheader_crit_edge89, %if.end24.do.body.preheader_crit_edge, %land.lhs.true.do.body.preheader_crit_edge
  %szScan.2.ph = phi ptr [ %szScan.0, %land.lhs.true.do.body.preheader_crit_edge ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge79 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge80 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge81 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge82 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge83 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge84 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge85 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge86 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge87 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge88 ], [ %szScan.1, %switch.early.test.do.body.preheader_crit_edge89 ], [ %szScan.1, %if.end24.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %szScan.2 = phi ptr [ %szScan.2.ph, %do.body.preheader ], [ %incdec.ptr29, %do.body.backedge ]
  %17 = ptrtoint ptr %pu4bVal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pu4bVal, align 4
  %shl = shl i32 %18, 4
  store i32 %shl, ptr %pu4bVal, align 4
  %19 = ptrtoint ptr %szScan.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %szScan.2, align 1
  %conv.i = zext i8 %20 to i32
  %21 = add i8 %20, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %21)
  %22 = icmp ult i8 %21, 10
  br i1 %22, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add nsw i32 %conv.i, -48
  br label %MapCharToHexDigit.exit

if.else.i:                                        ; preds = %do.body
  %23 = add i8 %20, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %24 = icmp ult i8 %23, 6
  br i1 %24, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add nsw i32 %conv.i, -87
  br label %MapCharToHexDigit.exit

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = add i8 %20, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %26 = icmp ult i8 %25, 6
  %add27.i = add nsw i32 %conv.i, -55
  %spec.select.i = select i1 %26, i32 %add27.i, i32 0
  br label %MapCharToHexDigit.exit

MapCharToHexDigit.exit:                           ; preds = %if.else16.i, %if.then13.i, %if.then.i
  %retval.0.i52 = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %if.then13.i ], [ %spec.select.i, %if.else16.i ]
  %add28 = add i32 %retval.0.i52, %shl
  %27 = ptrtoint ptr %pu4bVal to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add28, ptr %pu4bVal, align 4
  %incdec.ptr29 = getelementptr i8, ptr %szScan.2, i32 1
  %28 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pu4bMove, align 4
  %inc30 = add i32 %29, 1
  store i32 %inc30, ptr %pu4bMove, align 4
  %30 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr29, align 1
  %.fr = freeze i8 %31
  %32 = add i8 %.fr, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %MapCharToHexDigit.exit.do.body.backedge_crit_edge, label %switch.early.test61

MapCharToHexDigit.exit.do.body.backedge_crit_edge: ; preds = %MapCharToHexDigit.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %switch.early.test61.do.body.backedge_crit_edge, %switch.early.test61.do.body.backedge_crit_edge90, %switch.early.test61.do.body.backedge_crit_edge91, %switch.early.test61.do.body.backedge_crit_edge92, %switch.early.test61.do.body.backedge_crit_edge93, %switch.early.test61.do.body.backedge_crit_edge94, %switch.early.test61.do.body.backedge_crit_edge95, %switch.early.test61.do.body.backedge_crit_edge96, %switch.early.test61.do.body.backedge_crit_edge97, %switch.early.test61.do.body.backedge_crit_edge98, %switch.early.test61.do.body.backedge_crit_edge99, %switch.early.test61.do.body.backedge_crit_edge100, %MapCharToHexDigit.exit.do.body.backedge_crit_edge
  br label %do.body

switch.early.test61:                              ; preds = %MapCharToHexDigit.exit
  %34 = zext i8 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %.fr, label %switch.early.test61.cleanup_crit_edge [
    i8 102, label %switch.early.test61.do.body.backedge_crit_edge
    i8 101, label %switch.early.test61.do.body.backedge_crit_edge90
    i8 100, label %switch.early.test61.do.body.backedge_crit_edge91
    i8 99, label %switch.early.test61.do.body.backedge_crit_edge92
    i8 98, label %switch.early.test61.do.body.backedge_crit_edge93
    i8 97, label %switch.early.test61.do.body.backedge_crit_edge94
    i8 70, label %switch.early.test61.do.body.backedge_crit_edge95
    i8 69, label %switch.early.test61.do.body.backedge_crit_edge96
    i8 68, label %switch.early.test61.do.body.backedge_crit_edge97
    i8 67, label %switch.early.test61.do.body.backedge_crit_edge98
    i8 66, label %switch.early.test61.do.body.backedge_crit_edge99
    i8 65, label %switch.early.test61.do.body.backedge_crit_edge100
  ]

switch.early.test61.do.body.backedge_crit_edge100: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge99: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge98: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge97: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge96: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge95: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge94: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge93: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge92: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge91: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge90: ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.do.body.backedge_crit_edge:   ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.backedge

switch.early.test61.cleanup_crit_edge:            ; preds = %switch.early.test61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %switch.early.test61.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %switch.early.test.cleanup_crit_edge ], [ true, %switch.early.test61.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @GetFractionValueFromString(ptr nocapture noundef readonly %szStr, ptr nocapture noundef %pInteger, ptr nocapture noundef writeonly %pFraction, ptr nocapture noundef %pu4bMove) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pu4bMove, align 4
  %1 = ptrtoint ptr %pInteger to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pInteger, align 1
  %2 = ptrtoint ptr %pFraction to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pFraction, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %szScan.0 = phi ptr [ %szStr, %entry ], [ %incdec.ptr, %while.body ]
  %3 = ptrtoint ptr %szScan.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %szScan.0, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %4, label %while.cond.do.body_crit_edge [
    i8 9, label %while.cond.while.body_crit_edge
    i8 32, label %while.cond.while.body_crit_edge73
  ]

while.cond.while.body_crit_edge73:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  br label %do.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge73
  %incdec.ptr = getelementptr i8, ptr %szScan.0, i32 1
  %6 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pu4bMove, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %pu4bMove, align 4
  br label %while.cond

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %while.cond.do.body_crit_edge
  %szScan.1 = phi ptr [ %incdec.ptr13, %do.cond.do.body_crit_edge ], [ %szScan.0, %while.cond.do.body_crit_edge ]
  %8 = ptrtoint ptr %pInteger to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pInteger, align 1
  %mul = mul i8 %9, 10
  store i8 %mul, ptr %pInteger, align 1
  %10 = ptrtoint ptr %szScan.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %szScan.1, align 1
  %sub = add i8 %mul, -48
  %add = add i8 %sub, %11
  store i8 %add, ptr %pInteger, align 1
  %incdec.ptr13 = getelementptr i8, ptr %szScan.1, i32 1
  %12 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pu4bMove, align 4
  %inc14 = add i32 %13, 1
  store i32 %inc14, ptr %pu4bMove, align 4
  %14 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %15)
  %cmp16 = icmp eq i8 %15, 46
  br i1 %cmp16, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %incdec.ptr18 = getelementptr i8, ptr %szScan.1, i32 2
  %inc19 = add i32 %13, 2
  %16 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc19, ptr %pu4bMove, align 4
  %17 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr18, align 1
  %19 = add i8 %18, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %19)
  %20 = icmp ult i8 %19, -10
  br i1 %20, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub28 = add nsw i8 %18, -48
  %21 = ptrtoint ptr %pFraction to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sub28, ptr %pFraction, align 1
  %22 = ptrtoint ptr %pu4bMove to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pu4bMove, align 4
  %inc31 = add i32 %23, 1
  store i32 %inc31, ptr %pu4bMove, align 4
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %24 = add i8 %15, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.else, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.else ], [ false, %if.then.cleanup_crit_edge ], [ true, %do.cond.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @IsCommentString(ptr nocapture noundef readonly %szStr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %szStr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %szStr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp eq i8 %1, 47
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %szStr, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp3 = icmp eq i8 %3, 47
  br i1 %cmp3, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @GetU1ByteIntegerFromStringInDecimal(ptr nocapture noundef readonly %Str, ptr nocapture noundef %pInt) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pInt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pInt, align 1
  %1 = ptrtoint ptr %Str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %Str, align 1
  %3 = add i8 %2, -58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %3)
  %4 = icmp ult i8 %3, -10
  br i1 %4, label %entry.cleanup_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %if.then.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx33 = phi ptr [ %arrayidx, %if.then.if.then_crit_edge ], [ %Str, %entry.if.then_crit_edge ]
  %i.032 = phi i16 [ %inc, %if.then.if.then_crit_edge ], [ 0, %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %pInt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pInt, align 1
  %mul = mul i8 %6, 10
  store i8 %mul, ptr %pInt, align 1
  %7 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx33, align 1
  %sub = add i8 %mul, -48
  %add = add i8 %sub, %8
  store i8 %add, ptr %pInt, align 1
  %inc = add i16 %i.032, 1
  %idxprom = zext i16 %inc to i32
  %arrayidx = getelementptr i8, ptr %Str, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = add i8 %10, -58
  %12 = icmp ult i8 %11, -10
  br i1 %12, label %if.then.cleanup_crit_edge, label %if.then.if.then_crit_edge

if.then.if.then_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa.in = phi i8 [ %2, %entry.cleanup_crit_edge ], [ %10, %if.then.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmp.not.lcssa.in)
  %cmp.not.lcssa = icmp eq i8 %cmp.not.lcssa.in, 0
  ret i1 %cmp.not.lcssa
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ParseQualifiedString(ptr nocapture noundef readonly %In, ptr nocapture noundef %Start, ptr noundef %Out, i8 noundef zeroext %LeftQualifier, i8 noundef zeroext %RightQualifier) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %Start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Start, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %Start, align 4
  %arrayidx = getelementptr i8, ptr %In, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %LeftQualifier)
  %cmp.not = icmp eq i8 %3, %LeftQualifier
  br i1 %cmp.not, label %entry.while.cond_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %4 = ptrtoint ptr %Start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Start, align 4
  %inc3 = add i32 %5, 1
  store i32 %inc3, ptr %Start, align 4
  %arrayidx4 = getelementptr i8, ptr %In, i32 %5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %cmp7.not = icmp eq i8 %7, %RightQualifier
  br i1 %cmp7.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %In, i32 %inc
  %sub9 = xor i32 %1, -1
  %add = add i32 %5, %sub9
  %call = tail call ptr @strncpy(ptr noundef %Out, ptr noundef %add.ptr, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @isAllSpaceOrTab(ptr nocapture noundef readonly %data, i8 noundef zeroext %size) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %cmp30.not = icmp eq i8 %size, 0
  br i1 %cmp30.not, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %wide.trip.count = zext i8 %size to i32
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %indvars.iv = phi i32 [ 0, %while.body.preheader ], [ %indvars.iv.next, %if.end.while.body_crit_edge ]
  %NumOfSpaceAndTab.032 = phi i8 [ 0, %while.body.preheader ], [ %NumOfSpaceAndTab.1, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %1, label %while.body.if.end_crit_edge [
    i8 32, label %while.body.if.then_crit_edge
    i8 9, label %while.body.if.then_crit_edge33
    i8 0, label %while.body.if.then_crit_edge34
  ]

while.body.if.then_crit_edge34:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.body.if.then_crit_edge33:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.if.then_crit_edge33, %while.body.if.then_crit_edge34
  %inc = add i8 %NumOfSpaceAndTab.032, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %NumOfSpaceAndTab.1 = phi i8 [ %inc, %if.then ], [ %NumOfSpaceAndTab.032, %while.body.if.end_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %NumOfSpaceAndTab.0.lcssa = phi i8 [ 0, %entry.while.end_crit_edge ], [ %NumOfSpaceAndTab.1, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %NumOfSpaceAndTab.0.lcssa, i8 %size)
  %cmp20 = icmp eq i8 %NumOfSpaceAndTab.0.lcssa, %size
  ret i1 %cmp20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hal_check_rxfifo_full(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 1639) #13
  %2 = or i8 %call, -16
  %call2 = tail call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 1639, i8 noundef zeroext %2) #13
  %dbg_rx_fifo_curr_overflow = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 29
  %3 = ptrtoint ptr %dbg_rx_fifo_curr_overflow to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dbg_rx_fifo_curr_overflow, align 8
  %dbg_rx_fifo_last_overflow = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 28
  %5 = ptrtoint ptr %dbg_rx_fifo_last_overflow to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %dbg_rx_fifo_last_overflow, align 8
  %call3 = tail call zeroext i16 @rtw_read16(ptr noundef %adapter, i32 noundef 1636) #13
  %conv4 = zext i16 %call3 to i64
  %6 = ptrtoint ptr %dbg_rx_fifo_curr_overflow to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv4, ptr %dbg_rx_fifo_curr_overflow, align 8
  %7 = ptrtoint ptr %dbg_rx_fifo_last_overflow to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dbg_rx_fifo_last_overflow, align 8
  %sub = sub i64 %conv4, %8
  %dbg_rx_fifo_diff_overflow = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 30
  %9 = ptrtoint ptr %dbg_rx_fifo_diff_overflow to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sub, ptr %dbg_rx_fifo_diff_overflow, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linked_info_dump(ptr noundef %padapter, i8 noundef zeroext %benable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %bLinkInfoDump = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 53
  %2 = ptrtoint ptr %bLinkInfoDump to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bLinkInfoDump, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %benable)
  %cmp = icmp eq i8 %3, %benable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %benable)
  %tobool.not = icmp eq i8 %benable, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %power_mgnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 34
  %4 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mgnt, align 4
  %org_power_mgnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 35
  %6 = ptrtoint ptr %org_power_mgnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %org_power_mgnt, align 1
  %call = tail call i32 @rtw_pm_set_lps(ptr noundef %padapter, i8 noundef zeroext 1) #13
  %ips_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 23
  %7 = ptrtoint ptr %ips_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ips_mode, align 4
  %ips_org_mode = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 24
  %9 = ptrtoint ptr %ips_org_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ips_org_mode, align 1
  %call4 = tail call i32 @rtw_pm_set_ips(ptr noundef %padapter, i8 noundef zeroext 0) #13
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ips_org_mode5 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 24
  %10 = ptrtoint ptr %ips_org_mode5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ips_org_mode5, align 1
  %call6 = tail call i32 @rtw_pm_set_ips(ptr noundef %padapter, i8 noundef zeroext %11) #13
  %12 = ptrtoint ptr %ips_org_mode5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ips_org_mode5, align 1
  %call8 = tail call i32 @rtw_pm_set_lps(ptr noundef %padapter, i8 noundef zeroext %13) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %14 = ptrtoint ptr %bLinkInfoDump to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %benable, ptr %bLinkInfoDump, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_lps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pm_set_ips(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_bb_rf_gain_offset(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %EEPROMRFGainOffset = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 9
  %0 = ptrtoint ptr %EEPROMRFGainOffset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %EEPROMRFGainOffset, align 1
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %entry
  %EEPROMRFGainVal = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 10
  %3 = ptrtoint ptr %EEPROMRFGainVal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %EEPROMRFGainVal, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp.not = icmp eq i8 %4, -1
  br i1 %cmp.not, label %if.then.if.end18_crit_edge, label %if.then4

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @rtw_hal_read_rfreg(ptr noundef %padapter, i32 noundef 0, i32 noundef 127, i32 noundef -1) #13
  %5 = ptrtoint ptr %EEPROMRFGainVal to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %EEPROMRFGainVal, align 4
  %switch.tableidx = add i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 13
  br i1 %7, label %switch.hole_check, label %if.then4.for.end_crit_edge

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

switch.hole_check:                                ; preds = %if.then4
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 5117, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.end_crit_edge, label %switch.lookup

switch.hole_check.for.end_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.rtw_bb_rf_gain_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx8 = getelementptr i32, ptr @Array_kfreemap, i32 %switch.load
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  br label %for.end

for.end:                                          ; preds = %switch.lookup, %switch.hole_check.for.end_crit_edge, %if.then4.for.end_crit_edge
  %target.0 = phi i32 [ %12, %switch.lookup ], [ 0, %if.then4.for.end_crit_edge ], [ 0, %switch.hole_check.for.end_crit_edge ]
  tail call void @rtw_hal_write_rfreg(ptr noundef %padapter, i32 noundef 0, i32 noundef 127, i32 noundef 491520, i32 noundef %target.0) #13
  %call16 = tail call i32 @rtw_hal_read_rfreg(ptr noundef %padapter, i32 noundef 0, i32 noundef 127, i32 noundef -1) #13
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 43, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 44, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 44, i32 50}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 47, i32 50}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 49, i32 50}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 51, i32 50}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 54, i32 50}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 56, i32 50}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 58, i32 50}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 60, i32 50}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 62, i32 50}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 64, i32 50}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 66, i32 50}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 68, i32 50}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 71, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 73, i32 49}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 75, i32 49}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 590, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 650, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @SetHwReg.__UNIQUE_ID_ddebug345, !37, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 670, i32 3}
!43 = !{ptr @GetHwReg.__UNIQUE_ID_ddebug346, !42, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 740, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @SetHalDefVar.__UNIQUE_ID_ddebug347, !45, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 790, i32 3}
!50 = !{ptr @GetHalDefVar.__UNIQUE_ID_ddebug348, !49, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!51 = !{ptr @Array_kfreemap, !52, !"Array_kfreemap", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8723bs/hal/hal_com.c", i32 1175, i32 12}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148718990, i64 2148718995, i64 2148719008, i64 2148719052, i64 2148719086, i64 2148719107}
