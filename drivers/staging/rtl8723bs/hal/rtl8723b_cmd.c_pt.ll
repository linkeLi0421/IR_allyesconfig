; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c"
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
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FillH2CCmd8723B(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %ElementID, i32 noundef %CmdLen, ptr noundef readonly %pCmdBuffer) local_unnamed_addr #0 align 64 {
entry:
  %h2c_cmd.sroa.7.sroa.0 = alloca i24, align 4
  %h2c_cmd_ex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h2c_cmd.sroa.7.sroa.0 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 3)
  store i24 0, ptr %h2c_cmd.sroa.7.sroa.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h2c_cmd_ex)
  %1 = ptrtoint ptr %h2c_cmd_ex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %h2c_cmd_ex, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %HalData = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %HalData, align 8
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj1, align 4
  %h2c_fwcmd_mutex = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %h2c_fwcmd_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %pCmdBuffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %CmdLen)
  %cmp = icmp ugt i32 %CmdLen, 7
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.end.exit_crit_edge, label %if.end6

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end6:                                          ; preds = %if.end
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %do.body, label %if.end6.exit_crit_edge

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.body:                                          ; preds = %if.end6
  %LastHMEBoxNum = getelementptr inbounds %struct.hal_com_data, ptr %7, i32 0, i32 102
  %12 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %LastHMEBoxNum, align 1
  %conv1.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv1.i
  %14 = trunc i32 %shl.i to i8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %retry_cnts.0.i = phi i32 [ 100, %do.body ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %5, i32 noundef 460) #5
  %conv2.i = and i8 %call.i, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %cmp.i = icmp eq i8 %conv2.i, 0
  %dec.i = add nsw i32 %retry_cnts.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_cnts.0.i)
  %tobool5.not.i = icmp eq i32 %retry_cnts.0.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %_is_fw_read_cmd_down.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

_is_fw_read_cmd_down.exit:                        ; preds = %do.body.i
  br i1 %cmp.i, label %if.end13, label %_is_fw_read_cmd_down.exit.exit_crit_edge

_is_fw_read_cmd_down.exit.exit_crit_edge:         ; preds = %_is_fw_read_cmd_down.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end13:                                         ; preds = %_is_fw_read_cmd_down.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %CmdLen)
  %cmp14 = icmp ult i32 %CmdLen, 4
  br i1 %cmp14, label %if.end18, label %if.then23

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memcpy(ptr %h2c_cmd.sroa.7.sroa.0, ptr %pCmdBuffer, i32 %CmdLen)
  %.pre = shl nuw nsw i32 %conv1.i, 2
  br label %if.end26

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %pCmdBuffer to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %h2c_cmd.sroa.7.sroa.0.0.copyload = load i24, ptr %pCmdBuffer, align 1
  %17 = ptrtoint ptr %h2c_cmd.sroa.7.sroa.0 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 3)
  store i24 %h2c_cmd.sroa.7.sroa.0.0.copyload, ptr %h2c_cmd.sroa.7.sroa.0, align 4
  %add.ptr17 = getelementptr i8, ptr %pCmdBuffer, i32 3
  %sub = add i32 %CmdLen, -3
  %18 = call ptr @memcpy(ptr %h2c_cmd_ex, ptr %add.ptr17, i32 %sub)
  %mul = shl nuw nsw i32 %conv1.i, 2
  %add = add nuw nsw i32 %mul, 496
  %19 = ptrtoint ptr %h2c_cmd_ex to i32
  call void @__asan_load4_noabort(i32 %19)
  %h2c_cmd_ex.0.h2c_cmd_ex.0.h2c_cmd_ex.0. = load i32, ptr %h2c_cmd_ex, align 4
  %call25 = tail call i32 @rtw_write32(ptr noundef %5, i32 noundef %add, i32 noundef %h2c_cmd_ex.0.h2c_cmd_ex.0.h2c_cmd_ex.0.) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18
  %mul28.pre-phi = phi i32 [ %.pre, %if.end18 ], [ %mul, %if.then23 ]
  %conv65 = zext i8 %ElementID to i32
  %add29 = add nuw nsw i32 %mul28.pre-phi, 464
  %20 = ptrtoint ptr %h2c_cmd.sroa.7.sroa.0 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.0. = load i24, ptr %h2c_cmd.sroa.7.sroa.0, align 4
  %h2c_cmd.sroa.7.0.insert.ext = zext i24 %h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.sroa.0.0.h2c_cmd.sroa.7.0. to i32
  %h2c_cmd.sroa.0.0.insert.shift = shl nuw i32 %conv65, 24
  %h2c_cmd.sroa.0.0.insert.insert = or i32 %h2c_cmd.sroa.0.0.insert.shift, %h2c_cmd.sroa.7.0.insert.ext
  %call30 = tail call i32 @rtw_write32(ptr noundef %5, i32 noundef %add29, i32 noundef %h2c_cmd.sroa.0.0.insert.insert) #5
  %add32 = add i8 %13, 1
  %rem = and i8 %add32, 3
  %21 = ptrtoint ptr %LastHMEBoxNum to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %rem, ptr %LastHMEBoxNum, align 1
  br label %exit

exit:                                             ; preds = %if.end26, %_is_fw_read_cmd_down.exit.exit_crit_edge, %if.end6.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.exit_crit_edge ], [ 1, %if.end26 ], [ 0, %_is_fw_read_cmd_down.exit.exit_crit_edge ], [ 0, %if.end.exit_crit_edge ]
  %22 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvobj1, align 4
  %h2c_fwcmd_mutex36 = getelementptr inbounds %struct.dvobj_priv, ptr %23, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %h2c_fwcmd_mutex36) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h2c_cmd_ex)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @CheckFwRsvdPageContent(ptr nocapture noundef %Adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwMediaStatusRpt_cmd(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %mstatus, i8 noundef zeroext %macid) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CMediaStatusRptParm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %u1H2CMediaStatusRptParm) #5
  %0 = getelementptr inbounds i8, ptr %u1H2CMediaStatusRptParm, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %0, align 1
  %2 = and i8 %mstatus, 1
  %3 = ptrtoint ptr %u1H2CMediaStatusRptParm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %u1H2CMediaStatusRptParm, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1H2CMediaStatusRptParm, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %macid, ptr %add.ptr, align 1
  %call = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 1, i32 noundef 3, ptr noundef nonnull %u1H2CMediaStatusRptParm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %u1H2CMediaStatusRptParm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwMacIdConfig_cmd(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %mac_id, i8 noundef zeroext %raid, i8 noundef zeroext %bw, i8 noundef zeroext %sgi, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CMacIdConfigParm = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1H2CMacIdConfigParm) #5
  %0 = ptrtoint ptr %u1H2CMacIdConfigParm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mac_id, ptr %u1H2CMacIdConfigParm, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 1
  %1 = and i8 %raid, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sgi)
  %tobool.not.not = icmp eq i8 %sgi, 0
  %shl21 = select i1 %tobool.not.not, i8 0, i8 -128
  %or1195 = or i8 %shl21, %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %or1195, ptr %add.ptr, align 1
  %add.ptr27 = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 2
  %3 = and i8 %bw, 3
  %4 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %add.ptr27, align 1
  %add.ptr38 = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 3
  %conv47 = trunc i32 %mask to i8
  %5 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv47, ptr %add.ptr38, align 1
  %add.ptr51 = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 4
  %and54 = lshr i32 %mask, 8
  %conv60 = trunc i32 %and54 to i8
  %6 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv60, ptr %add.ptr51, align 1
  %add.ptr64 = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 5
  %and67 = lshr i32 %mask, 16
  %conv74 = trunc i32 %and67 to i8
  %7 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv74, ptr %add.ptr64, align 1
  %add.ptr78 = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm, i32 6
  %shr82 = lshr i32 %mask, 24
  %conv88 = trunc i32 %shr82 to i8
  %8 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv88, ptr %add.ptr78, align 1
  %call = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 64, i32 noundef 7, ptr noundef nonnull %u1H2CMacIdConfigParm)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1H2CMacIdConfigParm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_rssi_cmd(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CRssiSettingParm = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u1H2CRssiSettingParm) #5
  %0 = ptrtoint ptr %u1H2CRssiSettingParm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %u1H2CRssiSettingParm, align 4
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %param, align 1
  %add.ptr = getelementptr i8, ptr %param, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  store i8 %2, ptr %u1H2CRssiSettingParm, align 4
  %add.ptr6 = getelementptr inbounds i8, ptr %u1H2CRssiSettingParm, i32 2
  %5 = and i8 %4, 127
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %add.ptr6, align 2
  %call = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 66, i32 noundef 4, ptr noundef nonnull %u1H2CRssiSettingParm)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u1H2CRssiSettingParm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwPwrMode_cmd(ptr noundef %padapter, i8 noundef zeroext %psmode) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CPwrModeParm = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1H2CPwrModeParm) #5
  %2 = call ptr @memset(ptr %u1H2CPwrModeParm, i32 0, i32 7)
  %dtim = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 8
  %3 = ptrtoint ptr %dtim to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dtim, align 1
  %5 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %6 = icmp ult i8 %5, 15
  %add = add i8 %4, 1
  %awake_intvl.0 = select i1 %6, i8 %add, i8 3
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %7 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10 = icmp eq i8 %8, 1
  %awake_intvl.1 = select i1 %cmp10, i8 2, i8 %awake_intvl.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %psmode)
  %cmp15.not = icmp eq i8 %psmode, 0
  br i1 %cmp15.not, label %entry.if.end34_crit_edge, label %if.then17

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then17:                                        ; preds = %entry
  %call = tail call zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef %padapter) #5
  br i1 %call, label %if.then21, label %if.then17.if.end34_crit_edge

if.then17.if.end34_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call zeroext i8 @hal_btcoex_RpwmVal(ptr noundef %padapter) #5
  %call23 = tail call zeroext i8 @hal_btcoex_LpsVal(ptr noundef %padapter) #5
  %9 = and i8 %call23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool.not, i8 %awake_intvl.1, i8 2
  br label %if.end34

if.end34:                                         ; preds = %if.then21, %if.then17.if.end34_crit_edge, %entry.if.end34_crit_edge
  %PowerState.0 = phi i8 [ 0, %if.then17.if.end34_crit_edge ], [ 12, %entry.if.end34_crit_edge ], [ %call22, %if.then21 ]
  %awake_intvl.2 = phi i8 [ %awake_intvl.1, %if.then17.if.end34_crit_edge ], [ %awake_intvl.1, %entry.if.end34_crit_edge ], [ %spec.select, %if.then21 ]
  %byte5.0 = phi i8 [ 64, %if.then17.if.end34_crit_edge ], [ 64, %entry.if.end34_crit_edge ], [ %call23, %if.then21 ]
  %10 = ptrtoint ptr %u1H2CPwrModeParm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %u1H2CPwrModeParm, align 1
  %not.cmp15.not = xor i1 %cmp15.not, true
  %cond = zext i1 %not.cmp15.not to i8
  %or = or i8 %11, %cond
  store i8 %or, ptr %u1H2CPwrModeParm, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1H2CPwrModeParm, i32 1
  %smart_ps = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 6
  %12 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %smart_ps, align 1
  %14 = shl i8 %13, 4
  %15 = or i8 %14, 2
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add.ptr, align 1
  %add.ptr65 = getelementptr inbounds i8, ptr %u1H2CPwrModeParm, i32 2
  %17 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr65, align 1
  %or68198 = or i8 %18, %awake_intvl.2
  store i8 %or68198, ptr %add.ptr65, align 1
  %add.ptr73 = getelementptr inbounds i8, ptr %u1H2CPwrModeParm, i32 3
  %19 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr73, align 1
  %uapsd_enable = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 30
  %21 = ptrtoint ptr %uapsd_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %uapsd_enable, align 4
  %or77199 = or i8 %22, %20
  store i8 %or77199, ptr %add.ptr73, align 1
  %add.ptr82 = getelementptr inbounds i8, ptr %u1H2CPwrModeParm, i32 4
  %23 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr82, align 1
  %or85200 = or i8 %24, %PowerState.0
  store i8 %or85200, ptr %add.ptr82, align 1
  %add.ptr90 = getelementptr inbounds i8, ptr %u1H2CPwrModeParm, i32 5
  %25 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr90, align 1
  %or93201 = or i8 %26, %byte5.0
  store i8 %or93201, ptr %add.ptr90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %psmode)
  %cmp98.not = icmp eq i8 %psmode, 1
  br i1 %cmp98.not, label %if.end34.if.end151_crit_edge, label %if.then100

if.end34.if.end151_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then100:                                       ; preds = %if.end34
  %adaptive_tsf_done = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 28
  %27 = ptrtoint ptr %adaptive_tsf_done to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %adaptive_tsf_done, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool101.not = icmp eq i8 %28, 0
  br i1 %tobool101.not, label %land.lhs.true102, label %if.then100.if.end151_crit_edge

if.then100.if.end151_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

land.lhs.true102:                                 ; preds = %if.then100
  %bcn_cnt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 31
  %29 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bcn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp103.not = icmp eq i32 %30, 0
  br i1 %cmp103.not, label %land.lhs.true102.if.end151_crit_edge, label %if.then105

land.lhs.true102.if.end151_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then105:                                       ; preds = %land.lhs.true102
  %DrvBcnEarly = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 32
  %31 = ptrtoint ptr %DrvBcnEarly to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %DrvBcnEarly, align 8
  %DrvBcnTimeOut = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 33
  %32 = ptrtoint ptr %DrvBcnTimeOut to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %DrvBcnTimeOut, align 1
  br label %for.body

for.body:                                         ; preds = %if.end143.for.body_crit_edge, %if.then105
  %ratio_80_delay.0206 = phi i32 [ 0, %if.then105 ], [ %add118, %if.end143.for.body_crit_edge ]
  %ratio_20_delay.0205 = phi i32 [ 0, %if.then105 ], [ %add113, %if.end143.for.body_crit_edge ]
  %i.0202 = phi i32 [ 0, %if.then105 ], [ %inc, %if.end143.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 29, i32 %i.0202
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %34, 100
  %35 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bcn_cnt, align 4
  %div = udiv i32 %mul, %36
  %arrayidx109 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 30, i32 %i.0202
  %37 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %arrayidx109, align 4
  %conv112 = and i32 %ratio_20_delay.0205, 255
  %add113 = add i32 %div, %conv112
  %conv117 = and i32 %ratio_80_delay.0206, 255
  %add118 = add i32 %div, %conv117
  %conv120 = and i32 %add113, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %conv120)
  %cmp121 = icmp ugt i32 %conv120, 20
  br i1 %cmp121, label %land.lhs.true123, label %for.body.if.end131_crit_edge

for.body.if.end131_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

land.lhs.true123:                                 ; preds = %for.body
  %38 = ptrtoint ptr %DrvBcnEarly to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %DrvBcnEarly, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp126 = icmp eq i8 %39, -1
  br i1 %cmp126, label %if.then128, label %land.lhs.true123.if.end131_crit_edge

land.lhs.true123.if.end131_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then128:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #7
  %conv129 = trunc i32 %i.0202 to i8
  %40 = ptrtoint ptr %DrvBcnEarly to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv129, ptr %DrvBcnEarly, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %land.lhs.true123.if.end131_crit_edge, %for.body.if.end131_crit_edge
  %conv132 = and i32 %add118, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv132)
  %cmp133 = icmp ugt i32 %conv132, 80
  br i1 %cmp133, label %land.lhs.true135, label %if.end131.if.end143_crit_edge

if.end131.if.end143_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

land.lhs.true135:                                 ; preds = %if.end131
  %41 = ptrtoint ptr %DrvBcnTimeOut to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DrvBcnTimeOut, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp138 = icmp eq i8 %42, -1
  br i1 %cmp138, label %if.then140, label %land.lhs.true135.if.end143_crit_edge

land.lhs.true135.if.end143_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

if.then140:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  %conv141 = trunc i32 %i.0202 to i8
  %43 = ptrtoint ptr %DrvBcnTimeOut to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv141, ptr %DrvBcnTimeOut, align 1
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %land.lhs.true135.if.end143_crit_edge, %if.end131.if.end143_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx109, align 4
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %if.end143.for.body_crit_edge

if.end143.for.body_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %bcn_cnt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %bcn_cnt, align 4
  %47 = ptrtoint ptr %adaptive_tsf_done to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %adaptive_tsf_done, align 8
  br label %if.end151

if.end151:                                        ; preds = %for.end, %land.lhs.true102.if.end151_crit_edge, %if.then100.if.end151_crit_edge, %if.end34.if.end151_crit_edge
  call void @hal_btcoex_RecordPwrMode(ptr noundef %padapter, ptr noundef nonnull %u1H2CPwrModeParm, i8 noundef zeroext 7) #5
  %call154 = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 32, i32 noundef 7, ptr noundef nonnull %u1H2CPwrModeParm)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1H2CPwrModeParm) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hal_btcoex_IsBtControlLps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hal_btcoex_RpwmVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @hal_btcoex_LpsVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_RecordPwrMode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwPsTuneParam_cmd(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CPsTuneParm = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u1H2CPsTuneParm) #5
  %0 = ptrtoint ptr %u1H2CPsTuneParm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 168110339, ptr %u1H2CPsTuneParm, align 4
  %call = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 33, i32 noundef 4, ptr noundef nonnull %u1H2CPsTuneParm)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u1H2CPsTuneParm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwPwrModeInIPS_cmd(ptr nocapture noundef readonly %padapter, i8 noundef zeroext %cmd_param) local_unnamed_addr #0 align 64 {
entry:
  %cmd_param.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd_param.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd_param, ptr %cmd_param.addr, align 1
  %call = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 40, i32 noundef 1, ptr noundef nonnull %cmd_param.addr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_download_rsvd_page(ptr noundef %padapter, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CRsvdPageParm.i.i = alloca [5 x i8], align 1
  %BeaconLength.i = alloca i32, align 4
  %bcn_valid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcn_valid) #5
  %2 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bcn_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mstatus)
  %cmp = icmp eq i8 %mstatus, 1
  br i1 %cmp, label %if.then, label %entry.if.end82_crit_edge

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then:                                          ; preds = %entry
  %aid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 11
  %3 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %aid, align 4
  %5 = or i16 %4, -16384
  %call = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1704, i16 noundef zeroext %5) #5
  %call4 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 257) #5
  %6 = or i8 %call4, 1
  %call8 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 257, i8 noundef zeroext %6) #5
  %call9 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #5
  %7 = and i8 %call9, -25
  %8 = or i8 %7, 16
  %call15 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %8) #5
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 106
  %9 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %11 = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %10, -65
  %call23 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %12) #5
  %13 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %15 = and i8 %14, -65
  store i8 %15, ptr %RegFwHwTxQCtrl, align 1
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef null) #5
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 74, ptr noundef null) #5
  %bSurpriseRemoved43 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %bDriverStopped46 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %network.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %mac_addr.i.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %infrastructure_mode.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 20, i32 6, i32 8
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %add.ptr.i.i = getelementptr inbounds i8, ptr %u1H2CRsvdPageParm.i.i, i32 1
  %add.ptr12.i.i = getelementptr inbounds i8, ptr %u1H2CRsvdPageParm.i.i, i32 2
  %add.ptr20.i.i = getelementptr inbounds i8, ptr %u1H2CRsvdPageParm.i.i, i32 3
  %add.ptr28.i.i = getelementptr inbounds i8, ptr %u1H2CRsvdPageParm.i.i, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs45.do.body_crit_edge, %if.then
  %DLBcnCount.0 = phi i8 [ 0, %if.then ], [ %inc, %land.rhs45.do.body_crit_edge ]
  %poll.0 = phi i32 [ 0, %if.then ], [ %inc29, %land.rhs45.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BeaconLength.i) #5
  %16 = ptrtoint ptr %BeaconLength.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %BeaconLength.i, align 4
  %call.i = call ptr @__rtw_alloc_cmdxmitframe(ptr noundef %xmitpriv.i, i32 noundef 1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge, label %if.end.i

do.body.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8723b_set_FwRsvdPagePkt.exit

if.end.i:                                         ; preds = %do.body
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_addr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %18, i32 40
  call fastcc void @ConstructBeacon(ptr noundef %padapter, ptr noundef %arrayidx.i, ptr noundef nonnull %BeaconLength.i) #5
  %19 = ptrtoint ptr %BeaconLength.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %BeaconLength.i, align 4
  %add.i = add i32 %20, 40
  %shr.i = lshr i32 %add.i, 7
  %and.i = and i32 %add.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %add7.i = add nuw nsw i32 %shr.i, %cond.i
  %conv8.i = trunc i32 %add7.i to i8
  %conv9.i = and i32 %add7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv9.i)
  %cmp.i = icmp eq i32 %conv9.i, 1
  %spec.select.i = select i1 %cmp.i, i8 2, i8 %conv8.i
  %conv16.tr.i = zext i8 %spec.select.i to i32
  %21 = shl nuw nsw i32 %conv16.tr.i, 7
  %conv25.i = or i32 %21, 40
  %arrayidx27.i = getelementptr i8, ptr %18, i32 %conv25.i
  %22 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -23536, ptr %arrayidx27.i, align 2
  %23 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %aid, align 4
  %25 = or i16 %24, -16384
  %26 = call i16 @llvm.bswap.i16(i16 %25) #5
  %27 = ptrtoint ptr %arrayidx27.i to i32
  %add.i.i = add i32 %27, 2
  %28 = inttoptr i32 %add.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %26, ptr %28, align 2
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx27.i, i32 0, i32 2
  %call.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %30 = call ptr @memcpy(ptr %addr1.i.i, ptr %call.i.i, i32 6)
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx27.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %addr2.i.i, ptr %mac_addr.i.i.i, i32 6)
  %arrayidx30.i = getelementptr i8, ptr %18, i32 %21
  call void @rtl8723b_fill_fake_txdesc(ptr noundef %padapter, ptr noundef %arrayidx30.i, i32 noundef 16, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %conv44.i = add i8 %spec.select.i, 1
  %add49.i = add nuw nsw i32 %21, 168
  %arrayidx52.i = getelementptr i8, ptr %18, i32 %add49.i
  %call53.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %32 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayidx52.i, align 2
  %33 = ptrtoint ptr %infrastructure_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %infrastructure_mode.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 4, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %arrayidx52.i, align 2
  %addr1.i3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 2
  %call.i4.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %37 = call ptr @memcpy(ptr %addr1.i3.i, ptr %call.i4.i, i32 6)
  %addr2.i5.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 3
  %38 = call ptr @memcpy(ptr %addr2.i5.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %addr3.i.i, ptr %call53.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

sw.bb10.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %arrayidx52.i, align 2
  %addr114.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 2
  %41 = call ptr @memcpy(ptr %addr114.i.i, ptr %call53.i, i32 6)
  %addr216.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 3
  %call19.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %42 = call ptr @memcpy(ptr %addr216.i.i, ptr %call19.i.i, i32 6)
  %addr320.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 4
  %43 = call ptr @memcpy(ptr %addr320.i.i, ptr %mac_addr.i.i.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr125.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 2
  %44 = call ptr @memcpy(ptr %addr125.i.i, ptr %call53.i, i32 6)
  %addr227.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 3
  %45 = call ptr @memcpy(ptr %addr227.i.i, ptr %mac_addr.i.i.i, i32 6)
  %addr331.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx52.i, i32 0, i32 4
  %call34.i.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %46 = call ptr @memcpy(ptr %addr331.i.i, ptr %call34.i.i, i32 6)
  br label %ConstructNullFunctionData.exit.i

ConstructNullFunctionData.exit.i:                 ; preds = %sw.default.i.i, %sw.bb10.i.i, %sw.bb.i.i
  %47 = ptrtoint ptr %arrayidx52.i to i32
  %add.i7.i = add i32 %47, 22
  %48 = inttoptr i32 %add.i7.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 2
  %51 = and i16 %50, 3840
  store i16 %51, ptr %48, align 2
  %52 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx52.i, align 2
  %54 = and i16 %53, 1023
  %55 = or i16 %54, 18432
  store i16 %55, ptr %arrayidx52.i, align 2
  %sub56.i = add nuw nsw i32 %21, 128
  %arrayidx57.i = getelementptr i8, ptr %18, i32 %sub56.i
  call void @rtl8723b_fill_fake_txdesc(ptr noundef %padapter, ptr noundef %arrayidx57.i, i32 noundef 24, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %conv71.i = add i8 %spec.select.i, 2
  %add76.i = add nuw nsw i32 %21, 296
  %arrayidx79.i = getelementptr i8, ptr %18, i32 %add76.i
  %call81.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %56 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %arrayidx79.i, align 2
  %57 = ptrtoint ptr %infrastructure_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %infrastructure_mode.i.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %58, label %sw.default.i29.i [
    i32 1, label %sw.bb.i15.i
    i32 4, label %sw.bb10.i22.i
  ]

sw.bb.i15.i:                                      ; preds = %ConstructNullFunctionData.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %arrayidx79.i, align 2
  %addr1.i9.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 2
  %call.i11.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %61 = call ptr @memcpy(ptr %addr1.i9.i, ptr %call.i11.i, i32 6)
  %addr2.i12.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 3
  %62 = call ptr @memcpy(ptr %addr2.i12.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i14.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 4
  %63 = call ptr @memcpy(ptr %addr3.i14.i, ptr %call81.i, i32 6)
  br label %ConstructNullFunctionData.exit31.i

sw.bb10.i22.i:                                    ; preds = %ConstructNullFunctionData.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %arrayidx79.i, align 2
  %addr114.i16.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 2
  %65 = call ptr @memcpy(ptr %addr114.i16.i, ptr %call81.i, i32 6)
  %addr216.i17.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 3
  %call19.i19.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %66 = call ptr @memcpy(ptr %addr216.i17.i, ptr %call19.i19.i, i32 6)
  %addr320.i20.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 4
  %67 = call ptr @memcpy(ptr %addr320.i20.i, ptr %mac_addr.i.i.i, i32 6)
  br label %ConstructNullFunctionData.exit31.i

sw.default.i29.i:                                 ; preds = %ConstructNullFunctionData.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr125.i23.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 2
  %68 = call ptr @memcpy(ptr %addr125.i23.i, ptr %call81.i, i32 6)
  %addr227.i24.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 3
  %69 = call ptr @memcpy(ptr %addr227.i24.i, ptr %mac_addr.i.i.i, i32 6)
  %addr331.i26.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx79.i, i32 0, i32 4
  %call34.i28.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %70 = call ptr @memcpy(ptr %addr331.i26.i, ptr %call34.i28.i, i32 6)
  br label %ConstructNullFunctionData.exit31.i

ConstructNullFunctionData.exit31.i:               ; preds = %sw.default.i29.i, %sw.bb10.i22.i, %sw.bb.i15.i
  %71 = ptrtoint ptr %arrayidx79.i to i32
  %add.i30.i = add i32 %71, 22
  %72 = inttoptr i32 %add.i30.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 2
  %75 = and i16 %74, 3840
  store i16 %75, ptr %72, align 2
  %76 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx79.i, align 2
  %78 = and i16 %77, 1023
  %79 = or i16 %78, -14336
  store i16 %79, ptr %arrayidx79.i, align 2
  %sub84.i = add nuw nsw i32 %21, 256
  %arrayidx85.i = getelementptr i8, ptr %18, i32 %sub84.i
  call void @rtl8723b_fill_fake_txdesc(ptr noundef %padapter, ptr noundef %arrayidx85.i, i32 noundef 26, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %conv99.i = add i8 %spec.select.i, 3
  %add104.i = add nuw nsw i32 %21, 424
  %arrayidx107.i = getelementptr i8, ptr %18, i32 %add104.i
  %call109.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %80 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %arrayidx107.i, align 2
  %81 = ptrtoint ptr %infrastructure_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %infrastructure_mode.i.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %82, label %sw.default.i53.i [
    i32 1, label %sw.bb.i39.i
    i32 4, label %sw.bb10.i46.i
  ]

sw.bb.i39.i:                                      ; preds = %ConstructNullFunctionData.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %arrayidx107.i, align 2
  %addr1.i33.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 2
  %call.i35.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %85 = call ptr @memcpy(ptr %addr1.i33.i, ptr %call.i35.i, i32 6)
  %addr2.i36.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 3
  %86 = call ptr @memcpy(ptr %addr2.i36.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i38.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 4
  %87 = call ptr @memcpy(ptr %addr3.i38.i, ptr %call109.i, i32 6)
  br label %ConstructNullFunctionData.exit55.i

sw.bb10.i46.i:                                    ; preds = %ConstructNullFunctionData.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 2, ptr %arrayidx107.i, align 2
  %addr114.i40.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 2
  %89 = call ptr @memcpy(ptr %addr114.i40.i, ptr %call109.i, i32 6)
  %addr216.i41.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 3
  %call19.i43.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %90 = call ptr @memcpy(ptr %addr216.i41.i, ptr %call19.i43.i, i32 6)
  %addr320.i44.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 4
  %91 = call ptr @memcpy(ptr %addr320.i44.i, ptr %mac_addr.i.i.i, i32 6)
  br label %ConstructNullFunctionData.exit55.i

sw.default.i53.i:                                 ; preds = %ConstructNullFunctionData.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr125.i47.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 2
  %92 = call ptr @memcpy(ptr %addr125.i47.i, ptr %call109.i, i32 6)
  %addr227.i48.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 3
  %93 = call ptr @memcpy(ptr %addr227.i48.i, ptr %mac_addr.i.i.i, i32 6)
  %addr331.i50.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx107.i, i32 0, i32 4
  %call34.i52.i = call ptr @get_my_bssid(ptr noundef %network.i.i) #5
  %94 = call ptr @memcpy(ptr %addr331.i50.i, ptr %call34.i52.i, i32 6)
  br label %ConstructNullFunctionData.exit55.i

ConstructNullFunctionData.exit55.i:               ; preds = %sw.default.i53.i, %sw.bb10.i46.i, %sw.bb.i39.i
  %95 = ptrtoint ptr %arrayidx107.i to i32
  %add.i54.i = add i32 %95, 22
  %96 = inttoptr i32 %add.i54.i to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %96, align 2
  %99 = and i16 %98, 3840
  store i16 %99, ptr %96, align 2
  %100 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx107.i, align 2
  %102 = and i16 %101, 1023
  %103 = or i16 %102, -14336
  store i16 %103, ptr %arrayidx107.i, align 2
  %sub112.i = add nuw nsw i32 %21, 384
  %arrayidx113.i = getelementptr i8, ptr %18, i32 %sub112.i
  call void @rtl8723b_fill_fake_txdesc(ptr noundef %padapter, ptr noundef %arrayidx113.i, i32 noundef 26, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %spec.select.i)
  %cmp136.i = icmp ugt i8 %spec.select.i, 3
  br i1 %cmp136.i, label %error.i, label %if.else.i

if.else.i:                                        ; preds = %ConstructNullFunctionData.exit55.i
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %padapter, ptr noundef %attrib.i) #5
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 36
  %104 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 16, ptr %qsel.i, align 2
  %sub140.i = add nuw nsw i32 %21, 538
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 9
  %105 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub140.i, ptr %last_txcmdsz.i, align 4
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 8
  %106 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub140.i, ptr %pktlen.i, align 4
  %call141.i = call i32 @dump_mgntframe_and_wait(ptr noundef %padapter, ptr noundef nonnull %call.i, i32 noundef 100) #5
  %107 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fw_state.i.i, align 4
  %and.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool144.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool144.not.i, label %if.else.i.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge, label %if.then145.i

if.else.i.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8723b_set_FwRsvdPagePkt.exit

if.then145.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1H2CRsvdPageParm.i.i) #5
  %109 = ptrtoint ptr %u1H2CRsvdPageParm.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %u1H2CRsvdPageParm.i.i, align 1
  %110 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %spec.select.i, ptr %add.ptr.i.i, align 1
  %111 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv44.i, ptr %add.ptr12.i.i, align 1
  %112 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv71.i, ptr %add.ptr20.i.i, align 1
  %113 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv99.i, ptr %add.ptr28.i.i, align 1
  %call.i56.i = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1H2CRsvdPageParm.i.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1H2CRsvdPageParm.i.i) #5
  br label %rtl8723b_set_FwRsvdPagePkt.exit

error.i:                                          ; preds = %ConstructNullFunctionData.exit55.i
  call void @__sanitizer_cov_trace_pc() #7
  %call148.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef nonnull %call.i) #5
  br label %rtl8723b_set_FwRsvdPagePkt.exit

rtl8723b_set_FwRsvdPagePkt.exit:                  ; preds = %error.i, %if.then145.i, %if.else.i.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge, %do.body.rtl8723b_set_FwRsvdPagePkt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BeaconLength.i) #5
  %inc = add nuw nsw i8 %DLBcnCount.0, 1
  br label %do.body28

do.body28:                                        ; preds = %land.rhs.do.body28_crit_edge, %rtl8723b_set_FwRsvdPagePkt.exit
  %poll.1 = phi i32 [ %poll.0, %rtl8723b_set_FwRsvdPagePkt.exit ], [ %inc29, %land.rhs.do.body28_crit_edge ]
  call void @yield() #5
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef nonnull %bcn_valid) #5
  %inc29 = add i32 %poll.1, 1
  %114 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bcn_valid, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool30.not = icmp ne i8 %115, 0
  %rem = urem i32 %inc29, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp31.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool30.not, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %do.body28.do.cond36_crit_edge, label %land.lhs.true33

do.body28.do.cond36_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond36

land.lhs.true33:                                  ; preds = %do.body28
  %116 = ptrtoint ptr %bSurpriseRemoved43 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bSurpriseRemoved43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool34.not = icmp eq i32 %117, 0
  br i1 %tobool34.not, label %land.rhs, label %land.lhs.true33.do.cond36_crit_edge

land.lhs.true33.do.cond36_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond36

land.rhs:                                         ; preds = %land.lhs.true33
  %118 = ptrtoint ptr %bDriverStopped46 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bDriverStopped46, align 4
  %tobool35.not = icmp eq i32 %119, 0
  br i1 %tobool35.not, label %land.rhs.do.body28_crit_edge, label %land.rhs.do.cond36_crit_edge

land.rhs.do.cond36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond36

land.rhs.do.body28_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

do.cond36:                                        ; preds = %land.rhs.do.cond36_crit_edge, %land.lhs.true33.do.cond36_crit_edge, %do.body28.do.cond36_crit_edge
  %.lcssa = phi i8 [ %115, %do.body28.do.cond36_crit_edge ], [ 0, %land.lhs.true33.do.cond36_crit_edge ], [ 0, %land.rhs.do.cond36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %tobool37.not = icmp eq i8 %.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %DLBcnCount.0)
  %cmp40 = icmp ult i8 %DLBcnCount.0, 100
  %or.cond125 = select i1 %tobool37.not, i1 %cmp40, i1 false
  %120 = ptrtoint ptr %bSurpriseRemoved43 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bSurpriseRemoved43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool44.not = icmp eq i32 %121, 0
  br i1 %or.cond125, label %land.lhs.true42, label %do.end50

land.lhs.true42:                                  ; preds = %do.cond36
  br i1 %tobool44.not, label %land.rhs45, label %land.lhs.true42.if.end56_crit_edge

land.lhs.true42.if.end56_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.rhs45:                                       ; preds = %land.lhs.true42
  %122 = ptrtoint ptr %bDriverStopped46 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bDriverStopped46, align 4
  %tobool47.not = icmp eq i32 %123, 0
  br i1 %tobool47.not, label %land.rhs45.do.body_crit_edge, label %land.rhs45.if.end56_crit_edge

land.rhs45.if.end56_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.rhs45.do.body_crit_edge:                     ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end50:                                         ; preds = %do.cond36
  br i1 %tobool44.not, label %lor.lhs.false, label %do.end50.if.end56_crit_edge

do.end50.if.end56_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

lor.lhs.false:                                    ; preds = %do.end50
  %124 = ptrtoint ptr %bDriverStopped46 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr129 = load i32, ptr %bDriverStopped46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129)
  %tobool54.not = icmp eq i32 %.pr129, 0
  br i1 %tobool54.not, label %if.else, label %lor.lhs.false.if.end56_crit_edge

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %125 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dvobj, align 4
  %iface_id = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 57
  %127 = ptrtoint ptr %iface_id to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %iface_id, align 8
  %fw_psmode_iface_id = getelementptr inbounds %struct.dvobj_priv, ptr %126, i32 0, i32 22, i32 31
  %129 = ptrtoint ptr %fw_psmode_iface_id to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %fw_psmode_iface_id, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else, %lor.lhs.false.if.end56_crit_edge, %do.end50.if.end56_crit_edge, %land.rhs45.if.end56_crit_edge, %land.lhs.true42.if.end56_crit_edge
  %call57 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #5
  %130 = and i8 %call57, -25
  %131 = or i8 %130, 8
  %call64 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %131) #5
  br i1 %tobool.not, label %if.end56.if.end76_crit_edge, label %if.then66

if.end56.if.end76_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %134 = or i8 %133, 64
  %call71 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %134) #5
  %135 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %137 = or i8 %136, 64
  store i8 %137, ptr %RegFwHwTxQCtrl, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %if.end56.if.end76_crit_edge
  %call77 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 257) #5
  %138 = and i8 %call77, -2
  %call81 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 257, i8 noundef zeroext %138) #5
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %entry.if.end82_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcn_valid) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_set_FwJoinBssRpt_cmd(ptr noundef %padapter, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mstatus)
  %cmp = icmp eq i8 %mstatus, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8723b_download_rsvd_page(ptr noundef %padapter, i8 noundef zeroext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_Add_RateATid(ptr nocapture noundef readonly %padapter, i32 noundef %bitmap, ptr nocapture noundef readonly %arg, i8 noundef zeroext %rssi_level) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CMacIdConfigParm.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arg, align 1
  %arrayidx1 = getelementptr i8, ptr %arg, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %arg, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %and = and i32 %bitmap, 268435455
  %idxprom = zext i8 %3 to i32
  %arrayidx3 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 40, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bw_mode = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bw_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rssi_level)
  %cmp.not = icmp eq i8 %rssi_level, 0
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  %call = tail call i32 @ODM_Get_Rate_Bitmap(ptr noundef %odmpriv, i32 noundef %idxprom, i32 noundef %and, i8 noundef zeroext %rssi_level) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %mask.0 = phi i32 [ %call, %if.then6 ], [ %and, %if.end.if.end8_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1H2CMacIdConfigParm.i) #5
  %12 = ptrtoint ptr %u1H2CMacIdConfigParm.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %3, ptr %u1H2CMacIdConfigParm.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 1
  %13 = and i8 %5, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.not.i = icmp eq i8 %7, 0
  %shl21.i = select i1 %tobool.not.not.i, i8 0, i8 -128
  %or1195.i = or i8 %shl21.i, %13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or1195.i, ptr %add.ptr.i, align 1
  %add.ptr27.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 2
  %15 = and i8 %11, 3
  %16 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add.ptr27.i, align 1
  %add.ptr38.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 3
  %conv47.i = trunc i32 %mask.0 to i8
  %17 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv47.i, ptr %add.ptr38.i, align 1
  %add.ptr51.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 4
  %and54.i = lshr i32 %mask.0, 8
  %conv60.i = trunc i32 %and54.i to i8
  %18 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv60.i, ptr %add.ptr51.i, align 1
  %add.ptr64.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 5
  %and67.i = lshr i32 %mask.0, 16
  %conv74.i = trunc i32 %and67.i to i8
  %19 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv74.i, ptr %add.ptr64.i, align 1
  %add.ptr78.i = getelementptr inbounds i8, ptr %u1H2CMacIdConfigParm.i, i32 6
  %shr82.i = lshr i32 %mask.0, 24
  %conv88.i = trunc i32 %shr82.i to i8
  %20 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv88.i, ptr %add.ptr78.i, align 1
  %call.i = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 64, i32 noundef 7, ptr noundef nonnull %u1H2CMacIdConfigParm.i) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1H2CMacIdConfigParm.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_Get_Rate_Bitmap(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723b_download_BTCoex_AP_mode_rsvd_page(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %u1H2CRsvdPageParm.i.i = alloca [5 x i8], align 4
  %BeaconLength.i = alloca i32, align 4
  %bcn_valid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcn_valid) #5
  %0 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bcn_valid, align 1
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %1 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %HalData, align 8
  %aid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 11
  %3 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %aid, align 4
  %5 = or i16 %4, -16384
  %call = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1704, i16 noundef zeroext %5) #5
  %call2 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 257) #5
  %6 = or i8 %call2, 1
  %call6 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 257, i8 noundef zeroext %6) #5
  %call7 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #5
  %7 = and i8 %call7, -25
  %8 = or i8 %7, 16
  %call13 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %8) #5
  %RegFwHwTxQCtrl = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 106
  %9 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %11 = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %10, -65
  %13 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %RegFwHwTxQCtrl, align 1
  %call21 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %12) #5
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef null) #5
  tail call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 74, ptr noundef null) #5
  %bSurpriseRemoved36 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %bDriverStopped39 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %mac_addr.i.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %bssid.sroa.5.0.mac_addr.i.sroa_idx.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4, i32 1
  %bssid.sroa.6.0.mac_addr.i.sroa_idx.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4, i32 2
  %bssid.sroa.7.0.mac_addr.i.sroa_idx.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4, i32 3
  %bssid.sroa.8.0.mac_addr.i.sroa_idx.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4, i32 4
  %bssid.sroa.9.0.mac_addr.i.sroa_idx.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4, i32 5
  %add.ptr28.i.i = getelementptr inbounds i8, ptr %u1H2CRsvdPageParm.i.i, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs38.do.body_crit_edge, %entry
  %DLBcnCount.0 = phi i8 [ 0, %entry ], [ %inc, %land.rhs38.do.body_crit_edge ]
  %poll.0 = phi i32 [ 0, %entry ], [ %inc23, %land.rhs38.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BeaconLength.i) #5
  %14 = ptrtoint ptr %BeaconLength.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %BeaconLength.i, align 4
  %call.i = call ptr @__rtw_alloc_cmdxmitframe(ptr noundef %xmitpriv.i, i32 noundef 1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.SetFwRsvdPagePkt_BTCoex.exit_crit_edge, label %if.end.i

do.body.SetFwRsvdPagePkt_BTCoex.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %SetFwRsvdPagePkt_BTCoex.exit

if.end.i:                                         ; preds = %do.body
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_addr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %16, i32 40
  call fastcc void @ConstructBeacon(ptr noundef %padapter, ptr noundef %arrayidx.i, ptr noundef nonnull %BeaconLength.i) #5
  %17 = ptrtoint ptr %BeaconLength.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %BeaconLength.i, align 4
  %add.i = add i32 %18, 40
  %shr.i = lshr i32 %add.i, 7
  %and.i = and i32 %add.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %add7.i = add nuw nsw i32 %shr.i, %cond.i
  %conv8.i = trunc i32 %add7.i to i8
  %conv9.i = and i32 %add7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv9.i)
  %cmp.i = icmp eq i32 %conv9.i, 1
  %spec.select.i = select i1 %cmp.i, i8 2, i8 %conv8.i
  %conv16.i = zext i8 %spec.select.i to i32
  %mul22.i = shl nuw nsw i32 %conv16.i, 7
  %add24.i = or i32 %mul22.i, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %spec.select.i)
  %cmp28.i = icmp ult i8 %spec.select.i, 7
  %BufIndex.0.i = select i1 %cmp28.i, i32 936, i32 %add24.i
  %arrayidx38.i = getelementptr i8, ptr %16, i32 %BufIndex.0.i
  %19 = ptrtoint ptr %mac_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bssid.sroa.0.0.copyload.i.i = load i8, ptr %mac_addr.i.i.i, align 1
  %20 = ptrtoint ptr %bssid.sroa.5.0.mac_addr.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bssid.sroa.5.0.copyload.i.i = load i8, ptr %bssid.sroa.5.0.mac_addr.i.sroa_idx.i.i, align 1
  %21 = ptrtoint ptr %bssid.sroa.6.0.mac_addr.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bssid.sroa.6.0.copyload.i.i = load i8, ptr %bssid.sroa.6.0.mac_addr.i.sroa_idx.i.i, align 1
  %22 = ptrtoint ptr %bssid.sroa.7.0.mac_addr.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bssid.sroa.7.0.copyload.i.i = load i8, ptr %bssid.sroa.7.0.mac_addr.i.sroa_idx.i.i, align 1
  %23 = ptrtoint ptr %bssid.sroa.8.0.mac_addr.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bssid.sroa.8.0.copyload.i.i = load i8, ptr %bssid.sroa.8.0.mac_addr.i.sroa_idx.i.i, align 1
  %24 = ptrtoint ptr %bssid.sroa.9.0.mac_addr.i.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bssid.sroa.9.0.copyload.i.i = load i8, ptr %bssid.sroa.9.0.mac_addr.i.sroa_idx.i.i, align 1
  %25 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %arrayidx38.i, align 2
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2
  %26 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bssid.sroa.0.0.copyload.i.i, ptr %addr1.i.i, align 2
  %bssid.sroa.5.0.addr1.sroa_idx.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %bssid.sroa.5.0.addr1.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bssid.sroa.5.0.copyload.i.i, ptr %bssid.sroa.5.0.addr1.sroa_idx.i.i, align 1
  %bssid.sroa.6.0.addr1.sroa_idx.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %bssid.sroa.6.0.addr1.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bssid.sroa.6.0.copyload.i.i, ptr %bssid.sroa.6.0.addr1.sroa_idx.i.i, align 2
  %bssid.sroa.7.0.addr1.sroa_idx.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %bssid.sroa.7.0.addr1.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bssid.sroa.7.0.copyload.i.i, ptr %bssid.sroa.7.0.addr1.sroa_idx.i.i, align 1
  %bssid.sroa.8.0.addr1.sroa_idx.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %bssid.sroa.8.0.addr1.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bssid.sroa.8.0.copyload.i.i, ptr %bssid.sroa.8.0.addr1.sroa_idx.i.i, align 2
  %bssid.sroa.9.0.addr1.sroa_idx.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %bssid.sroa.9.0.addr1.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bssid.sroa.9.0.copyload.i.i, ptr %bssid.sroa.9.0.addr1.sroa_idx.i.i, align 1
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %addr2.i.i, ptr %mac_addr.i.i.i, i32 6)
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %arrayidx38.i, i32 0, i32 4
  %33 = call ptr @memcpy(ptr %addr3.i.i, ptr %mac_addr.i.i.i, i32 6)
  %34 = ptrtoint ptr %arrayidx38.i to i32
  %add.i.i = add i32 %34, 2
  %35 = inttoptr i32 %add.i.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %35, align 2
  %add16.i.i = add i32 %34, 22
  %37 = inttoptr i32 %add16.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %37, align 2
  %40 = and i16 %39, 3840
  store i16 %40, ptr %37, align 2
  %41 = load i16, ptr %arrayidx38.i, align 2
  %42 = and i16 %41, 1023
  %43 = or i16 %42, -14336
  store i16 %43, ptr %arrayidx38.i, align 2
  %sub41.i = add nsw i32 %BufIndex.0.i, -40
  %arrayidx42.i = getelementptr i8, ptr %16, i32 %sub41.i
  call void @rtl8723b_fill_fake_txdesc(ptr noundef %padapter, ptr noundef %arrayidx42.i, i32 noundef 26, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 998, i32 %BufIndex.0.i)
  %cmp59.i = icmp ugt i32 %BufIndex.0.i, 998
  br i1 %cmp59.i, label %error.i, label %if.end62.i

if.end62.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = call i8 @llvm.umax.i8(i8 %spec.select.i, i8 7) #5
  %attrib.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1
  call void @update_mgntframe_attrib(ptr noundef %padapter, ptr noundef %attrib.i) #5
  %qsel.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 36
  %45 = ptrtoint ptr %qsel.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %qsel.i, align 2
  %sub64.i = add nsw i32 %BufIndex.0.i, -14
  %last_txcmdsz.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %last_txcmdsz.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub64.i, ptr %last_txcmdsz.i, align 4
  %pktlen.i = getelementptr inbounds %struct.xmit_frame, ptr %call.i, i32 0, i32 1, i32 8
  %47 = ptrtoint ptr %pktlen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub64.i, ptr %pktlen.i, align 4
  %call65.i = call i32 @dump_mgntframe_and_wait(ptr noundef %padapter, ptr noundef nonnull %call.i, i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1H2CRsvdPageParm.i.i) #5
  %48 = ptrtoint ptr %u1H2CRsvdPageParm.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %u1H2CRsvdPageParm.i.i, align 4
  %49 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %44, ptr %add.ptr28.i.i, align 4
  %call.i.i = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1H2CRsvdPageParm.i.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1H2CRsvdPageParm.i.i) #5
  br label %SetFwRsvdPagePkt_BTCoex.exit

error.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call66.i = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef nonnull %call.i) #5
  br label %SetFwRsvdPagePkt_BTCoex.exit

SetFwRsvdPagePkt_BTCoex.exit:                     ; preds = %error.i, %if.end62.i, %do.body.SetFwRsvdPagePkt_BTCoex.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BeaconLength.i) #5
  %inc = add nuw nsw i8 %DLBcnCount.0, 1
  br label %do.body22

do.body22:                                        ; preds = %land.rhs.do.body22_crit_edge, %SetFwRsvdPagePkt_BTCoex.exit
  %poll.1 = phi i32 [ %poll.0, %SetFwRsvdPagePkt_BTCoex.exit ], [ %inc23, %land.rhs.do.body22_crit_edge ]
  call void @yield() #5
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 22, ptr noundef nonnull %bcn_valid) #5
  %inc23 = add i32 %poll.1, 1
  %50 = ptrtoint ptr %bcn_valid to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bcn_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool24.not = icmp ne i8 %51, 0
  %rem = urem i32 %inc23, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.body22.do.cond29_crit_edge, label %land.lhs.true26

do.body22.do.cond29_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond29

land.lhs.true26:                                  ; preds = %do.body22
  %52 = ptrtoint ptr %bSurpriseRemoved36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bSurpriseRemoved36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool27.not = icmp eq i32 %53, 0
  br i1 %tobool27.not, label %land.rhs, label %land.lhs.true26.do.cond29_crit_edge

land.lhs.true26.do.cond29_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond29

land.rhs:                                         ; preds = %land.lhs.true26
  %54 = ptrtoint ptr %bDriverStopped39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bDriverStopped39, align 4
  %tobool28.not = icmp eq i32 %55, 0
  br i1 %tobool28.not, label %land.rhs.do.body22_crit_edge, label %land.rhs.do.cond29_crit_edge

land.rhs.do.cond29_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond29

land.rhs.do.body22_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

do.cond29:                                        ; preds = %land.rhs.do.cond29_crit_edge, %land.lhs.true26.do.cond29_crit_edge, %do.body22.do.cond29_crit_edge
  %.lcssa = phi i8 [ %51, %do.body22.do.cond29_crit_edge ], [ 0, %land.lhs.true26.do.cond29_crit_edge ], [ 0, %land.rhs.do.cond29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %tobool30.not = icmp eq i8 %.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %DLBcnCount.0)
  %cmp33 = icmp ult i8 %DLBcnCount.0, 100
  %or.cond110 = select i1 %tobool30.not, i1 %cmp33, i1 false
  br i1 %or.cond110, label %land.lhs.true35, label %do.end43

land.lhs.true35:                                  ; preds = %do.cond29
  %56 = ptrtoint ptr %bSurpriseRemoved36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bSurpriseRemoved36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool37.not = icmp eq i32 %57, 0
  br i1 %tobool37.not, label %land.rhs38, label %land.lhs.true35.if.end46_crit_edge

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.rhs38:                                       ; preds = %land.lhs.true35
  %58 = ptrtoint ptr %bDriverStopped39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bDriverStopped39, align 4
  %tobool40.not = icmp eq i32 %59, 0
  br i1 %tobool40.not, label %land.rhs38.do.body_crit_edge, label %land.rhs38.if.end46_crit_edge

land.rhs38.if.end46_crit_edge:                    ; preds = %land.rhs38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.rhs38.do.body_crit_edge:                     ; preds = %land.rhs38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end43:                                         ; preds = %do.cond29
  br i1 %tobool30.not, label %do.end43.if.end46_crit_edge, label %if.then45

do.end43.if.end46_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then45:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %60 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dvobj, align 4
  %iface_id = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 57
  %62 = ptrtoint ptr %iface_id to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %iface_id, align 8
  %fw_psmode_iface_id = getelementptr inbounds %struct.dvobj_priv, ptr %61, i32 0, i32 22, i32 31
  %64 = ptrtoint ptr %fw_psmode_iface_id to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %fw_psmode_iface_id, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %do.end43.if.end46_crit_edge, %land.rhs38.if.end46_crit_edge, %land.lhs.true35.if.end46_crit_edge
  %call47 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1360) #5
  %65 = and i8 %call47, -25
  %66 = or i8 %65, 8
  %call54 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1360, i8 noundef zeroext %66) #5
  br i1 %tobool.not, label %if.end46.if.end63_crit_edge, label %if.then56

if.end46.if.end63_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %RegFwHwTxQCtrl to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %RegFwHwTxQCtrl, align 1
  %69 = or i8 %68, 64
  store i8 %69, ptr %RegFwHwTxQCtrl, align 1
  %call62 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1058, i8 noundef zeroext %69) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.end46.if.end63_crit_edge
  %call64 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 257) #5
  %70 = and i8 %call64, -2
  %call68 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 257, i8 noundef zeroext %70) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcn_valid) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rtw_alloc_cmdxmitframe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ConstructBeacon(ptr noundef %padapter, ptr noundef %pframe, ptr nocapture noundef writeonly %pLength) unnamed_addr #0 align 64 {
entry:
  %pktlen = alloca i32, align 4
  %ATIMWindow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktlen) #5
  %mlmext_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18
  %network = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39
  %0 = ptrtoint ptr %pframe to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %pframe, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %pframe, i32 0, i32 2
  %1 = call ptr @memset(ptr %addr1, i32 255, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %pframe, i32 0, i32 3
  %mac_addr.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %2 = call ptr @memcpy(ptr %addr2, ptr %mac_addr.i, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %pframe, i32 0, i32 4
  %call3 = tail call ptr @get_my_bssid(ptr noundef %network) #5
  %3 = call ptr @memcpy(ptr %addr3, ptr %call3, i32 6)
  %4 = ptrtoint ptr %pframe to i32
  %add = add i32 %4, 22
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = and i16 %7, 3840
  store i16 %8, ptr %5, align 2
  %9 = ptrtoint ptr %pframe to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pframe, align 2
  %11 = and i16 %10, 1023
  %12 = or i16 %11, -32768
  store i16 %12, ptr %pframe, align 2
  %add.ptr15 = getelementptr i8, ptr %pframe, i32 32
  %ies = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12
  %call18 = tail call ptr @rtw_get_beacon_interval_from_ie(ptr noundef %ies) #5
  %13 = ptrtoint ptr %call18 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %call18, align 1
  %15 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr15, align 1
  %add.ptr19 = getelementptr i8, ptr %pframe, i32 34
  %call23 = tail call ptr @rtw_get_capability_from_ie(ptr noundef %ies) #5
  %16 = ptrtoint ptr %call23 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %call23, align 1
  %18 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %add.ptr19, align 1
  %add.ptr24 = getelementptr i8, ptr %pframe, i32 36
  %19 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 36, ptr %pktlen, align 4
  %20 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mlmext_info, align 4
  %and26 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and26)
  %cmp = icmp eq i32 %and26, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ie_length = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 11
  %22 = ptrtoint ptr %ie_length to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %ie_length, align 1
  %add28 = add i32 %23, 24
  %24 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add28, ptr %pktlen, align 4
  %add.ptr31 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 12, i32 12
  %25 = call ptr @memcpy(ptr %add.ptr24, ptr %add.ptr31, i32 %add28)
  br label %_ConstructBeacon

if.end:                                           ; preds = %entry
  %ssid = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3
  %26 = ptrtoint ptr %ssid to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ssid, align 1
  %ssid33 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 3, i32 1
  %call35 = call ptr @rtw_set_ie(ptr noundef %add.ptr24, i32 noundef 0, i32 noundef %27, ptr noundef %ssid33, ptr noundef nonnull %pktlen) #5
  %supported_rates = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9
  %call37 = call i32 @rtw_get_rateset_len(ptr noundef %supported_rates) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call37)
  %cmp38 = icmp ugt i32 %call37, 8
  %28 = call i32 @llvm.umin.i32(i32 %call37, i32 8)
  %call42 = call ptr @rtw_set_ie(ptr noundef %call35, i32 noundef 1, i32 noundef %28, ptr noundef %supported_rates, ptr noundef nonnull %pktlen) #5
  %ds_config = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 7, i32 3
  %call43 = call ptr @rtw_set_ie(ptr noundef %call42, i32 noundef 3, i32 noundef 1, ptr noundef %ds_config, ptr noundef nonnull %pktlen) #5
  %29 = ptrtoint ptr %mlmext_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mlmext_info, align 4
  %and45 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 1
  br i1 %cmp46, label %if.then48, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ATIMWindow) #5
  %31 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ATIMWindow, align 4
  %call49 = call ptr @rtw_set_ie(ptr noundef %call43, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %ATIMWindow, ptr noundef nonnull %pktlen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ATIMWindow) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end.if.end50_crit_edge
  %pframe.addr.0 = phi ptr [ %call49, %if.then48 ], [ %call43, %if.end.if.end50_crit_edge ]
  br i1 %cmp38, label %if.then53, label %if.end50._ConstructBeacon_crit_edge

if.end50._ConstructBeacon_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %_ConstructBeacon

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %sub54 = add i32 %call37, -8
  %add.ptr57 = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 5, i32 18, i32 39, i32 9, i32 8
  %call58 = call ptr @rtw_set_ie(ptr noundef %pframe.addr.0, i32 noundef 50, i32 noundef %sub54, ptr noundef %add.ptr57, ptr noundef nonnull %pktlen) #5
  br label %_ConstructBeacon

_ConstructBeacon:                                 ; preds = %if.then53, %if.end50._ConstructBeacon_crit_edge, %if.then
  %32 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pktlen, align 4
  %34 = add i32 %33, -473
  call void @__sanitizer_cov_trace_const_cmp4(i32 -513, i32 %34)
  %cmp61 = icmp ult i32 %34, -513
  br i1 %cmp61, label %_ConstructBeacon.cleanup_crit_edge, label %if.end64

_ConstructBeacon.cleanup_crit_edge:               ; preds = %_ConstructBeacon
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %_ConstructBeacon
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %pLength to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %pLength, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %_ConstructBeacon.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktlen) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_fill_fake_txdesc(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_my_bssid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_mgntframe_attrib(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_mgntframe_and_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_beacon_interval_from_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_get_capability_from_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_set_ie(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_rateset_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
