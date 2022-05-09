; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_odm.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_odm.c"
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

@rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8723bs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtw_odm_dbg_comp_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rtl8723bs/core/rtw_odm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"odm.DebugComponents = 0x%016llx\0A\00", [63 x i8] zeroinitializer }, align 32
@odm_comp_str = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null, ptr null, ptr null, ptr @.str.63, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%cBIT%-2d %s\0A\00", [18 x i8] zeroinitializer }, align 32
@rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_odm_dbg_level_msg\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"odm.DebugLevel = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@odm_dbg_level_str = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [40 x i8] zeroinitializer }, align 32
@rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %s\0A\00", [25 x i8] zeroinitializer }, align 32
@rtw_odm_ability_msg.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_odm_ability_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"odm.SupportAbility = 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@odm_ability_str = internal constant { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr null, ptr @.str.85, ptr @.str.86, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.87, ptr @.str.88, ptr @.str.89], [52 x i8] zeroinitializer }, align 32
@rtw_odm_ability_msg.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.4, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_odm_adaptivity_parm_msg\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%10s %16s %8s %10s %11s %14s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TH_L2H_ini\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TH_EDCCA_HL_diff\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IGI_Base\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ForceEDCCA\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AdapEn_RSSI\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IGI_LowerBound\00", [17 x i8] zeroinitializer }, align 32
@rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.18, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"0x%-8x %-16d 0x%-6x %-10d %-11u %-14u\0A\00", [57 x i8] zeroinitializer }, align 32
@rtw_odm_get_perpkt_rssi.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_odm_get_perpkt_rssi\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RxRate = %s, RSSI_A = %d(%%), RSSI_B = %d(%%)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCK_1M\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCK_2M\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CCK5_5M\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CCK_11M\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFDM_6M\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFDM_9M\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_12M\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_18M\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_24M\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_36M\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_48M\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM_54M\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS0\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS1\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS2\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS3\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS4\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS5\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS6\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCS7\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ODM_COMP_DIG\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ODM_COMP_RA_MASK\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ODM_COMP_DYNAMIC_TXPWR\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_COMP_FA_CNT\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ODM_COMP_RSSI_MONITOR\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_COMP_CCK_PD\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ODM_COMP_ANT_DIV\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ODM_COMP_PWR_SAVE\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ODM_COMP_PWR_TRAIN\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ODM_COMP_RATE_ADAPTIVE\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ODM_COMP_PATH_DIV\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ODM_COMP_PSD\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ODM_COMP_DYNAMIC_PRICCA\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ODM_COMP_RXHP\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ODM_COMP_MP\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ODM_COMP_DYNAMIC_ATC\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ODM_COMP_EDCA_TURBO\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ODM_COMP_EARLY_MODE\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ODM_COMP_TX_PWR_TRACK\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ODM_COMP_RX_GAIN_TRACK\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ODM_COMP_CALIBRATION\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_COMP_COMMON\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ODM_COMP_INIT\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ODM_DBG_OFF\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_DBG_SERIOUS\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_DBG_WARNING\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ODM_DBG_LOUD\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ODM_DBG_TRACE\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ODM_BB_DIG\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ODM_BB_RA_MASK\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ODM_BB_DYNAMIC_TXPWR\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ODM_BB_FA_CNT\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ODM_BB_RSSI_MONITOR\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ODM_BB_CCK_PD\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ODM_BB_ANT_DIV\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_BB_PWR_SAVE\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ODM_BB_PWR_TRAIN\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ODM_BB_RATE_ADAPTIVE\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ODM_BB_PATH_DIV\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ODM_BB_PSD\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ODM_BB_RXHP\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ODM_BB_ADAPTIVITY\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ODM_BB_DYNAMIC_ATC\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ODM_MAC_EDCA_TURBO\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ODM_MAC_EARLY_MODE\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ODM_RF_TX_PWR_TRACK\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ODM_RF_RX_GAIN_TRACK\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ODM_RF_CALIBRATION\00", [45 x i8] zeroinitializer }, align 32
@switch.table.rtw_odm_get_perpkt_rssi = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 99, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"odm_comp_str\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 13, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 103, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 120, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"odm_dbg_level_str\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 82, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 123, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 139, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"odm_ability_str\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 50, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 158, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 161, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 192, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 14, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 15, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 16, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 17, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 18, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 19, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 20, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 21, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 22, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 23, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 24, i32 13 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 25, i32 13 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 26, i32 13 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 27, i32 13 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 28, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 29, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 30, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 31, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 38, i32 13 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 39, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 40, i32 13 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 44, i32 13 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 45, i32 13 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 84, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 85, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 86, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 87, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 88, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 51, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 52, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 53, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 54, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 55, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 56, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 57, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 58, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 59, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 60, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 61, i32 13 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 62, i32 13 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 63, i32 13 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 64, i32 13 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 65, i32 13 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 67, i32 13 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 68, i32 13 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 75, i32 13 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 76, i32 13 }
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [44 x i8] c"../drivers/staging/rtl8723bs/core/rtw_odm.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 77, i32 13 }
@___asan_gen_.369 = private unnamed_addr constant [37 x i8] c"switch.table.rtw_odm_get_perpkt_rssi\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @odm_comp_str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @odm_dbg_level_str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @odm_ability_str, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @switch.table.rtw_odm_get_perpkt_rssi], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odm_comp_str to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odm_dbg_level_str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odm_ability_str to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_odm_get_perpkt_rssi to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_dbg_comp_msg(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %dbg_comp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dbg_comp) #5
  %0 = ptrtoint ptr %dbg_comp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %dbg_comp, align 8, !annotation !171
  %call = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %adapter, i32 noundef 21, ptr noundef nonnull %dbg_comp) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_dbg_comp_msg, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 8
  %3 = ptrtoint ptr %dbg_comp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dbg_comp, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug345, ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef %4) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %pnetdev23 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end6
  %i.044 = phi i32 [ 0, %do.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @odm_comp_str, i32 0, i32 %i.044
  %5 = lshr i32 956039168, %i.044
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.not = icmp eq i32 %6, 0
  br i1 %tobool7.not.not, label %do.body10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_dbg_comp_msg, %if.then22)) #5
          to label %for.inc [label %if.then22], !srcloc !172

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pnetdev23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pnetdev23, align 8
  %shl = shl nuw i32 1, %i.044
  %conv = sext i32 %shl to i64
  %9 = ptrtoint ptr %dbg_comp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dbg_comp, align 8
  %and = and i64 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool24.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool24.not, i32 32, i32 43
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug346, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %cond, i32 noundef %i.044, ptr noundef %12) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %do.body10, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dbg_comp) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_get_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_dbg_comp_set(ptr noundef %adapter, i64 noundef %comps) local_unnamed_addr #3 align 64 {
entry:
  %comps.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %comps.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %comps, ptr %comps.addr, align 8
  %call = call zeroext i8 @rtw_hal_set_def_var(ptr noundef %adapter, i32 noundef 21, ptr noundef nonnull %comps.addr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_hal_set_def_var(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_dbg_level_msg(ptr nocapture noundef readnone %sel, ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %dbg_level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbg_level) #5
  %0 = ptrtoint ptr %dbg_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dbg_level, align 4, !annotation !171
  %call = call zeroext i8 @rtw_hal_get_def_var(ptr noundef %adapter, i32 noundef 22, ptr noundef nonnull %dbg_level) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_dbg_level_msg, %if.then)) #5
          to label %do.end6 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 8
  %3 = ptrtoint ptr %dbg_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dbg_level, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug347, ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %4) #5
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %pnetdev23 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end6
  %i.042 = phi i32 [ 0, %do.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr @odm_dbg_level_str, i32 0, i32 %i.042
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.042)
  %tobool7.not = icmp eq i32 %i.042, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %do.body10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_dbg_level_msg, %if.then22)) #5
          to label %for.inc [label %if.then22], !srcloc !172

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %pnetdev23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pnetdev23, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug348, ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %i.042, ptr noundef %8) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %do.body10, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbg_level) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_dbg_level_set(ptr noundef %adapter, i32 noundef %level) local_unnamed_addr #3 align 64 {
entry:
  %level.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %level.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %level.addr, align 4
  %call = call zeroext i8 @rtw_hal_set_def_var(ptr noundef %adapter, i32 noundef 22, ptr noundef nonnull %level.addr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_ability_msg(ptr nocapture noundef readnone %sel, ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %ability = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ability) #5
  %0 = ptrtoint ptr %ability to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ability, align 4
  call void @rtw_hal_get_hwreg(ptr noundef %adapter, i8 noundef zeroext 24, ptr noundef nonnull %ability) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_ability_msg.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_ability_msg, %if.then)) #5
          to label %do.end5 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %1 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetdev, align 8
  %3 = ptrtoint ptr %ability to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ability, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_ability_msg.__UNIQUE_ID_ddebug349, ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %4) #5
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %pnetdev22 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end5
  %i.043 = phi i32 [ 0, %do.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [27 x ptr], ptr @odm_ability_str, i32 0, i32 %i.043
  %5 = lshr i32 16547840, %i.043
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not.not = icmp eq i32 %6, 0
  br i1 %tobool6.not.not, label %do.body9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_ability_msg.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_ability_msg, %if.then21)) #5
          to label %for.inc [label %if.then21], !srcloc !172

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %pnetdev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pnetdev22, align 8
  %shl = shl nuw nsw i32 1, %i.043
  %9 = ptrtoint ptr %ability to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ability, align 4
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool23.not, i32 32, i32 43
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_ability_msg.__UNIQUE_ID_ddebug350, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %cond, i32 noundef %i.043, ptr noundef %12) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %do.body9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ability) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_get_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_ability_set(ptr noundef %adapter, i32 noundef %ability) local_unnamed_addr #3 align 64 {
entry:
  %ability.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ability.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ability, ptr %ability.addr, align 4
  call void @rtw_hal_set_hwreg(ptr noundef %adapter, i8 noundef zeroext 24, ptr noundef nonnull %ability.addr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_set_hwreg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_adaptivity_parm_msg(ptr nocapture noundef readnone %sel, ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_adaptivity_parm_msg, %if.then)) #5
          to label %do.body7 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #5
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_adaptivity_parm_msg, %if.then19)) #5
          to label %do.end31 [label %if.then19], !srcloc !172

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %pnetdev20 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %4 = ptrtoint ptr %pnetdev20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev20, align 8
  %TH_L2H_ini = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 94
  %6 = ptrtoint ptr %TH_L2H_ini to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %TH_L2H_ini, align 1
  %conv = zext i8 %7 to i32
  %TH_EDCCA_HL_diff = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 95
  %8 = ptrtoint ptr %TH_EDCCA_HL_diff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %TH_EDCCA_HL_diff, align 2
  %conv21 = sext i8 %9 to i32
  %IGI_Base = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 96
  %10 = ptrtoint ptr %IGI_Base to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %IGI_Base, align 1
  %conv22 = sext i8 %11 to i32
  %ForceEDCCA = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 98
  %12 = ptrtoint ptr %ForceEDCCA to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ForceEDCCA, align 1, !range !173
  %14 = zext i8 %13 to i32
  %AdapEn_RSSI = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 99
  %15 = ptrtoint ptr %AdapEn_RSSI to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %AdapEn_RSSI, align 2
  %conv25 = zext i8 %16 to i32
  %IGI_LowerBound = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 102
  %17 = ptrtoint ptr %IGI_LowerBound to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %IGI_LowerBound, align 1
  %conv26 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug352, ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %14, i32 noundef %conv25, i32 noundef %conv26) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then19, %do.body7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_odm_adaptivity_parm_set(ptr nocapture noundef readonly %adapter, i8 noundef signext %TH_L2H_ini, i8 noundef signext %TH_EDCCA_HL_diff, i8 noundef signext %IGI_Base, i1 noundef zeroext %ForceEDCCA, i8 noundef zeroext %AdapEn_RSSI, i8 noundef zeroext %IGI_LowerBound) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ForceEDCCA to i8
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %TH_L2H_ini1 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 94
  %2 = ptrtoint ptr %TH_L2H_ini1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %TH_L2H_ini, ptr %TH_L2H_ini1, align 1
  %TH_EDCCA_HL_diff2 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 95
  %3 = ptrtoint ptr %TH_EDCCA_HL_diff2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %TH_EDCCA_HL_diff, ptr %TH_EDCCA_HL_diff2, align 2
  %IGI_Base3 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 96
  %4 = ptrtoint ptr %IGI_Base3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %IGI_Base, ptr %IGI_Base3, align 1
  %ForceEDCCA4 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 98
  %5 = ptrtoint ptr %ForceEDCCA4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %ForceEDCCA4, align 1
  %AdapEn_RSSI6 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 99
  %6 = ptrtoint ptr %AdapEn_RSSI6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %AdapEn_RSSI, ptr %AdapEn_RSSI6, align 2
  %IGI_LowerBound7 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 102
  %7 = ptrtoint ptr %IGI_LowerBound7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %IGI_LowerBound, ptr %IGI_LowerBound7, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_odm_get_perpkt_rssi(ptr nocapture noundef readnone %sel, ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtw_odm_get_perpkt_rssi.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtw_odm_get_perpkt_rssi, %if.then)) #5
          to label %do.end157 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  %pnetdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 41
  %2 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnetdev, align 8
  %RxRate = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 79
  %4 = ptrtoint ptr %RxRate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %RxRate, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %5)
  %6 = icmp ult i8 %5, 19
  br i1 %6, label %switch.lookup, label %cond.false112

cond.false112:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %5)
  %cmp115 = icmp eq i8 %5, 19
  %cond = select i1 %cmp115, ptr @.str.40, ptr @.str.41
  br label %cond.end152

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %7 = sext i8 %5 to i32
  %switch.gep = getelementptr inbounds [19 x ptr], ptr @switch.table.rtw_odm_get_perpkt_rssi, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end152

cond.end152:                                      ; preds = %switch.lookup, %cond.false112
  %cond153 = phi ptr [ %cond, %cond.false112 ], [ %switch.load, %switch.lookup ]
  %RSSI_A = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 73
  %9 = ptrtoint ptr %RSSI_A to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RSSI_A, align 2
  %conv154 = zext i8 %10 to i32
  %RSSI_B = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 74
  %11 = ptrtoint ptr %RSSI_B to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %RSSI_B, align 1
  %conv155 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtw_odm_get_perpkt_rssi.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond153, i32 noundef %conv154, i32 noundef %conv155) #5
  br label %do.end157

do.end157:                                        ; preds = %cond.end152, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 99, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug345, !1, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 103, i32 4}
!8 = !{ptr @rtw_odm_dbg_comp_msg.__UNIQUE_ID_ddebug346, !7, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 120, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug347, !10, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 123, i32 4}
!15 = !{ptr @rtw_odm_dbg_level_msg.__UNIQUE_ID_ddebug348, !14, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 139, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtw_odm_ability_msg.__UNIQUE_ID_ddebug349, !17, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!20 = !{ptr @rtw_odm_ability_msg.__UNIQUE_ID_ddebug350, !21, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 142, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 158, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug351, !23, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!26 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 161, i32 2}
!34 = !{ptr @rtw_odm_adaptivity_parm_msg.__UNIQUE_ID_ddebug352, !33, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 192, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rtw_odm_get_perpkt_rssi.__UNIQUE_ID_ddebug353, !36, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!39 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.27, !36, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.28, !36, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.29, !36, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !36, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !36, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.32, !36, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.33, !36, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.34, !36, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.35, !36, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.36, !36, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.37, !36, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.38, !36, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.39, !36, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.40, !36, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.41, !36, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 14, i32 12}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 15, i32 12}
!64 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 16, i32 12}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 17, i32 12}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 18, i32 12}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 19, i32 12}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 20, i32 12}
!74 = !{ptr @.str.49, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 21, i32 12}
!76 = !{ptr @.str.50, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 22, i32 12}
!78 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 23, i32 12}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 24, i32 13}
!82 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 25, i32 13}
!84 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 26, i32 13}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 27, i32 13}
!88 = !{ptr @.str.56, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 28, i32 13}
!90 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 29, i32 13}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 30, i32 13}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 31, i32 13}
!96 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 38, i32 13}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 39, i32 13}
!100 = !{ptr @.str.62, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 40, i32 13}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 44, i32 13}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 45, i32 13}
!106 = !{ptr @odm_comp_str, !107, !"odm_comp_str", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 13, i32 27}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 84, i32 2}
!110 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 85, i32 2}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 86, i32 2}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 87, i32 2}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 88, i32 2}
!118 = !{ptr @odm_dbg_level_str, !119, !"odm_dbg_level_str", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 82, i32 27}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 51, i32 12}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 52, i32 12}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 53, i32 12}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 54, i32 12}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 55, i32 12}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 56, i32 12}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 57, i32 12}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 58, i32 12}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 59, i32 12}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 60, i32 12}
!140 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 61, i32 13}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 62, i32 13}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 63, i32 13}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 64, i32 13}
!148 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 65, i32 13}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 67, i32 13}
!152 = !{ptr @.str.86, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 68, i32 13}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 75, i32 13}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 76, i32 13}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 77, i32 13}
!160 = !{ptr @odm_ability_str, !161, !"odm_ability_str", i1 false, i1 false}
!161 = !{!"../drivers/staging/rtl8723bs/core/rtw_odm.c", i32 50, i32 27}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{i64 2148798302, i64 2148798307, i64 2148798320, i64 2148798364, i64 2148798398, i64 2148798419}
!173 = !{i8 0, i8 2}
