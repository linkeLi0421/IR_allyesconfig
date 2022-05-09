; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/sdio_ops.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/sdio_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: alloc recvbuf FAIL!\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.sd_recv_rxfifo = private unnamed_addr constant [15 x i8] c"sd_recv_rxfifo\00", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 16, i64 4133, i64 4145, i64 4146, i64 4147, i64 4148]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [44 x i8] c"../drivers/staging/rtl8723bs/hal/sdio_ops.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 803, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sdio_set_intf_ops(ptr nocapture noundef readnone %adapter, ptr nocapture noundef writeonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sdio_read8, ptr %ops, align 4
  %_read16 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 1
  %1 = ptrtoint ptr %_read16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sdio_read16, ptr %_read16, align 4
  %_read32 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %_read32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sdio_read32, ptr %_read32, align 4
  %_read_mem = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 10
  %3 = ptrtoint ptr %_read_mem to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sdio_read_mem, ptr %_read_mem, align 4
  %_read_port = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 14
  %4 = ptrtoint ptr %_read_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sdio_read_port, ptr %_read_port, align 4
  %_write8 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 3
  %5 = ptrtoint ptr %_write8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sdio_write8, ptr %_write8, align 4
  %_write16 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 4
  %6 = ptrtoint ptr %_write16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sdio_write16, ptr %_write16, align 4
  %_write32 = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 5
  %7 = ptrtoint ptr %_write32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sdio_write32, ptr %_write32, align 4
  %_writeN = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 6
  %8 = ptrtoint ptr %_writeN to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdio_writeN, ptr %_writeN, align 4
  %_write_mem = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 11
  %9 = ptrtoint ptr %_write_mem to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdio_write_mem, ptr %_write_mem, align 4
  %_write_port = getelementptr inbounds %struct._io_ops, ptr %ops, i32 0, i32 15
  %10 = ptrtoint ptr %_write_port to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sdio_write_port, ptr %_write_port, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sdio_read8(ptr noundef %intfhdl, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %0 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i32 [ 40960, %sw.bb4.i.i ], [ 49152, %sw.bb5.i.i ], [ 32768, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i32 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i32 [ 65536, %sw.default.i ], [ 57344, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %conv10.i = and i32 %.sink33.i, %addr
  %conv11.i = and i32 %device_id.0.i, 2088960
  %or.i = or i32 %conv11.i, %conv10.i
  %call1 = tail call zeroext i8 @sd_read8(ptr noundef %intfhdl, i32 noundef %or.i, ptr noundef null) #7
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @sdio_read16(ptr noundef %intfhdl, i32 noundef %addr) #1 align 64 {
entry:
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #7
  %0 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %le_tmp, align 2, !annotation !13
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %1 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i32 [ 40960, %sw.bb4.i.i ], [ 49152, %sw.bb5.i.i ], [ 32768, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i32 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i32 [ 65536, %sw.default.i ], [ 57344, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %conv10.i = and i32 %.sink33.i, %addr
  %conv11.i = and i32 %device_id.0.i, 2088960
  %or.i = or i32 %conv11.i, %conv10.i
  %call1 = call i32 @sd_cmd52_read(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef 2, ptr noundef nonnull %le_tmp) #7
  %2 = ptrtoint ptr %le_tmp to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %le_tmp, align 2
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #7
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_read32(ptr noundef %intfhdl, i32 noundef %addr) #1 align 64 {
entry:
  %mac_pwr_ctrl_on = alloca i8, align 1
  %le_tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_tmp) #7
  %1 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %le_tmp, align 4, !annotation !13
  %2 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intfhdl, align 4
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %4 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i8 [ 5, %sw.bb4.i.i ], [ 6, %sw.bb5.i.i ], [ 4, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i16 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i8 [ 8, %sw.default.i ], [ 7, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %5 = trunc i32 %addr to i16
  %conv10.i = and i16 %.sink33.i, %5
  %conv11.i = zext i8 %device_id.0.i to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 13
  %conv12.i = zext i16 %conv10.i to i32
  %or.i = or i32 %shl.i, %conv12.i
  call void @rtw_hal_get_hwreg(ptr noundef %3, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %device_id.0.i)
  %cmp = icmp eq i8 %device_id.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv10.i)
  %cmp3 = icmp ult i16 %conv10.i, 256
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %_cvrt2ftaddr.exit.if.then_crit_edge, label %lor.lhs.false

_cvrt2ftaddr.exit.if.then_crit_edge:              ; preds = %_cvrt2ftaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %_cvrt2ftaddr.exit
  %6 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_pwr_ctrl_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %dvobj = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %9, i32 0, i32 22, i32 36
  %10 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %_cvrt2ftaddr.exit.if.then_crit_edge
  %call8 = call i32 @sd_cmd52_read(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef 4, ptr noundef nonnull %le_tmp) #7
  %12 = ptrtoint ptr %le_tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %le_tmp, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  br label %cleanup23

if.end:                                           ; preds = %lor.lhs.false5
  %conv9 = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp11 = icmp eq i32 %conv9, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @sd_read32(ptr noundef %intfhdl, i32 noundef %or.i, ptr noundef null) #7
  br label %cleanup23

if.else:                                          ; preds = %if.end
  %call15 = call ptr @_rtw_malloc(i32 noundef 8) #7
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else.cleanup23_crit_edge, label %cleanup

if.else.cleanup23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %or.i, 2097148
  %call20 = call i32 @sd_read(ptr noundef %intfhdl, i32 noundef %and19, i32 noundef 8, ptr noundef nonnull %call15) #7
  %add.ptr = getelementptr i8, ptr %call15, i32 %conv9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void @kfree(ptr noundef nonnull %call15) #7
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup, %if.else.cleanup23_crit_edge, %if.then13, %if.then
  %retval.1 = phi i32 [ %14, %if.then ], [ %call14, %if.then13 ], [ %17, %cleanup ], [ -353703190, %if.else.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_tmp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_read_mem(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %rmem) #1 align 64 {
entry:
  %mac_pwr_ctrl_on.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on.i, align 1, !annotation !13
  %1 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intfhdl, align 4
  %shr.i.i.i = lshr i32 %addr, 16
  %trunc.i.i.i = trunc i32 %shr.i.i.i to i16
  %3 = zext i16 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %trunc.i.i.i, label %sw.default.i.i [
    i16 4133, label %entry._cvrt2ftaddr.exit.i_crit_edge
    i16 4148, label %sw.bb5.i.i
    i16 4145, label %entry.sw.bb2.i.i_crit_edge
    i16 4146, label %sw.bb4.i.i.i
    i16 4147, label %sw.bb5.i.i.i
  ]

entry.sw.bb2.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

entry._cvrt2ftaddr.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit.i

sw.bb4.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

sw.bb5.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

sw.bb2.i.i:                                       ; preds = %sw.bb5.i.i.i, %sw.bb4.i.i.i, %entry.sw.bb2.i.i_crit_edge
  %devide_id.0.i.ph.i.i = phi i8 [ 5, %sw.bb4.i.i.i ], [ 6, %sw.bb5.i.i.i ], [ 4, %entry.sw.bb2.i.i_crit_edge ]
  br label %_cvrt2ftaddr.exit.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit.i

_cvrt2ftaddr.exit.i:                              ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb2.i.i, %entry._cvrt2ftaddr.exit.i_crit_edge
  %.sink33.i.i = phi i16 [ 32767, %sw.default.i.i ], [ 3, %sw.bb5.i.i ], [ 8191, %sw.bb2.i.i ], [ 4095, %entry._cvrt2ftaddr.exit.i_crit_edge ]
  %device_id.0.i.i = phi i8 [ 8, %sw.default.i.i ], [ 7, %sw.bb5.i.i ], [ %devide_id.0.i.ph.i.i, %sw.bb2.i.i ], [ 0, %entry._cvrt2ftaddr.exit.i_crit_edge ]
  %4 = trunc i32 %addr to i16
  %conv10.i.i = and i16 %.sink33.i.i, %4
  %conv11.i.i = zext i8 %device_id.0.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv11.i.i, 13
  %conv12.i.i = zext i16 %conv10.i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv12.i.i
  call void @rtw_hal_get_hwreg(ptr noundef %2, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %device_id.0.i.i)
  %cmp.i = icmp eq i8 %device_id.0.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv10.i.i)
  %cmp3.i = icmp ult i16 %conv10.i.i, 256
  %or.cond.i = and i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %_cvrt2ftaddr.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

_cvrt2ftaddr.exit.i.if.then.i_crit_edge:          ; preds = %_cvrt2ftaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %_cvrt2ftaddr.exit.i
  %5 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_pwr_ctrl_on.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvobj.i, align 4
  %fw_current_in_ps_mode.i = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 22, i32 36
  %9 = ptrtoint ptr %fw_current_in_ps_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_current_in_ps_mode.i, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %if.end.i, label %lor.lhs.false5.i.if.then.i_crit_edge

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %_cvrt2ftaddr.exit.i.if.then.i_crit_edge
  %call8.i = call i32 @sd_cmd52_read(ptr noundef %intfhdl, i32 noundef %or.i.i, i32 noundef %cnt, ptr noundef %rmem) #7
  br label %sdio_readN.exit

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %conv9.i = and i32 %conv12.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %cmp11.i = icmp eq i32 %conv9.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 @sd_read(ptr noundef %intfhdl, i32 noundef %or.i.i, i32 noundef %cnt, ptr noundef %rmem) #7
  br label %sdio_readN.exit

if.else.i:                                        ; preds = %if.end.i
  %add.i = add i32 %conv9.i, %cnt
  %call17.i = call ptr @_rtw_malloc(i32 noundef %add.i) #7
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.else.i.sdio_readN.exit_crit_edge, label %if.end20.i

if.else.i.sdio_readN.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdio_readN.exit

if.end20.i:                                       ; preds = %if.else.i
  %and15.i = and i32 %or.i.i, 2097148
  %call21.i = call i32 @sd_read(ptr noundef %intfhdl, i32 noundef %and15.i, i32 noundef %add.i, ptr noundef nonnull %call17.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call17.i, i32 %conv9.i
  %11 = call ptr @memcpy(ptr %rmem, ptr %add.ptr.i, i32 %cnt)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  call void @kfree(ptr noundef nonnull %call17.i) #7
  br label %sdio_readN.exit

sdio_readN.exit:                                  ; preds = %if.end25.i, %if.else.i.sdio_readN.exit_crit_edge, %if.then13.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_read_port(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %mem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intfhdl, align 4
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %HalData = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %HalData, align 8
  %conv = trunc i32 %addr to i8
  %SdioRxFIFOCnt = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 137
  %6 = ptrtoint ptr %SdioRxFIFOCnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %SdioRxFIFOCnt, align 2
  %inc = add i8 %7, 1
  store i8 %inc, ptr %SdioRxFIFOCnt, align 2
  %conv1 = zext i8 %7 to i32
  %8 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %conv, label %entry.hal_sdio_get_cmd_addr_8723b.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 8, label %sw.bb1.i
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb7.i
    i8 6, label %sw.bb10.i
    i8 7, label %sw.bb13.i
  ]

entry.hal_sdio_get_cmd_addr_8723b.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or3.i = or i32 %conv1, 65536
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6.i = or i32 %conv1, 32768
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = or i32 %conv1, 40960
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i = or i32 %conv1, 49152
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and14.i = and i32 %conv1, 3
  %or15.i = or i32 %and14.i, 57344
  br label %hal_sdio_get_cmd_addr_8723b.exit

hal_sdio_get_cmd_addr_8723b.exit:                 ; preds = %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.hal_sdio_get_cmd_addr_8723b.exit_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %entry.hal_sdio_get_cmd_addr_8723b.exit_crit_edge ], [ %or15.i, %sw.bb13.i ], [ %or12.i, %sw.bb10.i ], [ %or9.i, %sw.bb7.i ], [ %or6.i, %sw.bb4.i ], [ %or3.i, %sw.bb1.i ], [ %conv1, %sw.bb.i ]
  %block_transfer_len = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 24, i32 3
  %9 = ptrtoint ptr %block_transfer_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block_transfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cnt)
  %cmp = icmp ult i32 %10, %cnt
  br i1 %cmp, label %if.then, label %hal_sdio_get_cmd_addr_8723b.exit.if.end_crit_edge

hal_sdio_get_cmd_addr_8723b.exit.if.end_crit_edge: ; preds = %hal_sdio_get_cmd_addr_8723b.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hal_sdio_get_cmd_addr_8723b.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %cnt, -1
  %add = add i32 %sub, %10
  %11 = urem i32 %add, %10
  %mul = sub i32 %add, %11
  br label %if.end

if.end:                                           ; preds = %if.then, %hal_sdio_get_cmd_addr_8723b.exit.if.end_crit_edge
  %cnt.addr.0 = phi i32 [ %mul, %if.then ], [ %cnt, %hal_sdio_get_cmd_addr_8723b.exit.if.end_crit_edge ]
  %call = tail call i32 @_sd_read(ptr noundef %intfhdl, i32 noundef %addr.addr.0, i32 noundef %cnt.addr.0, ptr noundef %mem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_write8(ptr noundef %intfhdl, i32 noundef %addr, i8 noundef zeroext %val) #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !13
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %1 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i32 [ 40960, %sw.bb4.i.i ], [ 49152, %sw.bb5.i.i ], [ 32768, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i32 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i32 [ 65536, %sw.default.i ], [ 57344, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %conv10.i = and i32 %.sink33.i, %addr
  %conv11.i = and i32 %device_id.0.i, 2088960
  %or.i = or i32 %conv11.i, %conv10.i
  call void @sd_write8(ptr noundef %intfhdl, i32 noundef %or.i, i8 noundef zeroext %val, ptr noundef nonnull %err) #7
  %2 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_write16(ptr noundef %intfhdl, i32 noundef %addr, i16 noundef zeroext %val) #1 align 64 {
entry:
  %le_tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_tmp) #7
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %0 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i32 [ 40960, %sw.bb4.i.i ], [ 49152, %sw.bb5.i.i ], [ 32768, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i32 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i32 [ 65536, %sw.default.i ], [ 57344, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %conv10.i = and i32 %.sink33.i, %addr
  %conv11.i = and i32 %device_id.0.i, 2088960
  %or.i = or i32 %conv11.i, %conv10.i
  %1 = tail call i16 @llvm.bswap.i16(i16 %val)
  %2 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %le_tmp, align 2
  %call1 = call i32 @sd_cmd52_write(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef 2, ptr noundef nonnull %le_tmp) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_tmp) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_write32(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %val) #1 align 64 {
entry:
  %mac_pwr_ctrl_on = alloca i8, align 1
  %err = alloca i32, align 4
  %le_tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_tmp) #7
  %1 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %le_tmp, align 4, !annotation !13
  %2 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intfhdl, align 4
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %5 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i8 [ 5, %sw.bb4.i.i ], [ 6, %sw.bb5.i.i ], [ 4, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i16 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i8 [ 8, %sw.default.i ], [ 7, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %6 = trunc i32 %addr to i16
  %conv10.i = and i16 %.sink33.i, %6
  %conv11.i = zext i8 %device_id.0.i to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 13
  %conv12.i = zext i16 %conv10.i to i32
  %or.i = or i32 %shl.i, %conv12.i
  call void @rtw_hal_get_hwreg(ptr noundef %3, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %device_id.0.i)
  %cmp = icmp eq i8 %device_id.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv10.i)
  %cmp3 = icmp ult i16 %conv10.i, 256
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %_cvrt2ftaddr.exit.if.then_crit_edge, label %lor.lhs.false

_cvrt2ftaddr.exit.if.then_crit_edge:              ; preds = %_cvrt2ftaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %_cvrt2ftaddr.exit
  %7 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac_pwr_ctrl_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %dvobj = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %10, i32 0, i32 22, i32 36
  %11 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %_cvrt2ftaddr.exit.if.then_crit_edge
  %13 = call i32 @llvm.bswap.i32(i32 %val)
  %14 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %le_tmp, align 4
  %call8 = call i32 @sd_cmd52_write(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef 4, ptr noundef nonnull %le_tmp) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %conv9 = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp11 = icmp eq i32 %conv9, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @sd_write32(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef %val, ptr noundef nonnull %err) #7
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call i32 @llvm.bswap.i32(i32 %val)
  %16 = ptrtoint ptr %le_tmp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %le_tmp, align 4
  %call14 = call i32 @sd_cmd52_write(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef 4, ptr noundef nonnull %le_tmp) #7
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call14, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %18 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %retval.0 = phi i32 [ %call8, %if.then ], [ %19, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_writeN(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %buf) #1 align 64 {
entry:
  %mac_pwr_ctrl_on = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on, align 1, !annotation !13
  %1 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intfhdl, align 4
  %shr.i.i = lshr i32 %addr, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %3 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %trunc.i.i, label %sw.default.i [
    i16 4133, label %entry._cvrt2ftaddr.exit_crit_edge
    i16 4148, label %sw.bb5.i
    i16 4145, label %entry.sw.bb2.i_crit_edge
    i16 4146, label %sw.bb4.i.i
    i16 4147, label %sw.bb5.i.i
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry._cvrt2ftaddr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %entry.sw.bb2.i_crit_edge
  %devide_id.0.i.ph.i = phi i8 [ 5, %sw.bb4.i.i ], [ 6, %sw.bb5.i.i ], [ 4, %entry.sw.bb2.i_crit_edge ]
  br label %_cvrt2ftaddr.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cvrt2ftaddr.exit

_cvrt2ftaddr.exit:                                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb2.i, %entry._cvrt2ftaddr.exit_crit_edge
  %.sink33.i = phi i16 [ 32767, %sw.default.i ], [ 3, %sw.bb5.i ], [ 8191, %sw.bb2.i ], [ 4095, %entry._cvrt2ftaddr.exit_crit_edge ]
  %device_id.0.i = phi i8 [ 8, %sw.default.i ], [ 7, %sw.bb5.i ], [ %devide_id.0.i.ph.i, %sw.bb2.i ], [ 0, %entry._cvrt2ftaddr.exit_crit_edge ]
  %4 = trunc i32 %addr to i16
  %conv10.i = and i16 %.sink33.i, %4
  %conv11.i = zext i8 %device_id.0.i to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 13
  %conv12.i = zext i16 %conv10.i to i32
  %or.i = or i32 %shl.i, %conv12.i
  call void @rtw_hal_get_hwreg(ptr noundef %2, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %device_id.0.i)
  %cmp = icmp eq i8 %device_id.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv10.i)
  %cmp3 = icmp ult i16 %conv10.i, 256
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %_cvrt2ftaddr.exit.if.then_crit_edge, label %lor.lhs.false

_cvrt2ftaddr.exit.if.then_crit_edge:              ; preds = %_cvrt2ftaddr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %_cvrt2ftaddr.exit
  %5 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_pwr_ctrl_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %dvobj = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %8, i32 0, i32 22, i32 36
  %9 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %_cvrt2ftaddr.exit.if.then_crit_edge
  %call8 = call i32 @sd_cmd52_write(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef %cnt, ptr noundef %buf) #7
  br label %cleanup29

if.end:                                           ; preds = %lor.lhs.false5
  %conv9 = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp11 = icmp eq i32 %conv9, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @sd_write(ptr noundef %intfhdl, i32 noundef %or.i, i32 noundef %cnt, ptr noundef %buf) #7
  br label %cleanup29

if.else:                                          ; preds = %if.end
  %and15 = and i32 %or.i, 2097148
  %add = add i32 %conv9, %cnt
  %call17 = call ptr @_rtw_malloc(i32 noundef %add) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.else.cleanup29_crit_edge, label %if.end20

if.else.cleanup29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end20:                                         ; preds = %if.else
  %call21 = call i32 @sd_read(ptr noundef %intfhdl, i32 noundef %and15, i32 noundef 4, ptr noundef nonnull %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call17) #7
  br label %cleanup29

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call17, i32 %conv9
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %cnt)
  %call26 = call i32 @sd_write(ptr noundef %intfhdl, i32 noundef %and15, i32 noundef %add, ptr noundef nonnull %call17) #7
  call void @kfree(ptr noundef nonnull %call17) #7
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup, %if.then23, %if.else.cleanup29_crit_edge, %if.then13, %if.then
  %retval.1 = phi i32 [ %call8, %if.then ], [ %call14, %if.then13 ], [ %call26, %cleanup ], [ -1, %if.else.cleanup29_crit_edge ], [ %call21, %if.then23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdio_write_mem(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %wmem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_writeN(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %wmem)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdio_write_port(ptr noundef %intfhdl, i32 noundef %addr, i32 noundef %cnt, ptr noundef %mem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intfhdl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intfhdl, align 4
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvobj, align 4
  %sub = add i32 %cnt, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %conv = trunc i32 %addr to i8
  %shr = lshr exact i32 %add, 2
  %6 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %conv, label %if.end.hal_sdio_get_cmd_addr_8723b.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 8, label %sw.bb1.i
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb7.i
    i8 6, label %sw.bb10.i
    i8 7, label %sw.bb13.i
  ]

if.end.hal_sdio_get_cmd_addr_8723b.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %shr, 4095
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i32 %shr, 32767
  %or3.i = or i32 %and2.i, 65536
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = and i32 %shr, 8191
  %or6.i = or i32 %and5.i, 32768
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i = and i32 %shr, 8191
  %or9.i = or i32 %and8.i, 40960
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and11.i = and i32 %shr, 8191
  %or12.i = or i32 %and11.i, 49152
  br label %hal_sdio_get_cmd_addr_8723b.exit

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and14.i = and i32 %shr, 3
  %or15.i = or i32 %and14.i, 57344
  br label %hal_sdio_get_cmd_addr_8723b.exit

hal_sdio_get_cmd_addr_8723b.exit:                 ; preds = %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %if.end.hal_sdio_get_cmd_addr_8723b.exit_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %if.end.hal_sdio_get_cmd_addr_8723b.exit_crit_edge ], [ %or15.i, %sw.bb13.i ], [ %or12.i, %sw.bb10.i ], [ %or9.i, %sw.bb7.i ], [ %or6.i, %sw.bb4.i ], [ %or3.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ]
  %block_transfer_len = getelementptr inbounds %struct.dvobj_priv, ptr %5, i32 0, i32 24, i32 3
  %7 = ptrtoint ptr %block_transfer_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_transfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp = icmp ugt i32 %add, %8
  br i1 %cmp, label %if.then2, label %hal_sdio_get_cmd_addr_8723b.exit.if.end8_crit_edge

hal_sdio_get_cmd_addr_8723b.exit.if.end8_crit_edge: ; preds = %hal_sdio_get_cmd_addr_8723b.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %hal_sdio_get_cmd_addr_8723b.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add5 = add i32 %8, %or
  %9 = urem i32 %add5, %8
  %mul = sub i32 %add5, %9
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %hal_sdio_get_cmd_addr_8723b.exit.if.end8_crit_edge
  %cnt.addr.0 = phi i32 [ %mul, %if.then2 ], [ %add, %hal_sdio_get_cmd_addr_8723b.exit.if.end8_crit_edge ]
  %pdata = getelementptr inbounds %struct.xmit_buf, ptr %mem, i32 0, i32 11
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %call = tail call i32 @sd_write(ptr noundef %intfhdl, i32 noundef %addr.addr.0, i32 noundef %cnt.addr.0, ptr noundef %11) #7
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %mem, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool9.not, i32 0, i32 5
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef %cond) #7
  %. = zext i1 %tobool9.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_local_read(ptr noundef %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  %mac_pwr_ctrl_on = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on, align 1, !annotation !13
  %intf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %and.i = and i32 %addr, 4095
  call void @rtw_hal_get_hwreg(ptr noundef %adapter, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on) #7
  %1 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_pwr_ctrl_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 36
  %5 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = call i32 @sd_cmd52_read(ptr noundef %intf, i32 noundef %and.i, i32 noundef %cnt, ptr noundef %buf) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %cnt, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %call2 = call ptr @_rtw_malloc(i32 noundef %add) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @sd_read(ptr noundef %intf, i32 noundef %and.i, i32 noundef %add, ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call ptr @memcpy(ptr %buf, ptr %call2, i32 %cnt)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  call void @kfree(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end9 ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_cmd52_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_malloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdio_local_write(ptr noundef %adapter, i32 noundef %addr, i32 noundef %cnt, ptr noundef %buf) local_unnamed_addr #1 align 64 {
entry:
  %mac_pwr_ctrl_on = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  %0 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mac_pwr_ctrl_on, align 1, !annotation !13
  %intf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %and.i = and i32 %addr, 4095
  call void @rtw_hal_get_hwreg(ptr noundef %adapter, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on) #7
  %1 = ptrtoint ptr %mac_pwr_ctrl_on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_pwr_ctrl_on, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dvobj = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj, align 4
  %fw_current_in_ps_mode = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 36
  %5 = ptrtoint ptr %fw_current_in_ps_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_current_in_ps_mode, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = call i32 @sd_cmd52_write(ptr noundef %intf, i32 noundef %and.i, i32 noundef %cnt, ptr noundef %buf) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call ptr @_rtw_malloc(i32 noundef %cnt) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call ptr @memcpy(ptr %call2, ptr %buf, i32 %cnt)
  %call6 = call i32 @sd_write(ptr noundef %intf, i32 noundef %and.i, i32 noundef %cnt, ptr noundef nonnull %call2) #7
  call void @kfree(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end5 ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_cmd52_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @SdioLocalCmd52Read1Byte(ptr noundef %adapter, i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %intf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %and.i = and i32 %addr, 4095
  %call = call i32 @sd_cmd52_read(ptr noundef %intf, i32 noundef %and.i, i32 noundef 1, ptr noundef nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SdioLocalCmd52Write1Byte(ptr noundef %adapter, i32 noundef %addr, i8 noundef zeroext %v) local_unnamed_addr #1 align 64 {
entry:
  %v.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %v, ptr %v.addr, align 1
  %intf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %and.i = and i32 %addr, 4095
  %call = call i32 @sd_cmd52_write(ptr noundef %intf, i32 noundef %and.i, i32 noundef 1, ptr noundef nonnull %v.addr) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @InitInterrupt8723BSdio(ptr nocapture noundef readonly %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %sdio_himr = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 131
  %2 = ptrtoint ptr %sdio_himr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %sdio_himr, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @InitSysInterrupt8723BSdio(ptr nocapture noundef readonly %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %SysIntrMask = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 144
  %2 = ptrtoint ptr %SysIntrMask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %SysIntrMask, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EnableInterrupt8723BSdio(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %himr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %himr) #7
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %sdio_himr = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 131
  %2 = ptrtoint ptr %sdio_himr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_himr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %himr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %himr, align 4
  %call = call i32 @sdio_local_write(ptr noundef %adapter, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %himr)
  %call1 = call i32 @rtw_read32(ptr noundef %adapter, i32 noundef 88) #7
  %SysIntrMask = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 144
  %6 = ptrtoint ptr %SysIntrMask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SysIntrMask, align 8
  %or = or i32 %7, %call1
  %call2 = call i32 @rtw_write32(ptr noundef %adapter, i32 noundef 88, i32 noundef %or) #7
  %call3 = call i32 @rtw_write8(ptr noundef %adapter, i32 noundef 431, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %himr) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DisableInterrupt8723BSdio(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %himr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %himr) #7
  %0 = ptrtoint ptr %himr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %himr, align 4
  %call = call i32 @sdio_local_write(ptr noundef %adapter, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %himr)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %himr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @CheckIPSStatus(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %adapter, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call)
  %cmp = icmp eq i8 %call, -22
  %. = zext i1 %cmp to i8
  ret i8 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_int_dpc(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  %val.i112 = alloca i16, align 2
  %val.i = alloca i8, align 1
  %mac_pwr_ctrl_on.i = alloca i8, align 1
  %freepage = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %dvobj1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj1, align 4
  %sdio_hisr = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdio_hisr, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freepage) #7
  %6 = ptrtoint ptr %freepage to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %freepage, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  %7 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %mac_pwr_ctrl_on.i, align 1, !annotation !13
  call void @rtw_hal_get_hwreg(ptr noundef %adapter, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on.i) #7
  %8 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_pwr_ctrl_on.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @_sd_cmd52_read(ptr noundef %intf, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %freepage) #7
  br label %_sdio_local_read.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = call ptr @_rtw_malloc(i32 noundef 4) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i._sdio_local_read.exit_crit_edge, label %if.end4.i

if.end.i._sdio_local_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_sdio_local_read.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @_sd_read(ptr noundef %intf, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %call1.i, align 1
  %12 = ptrtoint ptr %freepage to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %freepage, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i) #7
  br label %_sdio_local_read.exit

_sdio_local_read.exit:                            ; preds = %if.end8.i, %if.end.i._sdio_local_read.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9, i32 1
  call void @complete(ptr noundef %xmit_comp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freepage) #7
  br label %if.end

if.end:                                           ; preds = %_sdio_local_read.exit, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdio_hisr, align 8
  %and3 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_rpwm_timer = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 13
  %call6 = call i32 @del_timer_sync(ptr noundef %pwr_rpwm_timer) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %val.i, align 1
  %call.i110 = call i32 @sd_cmd52_read(ptr noundef %intf, i32 noundef 37, i32 noundef 1, ptr noundef nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %cpwm_event = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 22, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %cpwm_event) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdio_hisr, align 8
  %and10 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end19_crit_edge, label %if.then12

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %if.end8
  %call13 = call ptr @_rtw_malloc(i32 noundef 4) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then12.if.end19_crit_edge, label %if.then15

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 @_sd_read(ptr noundef %intf, i32 noundef 66064, i32 noundef 4, ptr noundef nonnull %call13) #7
  %call17 = call i32 @_sd_write(ptr noundef %intf, i32 noundef 66064, i32 noundef 4, ptr noundef nonnull %call13) #7
  call void @kfree(ptr noundef nonnull %call13) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then12.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %19 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdio_hisr, align 8
  %and21 = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end41_crit_edge, label %if.then23

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then23:                                        ; preds = %if.end19
  %call24 = call ptr @_rtw_zmalloc(i32 noundef 16) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.else37, label %if.then26

if.then26:                                        ; preds = %if.then23
  %call27 = call i32 @c2h_evt_read_88xx(ptr noundef %adapter, ptr noundef nonnull %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp = icmp eq i32 %call27, 1
  br i1 %cmp, label %if.then28, label %if.else35

if.then28:                                        ; preds = %if.then26
  %call29 = call i32 @c2h_id_filter_ccx_8723b(ptr noundef nonnull %call24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 @rtw_hal_c2h_handler(ptr noundef %adapter, ptr noundef nonnull %call24) #7
  call void @kfree(ptr noundef nonnull %call24) #7
  br label %if.end41

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call zeroext i8 @rtw_c2h_wk_cmd(ptr noundef %adapter, ptr noundef nonnull %call24) #7
  br label %if.end41

if.else35:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call24) #7
  br label %if.end41

if.else37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %evtpriv = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7
  %c2h_queue = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %c2h_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c2h_queue, align 4
  %call38 = call zeroext i1 @rtw_cbuf_push(ptr noundef %22, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i111 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %evtpriv) #7
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.else35, %if.else, %if.then31, %if.end19.if.end41_crit_edge
  %24 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sdio_hisr, align 8
  %and43 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end71_crit_edge, label %if.then45

if.end41.if.end71_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then45:                                        ; preds = %if.end41
  %xor = xor i32 %25, 1
  %26 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %xor, ptr %sdio_hisr, align 8
  %SdioRxFIFOSize = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 138
  %free_recv_buf_queue.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 22
  %pnetdev8.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %recv_buf_pending_queue.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 24
  %state.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 17, i32 1
  %recv_tasklet.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 17
  br label %do.body

do.body:                                          ; preds = %read_interrupt_8723b_sdio.exit.do.body_crit_edge, %if.then45
  %alloc_fail_time.0 = phi i32 [ 0, %if.then45 ], [ %alloc_fail_time.1, %read_interrupt_8723b_sdio.exit.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i112) #7
  %27 = ptrtoint ptr %val.i112 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %val.i112, align 2
  %call.i114 = call i32 @sd_cmd52_read(ptr noundef %intf, i32 noundef 28, i32 noundef 2, ptr noundef nonnull %val.i112) #7
  %28 = ptrtoint ptr %val.i112 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val.i112, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i112) #7
  %31 = ptrtoint ptr %SdioRxFIFOSize to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %SdioRxFIFOSize, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp49.not = icmp eq i16 %29, 0
  br i1 %cmp49.not, label %do.body.if.end71_crit_edge, label %if.then51

do.body.if.end71_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then51:                                        ; preds = %do.body
  %conv = zext i16 %30 to i32
  %sub.i = add nsw i32 %conv, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add nsw i32 %or.i, 1
  %call.i115 = call ptr @rtw_dequeue_recvbuf(ptr noundef %free_recv_buf_queue.i) #7
  %tobool.not.i116 = icmp eq ptr %call.i115, null
  br i1 %tobool.not.i116, label %if.then.i117, label %if.end.i118

if.then.i117:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %pnetdev8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pnetdev8.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sd_recv_rxfifo) #10
  br label %if.else57

if.end.i118:                                      ; preds = %if.then51
  %pskb.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 11
  %34 = ptrtoint ptr %pskb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pskb.i, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i118.if.end19.i_crit_edge

if.end.i118.if.end19.i_crit_edge:                 ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then2.i:                                       ; preds = %if.end.i118
  %call3.i = call ptr @_rtw_skb_alloc(i32 noundef 10248) #7
  %36 = ptrtoint ptr %pskb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call3.i, ptr %pskb.i, align 4
  %tobool6.not.i119 = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i119, label %if.then2.i.if.else57_crit_edge, label %if.end13.i

if.then2.i.if.else57_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

if.end13.i:                                       ; preds = %if.then2.i
  %37 = ptrtoint ptr %pnetdev8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pnetdev8.i, align 8
  %39 = getelementptr inbounds %struct.anon.44, ptr %call3.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %39, align 8
  %41 = ptrtoint ptr %pskb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pskb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %and.i = and i32 %45, 7
  %sub12.i = sub nuw nsw i32 8, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %sub12.i
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %47, i32 %sub12.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %.pr.i = load ptr, ptr %pskb.i, align 4
  %tobool15.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool15.not.i, label %if.end13.i.if.else57_crit_edge, label %if.end13.i.if.end19.i_crit_edge

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.end13.i.if.else57_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

if.end19.i:                                       ; preds = %if.end13.i.if.end19.i_crit_edge, %if.end.i118.if.end19.i_crit_edge
  %48 = ptrtoint ptr %pskb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pskb.i, align 4
  %data21.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %data21.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data21.i, align 4
  %52 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf, align 4
  %dvobj.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %dvobj.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dvobj.i.i, align 4
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 18
  %56 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %HalData.i.i, align 8
  %SdioRxFIFOCnt.i.i = getelementptr inbounds %struct.hal_com_data, ptr %57, i32 0, i32 137
  %58 = ptrtoint ptr %SdioRxFIFOCnt.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %SdioRxFIFOCnt.i.i, align 2
  %inc.i.i = add i8 %59, 1
  store i8 %inc.i.i, ptr %SdioRxFIFOCnt.i.i, align 2
  %60 = and i8 %59, 3
  %and14.i.i.i = zext i8 %60 to i32
  %or15.i.i.i = or i32 %and14.i.i.i, 57344
  %block_transfer_len.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %55, i32 0, i32 24, i32 3
  %61 = ptrtoint ptr %block_transfer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %block_transfer_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add.i)
  %cmp.i.i = icmp ult i32 %62, %add.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end19.i.sdio_read_port.exit.i_crit_edge

if.end19.i.sdio_read_port.exit.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdio_read_port.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %62, %or.i
  %63 = urem i32 %add.i.i, %62
  %mul.i.i = sub i32 %add.i.i, %63
  br label %sdio_read_port.exit.i

sdio_read_port.exit.i:                            ; preds = %if.then.i.i, %if.end19.i.sdio_read_port.exit.i_crit_edge
  %cnt.addr.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ %add.i, %if.end19.i.sdio_read_port.exit.i_crit_edge ]
  %call.i.i = call i32 @_sd_read(ptr noundef %intf, i32 noundef %or15.i.i.i, i32 noundef %cnt.addr.0.i.i, ptr noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then56, label %sdio_read_port.exit.i.if.else57_crit_edge

sdio_read_port.exit.i.if.else57_crit_edge:        ; preds = %sdio_read_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

if.then56:                                        ; preds = %sdio_read_port.exit.i
  %len.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 6
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %len.i, align 4
  %65 = ptrtoint ptr %pskb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pskb.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i, align 8
  %phead.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 7
  %69 = ptrtoint ptr %phead.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %phead.i, align 4
  %data27.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 19
  %70 = ptrtoint ptr %data27.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data27.i, align 4
  %pdata.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 8
  %72 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %pdata.i, align 4
  %73 = load ptr, ptr %data27.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %73, i32 %conv
  %tail.i64.i = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i64.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i63.i, ptr %tail.i64.i, align 8
  %75 = load ptr, ptr %pskb.i, align 4
  %tail.i65.i = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i65.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i65.i, align 8
  %ptail.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 9
  %78 = ptrtoint ptr %ptail.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %ptail.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %79 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i, align 4
  %pend.i = getelementptr inbounds %struct.recv_buf, ptr %call.i115, i32 0, i32 10
  %81 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %pend.i, align 4
  %call.i121 = call i32 @rtw_enqueue_recvbuf(ptr noundef nonnull %call.i115, ptr noundef %recv_buf_pending_queue.i) #7
  %call.i.i122 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %tobool.not.i.i = icmp eq i32 %call.i.i122, 0
  br i1 %tobool.not.i.i, label %if.then.i.i123, label %if.then56.if.end62_crit_edge

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then.i.i123:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__tasklet_schedule(ptr noundef %recv_tasklet.i) #7
  br label %if.end62

if.else57:                                        ; preds = %sdio_read_port.exit.i.if.else57_crit_edge, %if.end13.i.if.else57_crit_edge, %if.then2.i.if.else57_crit_edge, %if.then.i117
  %inc = add i32 %alloc_fail_time.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp58 = icmp sgt i32 %inc, 9
  br i1 %cmp58, label %if.else57.if.end71_crit_edge, label %if.else57.if.end62_crit_edge

if.else57.if.end62_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.else57.if.end71_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end62:                                         ; preds = %if.else57.if.end62_crit_edge, %if.then.i.i123, %if.then56.if.end62_crit_edge
  %alloc_fail_time.1 = phi i32 [ %inc, %if.else57.if.end62_crit_edge ], [ %alloc_fail_time.0, %if.then56.if.end62_crit_edge ], [ %alloc_fail_time.0, %if.then.i.i123 ]
  %82 = ptrtoint ptr %SdioRxFIFOSize to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %SdioRxFIFOSize, align 8
  %83 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %HalData, align 8
  %sdio_himr.i = getelementptr inbounds %struct.hal_com_data, ptr %84, i32 0, i32 131
  %85 = ptrtoint ptr %sdio_himr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sdio_himr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool1.not1.i = icmp eq i32 %86, 0
  br i1 %tobool1.not1.i, label %if.end62.if.end71_crit_edge, label %if.end62.while.body.i_crit_edge

if.end62.while.body.i_crit_edge:                  ; preds = %if.end62
  br label %while.body.i

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

while.body4.lr.ph.i:                              ; preds = %while.body.i
  %87 = zext i8 %inc.i to i32
  br label %while.body4.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end62.while.body.i_crit_edge
  %hisr_len.03.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end62.while.body.i_crit_edge ]
  %himr.02.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %86, %if.end62.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i8 %hisr_len.03.i, 1
  %shr.i = lshr i32 %himr.02.i, 8
  %tobool1.not.i125 = icmp ult i32 %himr.02.i, 256
  br i1 %tobool1.not.i125, label %while.body4.lr.ph.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %while.body4.lr.ph.i
  %indvars.iv.i = phi i32 [ %87, %while.body4.lr.ph.i ], [ %88, %while.body4.i.while.body4.i_crit_edge ]
  %hisr.05.i = phi i32 [ 0, %while.body4.lr.ph.i ], [ %or.i128, %while.body4.i.while.body4.i_crit_edge ]
  %88 = add nsw i32 %indvars.iv.i, -1
  %add.i126 = add nsw i32 %indvars.iv.i, 23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %89 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i127 = call i32 @sd_cmd52_read(ptr noundef %intf, i32 noundef %add.i126, i32 noundef 1, ptr noundef nonnull %val.i.i) #7
  %90 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  %conv6.i = zext i8 %91 to i32
  %mul.i = shl nuw nsw i32 %88, 3
  %shl.i = shl i32 %conv6.i, %mul.i
  %or.i128 = or i32 %shl.i, %hisr.05.i
  %cmp.not.wide.i = icmp eq i32 %88, 0
  br i1 %cmp.not.wide.i, label %read_interrupt_8723b_sdio.exit, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body4.i

read_interrupt_8723b_sdio.exit:                   ; preds = %while.body4.i
  %and67 = and i32 %or.i128, 1
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %read_interrupt_8723b_sdio.exit.if.end71_crit_edge, label %read_interrupt_8723b_sdio.exit.do.body_crit_edge

read_interrupt_8723b_sdio.exit.do.body_crit_edge: ; preds = %read_interrupt_8723b_sdio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

read_interrupt_8723b_sdio.exit.if.end71_crit_edge: ; preds = %read_interrupt_8723b_sdio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %read_interrupt_8723b_sdio.exit.if.end71_crit_edge, %if.end62.if.end71_crit_edge, %if.else57.if.end71_crit_edge, %do.body.if.end71_crit_edge, %if.end41.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_sd_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_sd_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_zmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c2h_evt_read_88xx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c2h_id_filter_ccx_8723b(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_c2h_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_c2h_wk_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtw_cbuf_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_int_hdl(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %le_tmp.i = alloca i32, align 4
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 21
  %0 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22
  %2 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %4 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %HalData, align 8
  %sdio_hisr = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 132
  %6 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sdio_hisr, align 8
  %tobool.not.i = icmp eq ptr %sdio_hisr, null
  br i1 %tobool.not.i, label %if.end.read_interrupt_8723b_sdio.exit_crit_edge, label %if.end.i

if.end.read_interrupt_8723b_sdio.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_interrupt_8723b_sdio.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %HalData, align 8
  %sdio_himr.i = getelementptr inbounds %struct.hal_com_data, ptr %8, i32 0, i32 131
  %9 = ptrtoint ptr %sdio_himr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sdio_himr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not1.i = icmp eq i32 %10, 0
  br i1 %tobool1.not1.i, label %if.end.i.while.end8.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end8.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end8.i

while.body4.lr.ph.i:                              ; preds = %while.body.i
  %intf.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %11 = zext i8 %inc.i to i32
  br label %while.body4.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %hisr_len.03.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %himr.02.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %10, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i8 %hisr_len.03.i, 1
  %shr.i = lshr i32 %himr.02.i, 8
  %tobool1.not.i = icmp ult i32 %himr.02.i, 256
  br i1 %tobool1.not.i, label %while.body4.lr.ph.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %while.body4.lr.ph.i
  %indvars.iv.i = phi i32 [ %11, %while.body4.lr.ph.i ], [ %12, %while.body4.i.while.body4.i_crit_edge ]
  %hisr.05.i = phi i32 [ 0, %while.body4.lr.ph.i ], [ %or.i, %while.body4.i.while.body4.i_crit_edge ]
  %12 = add nsw i32 %indvars.iv.i, -1
  %add.i = add nsw i32 %indvars.iv.i, 23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i = call i32 @sd_cmd52_read(ptr noundef %intf.i.i, i32 noundef %add.i, i32 noundef 1, ptr noundef nonnull %val.i.i) #7
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  %conv6.i = zext i8 %15 to i32
  %mul.i = shl nuw nsw i32 %12, 3
  %shl.i = shl i32 %conv6.i, %mul.i
  %or.i = or i32 %shl.i, %hisr.05.i
  %cmp.not.wide.i = icmp eq i32 %12, 0
  br i1 %cmp.not.wide.i, label %while.body4.i.while.end8.i_crit_edge, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body4.i

while.body4.i.while.end8.i_crit_edge:             ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end8.i

while.end8.i:                                     ; preds = %while.body4.i.while.end8.i_crit_edge, %if.end.i.while.end8.i_crit_edge
  %hisr.0.lcssa.i = phi i32 [ 0, %if.end.i.while.end8.i_crit_edge ], [ %or.i, %while.body4.i.while.end8.i_crit_edge ]
  %16 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %hisr.0.lcssa.i, ptr %sdio_hisr, align 4
  br label %read_interrupt_8723b_sdio.exit

read_interrupt_8723b_sdio.exit:                   ; preds = %while.end8.i, %if.end.read_interrupt_8723b_sdio.exit_crit_edge
  %17 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdio_hisr, align 8
  %sdio_himr = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 131
  %19 = ptrtoint ptr %sdio_himr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sdio_himr, align 4
  %and = and i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %read_interrupt_8723b_sdio.exit.cleanup_crit_edge, label %if.then5

read_interrupt_8723b_sdio.exit.cleanup_crit_edge: ; preds = %read_interrupt_8723b_sdio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %read_interrupt_8723b_sdio.exit
  %21 = ptrtoint ptr %sdio_hisr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %sdio_hisr, align 8
  %and10 = and i32 %and, 33423612
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then5.if.end13_crit_edge, label %if.then12

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %intf.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_tmp.i) #7
  %22 = call i32 @llvm.bswap.i32(i32 %and10) #7
  %23 = ptrtoint ptr %le_tmp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %le_tmp.i, align 4
  %call.i = call i32 @sd_cmd52_write(ptr noundef %intf.i, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %le_tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_tmp.i) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then5.if.end13_crit_edge
  call void @sd_int_dpc(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %read_interrupt_8723b_sdio.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HalQueryTxBufferStatus8723BSdio(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %mac_pwr_ctrl_on.i = alloca i8, align 1
  %le_tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  %2 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %mac_pwr_ctrl_on.i, align 1, !annotation !13
  %intf.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_tmp.i) #7
  %3 = ptrtoint ptr %le_tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %le_tmp.i, align 4, !annotation !13
  call void @rtw_hal_get_hwreg(ptr noundef %adapter, i8 noundef zeroext 66, ptr noundef nonnull %mac_pwr_ctrl_on.i) #7
  %4 = ptrtoint ptr %mac_pwr_ctrl_on.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_pwr_ctrl_on.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj.i, align 4
  %fw_current_in_ps_mode.i = getelementptr inbounds %struct.dvobj_priv, ptr %7, i32 0, i32 22, i32 36
  %8 = ptrtoint ptr %fw_current_in_ps_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_current_in_ps_mode.i, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = call i32 @sd_cmd52_read(ptr noundef %intf.i, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %le_tmp.i) #7
  %10 = ptrtoint ptr %le_tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %le_tmp.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #7
  br label %sdio_local_cmd53_read4byte.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @sd_read32(ptr noundef %intf.i, i32 noundef 32, ptr noundef null) #7
  br label %sdio_local_cmd53_read4byte.exit

sdio_local_cmd53_read4byte.exit:                  ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %12, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mac_pwr_ctrl_on.i) #7
  %SdioTxFIFOFreePage = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 133
  %13 = ptrtoint ptr %SdioTxFIFOFreePage to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %val.0.i, ptr %SdioTxFIFOFreePage, align 4
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HalQueryTxOQTBufferStatus8723BSdio(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val.i, align 1
  %intf.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 1
  %call.i = call i32 @sd_cmd52_read(ptr noundef %intf.i, i32 noundef 30, i32 noundef 1, ptr noundef nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %SdioTxOQTFreeSpace = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 136
  %5 = ptrtoint ptr %SdioTxOQTFreeSpace to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %SdioTxOQTFreeSpace, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sd_read8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_read32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_write8(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_write32(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_sd_cmd52_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_dequeue_recvbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_rtw_skb_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enqueue_recvbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/sdio_ops.c", i32 803, i32 32}
!2 = !{ptr @__func__.sd_recv_rxfifo, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/sdio_ops.c", i32 804, i32 7}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
