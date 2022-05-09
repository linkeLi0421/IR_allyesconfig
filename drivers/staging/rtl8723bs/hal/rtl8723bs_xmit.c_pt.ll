; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c"
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
%struct.hw_xmit = type { ptr, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, i8, i8, i8, ptr, i8 }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, [18 x i8], [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %union.Keytype, %union.Keytype, i8 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.sta_xmit_priv, %struct.sta_recv_priv, %struct.__queue, i32, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, %struct.stainfo_stats, %struct.timer_list, [16 x %struct.recv_reorder_ctrl], [16 x i16], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i16, i32, i32, i32, i32, i32, i32, i32, i8, [32 x i8], i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i32, %struct.rssi_sta, i8, i8, [4 x i8], i8, [4 x i8], [4 x i8], i8, i16 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16] }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.recv_reorder_ctrl = type { ptr, i8, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.rssi_sta = type { i32, i32, i32, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: down SdioXmitBufSema fail!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rtl8723bs_xmit_buf_handler = private unnamed_addr constant [27 x i8] c"rtl8723bs_xmit_buf_handler\00", align 1
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RTWHALXT-%s\00", [20 x i8] zeroinitializer }, align 32
@rtl8723bs_init_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&phal->SdioTxFIFOFreePageLock\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: SdioXmitStart fail!\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rtl8723bs_xmit_handler = private unnamed_addr constant [23 x i8] c"rtl8723bs_xmit_handler\00", align 1
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: coalesce FAIL!\00", [45 x i8] zeroinitializer }, align 32
@__func__.xmit_xmitframes = private unnamed_addr constant [16 x i8] c"xmit_xmitframes\00", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 34958]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 133, i32 9 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 421, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 554, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 368, i32 35 }
@___asan_gen_.22 = private constant [50 x i8] c"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 298, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 87, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @rtl8723bs_init_xmit_priv.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bs_init_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_xmit_buf_handler(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %xmit_comp = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 1
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %xmit_comp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 41
  %0 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_emerg(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rtl8723bs_xmit_buf_handler) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 21
  %2 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 22
  %4 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end5, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.rhs
  %call6 = tail call i32 @check_pending_xmitbuf(ptr noundef %xmitpriv) #6
  %conv = trunc i32 %call6 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool7.not = icmp eq i8 %conv, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @rtw_register_tx_alive(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 1
  br i1 %cmp.not, label %do.body.preheader, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %if.end9
  %dvobj.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %fw_state.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 1
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  br label %do.body

do.body:                                          ; preds = %rtl8723_dequeue_writeport.exit, %do.body.preheader
  %6 = ptrtoint ptr %dvobj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvobj.i, align 4
  %8 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_state.i.i, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call ptr @dequeue_pending_xmitbuf_under_survey(ptr noundef %xmitpriv) #6
  br label %if.end.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr @dequeue_pending_xmitbuf(ptr noundef %xmitpriv) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pxmitbuf.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %tobool5.not.i = icmp eq ptr %pxmitbuf.0.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end_crit_edge, label %if.end7.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %ff_hwaddr.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0.i, i32 0, i32 14
  %11 = ptrtoint ptr %ff_hwaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ff_hwaddr.i, align 4
  %arrayidx.i = getelementptr %struct.dvobj_priv, ptr %7, i32 0, i32 18, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %switch.selectcmp.i = icmp eq i8 %14, 5
  %switch.select.i = zext i1 %switch.selectcmp.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %switch.selectcmp65.i = icmp eq i8 %14, 6
  %switch.select66.i = select i1 %switch.selectcmp65.i, i8 2, i8 %switch.select.i
  %pg_num.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0.i, i32 0, i32 15
  %15 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pg_num.i, align 4
  %call1071.i = tail call zeroext i8 @rtw_hal_sdio_query_tx_freepage(ptr noundef %padapter, i8 noundef zeroext %switch.select66.i, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1071.i)
  %tobool11.not72.i = icmp eq i8 %call1071.i, 0
  br i1 %tobool11.not72.i, label %if.then14.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end7.i
  %call15.i = tail call zeroext i8 @HalQueryTxBufferStatus8723BSdio(ptr noundef %padapter) #6
  %17 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pg_num.i, align 4
  %call10.i = tail call zeroext i8 @rtw_hal_sdio_query_tx_freepage(ptr noundef %padapter, i8 noundef zeroext %switch.select66.i, i8 noundef zeroext %18) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10.i)
  %tobool11.not.i = icmp eq i8 %call10.i, 0
  br i1 %tobool11.not.i, label %if.else16.i, label %if.then14.i.if.end17.i_crit_edge

if.then14.i.if.end17.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.else16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @enqueue_pending_xmitbuf_to_head(ptr noundef %xmitpriv, ptr noundef nonnull %pxmitbuf.0.i) #6
  br label %do.end

if.end17.i:                                       ; preds = %if.then14.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %19 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not.i = icmp eq i32 %20, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %if.end17.i.rtl8723_dequeue_writeport.exit_crit_edge

if.end17.i.rtl8723_dequeue_writeport.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723_dequeue_writeport.exit

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %21 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not.i = icmp eq i32 %22, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false.i.rtl8723_dequeue_writeport.exit_crit_edge

lor.lhs.false.i.rtl8723_dequeue_writeport.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723_dequeue_writeport.exit

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %agg_num.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0.i, i32 0, i32 16
  %23 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %agg_num.i, align 1
  %25 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %HalData.i.i, align 8
  %SdioTxOQTFreeSpace.i.i = getelementptr inbounds %struct.hal_com_data, ptr %26, i32 0, i32 136
  %27 = ptrtoint ptr %SdioTxOQTFreeSpace.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %SdioTxOQTFreeSpace.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %24)
  %cmp20.i.i = icmp ult i8 %28, %24
  br i1 %cmp20.i.i, label %if.end21.i.while.body.i.i_crit_edge, label %if.end21.i.if.end26.i_crit_edge

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end21.i.while.body.i.i_crit_edge:              ; preds = %if.end21.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.end21.i.while.body.i.i_crit_edge
  %n.021.i.i = phi i32 [ %inc.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ 0, %if.end21.i.while.body.i.i_crit_edge ]
  %29 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i67.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i67.i, label %lor.lhs.false.i.i, label %while.body.i.i.rtl8723_dequeue_writeport.exit_crit_edge

while.body.i.i.rtl8723_dequeue_writeport.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723_dequeue_writeport.exit

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %31 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rtl8723_dequeue_writeport.exit_crit_edge

lor.lhs.false.i.i.rtl8723_dequeue_writeport.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723_dequeue_writeport.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  tail call void @HalQueryTxOQTBufferStatus8723BSdio(ptr noundef %padapter) #6
  %inc.i.i = add i32 %n.021.i.i, 1
  %rem.i.i = urem i32 %inc.i.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp4.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %33 = ptrtoint ptr %SdioTxOQTFreeSpace.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %SdioTxOQTFreeSpace.i.i, align 1
  %cmp.i.i = icmp ult i8 %34, %24
  br i1 %cmp.i.i, label %if.end7.i.i.while.body.i.i_crit_edge, label %if.end7.i.i.if.end26.i_crit_edge

if.end7.i.i.if.end26.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end26.i:                                       ; preds = %if.end7.i.i.if.end26.i_crit_edge, %if.end21.i.if.end26.i_crit_edge
  %.lcssa.i.i = phi i8 [ %28, %if.end21.i.if.end26.i_crit_edge ], [ %34, %if.end7.i.i.if.end26.i_crit_edge ]
  %sub.i.i = sub i8 %.lcssa.i.i, %24
  %35 = ptrtoint ptr %SdioTxOQTFreeSpace.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sub.i.i, ptr %SdioTxOQTFreeSpace.i.i, align 1
  %36 = ptrtoint ptr %agg_num.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %agg_num.i, align 1
  %conv28.i = zext i8 %37 to i32
  tail call void @traffic_check_for_leave_lps(ptr noundef %padapter, i8 noundef zeroext 1, i32 noundef %conv28.i) #6
  %len.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.0.i, i32 0, i32 8
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %call29.i = tail call i32 @rtw_write_port(ptr noundef %padapter, i32 noundef %conv.i, i32 noundef %39, ptr noundef nonnull %pxmitbuf.0.i) #6
  %40 = ptrtoint ptr %pg_num.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pg_num.i, align 4
  tail call void @rtw_hal_sdio_update_tx_freepage(ptr noundef %padapter, i8 noundef zeroext %switch.select66.i, i8 noundef zeroext %41) #6
  br label %rtl8723_dequeue_writeport.exit

rtl8723_dequeue_writeport.exit:                   ; preds = %if.end26.i, %lor.lhs.false.i.i.rtl8723_dequeue_writeport.exit_crit_edge, %while.body.i.i.rtl8723_dequeue_writeport.exit_crit_edge, %lor.lhs.false.i.rtl8723_dequeue_writeport.exit_crit_edge, %if.end17.i.rtl8723_dequeue_writeport.exit_crit_edge
  %call31.i = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef nonnull %pxmitbuf.0.i) #6
  br label %do.body

do.end:                                           ; preds = %if.else16.i, %if.end.i.do.end_crit_edge
  tail call void @rtw_unregister_tx_alive(ptr noundef %padapter) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %do.end ], [ 0, %lor.rhs.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_pending_xmitbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_register_tx_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_unregister_tx_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_xmit_thread(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  %inx.i.i = alloca [4 x i32], align 4
  %thread_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %thread_name) #6
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 41
  %0 = call ptr @memset(ptr %thread_name, i32 255, i32 20)
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %thread_name, i32 noundef 20, ptr noundef nonnull @.str.1, ptr noundef %2)
  tail call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #6
  %xmitpriv.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9
  %SdioXmitStart.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 29
  %bSurpriseRemoved.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 22
  %bDriverStopped.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 21
  %3 = getelementptr inbounds [4 x i32], ptr %inx.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i32], ptr %inx.i.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i32], ptr %inx.i.i, i32 0, i32 3
  %hwxmits1.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 25
  %hwxmit_entry.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 26
  %wifi_spec.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 14, i32 48
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %context, i32 0, i32 9, i32 27
  %arrayidx.1.i.i = getelementptr %struct.adapter, ptr %context, i32 0, i32 9, i32 27, i32 1
  %arrayidx.2.i.i = getelementptr %struct.adapter, ptr %context, i32 0, i32 9, i32 27, i32 2
  %arrayidx.3.i.i = getelementptr %struct.adapter, ptr %context, i32 0, i32 9, i32 27, i32 3
  %bHigherBusyTxTraffic.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 4, i32 34, i32 8
  %fw_state.i.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 4, i32 1
  %xmit_comp.i.i = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %SdioXmitStart.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %next.preheader.i, label %if.then.i

next.preheader.i:                                 ; preds = %do.body
  %6 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bDriverStopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not44.i = icmp eq i32 %7, 0
  br i1 %tobool1.not44.i, label %next.preheader.i.lor.lhs.false.i_crit_edge, label %next.preheader.i.rtl8723bs_xmit_handler.exit_crit_edge

next.preheader.i.rtl8723bs_xmit_handler.exit_crit_edge: ; preds = %next.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723bs_xmit_handler.exit

next.preheader.i.lor.lhs.false.i_crit_edge:       ; preds = %next.preheader.i
  br label %lor.lhs.false.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_emerg(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rtl8723bs_xmit_handler) #9
  br label %rtl8723bs_xmit_handler.exit

lor.lhs.false.i:                                  ; preds = %next.backedge.i.lor.lhs.false.i_crit_edge, %next.preheader.i.lor.lhs.false.i_crit_edge
  %10 = ptrtoint ptr %bSurpriseRemoved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bSurpriseRemoved.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.rtl8723bs_xmit_handler.exit_crit_edge

lor.lhs.false.i.rtl8723bs_xmit_handler.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723bs_xmit_handler.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i) #6
  %call5.i = tail call i32 @rtw_txframes_pending(ptr noundef %context) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %if.end4.i.rtl8723bs_xmit_handler.exit_crit_edge, label %if.end8.i

if.end4.i.rtl8723bs_xmit_handler.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723bs_xmit_handler.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inx.i.i) #6
  %12 = call ptr @memset(ptr %inx.i.i, i32 255, i32 12)
  %13 = ptrtoint ptr %hwxmits1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwxmits1.i.i, align 8
  %15 = ptrtoint ptr %hwxmit_entry.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hwxmit_entry.i.i, align 4
  %17 = ptrtoint ptr %wifi_spec.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wifi_spec.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 1
  br i1 %cmp.i.i, label %for.body.preheader.i.i, label %if.else.i.i

for.body.preheader.i.i:                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv6.i.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %inx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv6.i.i, ptr %inx.i.i, align 4
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv6.1.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv6.1.i.i, ptr %3, align 4
  %25 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv6.2.i.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv6.2.i.i, ptr %4, align 4
  %28 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv6.3.i.i = zext i8 %29 to i32
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %inx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %inx.i.i, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %3, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %4, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.body.preheader.i.i
  %storemerge.i.i = phi i32 [ 3, %if.else.i.i ], [ %conv6.3.i.i, %for.body.preheader.i.i ]
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp16319.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp16319.not.i.i, label %if.end.i.i.xmit_xmitframes.exit.thread.i_crit_edge, label %for.body18.lr.ph.i.i

if.end.i.i.xmit_xmitframes.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xmit_xmitframes.exit.thread.i

for.body18.lr.ph.i.i:                             ; preds = %if.end.i.i
  %wide.trip.count.i.i = zext i8 %16 to i32
  br label %for.body18.i.i

for.cond13.i.i:                                   ; preds = %if.end185.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond13.i.i.xmit_xmitframes.exit.thread.i_crit_edge, label %for.cond13.i.i.for.body18.i.i_crit_edge

for.cond13.i.i.for.body18.i.i_crit_edge:          ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i.i

for.cond13.i.i.xmit_xmitframes.exit.thread.i_crit_edge: ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xmit_xmitframes.exit.thread.i

for.body18.i.i:                                   ; preds = %for.cond13.i.i.for.body18.i.i_crit_edge, %for.body18.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond13.i.i.for.body18.i.i_crit_edge ]
  %k.0321.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i ], [ %k.6.i.i, %for.cond13.i.i.for.body18.i.i_crit_edge ]
  %arrayidx20.i.i = getelementptr [4 x i32], ptr %inx.i.i, i32 0, i32 %indvars.iv.i.i
  %34 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx20.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.hw_xmit, ptr %14, i32 %35
  %call.i.i = tail call i32 @check_pending_xmitbuf(ptr noundef %xmitpriv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body18.i.i.if.end32.i.i_crit_edge, label %land.lhs.true.i.i

for.body18.i.i.if.end32.i.i_crit_edge:            ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

land.lhs.true.i.i:                                ; preds = %for.body18.i.i
  %36 = ptrtoint ptr %bHigherBusyTxTraffic.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bHigherBusyTxTraffic.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool21.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true.i.i.if.end32.i.i_crit_edge, label %if.then23.i.i

land.lhs.true.i.i.if.end32.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i.i
  %accnt.i.i = getelementptr %struct.hw_xmit, ptr %14, i32 %35, i32 1
  %38 = ptrtoint ptr %accnt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %accnt.i.i, align 4
  %40 = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %xmit_xmitframes.exit.thread39.i, label %if.then23.i.i.if.end32.i.i_crit_edge

if.then23.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

xmit_xmitframes.exit.thread39.i:                  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx.i.i) #6
  br label %if.then11.i

if.end32.i.i:                                     ; preds = %if.then23.i.i.if.end32.i.i_crit_edge, %land.lhs.true.i.i.if.end32.i.i_crit_edge, %for.body18.i.i.if.end32.i.i_crit_edge
  %conv35.i.i = trunc i32 %35 to i8
  %call36.i.i = tail call i32 @rtw_hal_get_sdio_tx_max_length(ptr noundef %context, i8 noundef zeroext %conv35.i.i) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i) #6
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %accnt104.i.i = getelementptr %struct.hw_xmit, ptr %14, i32 %35, i32 1
  br label %for.cond39.i.i

for.cond39.i.i:                                   ; preds = %if.end159.i.i.for.cond39.i.i_crit_edge, %if.end32.i.i
  %sta_plist.0.i.i = phi ptr [ %45, %if.end32.i.i ], [ %tmp.0.i.i, %if.end159.i.i.for.cond39.i.i_crit_edge ]
  %pxmitbuf.1.i.i = phi ptr [ null, %if.end32.i.i ], [ %pxmitbuf.4.i.i, %if.end159.i.i.for.cond39.i.i_crit_edge ]
  %k.1.i.i = phi i32 [ %k.0321.i.i, %if.end32.i.i ], [ %k.5.i.i, %if.end159.i.i.for.cond39.i.i_crit_edge ]
  %46 = ptrtoint ptr %sta_plist.0.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp.0.i.i = load ptr, ptr %sta_plist.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %sta_plist.0.i.i, %43
  br i1 %cmp.i.not.i.i, label %for.cond39.i.i.for.end165.i.i_crit_edge, label %for.body42.i.i

for.cond39.i.i.for.end165.i.i_crit_edge:          ; preds = %for.cond39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end165.i.i

for.body42.i.i:                                   ; preds = %for.cond39.i.i
  %sta_pending.i.i = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %sta_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %sta_pending.i.i, align 4
  %cmp.i299.not311.i.i = icmp eq ptr %48, %sta_pending.i.i
  br i1 %cmp.i299.not311.i.i, label %for.body42.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

for.body42.i.i.while.end.i.i_crit_edge:           ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %for.body42.i.i
  %qcnt.i.i = getelementptr inbounds %struct.tx_servq, ptr %sta_plist.0.i.i, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end155.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %49 = phi ptr [ %48, %while.body.lr.ph.i.i ], [ %105, %if.end155.i.i.while.body.i.i_crit_edge ]
  %k.2315.i.i = phi i32 [ %k.1.i.i, %while.body.lr.ph.i.i ], [ %k.4.i.i, %if.end155.i.i.while.body.i.i_crit_edge ]
  %pxmitbuf.2312.i.i = phi ptr [ %pxmitbuf.1.i.i, %while.body.lr.ph.i.i ], [ %pxmitbuf.3.i.i, %if.end155.i.i.while.body.i.i_crit_edge ]
  %attrib.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 1
  %call54.i.i = tail call i32 @rtw_calculate_wlan_pkt_size_by_attribue(ptr noundef %attrib.i.i) #6
  %tobool55.not.i.i = icmp eq ptr %pxmitbuf.2312.i.i, null
  br i1 %tobool55.not.i.i, label %while.body.i.i.if.end83.i.i_crit_edge, label %lor.lhs.false.i.i

while.body.i.i.if.end83.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %add.i.i = add i32 %call54.i.i, 40
  %len.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.2312.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i, align 4
  %add56.i.i = add i32 %51, 7
  %div297.i.i = and i32 %add56.i.i, -8
  %add57.i.i = add i32 %add.i.i, %div297.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add57.i.i, i32 %call36.i.i)
  %cmp58.i.i = icmp ugt i32 %add57.i.i, %call36.i.i
  br i1 %cmp58.i.i, label %lor.lhs.false.i.i.if.then67.i.i_crit_edge, label %lor.lhs.false60.i.i

lor.lhs.false.i.i.if.then67.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67.i.i

lor.lhs.false60.i.i:                              ; preds = %lor.lhs.false.i.i
  %call61.i.i = tail call zeroext i8 @rtw_hal_sdio_max_txoqt_free_space(ptr noundef %context) #6
  %conv62.i.i = zext i8 %call61.i.i to i32
  %sub.i.i = add nsw i32 %conv62.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.2315.i.i, i32 %sub.i.i)
  %cmp63.not.i.i = icmp ult i32 %k.2315.i.i, %sub.i.i
  br i1 %cmp63.not.i.i, label %lor.lhs.false60.i.i.if.end88.i.i_crit_edge, label %if.then67thread-pre-split.i.i

lor.lhs.false60.i.i.if.end88.i.i_crit_edge:       ; preds = %lor.lhs.false60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i

if.then67thread-pre-split.i.i:                    ; preds = %lor.lhs.false60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i.i = load i32, ptr %len.i.i, align 4
  br label %if.then67.i.i

if.then67.i.i:                                    ; preds = %if.then67thread-pre-split.i.i, %lor.lhs.false.i.i.if.then67.i.i_crit_edge
  %53 = phi i32 [ %.pr.i.i, %if.then67thread-pre-split.i.i ], [ %51, %lor.lhs.false.i.i.if.then67.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp69.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp69.not.i.i, label %if.then67.i.i.if.else80.i.i_crit_edge, label %land.lhs.true71.i.i

if.then67.i.i.if.else80.i.i_crit_edge:            ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else80.i.i

land.lhs.true71.i.i:                              ; preds = %if.then67.i.i
  %priv_data.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.2312.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv_data.i.i, align 4
  %tobool72.not.i.i = icmp eq ptr %55, null
  br i1 %tobool72.not.i.i, label %land.lhs.true71.i.i.if.else80.i.i_crit_edge, label %if.then73.i.i

land.lhs.true71.i.i.if.else80.i.i_crit_edge:      ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else80.i.i

if.then73.i.i:                                    ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv75.i.i = trunc i32 %k.2315.i.i to i8
  %agg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %agg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv75.i.i, ptr %agg_num.i.i, align 1
  %agg_num77.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.2312.i.i, i32 0, i32 16
  %57 = ptrtoint ptr %agg_num77.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv75.i.i, ptr %agg_num77.i.i, align 1
  %buf_addr.i.i = getelementptr inbounds %struct.xmit_frame, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf_addr.i.i, align 4
  tail call void @rtl8723b_update_txdesc(ptr noundef nonnull %55, ptr noundef %59) #6
  %call78.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef nonnull %55) #6
  %60 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %priv_data.i.i, align 4
  tail call void @enqueue_pending_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef nonnull %pxmitbuf.2312.i.i) #6
  br label %if.end83.i.i

if.else80.i.i:                                    ; preds = %land.lhs.true71.i.i.if.else80.i.i_crit_edge, %if.then67.i.i.if.else80.i.i_crit_edge
  %call81.i.i = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef nonnull %pxmitbuf.2312.i.i) #6
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.else80.i.i, %if.then73.i.i, %while.body.i.i.if.end83.i.i_crit_edge
  %call84.i.i = tail call ptr @rtw_alloc_xmitbuf(ptr noundef %xmitpriv.i) #6
  %tobool85.not.i.i = icmp eq ptr %call84.i.i, null
  br i1 %tobool85.not.i.i, label %if.then86.i.i, label %if.end83.i.i.if.end88.i.i_crit_edge

if.end83.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i

if.then86.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef %xmit_comp.i.i) #6
  br label %while.end.i.i

if.end88.i.i:                                     ; preds = %if.end83.i.i.if.end88.i.i_crit_edge, %lor.lhs.false60.i.i.if.end88.i.i_crit_edge
  %pxmitbuf.3.i.i = phi ptr [ %pxmitbuf.2312.i.i, %lor.lhs.false60.i.i.if.end88.i.i_crit_edge ], [ %call84.i.i, %if.end83.i.i.if.end88.i.i_crit_edge ]
  %k.3.i.i = phi i32 [ %k.2315.i.i, %lor.lhs.false60.i.i.if.end88.i.i_crit_edge ], [ 0, %if.end83.i.i.if.end88.i.i_crit_edge ]
  %61 = ptrtoint ptr %fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_state.i.i.i, align 4
  %and.i.i.i = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %if.end88.i.i.if.end103.i.i_crit_edge, label %if.then93.i.i

if.end88.i.i.if.end103.i.i_crit_edge:             ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i.i

if.then93.i.i:                                    ; preds = %if.end88.i.i
  %psta.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 1, i32 45
  %63 = ptrtoint ptr %psta.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %psta.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.sta_info, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i.i, align 8
  %and.i.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool95.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool95.not.i.i, label %if.then93.i.i.if.end103.i.i_crit_edge, label %land.lhs.true96.i.i

if.then93.i.i.if.end103.i.i_crit_edge:            ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i.i

land.lhs.true96.i.i:                              ; preds = %if.then93.i.i
  %triggered.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 1, i32 35
  %67 = ptrtoint ptr %triggered.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %triggered.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp99.i.i = icmp eq i8 %68, 0
  br i1 %cmp99.i.i, label %land.lhs.true96.i.i.while.end.i.i_crit_edge, label %land.lhs.true96.i.i.if.end103.i.i_crit_edge

land.lhs.true96.i.i.if.end103.i.i_crit_edge:      ; preds = %land.lhs.true96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103.i.i

land.lhs.true96.i.i.while.end.i.i_crit_edge:      ; preds = %land.lhs.true96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end103.i.i:                                    ; preds = %land.lhs.true96.i.i.if.end103.i.i_crit_edge, %if.then93.i.i.if.end103.i.i_crit_edge, %if.end88.i.i.if.end103.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %49) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end103.i.i.list_del_init.exit.i.i_crit_edge

if.end103.i.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i.i, align 4
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %49, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end103.i.i.list_del_init.exit.i.i_crit_edge
  %75 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %49, ptr %49, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %49, ptr %prev.i3.i.i.i, align 4
  %77 = ptrtoint ptr %qcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qcnt.i.i, align 4
  %dec.i.i = add i32 %78, -1
  store i32 %dec.i.i, ptr %qcnt.i.i, align 4
  %79 = ptrtoint ptr %accnt104.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %accnt104.i.i, align 4
  %dec105.i.i = add i32 %80, -1
  store i32 %dec105.i.i, ptr %accnt104.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.3.i.i)
  %cmp106.i.i = icmp eq i32 %k.3.i.i, 0
  br i1 %cmp106.i.i, label %if.then108.i.i, label %list_del_init.exit.i.i.if.end111.i.i_crit_edge

list_del_init.exit.i.i.if.end111.i.i_crit_edge:   ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i.i

if.then108.i.i:                                   ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call109.i.i = tail call i32 @rtw_get_ff_hwaddr(ptr noundef %49) #6
  %ff_hwaddr.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.3.i.i, i32 0, i32 14
  %81 = ptrtoint ptr %ff_hwaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call109.i.i, ptr %ff_hwaddr.i.i, align 4
  %priv_data110.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.3.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %priv_data110.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %49, ptr %priv_data110.i.i, align 4
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.then108.i.i, %list_del_init.exit.i.i.if.end111.i.i_crit_edge
  %pxmitbuf112.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 6
  %83 = ptrtoint ptr %pxmitbuf112.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %pxmitbuf.3.i.i, ptr %pxmitbuf112.i.i, align 4
  %ptail.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.3.i.i, i32 0, i32 12
  %84 = ptrtoint ptr %ptail.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptail.i.i, align 4
  %buf_addr113.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 5
  %86 = ptrtoint ptr %buf_addr113.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %buf_addr113.i.i, align 4
  %pkt.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 2
  %87 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pkt.i.i, align 4
  %call114.i.i = tail call i32 @rtw_xmitframe_coalesce(ptr noundef %context, ptr noundef %88, ptr noundef %49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %cmp115.i.i = icmp eq i32 %call114.i.i, 0
  br i1 %cmp115.i.i, label %if.then117.i.i, label %if.else118.i.i

if.then117.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.xmit_xmitframes) #9
  br label %if.end150.i.i

if.else118.i.i:                                   ; preds = %if.end111.i.i
  %inc119.i.i = add nuw i32 %k.3.i.i, 1
  br i1 %cmp106.i.i, label %if.else118.i.i.if.end124.i.i_crit_edge, label %if.then122.i.i

if.else118.i.i.if.end124.i.i_crit_edge:           ; preds = %if.else118.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i.i

if.then122.i.i:                                   ; preds = %if.else118.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %buf_addr113.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf_addr113.i.i, align 4
  tail call void @rtl8723b_update_txdesc(ptr noundef %49, ptr noundef %92) #6
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %if.then122.i.i, %if.else118.i.i.if.end124.i.i_crit_edge
  %last_txcmdsz.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 1, i32 9
  %93 = ptrtoint ptr %last_txcmdsz.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %last_txcmdsz.i.i, align 4
  tail call void @rtw_count_tx_stats(ptr noundef %context, ptr noundef %49, i32 noundef %94) #6
  %95 = ptrtoint ptr %last_txcmdsz.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %last_txcmdsz.i.i, align 4
  %add129.i.i = add i32 %96, 40
  %add130.i.i = add i32 %96, 167
  %div131294.i.i = lshr i32 %add130.i.i, 7
  %conv132.i.i = trunc i32 %div131294.i.i to i8
  %pg_num.i.i = getelementptr inbounds %struct.xmit_frame, ptr %49, i32 0, i32 7
  %97 = ptrtoint ptr %pg_num.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv132.i.i, ptr %pg_num.i.i, align 4
  %pg_num135.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.3.i.i, i32 0, i32 15
  %98 = ptrtoint ptr %pg_num135.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pg_num135.i.i, align 4
  %conv138.i.i = add i8 %99, %conv132.i.i
  store i8 %conv138.i.i, ptr %pg_num135.i.i, align 4
  %add139.i.i = add i32 %96, 47
  %div140295.i.i = and i32 %add139.i.i, -8
  %100 = ptrtoint ptr %ptail.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ptail.i.i, align 4
  %add.ptr143.i.i = getelementptr i8, ptr %101, i32 %div140295.i.i
  store ptr %add.ptr143.i.i, ptr %ptail.i.i, align 4
  %len144.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.3.i.i, i32 0, i32 8
  %102 = ptrtoint ptr %len144.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len144.i.i, align 4
  %add145.i.i = add i32 %103, 7
  %div146296.i.i = and i32 %add145.i.i, -8
  %add148.i.i = add i32 %add129.i.i, %div146296.i.i
  store i32 %add148.i.i, ptr %len144.i.i, align 4
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %if.end124.i.i, %if.then117.i.i
  %k.4.i.i = phi i32 [ %k.3.i.i, %if.then117.i.i ], [ %inc119.i.i, %if.end124.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.4.i.i)
  %cmp151.not.i.i = icmp eq i32 %k.4.i.i, 1
  br i1 %cmp151.not.i.i, label %if.end150.i.i.if.end155.i.i_crit_edge, label %if.then153.i.i

if.end150.i.i.if.end155.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155.i.i

if.then153.i.i:                                   ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call154.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef %49) #6
  br label %if.end155.i.i

if.end155.i.i:                                    ; preds = %if.then153.i.i, %if.end150.i.i.if.end155.i.i_crit_edge
  %104 = ptrtoint ptr %sta_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %sta_pending.i.i, align 4
  %cmp.i299.not.i.i = icmp eq ptr %105, %sta_pending.i.i
  br i1 %cmp.i299.not.i.i, label %if.end155.i.i.while.end.i.i_crit_edge, label %if.end155.i.i.while.body.i.i_crit_edge

if.end155.i.i.while.body.i.i_crit_edge:           ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end155.i.i.while.end.i.i_crit_edge:            ; preds = %if.end155.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end155.i.i.while.end.i.i_crit_edge, %land.lhs.true96.i.i.while.end.i.i_crit_edge, %if.then86.i.i, %for.body42.i.i.while.end.i.i_crit_edge
  %pxmitbuf.4.i.i = phi ptr [ null, %if.then86.i.i ], [ %pxmitbuf.1.i.i, %for.body42.i.i.while.end.i.i_crit_edge ], [ %pxmitbuf.3.i.i, %land.lhs.true96.i.i.while.end.i.i_crit_edge ], [ %pxmitbuf.3.i.i, %if.end155.i.i.while.end.i.i_crit_edge ]
  %k.5.i.i = phi i32 [ %k.2315.i.i, %if.then86.i.i ], [ %k.1.i.i, %for.body42.i.i.while.end.i.i_crit_edge ], [ %k.4.i.i, %if.end155.i.i.while.end.i.i_crit_edge ], [ %k.3.i.i, %land.lhs.true96.i.i.while.end.i.i_crit_edge ]
  %tobool160.not.i.i = phi i1 [ false, %if.then86.i.i ], [ true, %for.body42.i.i.while.end.i.i_crit_edge ], [ true, %land.lhs.true96.i.i.while.end.i.i_crit_edge ], [ true, %if.end155.i.i.while.end.i.i_crit_edge ]
  %err.2.i.i = phi i32 [ -2, %if.then86.i.i ], [ 0, %for.body42.i.i.while.end.i.i_crit_edge ], [ 0, %land.lhs.true96.i.i.while.end.i.i_crit_edge ], [ 0, %if.end155.i.i.while.end.i.i_crit_edge ]
  %106 = ptrtoint ptr %sta_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %sta_pending.i.i, align 4
  %cmp.i301.not.i.i = icmp eq ptr %107, %sta_pending.i.i
  br i1 %cmp.i301.not.i.i, label %if.then158.i.i, label %while.end.i.i.if.end159.i.i_crit_edge

while.end.i.i.if.end159.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i.i

if.then158.i.i:                                   ; preds = %while.end.i.i
  %call.i.i303.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta_plist.0.i.i) #6
  br i1 %call.i.i303.i.i, label %if.end.i.i306.i.i, label %if.then158.i.i.list_del_init.exit308.i.i_crit_edge

if.then158.i.i.list_del_init.exit308.i.i_crit_edge: ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit308.i.i

if.end.i.i306.i.i:                                ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i304.i.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i304.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i304.i.i, align 4
  %110 = ptrtoint ptr %sta_plist.0.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sta_plist.0.i.i, align 4
  %prev1.i.i.i305.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i305.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i305.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del_init.exit308.i.i

list_del_init.exit308.i.i:                        ; preds = %if.end.i.i306.i.i, %if.then158.i.i.list_del_init.exit308.i.i_crit_edge
  %114 = ptrtoint ptr %sta_plist.0.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %sta_plist.0.i.i, ptr %sta_plist.0.i.i, align 4
  %prev.i3.i307.i.i = getelementptr inbounds %struct.list_head, ptr %sta_plist.0.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i3.i307.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %sta_plist.0.i.i, ptr %prev.i3.i307.i.i, align 4
  br label %if.end159.i.i

if.end159.i.i:                                    ; preds = %list_del_init.exit308.i.i, %while.end.i.i.if.end159.i.i_crit_edge
  br i1 %tobool160.not.i.i, label %if.end159.i.i.for.cond39.i.i_crit_edge, label %if.end159.i.i.for.end165.i.i_crit_edge

if.end159.i.i.for.end165.i.i_crit_edge:           ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end165.i.i

if.end159.i.i.for.cond39.i.i_crit_edge:           ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond39.i.i

for.end165.i.i:                                   ; preds = %if.end159.i.i.for.end165.i.i_crit_edge, %for.cond39.i.i.for.end165.i.i_crit_edge
  %pxmitbuf.5.i.i = phi ptr [ %pxmitbuf.4.i.i, %if.end159.i.i.for.end165.i.i_crit_edge ], [ %pxmitbuf.1.i.i, %for.cond39.i.i.for.end165.i.i_crit_edge ]
  %k.6.i.i = phi i32 [ %k.5.i.i, %if.end159.i.i.for.end165.i.i_crit_edge ], [ %k.1.i.i, %for.cond39.i.i.for.end165.i.i_crit_edge ]
  %err.3.i.i = phi i32 [ %err.2.i.i, %if.end159.i.i.for.end165.i.i_crit_edge ], [ 0, %for.cond39.i.i.for.end165.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i) #6
  %tobool167.not.i.i = icmp eq ptr %pxmitbuf.5.i.i, null
  br i1 %tobool167.not.i.i, label %for.end165.i.i.if.end185.i.i_crit_edge, label %if.then168.i.i

for.end165.i.i.if.end185.i.i_crit_edge:           ; preds = %for.end165.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185.i.i

if.then168.i.i:                                   ; preds = %for.end165.i.i
  %len169.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.5.i.i, i32 0, i32 8
  %116 = ptrtoint ptr %len169.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len169.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp170.not.i.i = icmp eq i32 %117, 0
  br i1 %cmp170.not.i.i, label %if.else182.i.i, label %if.then172.i.i

if.then172.i.i:                                   ; preds = %if.then168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %priv_data174.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.5.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %priv_data174.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv_data174.i.i, align 4
  %conv175.i.i = trunc i32 %k.6.i.i to i8
  %agg_num176.i.i = getelementptr inbounds %struct.xmit_frame, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %agg_num176.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv175.i.i, ptr %agg_num176.i.i, align 1
  %agg_num178.i.i = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf.5.i.i, i32 0, i32 16
  %121 = ptrtoint ptr %agg_num178.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv175.i.i, ptr %agg_num178.i.i, align 1
  %buf_addr179.i.i = getelementptr inbounds %struct.xmit_frame, ptr %119, i32 0, i32 5
  %122 = ptrtoint ptr %buf_addr179.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buf_addr179.i.i, align 4
  tail call void @rtl8723b_update_txdesc(ptr noundef %119, ptr noundef %123) #6
  %call180.i.i = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv.i, ptr noundef %119) #6
  %124 = ptrtoint ptr %priv_data174.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %priv_data174.i.i, align 4
  tail call void @enqueue_pending_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef nonnull %pxmitbuf.5.i.i) #6
  tail call void @yield() #6
  br label %if.end185.i.i

if.else182.i.i:                                   ; preds = %if.then168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call183.i.i = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv.i, ptr noundef nonnull %pxmitbuf.5.i.i) #6
  br label %if.end185.i.i

if.end185.i.i:                                    ; preds = %if.else182.i.i, %if.then172.i.i, %for.end165.i.i.if.end185.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i.i)
  %tobool186.not.i.i = icmp eq i32 %err.3.i.i, 0
  br i1 %tobool186.not.i.i, label %for.cond13.i.i, label %xmit_xmitframes.exit.i

xmit_xmitframes.exit.thread.i:                    ; preds = %for.cond13.i.i.xmit_xmitframes.exit.thread.i_crit_edge, %if.end.i.i.xmit_xmitframes.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx.i.i) #6
  br label %if.end15.i

xmit_xmitframes.exit.i:                           ; preds = %if.end185.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.3.i.i)
  %cmp10.i = icmp eq i32 %err.3.i.i, -2
  br i1 %cmp10.i, label %xmit_xmitframes.exit.i.if.then11.i_crit_edge, label %xmit_xmitframes.exit.i.if.end15.i_crit_edge

xmit_xmitframes.exit.i.if.end15.i_crit_edge:      ; preds = %xmit_xmitframes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

xmit_xmitframes.exit.i.if.then11.i_crit_edge:     ; preds = %xmit_xmitframes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %xmit_xmitframes.exit.i.if.then11.i_crit_edge, %xmit_xmitframes.exit.thread39.i
  %125 = ptrtoint ptr %wifi_spec.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %wifi_spec.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool12.not.i = icmp eq i8 %126, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  br label %next.backedge.i

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @yield() #6
  br label %next.backedge.i

next.backedge.i:                                  ; preds = %if.end15.i.next.backedge.i_crit_edge, %if.else.i, %if.then13.i
  %127 = ptrtoint ptr %bDriverStopped.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bDriverStopped.i, align 4
  %tobool1.not.i = icmp eq i32 %128, 0
  br i1 %tobool1.not.i, label %next.backedge.i.lor.lhs.false.i_crit_edge, label %next.backedge.i.rtl8723bs_xmit_handler.exit_crit_edge

next.backedge.i.rtl8723bs_xmit_handler.exit_crit_edge: ; preds = %next.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723bs_xmit_handler.exit

next.backedge.i.lor.lhs.false.i_crit_edge:        ; preds = %next.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end15.i:                                       ; preds = %xmit_xmitframes.exit.i.if.end15.i_crit_edge, %xmit_xmitframes.exit.thread.i
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv.i) #6
  %call17.i = tail call i32 @rtw_txframes_pending(ptr noundef %context) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp19.i = icmp eq i32 %call17.i, 1
  br i1 %cmp19.i, label %if.end15.i.next.backedge.i_crit_edge, label %if.end15.i.rtl8723bs_xmit_handler.exit_crit_edge

if.end15.i.rtl8723bs_xmit_handler.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723bs_xmit_handler.exit

if.end15.i.next.backedge.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %next.backedge.i

rtl8723bs_xmit_handler.exit:                      ; preds = %if.end15.i.rtl8723bs_xmit_handler.exit_crit_edge, %next.backedge.i.rtl8723bs_xmit_handler.exit_crit_edge, %if.end4.i.rtl8723bs_xmit_handler.exit_crit_edge, %lor.lhs.false.i.rtl8723bs_xmit_handler.exit_crit_edge, %if.then.i, %next.preheader.i.rtl8723bs_xmit_handler.exit_crit_edge
  %cmp = phi i1 [ false, %next.preheader.i.rtl8723bs_xmit_handler.exit_crit_edge ], [ false, %if.then.i ], [ true, %if.end15.i.rtl8723bs_xmit_handler.exit_crit_edge ], [ false, %next.backedge.i.rtl8723bs_xmit_handler.exit_crit_edge ], [ true, %if.end4.i.rtl8723bs_xmit_handler.exit_crit_edge ], [ false, %lor.lhs.false.i.rtl8723bs_xmit_handler.exit_crit_edge ]
  %129 = tail call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %stack.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %134, align 4
  %137 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i10 = icmp eq i32 %137, 0
  br i1 %tobool.not.i10, label %signal_pending.exit, label %rtl8723bs_xmit_handler.exit.if.then_crit_edge, !prof !31

rtl8723bs_xmit_handler.exit.if.then_crit_edge:    ; preds = %rtl8723bs_xmit_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

signal_pending.exit:                              ; preds = %rtl8723bs_xmit_handler.exit
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %134, align 4
  %and1.i.i.i.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.do.cond_crit_edge, label %signal_pending.exit.if.then_crit_edge

signal_pending.exit.if.then_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

signal_pending.exit.do.cond_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then:                                          ; preds = %signal_pending.exit.if.then_crit_edge, %rtl8723bs_xmit_handler.exit.if.then_crit_edge
  tail call void @flush_signals(ptr noundef %132) #6
  br label %do.cond

do.cond:                                          ; preds = %if.then, %signal_pending.exit.do.cond_crit_edge
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  %SdioXmitTerminate = getelementptr inbounds %struct.adapter, ptr %context, i32 0, i32 9, i32 30
  tail call void @complete(ptr noundef %SdioXmitTerminate) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %thread_name) #6
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_mgnt_xmit(ptr noundef %padapter, ptr noundef %pmgntframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 5
  %2 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 6
  %4 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf1, align 4
  tail call void @rtl8723b_update_txdesc(ptr noundef %pmgntframe, ptr noundef %3) #6
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pmgntframe, i32 0, i32 1, i32 9
  %6 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_txcmdsz, align 4
  %add = add i32 %7, 40
  %len = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %len, align 4
  %add4 = add i32 %7, 167
  %div49 = lshr i32 %add4, 7
  %conv5 = trunc i32 %div49 to i8
  %pg_num = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 15
  %9 = ptrtoint ptr %pg_num to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %pg_num, align 4
  %10 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf_addr, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add
  %ptail = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %ptail to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr8, ptr %ptail, align 4
  %call = tail call i32 @rtw_get_ff_hwaddr(ptr noundef %pmgntframe) #6
  %ff_hwaddr = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %ff_hwaddr, align 4
  %14 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_txcmdsz, align 4
  tail call void @rtw_count_tx_stats(ptr noundef %padapter, ptr noundef %pmgntframe, i32 noundef %15) #6
  %call10 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pmgntframe) #6
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %priv_data, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 2
  %19 = and i16 %18, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp = icmp eq i16 %19, -32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = ptrtoint ptr %ff_hwaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ff_hwaddr, align 4
  %arrayidx = getelementptr %struct.dvobj_priv, ptr %1, i32 0, i32 18, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %23 to i32
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %call16 = tail call i32 @rtw_write_port(ptr noundef %padapter, i32 noundef %conv14, i32 noundef %25, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %if.then.if.end_crit_edge, label %if.then19

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sctx = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 9
  tail call void @rtw_sctx_done_err(ptr noundef %sctx, i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then.if.end_crit_edge
  %call20 = tail call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %5) #6
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @enqueue_pending_xmitbuf(ptr noundef %xmitpriv, ptr noundef %5) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end
  %ret.0 = phi i32 [ %call16, %if.end ], [ 1, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_update_txdesc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_ff_hwaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_count_tx_stats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sctx_done_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_free_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enqueue_pending_xmitbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_hal_xmit(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 2
  %qsel = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 36
  %2 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %qsel, align 2
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %3 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ether_type, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %land.lhs.true11 [
    i16 2054, label %land.lhs.true.if.end17_crit_edge
    i16 -30578, label %land.lhs.true.if.end17_crit_edge40
  ]

land.lhs.true.if.end17_crit_edge40:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true
  %dhcp_pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dhcp_pkt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp14.not = icmp eq i8 %9, 1
  br i1 %cmp14.not, label %land.lhs.true11.if.end17_crit_edge, label %if.then

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true11
  %bBusyTraffic = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 4, i32 34, i32 3
  %10 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bBusyTraffic, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %if.then16

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtw_issue_addbareq_cmd(ptr noundef %padapter, ptr noundef %pxmitframe) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then.if.end17_crit_edge, %land.lhs.true11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge40, %entry.if.end17_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %xmitpriv) #6
  %call = tail call i32 @rtw_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmitpriv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp19.not = icmp eq i32 %call, 1
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pxmitframe) #6
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23
  %12 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_drop, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %tx_drop, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %SdioXmitStart = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29
  tail call void @complete(ptr noundef %SdioXmitStart) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21
  %retval.0 = phi i32 [ 1, %if.then21 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_issue_addbareq_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmitframe_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_hal_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_xmitframe_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %call1 = tail call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %pxmitframe) #6
  %tx_drop = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 23
  %0 = ptrtoint ptr %tx_drop to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tx_drop, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %tx_drop, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %SdioXmitStart = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29
  tail call void @complete(ptr noundef %SdioXmitStart) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723bs_init_xmit_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %SdioTxFIFOFreePageLock = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 134
  tail call void @__raw_spin_lock_init(ptr noundef %SdioTxFIFOFreePageLock, ptr noundef nonnull @.str.2, ptr noundef nonnull @rtl8723bs_init_xmit_priv.__key, i16 noundef signext 3) #6
  %SdioXmitStart = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29
  %2 = ptrtoint ptr %SdioXmitStart to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %SdioXmitStart, align 4
  %wait.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 29, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  %SdioXmitTerminate = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 30
  %3 = ptrtoint ptr %SdioXmitTerminate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %SdioXmitTerminate, align 4
  %wait.i4 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 30, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i4, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723bs_free_xmit_priv(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %tmplist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmplist) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %tmplist, i32 0, i32 1
  %xmitpriv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9
  %pending_xmitbuf_queue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 32
  %1 = ptrtoint ptr %tmplist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tmplist, ptr %tmplist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmplist, ptr %0, align 4
  %lock = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 32, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %3 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending_xmitbuf_queue, align 4
  %cmp.i.not = icmp eq ptr %4, %pending_xmitbuf_queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %prev.i19 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 9, i32 32, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i19, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %tmplist, ptr noundef %6, ptr noundef %pending_xmitbuf_queue) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmplist, ptr %prev.i19, align 4
  %8 = ptrtoint ptr %tmplist to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_xmitbuf_queue, ptr %tmplist, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %0, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %tmplist, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %call.i.i20 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_xmitbuf_queue) #6
  br i1 %call.i.i20, label %if.end.i.i21, label %list_add_tail.exit.list_del_init.exit_crit_edge

list_add_tail.exit.list_del_init.exit_crit_edge:  ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i21:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i19, align 4
  %13 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_xmitbuf_queue, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i21, %list_add_tail.exit.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %pending_xmitbuf_queue, ptr %pending_xmitbuf_queue, align 4
  %18 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending_xmitbuf_queue, ptr %prev.i19, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %19 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %tmplist, align 4
  %cmp.i22.not30 = icmp eq ptr %20, %tmplist
  br i1 %cmp.i22.not30, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit29.while.body_crit_edge, %if.end.while.body_crit_edge
  %21 = phi ptr [ %34, %list_del_init.exit29.while.body_crit_edge ], [ %20, %if.end.while.body_crit_edge ]
  %call.i.i24 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #6
  br i1 %call.i.i24, label %if.end.i.i27, label %while.body.list_del_init.exit29_crit_edge

while.body.list_del_init.exit29_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit29

if.end.i.i27:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i25 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i25, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i26, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit29

list_del_init.exit29:                             ; preds = %if.end.i.i27, %while.body.list_del_init.exit29_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i28 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i28, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %21, i32 0, i32 4
  %30 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_data, align 4
  %call5 = call i32 @rtw_free_xmitframe(ptr noundef %xmitpriv, ptr noundef %31) #6
  %32 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %priv_data, align 4
  %call7 = call i32 @rtw_free_xmitbuf(ptr noundef %xmitpriv, ptr noundef %21) #6
  %33 = ptrtoint ptr %tmplist to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %tmplist, align 4
  %cmp.i22.not = icmp eq ptr %34, %tmplist
  br i1 %cmp.i22.not, label %list_del_init.exit29.while.end_crit_edge, label %list_del_init.exit29.while.body_crit_edge

list_del_init.exit29.while.body_crit_edge:        ; preds = %list_del_init.exit29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del_init.exit29.while.end_crit_edge:         ; preds = %list_del_init.exit29
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit29.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmplist) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dequeue_pending_xmitbuf_under_survey(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dequeue_pending_xmitbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_sdio_query_tx_freepage(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HalQueryTxBufferStatus8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enqueue_pending_xmitbuf_to_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @traffic_check_for_leave_lps(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_sdio_update_tx_freepage(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @HalQueryTxOQTBufferStatus8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_txframes_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_get_sdio_tx_max_length(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_calculate_wlan_pkt_size_by_attribue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_sdio_max_txoqt_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtw_alloc_xmitbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_xmitframe_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 133, i32 9}
!2 = !{ptr @__func__.rtl8723bs_xmit_buf_handler, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 133, i32 45}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 421, i32 2}
!6 = !{ptr @rtl8723bs_init_xmit_priv.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 554, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 368, i32 35}
!11 = !{ptr @__func__.rtl8723bs_xmit_handler, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 369, i32 9}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 298, i32 10}
!15 = !{ptr @__func__.xmit_xmitframes, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c", i32 299, i32 10}
!17 = !{ptr @init_completion.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../include/linux/completion.h", i32 87, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 2000, i32 1}
