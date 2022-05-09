; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/sdio_halinit.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/sdio_halinit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wlan_pwr_cfg = type <{ i16, i8, i16, i8, i8, i8 }>
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8723B_card_enable_flow = external dso_local global [31 x %struct.wlan_pwr_cfg], align 2
@rtl8723B_enter_lps_flow = external dso_local global [16 x %struct.wlan_pwr_cfg], align 2
@rtl8723B_card_disable_flow = external dso_local global [31 x %struct.wlan_pwr_cfg], align 2
@__const.Hal_EfuseParseMACAddr_8723BS.sMacAddr = private unnamed_addr constant [6 x i8] c"\00\E0L\B7#\00", align 1
@switch.table._InitQueuePriority = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3, i16 1, i16 0, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table._InitQueuePriority.1 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3, i16 0, i16 3, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table._InitQueuePriority.2 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 0, i16 2, i16 1], [24 x i8] zeroinitializer }, align 32
@switch.table._InitOperationMode = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\04\04\00\04\00\00\00\04", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 39, i64 40, i64 80, i64 81]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 41, i64 82]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 17]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_ = private constant [48 x i8] c"../drivers/staging/rtl8723bs/hal/sdio_halinit.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [32 x i8] c"switch.table._InitQueuePriority\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [34 x i8] c"switch.table._InitQueuePriority.1\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [34 x i8] c"switch.table._InitQueuePriority.2\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"switch.table._InitOperationMode\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table._InitQueuePriority, ptr @switch.table._InitQueuePriority.1, ptr @switch.table._InitQueuePriority.2, ptr @switch.table._InitOperationMode], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._InitQueuePriority to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._InitQueuePriority.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._InitQueuePriority.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._InitOperationMode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723bs_set_hal_ops(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalFunc = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20
  tail call void @rtl8723b_set_hal_ops(ptr noundef %HalFunc) #5
  %hal_init = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %hal_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rtl8723bs_hal_init, ptr %hal_init, align 4
  %hal_deinit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 3
  %1 = ptrtoint ptr %hal_deinit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rtl8723bs_hal_deinit, ptr %hal_deinit, align 4
  %inirp_init = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %inirp_init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rtl8723bs_inirp_init, ptr %inirp_init, align 4
  %inirp_deinit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 6
  %3 = ptrtoint ptr %inirp_deinit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rtl8723bs_inirp_deinit, ptr %inirp_deinit, align 4
  %init_xmit_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %init_xmit_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rtl8723bs_init_xmit_priv, ptr %init_xmit_priv, align 4
  %free_xmit_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 9
  %5 = ptrtoint ptr %free_xmit_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rtl8723bs_free_xmit_priv, ptr %free_xmit_priv, align 4
  %init_recv_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 10
  %6 = ptrtoint ptr %init_recv_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rtl8723bs_init_recv_priv, ptr %init_recv_priv, align 4
  %free_recv_priv = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 11
  %7 = ptrtoint ptr %free_recv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rtl8723bs_free_recv_priv, ptr %free_recv_priv, align 4
  %init_default_value = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 15
  %8 = ptrtoint ptr %init_default_value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rtl8723bs_init_default_value, ptr %init_default_value, align 4
  %intf_chip_configure = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 16
  %9 = ptrtoint ptr %intf_chip_configure to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rtl8723bs_interface_configure, ptr %intf_chip_configure, align 4
  %read_adapter_info = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 17
  %10 = ptrtoint ptr %read_adapter_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ReadAdapterInfo8723BS, ptr %read_adapter_info, align 4
  %enable_interrupt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 18
  %11 = ptrtoint ptr %enable_interrupt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @EnableInterrupt8723BSdio, ptr %enable_interrupt, align 4
  %disable_interrupt = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 19
  %12 = ptrtoint ptr %disable_interrupt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @DisableInterrupt8723BSdio, ptr %disable_interrupt, align 4
  %check_ips_status = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 20
  %13 = ptrtoint ptr %check_ips_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @CheckIPSStatus, ptr %check_ips_status, align 4
  %SetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 30
  %14 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @SetHwReg8723BS, ptr %SetHwRegHandler, align 4
  %GetHwRegHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 31
  %15 = ptrtoint ptr %GetHwRegHandler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @GetHwReg8723BS, ptr %GetHwRegHandler, align 4
  %SetHwRegHandlerWithBuf = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 32
  %16 = ptrtoint ptr %SetHwRegHandlerWithBuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @SetHwRegWithBuf8723B, ptr %SetHwRegHandlerWithBuf, align 4
  %GetHalDefVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 33
  %17 = ptrtoint ptr %GetHalDefVarHandler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @GetHalDefVar8723BSDIO, ptr %GetHalDefVarHandler, align 4
  %SetHalDefVarHandler = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 34
  %18 = ptrtoint ptr %SetHalDefVarHandler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @SetHalDefVar8723BSDIO, ptr %SetHalDefVarHandler, align 4
  %hal_xmit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 43
  %19 = ptrtoint ptr %hal_xmit to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rtl8723bs_hal_xmit, ptr %hal_xmit, align 4
  %mgnt_xmit = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 44
  %20 = ptrtoint ptr %mgnt_xmit to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rtl8723bs_mgnt_xmit, ptr %mgnt_xmit, align 4
  %hal_xmitframe_enqueue = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 20, i32 45
  %21 = ptrtoint ptr %hal_xmitframe_enqueue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rtl8723bs_hal_xmitframe_enqueue, ptr %hal_xmitframe_enqueue, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_hal_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bs_hal_init(ptr noundef %padapter) #0 align 64 {
entry:
  %tmpvalue.i = alloca i8, align 1
  %NavUpper = alloca i32, align 4
  %cpwm_orig = alloca i8, align 1
  %cpwm_now = alloca i8, align 1
  %bMacPwrCtrlOn = alloca i8, align 1
  %h2cCmdBuf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %NavUpper) #5
  %0 = ptrtoint ptr %NavUpper to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 30000, ptr %NavUpper, align 4
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %1 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %HalData, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %3 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvobj, align 4
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 26
  %5 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bips_processing, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %entry
  %pre_ips_type = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 28
  %7 = ptrtoint ptr %pre_ips_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pre_ips_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp7 = icmp eq i8 %8, 0
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpwm_orig) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cpwm_now) #5
  %9 = ptrtoint ptr %cpwm_now to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %cpwm_now, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bMacPwrCtrlOn) #5
  %10 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bMacPwrCtrlOn, align 1
  %11 = ptrtoint ptr %cpwm_orig to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cpwm_orig, align 1
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 41, ptr noundef nonnull %cpwm_orig) #5
  %call = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860416) #5
  %12 = and i8 %call, -128
  %13 = xor i8 %12, -64
  %call15 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 270860416, i8 noundef zeroext %13) #5
  %14 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvobj, align 4
  %tog = getelementptr inbounds %struct.dvobj_priv, ptr %15, i32 0, i32 22, i32 3
  %16 = ptrtoint ptr %tog to i32
  call void @__asan_store1_noabort(i32 %16)
  store volatile i8 %12, ptr %tog, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #5
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 41, ptr noundef nonnull %cpwm_now) #5
  %19 = ptrtoint ptr %cpwm_orig to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cpwm_orig, align 1
  %21 = ptrtoint ptr %cpwm_now to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cpwm_now, align 1
  %xor228 = xor i8 %22, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor228)
  %tobool25.not = icmp sgt i8 %xor228, -1
  br i1 %tobool25.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %23, %17
  %call27 = call i32 @jiffies_to_msecs(i32 noundef %sub) #5
  %cmp28 = icmp ugt i32 %call27, 100
  br i1 %cmp28, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @rtl8723b_set_FwPwrModeInIPS_cmd(ptr noundef %padapter, i8 noundef zeroext 0) #5
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 66, ptr noundef nonnull %bMacPwrCtrlOn) #5
  call void @hal_btcoex_InitHwConfig(ptr noundef %padapter, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bMacPwrCtrlOn) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpwm_now) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cpwm_orig) #5
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %entry.if.end32_crit_edge
  %call33 = tail call fastcc zeroext i8 @_InitPowerOn_8723BS(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %cmp35 = icmp eq i8 %call33, 0
  br i1 %cmp35, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call39 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1232, i8 noundef zeroext 0) #5
  %call40 = tail call i32 @rtl8723b_FirmwareDownload(ptr noundef %padapter, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 1
  %bFWReady44 = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 51
  br i1 %cmp41.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %bFWReady44 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bFWReady44, align 1
  %fw_ractrl = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 103
  %25 = ptrtoint ptr %fw_ractrl to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fw_ractrl, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %26 = ptrtoint ptr %bFWReady44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bFWReady44, align 1
  %fw_ractrl45 = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 103
  %27 = ptrtoint ptr %fw_ractrl45 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fw_ractrl45, align 2
  tail call void @rtl8723b_InitializeFirmwareVars(ptr noundef %padapter) #5
  %reg_rfoff = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 16
  %28 = ptrtoint ptr %reg_rfoff to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_rfoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool47.not = icmp eq i8 %29, 0
  br i1 %tobool47.not, label %if.else.if.end49_crit_edge, label %if.then48

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rf_pwrstate = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 53
  %30 = ptrtoint ptr %rf_pwrstate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %rf_pwrstate, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else.if.end49_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpvalue.i) #5
  %31 = ptrtoint ptr %tmpvalue.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %tmpvalue.i, align 1, !annotation !10
  %32 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %HalData, align 8
  %34 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvobj, align 4
  call void @EFUSE_ShadowRead(ptr noundef %padapter, i8 noundef zeroext 1, i16 noundef zeroext 123, ptr noundef nonnull %tmpvalue.i) #5
  %36 = ptrtoint ptr %tmpvalue.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tmpvalue.i, align 1
  %38 = and i8 %37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.end49.if.else.i_crit_edge, label %land.lhs.true.i

if.end49.if.else.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end49
  %reg_pdnmode.i = getelementptr inbounds %struct.dvobj_priv, ptr %35, i32 0, i32 22, i32 17
  %39 = ptrtoint ptr %reg_pdnmode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg_pdnmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool2.not.i = icmp eq i8 %40, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.HalDetectPwrDownMode.exit_crit_edge

land.lhs.true.i.HalDetectPwrDownMode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %HalDetectPwrDownMode.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end49.if.else.i_crit_edge
  br label %HalDetectPwrDownMode.exit

HalDetectPwrDownMode.exit:                        ; preds = %if.else.i, %land.lhs.true.i.HalDetectPwrDownMode.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.HalDetectPwrDownMode.exit_crit_edge ]
  %pwrdown3.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 121
  %41 = ptrtoint ptr %pwrdown3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink.i, ptr %pwrdown3.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpvalue.i) #5
  %42 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %HalData, align 8
  %rf_chip.i = getelementptr inbounds %struct.hal_com_data, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %rf_chip.i, align 8
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 10
  %45 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %CurrentChannel, align 8
  %call51 = call i32 @PHY_MACConfig8723B(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 1
  br i1 %cmp52.not, label %if.end55, label %HalDetectPwrDownMode.exit.cleanup_crit_edge

HalDetectPwrDownMode.exit.cleanup_crit_edge:      ; preds = %HalDetectPwrDownMode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %HalDetectPwrDownMode.exit
  %call56 = call i32 @PHY_BBConfig8723B(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 1
  br i1 %cmp57.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %call61 = call i32 @PHY_RFConfig8723B(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 1
  br i1 %cmp62.not, label %if.end65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %call66 = call i32 @rtw_hal_read_rfreg(ptr noundef %padapter, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #5
  %RfRegChnlVal = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 100
  %46 = ptrtoint ptr %RfRegChnlVal to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call66, ptr %RfRegChnlVal, align 8
  %call67 = call i32 @rtw_hal_read_rfreg(ptr noundef %padapter, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #5
  %arrayidx69 = getelementptr %struct.hal_com_data, ptr %2, i32 0, i32 100, i32 1
  %47 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call67, ptr %arrayidx69, align 4
  %48 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %HalData, align 8
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %50 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i231 = icmp eq i8 %51, 0
  %OutEpQueueSel.i = getelementptr inbounds %struct.hal_com_data, ptr %49, i32 0, i32 123
  %52 = ptrtoint ptr %OutEpQueueSel.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %OutEpQueueSel.i, align 4
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool1.not.i = icmp eq i8 %54, 0
  %cond.i = select i1 %tobool.not.i231, i32 12, i32 48
  %spec.select.i = select i1 %tobool1.not.i, i32 0, i32 %cond.i
  %55 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool7.not.i = icmp eq i8 %55, 0
  %cond11.i = select i1 %tobool.not.i231, i32 2, i32 32
  %numLQ.0.i = select i1 %tobool7.not.i, i32 0, i32 %cond11.i
  %56 = and i8 %53, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool16.not.i = icmp eq i8 %56, 0
  %numNQ.0.i = select i1 %tobool16.not.i, i32 0, i32 %cond11.i
  %57 = add nuw nsw i32 %numLQ.0.i, %spec.select.i
  %58 = add nuw nsw i32 %57, %numNQ.0.i
  %sub23.i = sub nuw nsw i32 247, %58
  %conv25.i = trunc i32 %numNQ.0.i to i8
  %call.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 532, i8 noundef zeroext %conv25.i) #5
  %shl.i = shl nuw nsw i32 %numLQ.0.i, 8
  %or.i = or i32 %shl.i, %spec.select.i
  %and28.i = shl nuw nsw i32 %sub23.i, 16
  %shl29.i = and i32 %and28.i, 16711680
  %or30.i = or i32 %shl29.i, %or.i
  %or31.i = or i32 %or30.i, -2147483648
  %call32.i = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 512, i32 noundef %or31.i) #5
  %conv33.i = trunc i32 %spec.select.i to i8
  %conv35.i = trunc i32 %numLQ.0.i to i8
  %conv36.i = trunc i32 %sub23.i to i8
  call void @rtw_hal_set_sdio_tx_max_length(ptr noundef %padapter, i8 noundef zeroext %conv33.i, i8 noundef zeroext %conv25.i, i8 noundef zeroext %conv35.i, i8 noundef zeroext %conv36.i) #5
  %add.i.i = sub nuw nsw i32 248, %58
  %add2.i.i = add nuw nsw i32 %add.i.i, %spec.select.i
  %59 = lshr exact i32 %add2.i.i, 1
  %shl.i.i = shl nuw nsw i32 %add2.i.i, 7
  %or.i.i = or i32 %shl.i.i, %59
  %conv6.i.i = trunc i32 %or.i.i to i16
  %add10.i.i = add nuw nsw i32 %add.i.i, %numNQ.0.i
  %60 = lshr exact i32 %add10.i.i, 1
  %shl14.i.i = shl nuw nsw i32 %add10.i.i, 7
  %or16.i.i = or i32 %shl14.i.i, %60
  %conv17.i.i = trunc i32 %or16.i.i to i16
  %add21.i.i = add nuw nsw i32 %add.i.i, %numLQ.0.i
  %61 = lshr exact i32 %add21.i.i, 1
  %shl25.i.i = shl nuw nsw i32 %add21.i.i, 7
  %or27.i.i = or i32 %shl25.i.i, %61
  %conv28.i.i = trunc i32 %or27.i.i to i16
  %call.i.i = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 536, i16 noundef zeroext %conv6.i.i) #5
  %call29.i.i = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 538, i16 noundef zeroext %conv17.i.i) #5
  %call30.i.i = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 540, i16 noundef zeroext %conv28.i.i) #5
  %call.i232 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1060, i8 noundef zeroext -8) #5
  %call1.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1061, i8 noundef zeroext -8) #5
  %call2.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1117, i8 noundef zeroext -8) #5
  %call3.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 276, i8 noundef zeroext -8) #5
  %call4.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 521, i8 noundef zeroext -8) #5
  %call70 = call i32 @rtl8723b_InitLLTTable(ptr noundef %padapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 1
  br i1 %cmp71.not, label %if.end74, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end74:                                         ; preds = %if.end65
  call fastcc void @_InitQueuePriority(ptr noundef %padapter)
  %call.i233 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 278, i16 noundef zeroext 16255) #5
  %call.i234 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 260, i8 noundef zeroext 17) #5
  %call.i235 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1551, i8 noundef zeroext 4) #5
  call void @hal_init_macaddr(ptr noundef %padapter) #5
  call fastcc void @_InitNetworkType(ptr noundef %padapter)
  call fastcc void @_InitWMACSetting(ptr noundef %padapter)
  call fastcc void @_InitAdaptiveCtrl(ptr noundef %padapter)
  call fastcc void @_InitEDCA(ptr noundef %padapter)
  call fastcc void @_InitRetryFunction(ptr noundef %padapter)
  call fastcc void @_initSdioAggregationSetting(ptr noundef %padapter)
  call fastcc void @_InitOperationMode(ptr noundef %padapter)
  call void @rtl8723b_InitBeaconParameters(ptr noundef %padapter) #5
  call fastcc void @_InitInterrupt(ptr noundef %padapter)
  call void @_InitBurstPktLen_8723BS(ptr noundef %padapter) #5
  %call75 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1399, i8 noundef zeroext 3) #5
  %call76 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 2422, i8 noundef zeroext 0) #5
  %call77 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1216, i16 noundef zeroext 1024) #5
  %call78 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1218, i16 noundef zeroext 1024) #5
  call void @invalidate_cam_all(ptr noundef %padapter) #5
  %channel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 6
  %62 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %channel, align 1
  call void @rtw_hal_set_chnl_bw(ptr noundef %padapter, i8 noundef zeroext %63, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @rtl8723b_InitAntenna_Selection(ptr noundef %padapter) #5
  %call79 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1228, i32 noundef 33685503) #5
  %call80 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1059, i8 noundef zeroext -1) #5
  %call81 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 270860288, i32 noundef 0) #5
  call void @rtl8723b_InitHalDm(ptr noundef %padapter) #5
  %call82 = call zeroext i8 @HalQueryTxBufferStatus8723BSdio(ptr noundef %padapter) #5
  call void @HalQueryTxOQTBufferStatus8723BSdio(ptr noundef %padapter) #5
  %SdioTxOQTFreeSpace = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 136
  %64 = ptrtoint ptr %SdioTxOQTFreeSpace to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %SdioTxOQTFreeSpace, align 1
  %SdioTxOQTMaxFreeSpace = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 135
  %66 = ptrtoint ptr %SdioTxOQTMaxFreeSpace to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %SdioTxOQTMaxFreeSpace, align 4
  %call83 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 256) #5
  %67 = or i8 %call83, -64
  %call87 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 256, i8 noundef zeroext %67) #5
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 68, ptr noundef nonnull %NavUpper) #5
  %call88 = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1056) #5
  %or89 = or i32 %call88, 4096
  %call90 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1056, i32 noundef %or89) #5
  %rf_pwrstate91 = getelementptr inbounds %struct.dvobj_priv, ptr %4, i32 0, i32 22, i32 53
  %68 = ptrtoint ptr %rf_pwrstate91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rf_pwrstate91, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2cCmdBuf) #5
  %69 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dvobj, align 4
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 141
  call void @PHY_LCCalibrate_8723B(ptr noundef %odmpriv) #5
  %71 = ptrtoint ptr %h2cCmdBuf to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %h2cCmdBuf, align 1
  %call99 = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 109, i32 noundef 1, ptr noundef nonnull %h2cCmdBuf) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  br label %do.body100

do.body100:                                       ; preds = %if.end106.do.body100_crit_edge, %if.end74
  %call101 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 487) #5
  %73 = and i8 %call101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool104.not = icmp eq i8 %73, 0
  br i1 %tobool104.not, label %if.end106, label %do.body100.do.end112_crit_edge

do.body100.do.end112_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end112

if.end106:                                        ; preds = %do.body100
  call void @msleep(i32 noundef 50) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %sub108 = sub i32 %74, %72
  %call109 = call i32 @jiffies_to_msecs(i32 noundef %sub108) #5
  %cmp110 = icmp ult i32 %call109, 401
  br i1 %cmp110, label %if.end106.do.body100_crit_edge, label %if.end106.do.end112_crit_edge

if.end106.do.end112_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end112

if.end106.do.body100_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.end112:                                        ; preds = %if.end106.do.end112_crit_edge, %do.body100.do.end112_crit_edge
  call void @hal_btcoex_IQKNotify(ptr noundef %padapter, i8 noundef zeroext 1) #5
  %bips_processing113 = getelementptr inbounds %struct.dvobj_priv, ptr %70, i32 0, i32 22, i32 26
  %75 = ptrtoint ptr %bips_processing113 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bips_processing113, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool114 = icmp ne i8 %76, 0
  %EEPROMBluetoothAntNum = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 35
  %77 = ptrtoint ptr %EEPROMBluetoothAntNum to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %EEPROMBluetoothAntNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp117 = icmp eq i8 %78, 0
  %ant_path = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 116
  %79 = ptrtoint ptr %ant_path to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ant_path, align 8
  call void @PHY_IQCalibrate_8723B(ptr noundef %padapter, i1 noundef zeroext false, i1 noundef zeroext %tobool114, i1 noundef zeroext %cmp117, i8 noundef zeroext %80) #5
  %bIQKInitialized = getelementptr inbounds %struct.hal_com_data, ptr %2, i32 0, i32 141, i32 157, i32 58
  %81 = ptrtoint ptr %bIQKInitialized to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bIQKInitialized, align 4
  call void @hal_btcoex_IQKNotify(ptr noundef %padapter, i8 noundef zeroext 0) #5
  %82 = ptrtoint ptr %h2cCmdBuf to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %h2cCmdBuf, align 1
  %call123 = call i32 @FillH2CCmd8723B(ptr noundef %padapter, i8 noundef zeroext 109, i32 noundef 1, ptr noundef nonnull %h2cCmdBuf) #5
  call void @ODM_TXPowerTrackingCheck(ptr noundef %odmpriv) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2cCmdBuf) #5
  call void @hal_btcoex_InitHwConfig(ptr noundef %padapter, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %HalDetectPwrDownMode.exit.cleanup_crit_edge, %if.then43, %if.end32.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %call40, %if.then43 ], [ 1, %do.end112 ], [ 0, %if.end32.cleanup_crit_edge ], [ %call51, %HalDetectPwrDownMode.exit.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %NavUpper) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bs_hal_deinit(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %0 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvobj, align 4
  %hw_init_completed = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %2 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init_completed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else53, label %if.then

if.then:                                          ; preds = %entry
  %bips_processing = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 22, i32 26
  %4 = ptrtoint ptr %bips_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bips_processing, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else49, label %if.then3

if.then3:                                         ; preds = %if.then
  %netif_up = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 50
  %6 = ptrtoint ptr %netif_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %netif_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  tail call void @rtl8723b_set_FwPwrModeInIPS_cmd(ptr noundef %padapter, i8 noundef zeroext 3) #5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then5
  %cnt.0 = phi i32 [ 0, %if.then5 ], [ %inc, %do.body.do.body_crit_edge ]
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 460) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %cnt.0)
  %cmp = icmp ugt i32 %cnt.0, 98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp7.not = icmp eq i8 %call, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %cmp7.not, label %if.then12, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then12:                                        ; preds = %do.end
  %call13 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860416) #5
  %18 = and i8 %call13, -2
  %19 = xor i8 %18, -127
  %call18 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 270860416, i8 noundef zeroext %19) #5
  %20 = and i8 %19, -128
  %21 = xor i8 %20, -128
  %22 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvobj, align 4
  %tog = getelementptr inbounds %struct.dvobj_priv, ptr %23, i32 0, i32 22, i32 3
  %24 = ptrtoint ptr %tog to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 %21, ptr %tog, align 2
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %if.then12
  %cnt.1 = phi i32 [ 0, %if.then12 ], [ %inc26, %do.body24.do.body24_crit_edge ]
  %call25 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 256) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  %inc26 = add nuw nsw i32 %cnt.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %cnt.1)
  %cmp34 = icmp ugt i32 %cnt.1, 98
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call25)
  %cmp38.not = icmp eq i8 %call25, -22
  %or.cond80 = select i1 %cmp34, i1 true, i1 %cmp38.not
  br i1 %or.cond80, label %do.body24.if.end_crit_edge, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.body24.if.end_crit_edge:                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body24.if.end_crit_edge, %do.end.if.end_crit_edge
  %35 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dvobj, align 4
  %pre_ips_type = getelementptr inbounds %struct.dvobj_priv, ptr %36, i32 0, i32 22, i32 28
  %37 = ptrtoint ptr %pre_ips_type to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %pre_ips_type, align 4
  br label %if.end55

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %dbg_carddisable_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 11
  %38 = ptrtoint ptr %dbg_carddisable_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dbg_carddisable_cnt, align 4
  %inc44 = add i32 %39, 1
  store i32 %inc44, ptr %dbg_carddisable_cnt, align 4
  tail call fastcc void @CardDisableRTL8723BSdio(ptr noundef %padapter)
  %40 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dvobj, align 4
  %pre_ips_type47 = getelementptr inbounds %struct.dvobj_priv, ptr %41, i32 0, i32 22, i32 28
  %42 = ptrtoint ptr %pre_ips_type47 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %pre_ips_type47, align 4
  br label %if.end55

if.else49:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dbg_carddisable_cnt50 = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 11
  %43 = ptrtoint ptr %dbg_carddisable_cnt50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dbg_carddisable_cnt50, align 4
  %inc51 = add i32 %44, 1
  store i32 %inc51, ptr %dbg_carddisable_cnt50, align 4
  tail call fastcc void @CardDisableRTL8723BSdio(ptr noundef %padapter)
  br label %if.end55

if.else53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dbg_deinit_fail_cnt = getelementptr inbounds %struct.dvobj_priv, ptr %1, i32 0, i32 2, i32 10
  %45 = ptrtoint ptr %dbg_deinit_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dbg_deinit_fail_cnt, align 8
  %inc54 = add i32 %46, 1
  store i32 %inc54, ptr %dbg_deinit_fail_cnt, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.else49, %if.else, %if.end
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8723bs_inirp_init(ptr nocapture noundef readnone %padapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8723bs_inirp_deinit(ptr nocapture noundef readnone %padapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_init_xmit_priv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723bs_free_xmit_priv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_init_recv_priv(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723bs_free_recv_priv(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bs_init_default_value(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  tail call void @rtl8723b_init_default_value(ptr noundef %padapter) #5
  %SdioRxFIFOCnt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 137
  %2 = ptrtoint ptr %SdioRxFIFOCnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %SdioRxFIFOCnt, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bs_interface_configure(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %dvobj = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 3
  %2 = ptrtoint ptr %dvobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvobj, align 4
  %wifi_spec = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 48
  %4 = ptrtoint ptr %wifi_spec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wifi_spec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %RtOutPipe = getelementptr inbounds %struct.dvobj_priv, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %RtOutPipe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %RtOutPipe, align 8
  %arrayidx2 = getelementptr %struct.dvobj_priv, ptr %3, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.dvobj_priv, ptr %3, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %arrayidx4, align 8
  %9 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 124
  %. = select i1 %tobool.not, i8 3, i8 2
  %.27 = select i1 %tobool.not, i8 7, i8 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %., ptr %9, align 1
  %OutEpQueueSel9 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 123
  %11 = ptrtoint ptr %OutEpQueueSel9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.27, ptr %OutEpQueueSel9, align 4
  %call = tail call zeroext i1 @Hal_MappingOutPipe(ptr noundef %padapter, i8 noundef zeroext %.) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadAdapterInfo8723BS(ptr noundef %padapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @GetEEPROMSize8723B(ptr noundef %padapter) #5
  %EepromAddressSize = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 26
  %0 = ptrtoint ptr %EepromAddressSize to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %EepromAddressSize, align 8
  %hw_init_completed.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 27
  %1 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call fastcc zeroext i8 @_InitPowerOn_8723BS(ptr noundef %padapter) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call1.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 78) #5
  %3 = or i8 %call1.i, 64
  %call3.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 78, i8 noundef zeroext %3) #5
  %call.i.i = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 52) #5
  %and.i.i = and i32 %call.i.i, -769
  %call1.i.i = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 52, i32 noundef %and.i.i) #5
  %HalData.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %4 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %HalData.i.i, align 8
  %rf_chip.i.i = getelementptr inbounds %struct.hal_com_data, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %rf_chip.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %rf_chip.i.i, align 8
  %eeprompriv.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15
  %call.i1.i = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 10) #5
  %and.i2.i = lshr i8 %call.i1.i, 4
  %and.lobit.i.i = and i8 %and.i2.i, 1
  %EepromOrEfuse.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 3
  %7 = ptrtoint ptr %EepromOrEfuse.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and.lobit.i.i, ptr %EepromOrEfuse.i.i, align 1
  %8 = lshr i8 %call.i1.i, 5
  %.lobit.i.i = and i8 %8, 1
  %9 = xor i8 %.lobit.i.i, 1
  %10 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %eeprompriv.i.i, align 4
  %efuse_eeprom_data.i.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7
  tail call void @Hal_InitPGData(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i) #5
  tail call void @Hal_EfuseParseIDCode(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i) #5
  %11 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.i.i = icmp ne i8 %12, 0
  tail call void @Hal_EfuseParseEEPROMVer_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool.i.i.i) #5
  %13 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.i.i.i = icmp ne i8 %14, 0
  br i1 %tobool2.i.i.i, label %for.body.preheader.i.i.i.i, label %if.else.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep.i.i.i.i = getelementptr i8, ptr %padapter, i32 16704
  %15 = call ptr @memcpy(ptr %uglygep.i.i.i.i, ptr @__const.Hal_EfuseParseMACAddr_8723BS.sMacAddr, i32 6)
  br label %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mac_addr4.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 15, i32 4
  %arrayidx5.i.i.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 282
  %16 = call ptr @memcpy(ptr %mac_addr4.i.i.i.i, ptr %arrayidx5.i.i.i.i, i32 6)
  br label %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i

Hal_EfuseParseMACAddr_8723BS.exit.i.i.i:          ; preds = %if.else.i.i.i.i, %for.body.preheader.i.i.i.i
  tail call void @Hal_EfuseParseTxPowerInfo_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool2.i.i.i) #5
  %17 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not.i.i.i = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %HalData.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %HalData.i.i, align 8
  br i1 %tobool6.not.i.i.i, label %if.then.i.i.i.i, label %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i._ReadPROMContent.exit.i_crit_edge

Hal_EfuseParseMACAddr_8723BS.exit.i.i.i._ReadPROMContent.exit.i_crit_edge: ; preds = %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_ReadPROMContent.exit.i

if.then.i.i.i.i:                                  ; preds = %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.i.i = getelementptr %struct.adapter, ptr %padapter, i32 0, i32 15, i32 7, i32 193
  %21 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %23 = lshr i8 %22, 5
  br label %_ReadPROMContent.exit.i

_ReadPROMContent.exit.i:                          ; preds = %if.then.i.i.i.i, %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i._ReadPROMContent.exit.i_crit_edge
  %.sink.i.i.i.i = phi i8 [ %23, %if.then.i.i.i.i ], [ 0, %Hal_EfuseParseMACAddr_8723BS.exit.i.i.i._ReadPROMContent.exit.i_crit_edge ]
  %24 = getelementptr inbounds %struct.hal_com_data, ptr %20, i32 0, i32 87
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink.i.i.i.i, ptr %24, align 1
  %26 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool8.i.i.i = icmp ne i8 %27, 0
  tail call void @Hal_EfuseParsePackageType_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool8.i.i.i) #5
  %28 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.i.i.i = icmp ne i8 %29, 0
  tail call void @Hal_EfuseParseBTCoexistInfo_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool10.i.i.i) #5
  %30 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.i.i.i = icmp ne i8 %31, 0
  tail call void @Hal_EfuseParseChnlPlan_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool12.i.i.i) #5
  %32 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.i.i.i = icmp ne i8 %33, 0
  tail call void @Hal_EfuseParseXtal_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool14.i.i.i) #5
  %34 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eeprompriv.i.i, align 4
  tail call void @Hal_EfuseParseThermalMeter_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i8 noundef zeroext %35) #5
  %36 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool17.i.i.i = icmp ne i8 %37, 0
  tail call void @Hal_EfuseParseAntennaDiversity_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool17.i.i.i) #5
  %38 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool19.i.i.i = icmp ne i8 %39, 0
  tail call void @Hal_EfuseParseCustomerID_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool19.i.i.i) #5
  %40 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool21.i.i.i = icmp ne i8 %41, 0
  tail call void @Hal_EfuseParseVoltage_8723B(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool21.i.i.i) #5
  %42 = ptrtoint ptr %eeprompriv.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %eeprompriv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool23.i.i.i = icmp ne i8 %43, 0
  tail call void @Hal_ReadRFGainOffset(ptr noundef %padapter, ptr noundef %efuse_eeprom_data.i.i.i, i1 noundef zeroext %tobool23.i.i.i) #5
  %44 = ptrtoint ptr %hw_init_completed.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_init_completed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not.i = icmp eq i8 %45, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %_ReadPROMContent.exit.i._ReadAdapterInfo8723BS.exit_crit_edge

_ReadPROMContent.exit.i._ReadAdapterInfo8723BS.exit_crit_edge: ; preds = %_ReadPROMContent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_ReadAdapterInfo8723BS.exit

if.then6.i:                                       ; preds = %_ReadPROMContent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 103, i8 noundef zeroext 0) #5
  tail call fastcc void @CardDisableRTL8723BSdio(ptr noundef %padapter) #5
  br label %_ReadAdapterInfo8723BS.exit

_ReadAdapterInfo8723BS.exit:                      ; preds = %if.then6.i, %_ReadPROMContent.exit.i._ReadAdapterInfo8723BS.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @EnableInterrupt8723BSdio(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @DisableInterrupt8723BSdio(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @CheckIPSStatus(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SetHwReg8723BS(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %variable, label %sw.default [
    i8 40, label %sw.bb
    i8 81, label %sw.bb3
    i8 39, label %entry.sw.epilog_crit_edge
    i8 80, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -63
  %call = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 270860416, i8 noundef zeroext %3) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 143) #5
  %4 = or i8 %call4, 16
  %call7 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 143, i8 noundef zeroext %4) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8723b_hal_dm_in_lps(ptr noundef %padapter) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @SetHwReg8723B(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @GetHwReg8723BS(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %variable, label %sw.default [
    i8 41, label %sw.bb
    i8 82, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 270860325) #5
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call, ptr %val, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 136) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call2, ptr %val, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @GetHwReg8723B(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %val) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SetHwRegWithBuf8723B(ptr noundef %padapter, i8 noundef zeroext %variable, ptr noundef %pbuf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %variable)
  %cond = icmp eq i8 %variable, 69
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1 = trunc i32 %len to i16
  tail call void @C2HPacketHandler_8723B(ptr noundef %padapter, ptr noundef %pbuf, i16 noundef zeroext %conv1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @GetHalDefVar8723BSDIO(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %eVariable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %eVariable, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge3
    i32 17, label %sw.bb
  ]

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %pValue, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i8 @GetHalDefVar8723B(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3
  %bResult.0 = phi i8 [ %call, %sw.default ], [ 1, %sw.bb ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge3 ]
  ret i8 %bResult.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @SetHalDefVar8723BSDIO(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @SetHalDefVar8723B(ptr noundef %Adapter, i32 noundef %eVariable, ptr noundef %pValue) #5
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_hal_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_mgnt_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723bs_hal_xmitframe_enqueue(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_set_FwPwrModeInIPS_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_InitHwConfig(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_InitPowerOn_8723BS(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  %bMacPwrCtrlOn.i = alloca i8, align 1
  %bMacPwrCtrlOn4.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bMacPwrCtrlOn.i) #5
  %0 = ptrtoint ptr %bMacPwrCtrlOn.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bMacPwrCtrlOn.i, align 1, !annotation !10
  call void @rtw_hal_get_hwreg(ptr noundef %padapter, i8 noundef zeroext 66, ptr noundef nonnull %bMacPwrCtrlOn.i) #5
  %1 = ptrtoint ptr %bMacPwrCtrlOn.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bMacPwrCtrlOn.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.CardEnable.exit.thread_crit_edge

entry.CardEnable.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %CardEnable.exit.thread

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 28, i8 noundef zeroext 0) #5
  %call1.i = call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %padapter, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @rtl8723B_card_enable_flow) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call1.i)
  %cmp.i = icmp eq i8 %call1.i, 1
  br i1 %cmp.i, label %if.then3.i, label %CardEnable.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bMacPwrCtrlOn4.i) #5
  %3 = ptrtoint ptr %bMacPwrCtrlOn4.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bMacPwrCtrlOn4.i, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 66, ptr noundef nonnull %bMacPwrCtrlOn4.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bMacPwrCtrlOn4.i) #5
  br label %CardEnable.exit.thread

CardEnable.exit.thread:                           ; preds = %if.then3.i, %entry.CardEnable.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bMacPwrCtrlOn.i) #5
  br label %if.end

CardEnable.exit:                                  ; preds = %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bMacPwrCtrlOn.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i)
  %tobool.not = icmp eq i8 %call1.i, 0
  br i1 %tobool.not, label %CardEnable.exit.cleanup_crit_edge, label %CardEnable.exit.if.end_crit_edge

CardEnable.exit.if.end_crit_edge:                 ; preds = %CardEnable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

CardEnable.exit.cleanup_crit_edge:                ; preds = %CardEnable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %CardEnable.exit.if.end_crit_edge, %CardEnable.exit.thread
  %call1 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 73) #5
  %4 = or i8 %call1, 2
  %call3 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 73, i8 noundef zeroext %4) #5
  %call4 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 99) #5
  %5 = or i8 %call4, 2
  %call8 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 99, i8 noundef zeroext %5) #5
  %call9 = call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 4) #5
  %6 = or i16 %call9, 16
  %call13 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 4, i16 noundef zeroext %6) #5
  %call14 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 256, i8 noundef zeroext 0) #5
  %call15 = call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 256) #5
  %7 = or i16 %call15, 1599
  %call19 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 256, i16 noundef zeroext %7) #5
  call void @hal_btcoex_PowerOnSetting(ptr noundef %padapter) #5
  %call20 = call zeroext i16 @rtw_read16(ptr noundef %padapter, i32 noundef 56) #5
  %8 = or i16 %call20, 2048
  %call24 = call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 56, i16 noundef zeroext %8) #5
  %call25 = call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 76) #5
  %or26 = or i32 %call25, 8388608
  %call27 = call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 76, i32 noundef %or26) #5
  %call28 = call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 100) #5
  %9 = and i8 %call28, -2
  %call31 = call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 100, i8 noundef zeroext %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %CardEnable.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end ], [ 0, %CardEnable.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723b_FirmwareDownload(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_InitializeFirmwareVars(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_MACConfig8723B(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_BBConfig8723B(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_RFConfig8723B(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723b_InitLLTTable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitQueuePriority(ptr noundef %Adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %OutEpNumber = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 124
  %2 = ptrtoint ptr %OutEpNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %OutEpNumber, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %OutEpQueueSel.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 123
  %5 = ptrtoint ptr %OutEpQueueSel.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %OutEpQueueSel.i, align 4
  %switch.tableidx = add i8 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %sw.bb._InitNormalChipOneOutEpPriority.exit_crit_edge

sw.bb._InitNormalChipOneOutEpPriority.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %_InitNormalChipOneOutEpPriority.exit

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table._InitQueuePriority, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %_InitNormalChipOneOutEpPriority.exit

_InitNormalChipOneOutEpPriority.exit:             ; preds = %switch.lookup, %sw.bb._InitNormalChipOneOutEpPriority.exit_crit_edge
  %value.0.i = phi i16 [ 0, %sw.bb._InitNormalChipOneOutEpPriority.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call.i.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #5
  %10 = and i16 %call.i.i, 7
  %or1832.i.i = mul nuw nsw i16 %value.0.i, 5456
  %11 = shl nuw i16 %value.0.i, 14
  %or2233.i.i = or i16 %10, %11
  %or2434.i.i = or i16 %or2233.i.i, %or1832.i.i
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %OutEpQueueSel.i7 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 123
  %12 = ptrtoint ptr %OutEpQueueSel.i7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %OutEpQueueSel.i7, align 4
  %switch.tableidx23 = add i8 %13, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx23)
  %14 = icmp ult i8 %switch.tableidx23, 4
  br i1 %14, label %switch.lookup22, label %sw.bb1._InitNormalChipTwoOutEpPriority.exit_crit_edge

sw.bb1._InitNormalChipTwoOutEpPriority.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %_InitNormalChipTwoOutEpPriority.exit

switch.lookup22:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %15 = sext i8 %switch.tableidx23 to i32
  %switch.gep24 = getelementptr inbounds [4 x i16], ptr @switch.table._InitQueuePriority.1, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep24 to i32
  call void @__asan_load2_noabort(i32 %16)
  %switch.load25 = load i16, ptr %switch.gep24, align 2
  %17 = sext i8 %switch.tableidx23 to i32
  %switch.gep26 = getelementptr inbounds [4 x i16], ptr @switch.table._InitQueuePriority.2, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %switch.load27 = load i16, ptr %switch.gep26, align 2
  br label %_InitNormalChipTwoOutEpPriority.exit

_InitNormalChipTwoOutEpPriority.exit:             ; preds = %switch.lookup22, %sw.bb1._InitNormalChipTwoOutEpPriority.exit_crit_edge
  %valueHi.0.i = phi i16 [ 0, %sw.bb1._InitNormalChipTwoOutEpPriority.exit_crit_edge ], [ %switch.load25, %switch.lookup22 ]
  %valueLow.0.i = phi i16 [ 0, %sw.bb1._InitNormalChipTwoOutEpPriority.exit_crit_edge ], [ %switch.load27, %switch.lookup22 ]
  %wifi_spec.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 48
  %19 = ptrtoint ptr %wifi_spec.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wifi_spec.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %valueLow.0.valueHi.0.i = select i1 %tobool.not.i, i16 %valueLow.0.i, i16 %valueHi.0.i
  %valueHi.0.valueLow.0.i = select i1 %tobool.not.i, i16 %valueHi.0.i, i16 %valueLow.0.i
  %call.i.i11 = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #5
  %21 = and i16 %call.i.i11, 7
  %22 = shl nuw nsw i16 %valueLow.0.i, 8
  %23 = shl nuw nsw i16 %valueLow.0.valueHi.0.i, 10
  %or29.i.i = or i16 %23, %22
  %24 = shl nuw nsw i16 %valueHi.0.i, 6
  %or1030.i.i = or i16 %or29.i.i, %24
  %25 = shl nuw nsw i16 %valueHi.0.valueLow.0.i, 4
  %or1431.i.i = or i16 %or1030.i.i, %25
  %or1832.i.i12 = mul nuw i16 %valueHi.0.i, 20480
  %or2233.i.i13 = or i16 %21, %or1832.i.i12
  %or2434.i.i14 = or i16 %or1431.i.i, %or2233.i.i13
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wifi_spec.i16 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 48
  %26 = ptrtoint ptr %wifi_spec.i16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wifi_spec.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i17 = icmp eq i8 %27, 0
  %call.i.i18 = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 268) #5
  %28 = and i16 %call.i.i18, 7
  %or2233.i.i19 = select i1 %tobool.not.i17, i16 -2640, i16 -1616
  %or2434.i.i20 = or i16 %or2233.i.i19, %28
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %_InitNormalChipTwoOutEpPriority.exit, %_InitNormalChipOneOutEpPriority.exit
  %or2434.i.i20.sink = phi i16 [ %or2434.i.i20, %sw.bb2 ], [ %or2434.i.i14, %_InitNormalChipTwoOutEpPriority.exit ], [ %or2434.i.i, %_InitNormalChipOneOutEpPriority.exit ]
  %call26.i.i21 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 268, i16 noundef zeroext %or2434.i.i20.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_init_macaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitNetworkType(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 256) #5
  %and = and i32 %call, -196609
  %or = or i32 %and, 131072
  %call1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 256, i32 noundef %or) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitWMACSetting(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %ReceiveConfig = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1879072974, ptr %ReceiveConfig, align 4
  %call = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1544, i32 noundef 1879072974) #5
  %call9 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1568, i32 noundef -1) #5
  %call10 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1572, i32 noundef -1) #5
  %call11 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1700, i16 noundef zeroext -1) #5
  %call12 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1698, i16 noundef zeroext 1024) #5
  %call13 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1696, i16 noundef zeroext -1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitAdaptiveCtrl(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %padapter, i32 noundef 1088) #5
  %and = and i32 %call, -1048576
  %or = or i32 %and, 1048561
  %call1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1088, i32 noundef %or) #5
  %call2 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1064, i16 noundef zeroext 4112) #5
  %call3 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1066, i16 noundef zeroext 12336) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitEDCA(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1064, i16 noundef zeroext 4106) #5
  %call1 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1594, i16 noundef zeroext 4106) #5
  %call2 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1300, i16 noundef zeroext 4106) #5
  %call3 = tail call i32 @rtw_write16(ptr noundef %padapter, i32 noundef 1302, i16 noundef zeroext 4106) #5
  %call4 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1288, i32 noundef 6202411) #5
  %call5 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1292, i32 noundef 42063) #5
  %call6 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1284, i32 noundef 6202148) #5
  %call7 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 1280, i32 noundef 3121702) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitRetryFunction(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 1056) #5
  %0 = or i8 %call, -128
  %call2 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1056, i8 noundef zeroext %0) #5
  %call3 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1600, i8 noundef zeroext 64) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_initSdioAggregationSetting(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %call.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 641, i8 noundef zeroext 6) #5
  %call1.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 640, i8 noundef zeroext 6) #5
  %call.i3 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 268) #5
  %2 = or i8 %call.i3, 4
  %call2.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 268, i8 noundef zeroext %2) #5
  %call16.i = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 656, i8 noundef zeroext 14) #5
  %UsbRxHighSpeedMode = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 125
  %3 = ptrtoint ptr %UsbRxHighSpeedMode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %UsbRxHighSpeedMode, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitOperationMode(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_wireless_mode = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %cur_wireless_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_wireless_mode, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -2
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table._InitOperationMode, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %regBwOpMode.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 1539, i8 noundef zeroext %regBwOpMode.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_InitBeaconParameters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_InitInterrupt(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 292, i32 noundef 0) #5
  %call1 = tail call i32 @rtw_write32(ptr noundef %padapter, i32 noundef 288, i32 noundef 0) #5
  tail call void @InitInterrupt8723BSdio(ptr noundef %padapter) #5
  tail call void @InitSysInterrupt8723BSdio(ptr noundef %padapter) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_InitBurstPktLen_8723BS(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_cam_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_chnl_bw(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_InitAntenna_Selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_InitHalDm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HalQueryTxBufferStatus8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @HalQueryTxOQTBufferStatus8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_LCCalibrate_8723B(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FillH2CCmd8723B(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_IQKNotify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_IQCalibrate_8723B(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_TXPowerTrackingCheck(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hal_btcoex_PowerOnSetting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HalPwrSeqCmdParsing(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @EFUSE_ShadowRead(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_sdio_tx_max_length(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @InitInterrupt8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @InitSysInterrupt8723BSdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @CardDisableRTL8723BSdio(ptr noundef %padapter) unnamed_addr #0 align 64 {
entry:
  %bMacPwrCtrlOn = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bMacPwrCtrlOn) #5
  %call = tail call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %padapter, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @rtl8723B_enter_lps_flow) #5
  %call1 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1)
  %tobool.not = icmp sgt i8 %call1, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bFWReady = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 51
  %0 = ptrtoint ptr %bFWReady to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bFWReady, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtl8723b_FirmwareSelfReset(ptr noundef %padapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 3) #5
  %2 = and i8 %call4, -5
  %call8 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 3, i8 noundef zeroext %2) #5
  %call9 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 128, i8 noundef zeroext 0) #5
  %call10 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 29) #5
  %3 = and i8 %call10, -2
  %call14 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 29, i8 noundef zeroext %3) #5
  %call15 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef 29) #5
  %4 = or i8 %call15, 1
  %call18 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef 29, i8 noundef zeroext %4) #5
  %5 = ptrtoint ptr %bMacPwrCtrlOn to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bMacPwrCtrlOn, align 1
  call void @rtw_hal_set_hwreg(ptr noundef %padapter, i8 noundef zeroext 66, ptr noundef nonnull %bMacPwrCtrlOn) #5
  %call19 = call zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %padapter, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @rtl8723B_card_disable_flow) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bMacPwrCtrlOn) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_FirmwareSelfReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_init_default_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @Hal_MappingOutPipe(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetEEPROMSize8723B(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_InitPGData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseIDCode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseEEPROMVer_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseTxPowerInfo_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParsePackageType_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseBTCoexistInfo_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseChnlPlan_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseXtal_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseThermalMeter_8723B(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseAntennaDiversity_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseCustomerID_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_EfuseParseVoltage_8723B(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Hal_ReadRFGainOffset(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723b_hal_dm_in_lps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @SetHwReg8723B(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @GetHwReg8723B(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @C2HPacketHandler_8723B(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @GetHalDefVar8723B(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @SetHalDefVar8723B(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
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
!10 = !{!"auto-init"}
