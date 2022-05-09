; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [22 x i64] [i64 20, i64 8, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_QueryBBReg_8723B(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %RegAddr) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %and = and i32 %call, %BitMask
  %shr = lshr i32 %and, %i.0.lcssa.i
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetBBReg_8723B(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %BitMask)
  %cmp.not = icmp eq i32 %BitMask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtw_read32(ptr noundef %Adapter, i32 noundef %RegAddr) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.05.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %neg = xor i32 %BitMask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %Data, %i.0.lcssa.i
  %and2 = and i32 %shl, %BitMask
  %or = or i32 %and2, %and
  br label %if.end

if.end:                                           ; preds = %phy_CalculateBitShift.exit, %entry.if.end_crit_edge
  %Data.addr.0 = phi i32 [ %or, %phy_CalculateBitShift.exit ], [ %Data, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef %RegAddr, i32 noundef %Data.addr.0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_QueryRFReg_8723B(ptr noundef %Adapter, i8 noundef zeroext %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %eRFPath to i32
  %call = tail call fastcc i32 @phy_RFSerialRead_8723B(ptr noundef %Adapter, i32 noundef %conv, i32 noundef %RegAddr)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %and = and i32 %call, %BitMask
  %shr = lshr i32 %and, %i.0.lcssa.i
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_RFSerialRead_8723B(ptr noundef %Adapter, i32 noundef %eRFPath, i32 noundef %Offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eRFPath)
  %cmp = icmp eq i32 %eRFPath, 0
  %. = select i1 %cmp, i32 2084, i32 2092
  %call7 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %Adapter, i32 noundef %., i32 noundef -1) #4
  %and8 = and i32 %call7, 8388607
  %and = shl i32 %Offset, 23
  %shl9 = and i32 %and, 2139095040
  %or10 = or i32 %and8, %shl9
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef %., i32 noundef -1, i32 noundef %or10) #4
  %call15 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %Adapter, i32 noundef 2084, i32 noundef -1) #4
  %and17 = and i32 %call15, 2147483647
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2084, i32 noundef -1, i32 noundef %and17) #4
  %or19 = or i32 %call15, -2147483648
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2084, i32 noundef -1, i32 noundef %or19) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 10737400) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #4
  br i1 %cmp, label %entry.if.end33_crit_edge, label %if.else25

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %eRFPath)
  %cmp26 = icmp eq i32 %eRFPath, 1
  br i1 %cmp26, label %if.else25.if.end33_crit_edge, label %if.else25.if.else37_crit_edge

if.else25.if.else37_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else37

if.else25.if.end33_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end33:                                         ; preds = %if.else25.if.end33_crit_edge, %entry.if.end33_crit_edge
  %.sink78 = phi i32 [ 2080, %entry.if.end33_crit_edge ], [ 2088, %if.else25.if.end33_crit_edge ]
  %call30 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %Adapter, i32 noundef %.sink78, i32 noundef 256) #4
  %RfPiEnable.0 = trunc i32 %call30 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %RfPiEnable.0)
  %tobool.not = icmp eq i8 %RfPiEnable.0, 0
  br i1 %tobool.not, label %if.end33.if.else37_crit_edge, label %if.then34

if.end33.if.else37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else37

if.then34:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %rfLSSIReadBackPi = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 %eRFPath, i32 6
  br label %if.end40

if.else37:                                        ; preds = %if.end33.if.else37_crit_edge, %if.else25.if.else37_crit_edge
  %rfLSSIReadBack = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 %eRFPath, i32 5
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then34
  %rfLSSIReadBack.sink = phi ptr [ %rfLSSIReadBack, %if.else37 ], [ %rfLSSIReadBackPi, %if.then34 ]
  %6 = ptrtoint ptr %rfLSSIReadBack.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfLSSIReadBack.sink, align 4
  %call39 = tail call i32 @rtw_hal_read_bbreg(ptr noundef %Adapter, i32 noundef %7, i32 noundef 1048575) #4
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetRFReg_8723B(ptr noundef %Adapter, i8 noundef zeroext %eRFPath, i32 noundef %RegAddr, i32 noundef %BitMask, i32 noundef %Data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %BitMask)
  %cmp.not = icmp eq i32 %BitMask, 1048575
  %.pre = zext i8 %eRFPath to i32
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @phy_RFSerialRead_8723B(ptr noundef %Adapter, i32 noundef %.pre, i32 noundef %RegAddr)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.05.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = shl nuw i32 1, %i.05.i
  %1 = and i32 %0, %BitMask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.phy_CalculateBitShift.exit_crit_edge

for.body.i.phy_CalculateBitShift.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.phy_CalculateBitShift.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.phy_CalculateBitShift.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_CalculateBitShift.exit

phy_CalculateBitShift.exit:                       ; preds = %for.inc.i.phy_CalculateBitShift.exit_crit_edge, %for.body.i.phy_CalculateBitShift.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.05.i, %for.body.i.phy_CalculateBitShift.exit_crit_edge ], [ 32, %for.inc.i.phy_CalculateBitShift.exit_crit_edge ]
  %neg = xor i32 %BitMask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %Data, %i.0.lcssa.i
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %phy_CalculateBitShift.exit, %entry.if.end_crit_edge
  %Data.addr.0 = phi i32 [ %or, %phy_CalculateBitShift.exit ], [ %Data, %entry.if.end_crit_edge ]
  %HalData.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %2 = ptrtoint ptr %HalData.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData.i, align 8
  %and.i = shl i32 %RegAddr, 20
  %shl.i = and i32 %and.i, 267386880
  %and1.i = and i32 %Data.addr.0, 1048575
  %or.i = or i32 %and1.i, %shl.i
  %rf3wireOffset.i = getelementptr %struct.hal_com_data, ptr %3, i32 0, i32 99, i32 %.pre, i32 3
  %4 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf3wireOffset.i, align 4
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef %5, i32 noundef -1, i32 noundef %or.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_MACConfig8723B(ptr nocapture noundef readonly %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  tail call void @ODM_ReadAndConfig_MP_8723B_MAC_REG(ptr noundef %odmpriv) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_ReadAndConfig_MP_8723B_MAC_REG(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_BBConfig8723B(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %PHYRegDef.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99
  %2 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2160, ptr %PHYRegDef.i, align 8
  %arrayidx2.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2160, ptr %arrayidx2.i, align 4
  %rfintfo.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 1
  %4 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo8.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 1
  %5 = ptrtoint ptr %rfintfo8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2148, ptr %rfintfo8.i, align 4
  %rfintfe.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 2
  %6 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2144, ptr %rfintfe.i, align 8
  %rfintfe13.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 2
  %7 = ptrtoint ptr %rfintfe13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2148, ptr %rfintfe13.i, align 4
  %rf3wireOffset.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 3
  %8 = ptrtoint ptr %rf3wireOffset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2112, ptr %rf3wireOffset.i, align 4
  %rf3wireOffset18.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 3
  %9 = ptrtoint ptr %rf3wireOffset18.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2116, ptr %rf3wireOffset18.i, align 4
  %rfHSSIPara2.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 4
  %10 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2084, ptr %rfHSSIPara2.i, align 8
  %rfHSSIPara223.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 4
  %11 = ptrtoint ptr %rfHSSIPara223.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2092, ptr %rfHSSIPara223.i, align 4
  %rfLSSIReadBack.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 5
  %12 = ptrtoint ptr %rfLSSIReadBack.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2208, ptr %rfLSSIReadBack.i, align 4
  %rfLSSIReadBack28.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 5
  %13 = ptrtoint ptr %rfLSSIReadBack28.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2212, ptr %rfLSSIReadBack28.i, align 4
  %rfLSSIReadBackPi.i = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 0, i32 6
  %14 = ptrtoint ptr %rfLSSIReadBackPi.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2232, ptr %rfLSSIReadBackPi.i, align 8
  %rfLSSIReadBackPi33.i = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 99, i32 1, i32 6
  %15 = ptrtoint ptr %rfLSSIReadBackPi33.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2236, ptr %rfLSSIReadBackPi33.i, align 4
  %call = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 2) #4
  %16 = or i16 %call, 8195
  %call4 = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 2, i16 noundef zeroext %16) #4
  %call5 = tail call i32 @rtw_write32(ptr noundef %Adapter, i32 noundef 2376, i32 noundef 640) #4
  %call6 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 31, i8 noundef zeroext 7) #4
  tail call void @msleep(i32 noundef 1) #4
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 1, i32 noundef 1048575, i32 noundef 1920) #4
  %call7 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 2, i8 noundef zeroext -29) #4
  %call8 = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 37, i8 noundef zeroext -128) #4
  %17 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %HalData, align 8
  tail call void @PHY_InitTxPowerLimit(ptr noundef %Adapter) #4
  %RegEnableTxPowerLimit.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 62
  %19 = ptrtoint ptr %RegEnableTxPowerLimit.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %RegEnableTxPowerLimit.i, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %entry.if.end.i_crit_edge [
    i8 1, label %entry.if.then.i_crit_edge
    i8 2, label %land.lhs.true.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %EEPROMRegulatory.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 31
  %22 = ptrtoint ptr %EEPROMRegulatory.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %EEPROMRegulatory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp8.i = icmp eq i8 %23, 1
  br i1 %cmp8.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %odmpriv.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 141
  %call.i = tail call i32 @ODM_ConfigRFWithHeaderFile(ptr noundef %odmpriv.i, i32 noundef 1, i32 noundef 0) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %odmpriv10.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 141
  %call11.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv10.i, i32 noundef 0) #4
  tail call void @PHY_InitTxPowerByRate(ptr noundef %Adapter) #4
  %RegEnableTxPowerByRate.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 14, i32 63
  %24 = ptrtoint ptr %RegEnableTxPowerByRate.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %RegEnableTxPowerByRate.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %25, label %if.end.i.phy_BB8723b_Config_ParaFile.exit_crit_edge [
    i8 1, label %if.end.i.if.then27.i_crit_edge
    i8 2, label %land.lhs.true22.i
  ]

if.end.i.if.then27.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

if.end.i.phy_BB8723b_Config_ParaFile.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_BB8723b_Config_ParaFile.exit

land.lhs.true22.i:                                ; preds = %if.end.i
  %EEPROMRegulatory23.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 31
  %27 = ptrtoint ptr %EEPROMRegulatory23.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %EEPROMRegulatory23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp25.not.i = icmp eq i8 %28, 2
  br i1 %cmp25.not.i, label %land.lhs.true22.i.phy_BB8723b_Config_ParaFile.exit_crit_edge, label %land.lhs.true22.i.if.then27.i_crit_edge

land.lhs.true22.i.if.then27.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

land.lhs.true22.i.phy_BB8723b_Config_ParaFile.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_BB8723b_Config_ParaFile.exit

if.then27.i:                                      ; preds = %land.lhs.true22.i.if.then27.i_crit_edge, %if.end.i.if.then27.i_crit_edge
  %call29.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv10.i, i32 noundef 3) #4
  %PhyRegPgValueType.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 141, i32 2
  %29 = ptrtoint ptr %PhyRegPgValueType.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %PhyRegPgValueType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp31.i = icmp eq i32 %30, 1
  br i1 %cmp31.i, label %if.then33.i, label %if.then27.i.if.end34.i_crit_edge

if.then27.i.if.end34.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @PHY_TxPowerByRateConfiguration(ptr noundef %Adapter) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.then27.i.if.end34.i_crit_edge
  %31 = ptrtoint ptr %RegEnableTxPowerLimit.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %RegEnableTxPowerLimit.i, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %32, label %if.end34.i.phy_BB8723b_Config_ParaFile.exit_crit_edge [
    i8 1, label %if.end34.i.if.then51.i_crit_edge
    i8 2, label %land.lhs.true46.i
  ]

if.end34.i.if.then51.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51.i

if.end34.i.phy_BB8723b_Config_ParaFile.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_BB8723b_Config_ParaFile.exit

land.lhs.true46.i:                                ; preds = %if.end34.i
  %EEPROMRegulatory47.i = getelementptr inbounds %struct.hal_com_data, ptr %18, i32 0, i32 31
  %34 = ptrtoint ptr %EEPROMRegulatory47.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %EEPROMRegulatory47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp49.i = icmp eq i8 %35, 1
  br i1 %cmp49.i, label %land.lhs.true46.i.if.then51.i_crit_edge, label %land.lhs.true46.i.phy_BB8723b_Config_ParaFile.exit_crit_edge

land.lhs.true46.i.phy_BB8723b_Config_ParaFile.exit_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_BB8723b_Config_ParaFile.exit

land.lhs.true46.i.if.then51.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51.i

if.then51.i:                                      ; preds = %land.lhs.true46.i.if.then51.i_crit_edge, %if.end34.i.if.then51.i_crit_edge
  tail call void @PHY_ConvertTxPowerLimitToPowerIndex(ptr noundef %Adapter) #4
  br label %phy_BB8723b_Config_ParaFile.exit

phy_BB8723b_Config_ParaFile.exit:                 ; preds = %if.then51.i, %land.lhs.true46.i.phy_BB8723b_Config_ParaFile.exit_crit_edge, %if.end34.i.phy_BB8723b_Config_ParaFile.exit_crit_edge, %land.lhs.true22.i.phy_BB8723b_Config_ParaFile.exit_crit_edge, %if.end.i.phy_BB8723b_Config_ParaFile.exit_crit_edge
  %call55.i = tail call i32 @ODM_ConfigBBWithHeaderFile(ptr noundef %odmpriv10.i, i32 noundef 1) #4
  %CrystalCap10 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 75
  %36 = ptrtoint ptr %CrystalCap10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %CrystalCap10, align 4
  %38 = and i8 %37, 63
  %conv13 = zext i8 %38 to i32
  %or15 = mul nuw nsw i32 %conv13, 65
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 44, i32 noundef 16773120, i32 noundef %or15) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_read16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hal_write_bbreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_RFConfig8723B(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PHY_RF6052_Config8723B(ptr noundef %Adapter) #4
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 916448) #4
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef 35841) #4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %__ms.03.i = phi i32 [ 200, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.03.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %phy_LCK_8723B.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

phy_LCK_8723B.exit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 917472) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PHY_RF6052_Config8723B(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerIndex(ptr noundef %Adapter, i32 noundef %PowerIndex, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %RFPath)
  %switch = icmp ult i8 %RFPath, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i8 %Rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %Rate, label %if.then.if.end_crit_edge [
    i8 2, label %sw.bb
    i8 4, label %sw.bb6
    i8 11, label %sw.bb7
    i8 22, label %sw.bb8
    i8 12, label %sw.bb9
    i8 18, label %sw.bb10
    i8 24, label %sw.bb11
    i8 36, label %sw.bb12
    i8 48, label %sw.bb13
    i8 72, label %sw.bb14
    i8 96, label %sw.bb15
    i8 108, label %sw.bb16
    i8 -128, label %sw.bb17
    i8 -127, label %sw.bb18
    i8 -126, label %sw.bb19
    i8 -125, label %sw.bb20
    i8 -124, label %sw.bb21
    i8 -123, label %sw.bb22
    i8 -122, label %sw.bb23
    i8 -121, label %sw.bb24
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3592, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2156, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2156, i32 noundef 16711680, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2156, i32 noundef -16777216, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3584, i32 noundef 255, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3584, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3584, i32 noundef 16711680, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3584, i32 noundef -16777216, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3588, i32 noundef 255, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3588, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3588, i32 noundef 16711680, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3588, i32 noundef -16777216, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3600, i32 noundef 255, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3600, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb19:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3600, i32 noundef 16711680, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb20:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3600, i32 noundef -16777216, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb21:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3604, i32 noundef 255, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb22:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3604, i32 noundef 65280, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3604, i32 noundef 16711680, i32 noundef %PowerIndex) #4
  br label %if.end

sw.bb24:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3604, i32 noundef -16777216, i32 noundef %PowerIndex) #4
  br label %if.end

if.end:                                           ; preds = %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @PHY_GetTxPowerIndex(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate, i32 noundef %BandWidth, i8 noundef zeroext %Channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %call = tail call zeroext i8 @PHY_GetTxPowerIndexBase(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate, i32 noundef %BandWidth, i8 noundef zeroext %Channel) #4
  %call1 = tail call signext i8 @PHY_GetTxPowerByRate(ptr noundef %padapter, i8 noundef zeroext 0, i8 noundef zeroext %Rate) #4
  %RegPwrTblSel = getelementptr inbounds %struct.adapter, ptr %padapter, i32 0, i32 14, i32 65
  %2 = ptrtoint ptr %RegPwrTblSel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RegPwrTblSel, align 1
  %conv = zext i8 %3 to i32
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %CurrentChannelBW, align 4
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %CurrentChannel, align 8
  %call2 = tail call signext i8 @phy_get_tx_pwr_lmt(ptr noundef %padapter, i32 noundef %conv, i32 noundef %5, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate, i8 noundef zeroext %7) #4
  %8 = tail call i8 @llvm.smin.i8(i8 %call1, i8 %call2)
  %add = add i8 %8, %call
  %call12 = tail call signext i8 @PHY_GetTxPowerTrackingOffset(ptr noundef %padapter, i8 noundef zeroext %RFPath, i8 noundef zeroext %Rate) #4
  %add15 = add i8 %add, %call12
  %9 = tail call i8 @llvm.smin.i8(i8 %add15, i8 63)
  ret i8 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @PHY_GetTxPowerIndexBase(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @PHY_GetTxPowerByRate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @phy_get_tx_pwr_lmt(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @PHY_GetTxPowerTrackingOffset(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetTxPowerLevel8723B(ptr noundef %Adapter, i8 noundef zeroext %Channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %AntDivCfg = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 113
  %2 = ptrtoint ptr %AntDivCfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %AntDivCfg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %RxIdleAnt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 130, i32 17
  %4 = ptrtoint ptr %RxIdleAnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %RxIdleAnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ne i8 %5, 1
  %conv2 = zext i1 %cmp to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ant_path = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 116
  %6 = ptrtoint ptr %ant_path to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ant_path, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %RFPath.0 = phi i8 [ %conv2, %if.then ], [ %7, %if.else ]
  tail call void @PHY_SetTxPowerLevelByPath(ptr noundef %Adapter, i8 noundef zeroext %Channel, i8 noundef zeroext %RFPath.0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerLevelByPath(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @PHY_GetTxPowerLevel8723B(ptr nocapture noundef %Adapter, ptr nocapture noundef %powerlevel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetBWMode8723B(ptr noundef %Adapter, i32 noundef %Bandwidth, i8 noundef zeroext %Offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CurrentChannel, align 8
  %conv = zext i8 %Offset to i32
  tail call fastcc void @PHY_HandleSwChnlAndSetBW8723B(ptr noundef %Adapter, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %3, i32 noundef %Bandwidth, i32 noundef %conv, i32 noundef %conv, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @PHY_HandleSwChnlAndSetBW8723B(ptr noundef %Adapter, i1 noundef zeroext %bSwitchChannel, i1 noundef zeroext %bSetBandWidth, i8 noundef zeroext %ChannelNum, i32 noundef %ChnlWidth, i32 noundef %ExtChnlOffsetOf40MHz, i32 noundef %ExtChnlOffsetOf80MHz, i8 noundef zeroext %CenterFrequencyIndex1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %CurrentChannel = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CurrentChannel, align 8
  %CurrentChannelBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %CurrentChannelBW, align 4
  %nCur40MhzPrimeSC = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nCur40MhzPrimeSC, align 2
  %nCur80MhzPrimeSC = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %nCur80MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nCur80MhzPrimeSC, align 1
  %CurrentCenterFrequencyIndex1 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %CurrentCenterFrequencyIndex1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CurrentCenterFrequencyIndex1, align 1
  %brmerge = or i1 %bSwitchChannel, %bSetBandWidth
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %bSwitchChannel, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %conv = zext i8 %ChannelNum to i32
  %call = tail call zeroext i1 @HAL_IsLegalChannel(ptr noundef %Adapter, i32 noundef %conv) #4
  br i1 %call, label %if.then5, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %bSwChnl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 91
  %12 = ptrtoint ptr %bSwChnl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bSwChnl, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br i1 %bSetBandWidth, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %bSetChnlBW = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 92
  %13 = ptrtoint ptr %bSetChnlBW to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %bSetChnlBW, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %bSetChnlBW11 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 92
  %14 = ptrtoint ptr %bSetChnlBW11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bSetChnlBW11, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end10
  %bSwChnl14 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 91
  %16 = ptrtoint ptr %bSwChnl14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bSwChnl14, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %bSwChnl18 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 91
  %18 = ptrtoint ptr %bSwChnl18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bSwChnl18, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ChannelNum, ptr %CurrentChannel, align 8
  %21 = ptrtoint ptr %CurrentCenterFrequencyIndex1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ChannelNum, ptr %CurrentCenterFrequencyIndex1, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %22 = ptrtoint ptr %bSetChnlBW11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bSetChnlBW11, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %if.end23.if.end33_crit_edge, label %if.then26

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %ChnlWidth, ptr %CurrentChannelBW, align 4
  %conv28 = trunc i32 %ExtChnlOffsetOf40MHz to i8
  %25 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %nCur40MhzPrimeSC, align 2
  %conv30 = trunc i32 %ExtChnlOffsetOf80MHz to i8
  %26 = ptrtoint ptr %nCur80MhzPrimeSC to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv30, ptr %nCur80MhzPrimeSC, align 1
  %27 = ptrtoint ptr %CurrentCenterFrequencyIndex1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %CenterFrequencyIndex1, ptr %CurrentCenterFrequencyIndex1, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end23.if.end33_crit_edge
  %bDriverStopped = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 21
  %28 = ptrtoint ptr %bDriverStopped to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bDriverStopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool34.not = icmp eq i32 %29, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true35:                                  ; preds = %if.end33
  %bSurpriseRemoved = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 22
  %30 = ptrtoint ptr %bSurpriseRemoved to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bSurpriseRemoved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool36.not = icmp eq i32 %31, 0
  br i1 %tobool36.not, label %if.end.i, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true35
  %32 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %HalData, align 8
  %bSwChnl.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 91
  %34 = ptrtoint ptr %bSwChnl.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bSwChnl.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.i = icmp eq i8 %35, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %rf_chip.i.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 18
  %36 = ptrtoint ptr %rf_chip.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rf_chip.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %cmp.i.i = icmp eq i8 %37, 5
  br i1 %cmp.i.i, label %if.then3.i.phy_SwChnl8723B.exit.i_crit_edge, label %if.end.i.i

if.then3.i.phy_SwChnl8723B.exit.i_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_SwChnl8723B.exit.i

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  %CurrentChannel.i.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 10
  %38 = ptrtoint ptr %CurrentChannel.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %CurrentChannel.i.i, align 8
  %RfRegChnlVal.i.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 100
  %40 = ptrtoint ptr %RfRegChnlVal.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %RfRegChnlVal.i.i, align 8
  %and.i.i = and i32 %41, 268435200
  %conv2.i.i = zext i8 %39 to i32
  %or.i.i = or i32 %and.i.i, %conv2.i.i
  store i32 %or.i.i, ptr %RfRegChnlVal.i.i, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 24, i32 noundef 1023, i32 noundef %or.i.i) #4
  %42 = ptrtoint ptr %RfRegChnlVal.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %RfRegChnlVal.i.i, align 8
  tail call void @rtw_hal_write_rfreg(ptr noundef %Adapter, i32 noundef 1, i32 noundef 24, i32 noundef 1023, i32 noundef %43) #4
  br label %phy_SwChnl8723B.exit.i

phy_SwChnl8723B.exit.i:                           ; preds = %if.end.i.i, %if.then3.i.phy_SwChnl8723B.exit.i_crit_edge
  %44 = ptrtoint ptr %bSwChnl.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bSwChnl.i, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %phy_SwChnl8723B.exit.i, %if.end.i.if.end5.i_crit_edge
  %bSetChnlBW.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 92
  %45 = ptrtoint ptr %bSetChnlBW.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bSetChnlBW.i, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool6.not.i = icmp eq i8 %46, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then7.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  %47 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %HalData, align 8
  %CurrentChannelBW.i.i = getelementptr inbounds %struct.hal_com_data, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %CurrentChannelBW.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %CurrentChannelBW.i.i, align 4
  %call.i.i.i = tail call zeroext i16 @rtw_read16(ptr noundef %Adapter, i32 noundef 1640) #4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %50, label %if.then7.i.phy_SetRegBW_8723B.exit.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb3.i.i.i
  ]

if.then7.i.phy_SetRegBW_8723B.exit.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_SetRegBW_8723B.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = and i16 %call.i.i.i, -385
  br label %sw.epilog.sink.split.i.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = and i16 %call.i.i.i, -385
  %54 = or i16 %53, 128
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb3.i.i.i, %sw.bb.i.i.i
  %.sink.i.i.i = phi i16 [ %54, %sw.bb3.i.i.i ], [ %52, %sw.bb.i.i.i ]
  %call9.i.i.i = tail call i32 @rtw_write16(ptr noundef %Adapter, i32 noundef 1640, i16 noundef zeroext %.sink.i.i.i) #4
  br label %phy_SetRegBW_8723B.exit.i.i

phy_SetRegBW_8723B.exit.i.i:                      ; preds = %sw.epilog.sink.split.i.i.i, %if.then7.i.phy_SetRegBW_8723B.exit.i.i_crit_edge
  %55 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %HalData, align 8
  %CurrentChannelBW.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %CurrentChannelBW.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %CurrentChannelBW.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i.i = icmp eq i32 %58, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %phy_SetRegBW_8723B.exit.i.i.phy_GetSecondaryChnl_8723B.exit.i.i_crit_edge

phy_SetRegBW_8723B.exit.i.i.phy_GetSecondaryChnl_8723B.exit.i.i_crit_edge: ; preds = %phy_SetRegBW_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_GetSecondaryChnl_8723B.exit.i.i

if.then.i.i.i:                                    ; preds = %phy_SetRegBW_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %nCur40MhzPrimeSC.i.i.i = getelementptr inbounds %struct.hal_com_data, ptr %56, i32 0, i32 12
  %59 = ptrtoint ptr %nCur40MhzPrimeSC.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nCur40MhzPrimeSC.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %switch.selectcmp.i.i.i = icmp eq i8 %60, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %switch.selectcmp16.i.i.i = icmp eq i8 %60, 2
  %switch.select17.i.i.i = select i1 %switch.selectcmp16.i.i.i, i8 1, i8 %switch.select.i.i.i
  br label %phy_GetSecondaryChnl_8723B.exit.i.i

phy_GetSecondaryChnl_8723B.exit.i.i:              ; preds = %if.then.i.i.i, %phy_SetRegBW_8723B.exit.i.i.phy_GetSecondaryChnl_8723B.exit.i.i_crit_edge
  %SCSettingOf20.0.i.i.i = phi i8 [ 0, %phy_SetRegBW_8723B.exit.i.i.phy_GetSecondaryChnl_8723B.exit.i.i_crit_edge ], [ %switch.select17.i.i.i, %if.then.i.i.i ]
  %call1.i.i = tail call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef 1155, i8 noundef zeroext %SCSettingOf20.0.i.i.i) #4
  %61 = ptrtoint ptr %CurrentChannelBW.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %CurrentChannelBW.i.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %62, label %phy_GetSecondaryChnl_8723B.exit.i.i.phy_PostSetBwMode8723B.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
  ]

phy_GetSecondaryChnl_8723B.exit.i.i.phy_PostSetBwMode8723B.exit.i_crit_edge: ; preds = %phy_GetSecondaryChnl_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_PostSetBwMode8723B.exit.i

sw.bb.i.i:                                        ; preds = %phy_GetSecondaryChnl_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #4
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #4
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3300, i32 noundef -1073741824, i32 noundef 0) #4
  br label %phy_PostSetBwMode8723B.exit.i

sw.bb3.i.i:                                       ; preds = %phy_GetSecondaryChnl_8723B.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #4
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #4
  %nCur40MhzPrimeSC.i.i = getelementptr inbounds %struct.hal_com_data, ptr %48, i32 0, i32 12
  %64 = ptrtoint ptr %nCur40MhzPrimeSC.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nCur40MhzPrimeSC.i.i, align 2
  %66 = lshr i8 %65, 1
  %67 = zext i8 %66 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2560, i32 noundef 16, i32 noundef %67) #4
  %68 = ptrtoint ptr %nCur40MhzPrimeSC.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nCur40MhzPrimeSC.i.i, align 2
  %conv5.i.i = zext i8 %69 to i32
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv5.i.i) #4
  %70 = ptrtoint ptr %nCur40MhzPrimeSC.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nCur40MhzPrimeSC.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp.i20.i = icmp eq i8 %71, 1
  %cond.i.i = select i1 %cmp.i20.i, i32 2, i32 1
  tail call void @rtw_hal_write_bbreg(ptr noundef %Adapter, i32 noundef 2072, i32 noundef 201326592, i32 noundef %cond.i.i) #4
  br label %phy_PostSetBwMode8723B.exit.i

phy_PostSetBwMode8723B.exit.i:                    ; preds = %sw.bb3.i.i, %sw.bb.i.i, %phy_GetSecondaryChnl_8723B.exit.i.i.phy_PostSetBwMode8723B.exit.i_crit_edge
  %72 = ptrtoint ptr %CurrentChannelBW.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %CurrentChannelBW.i.i, align 4
  tail call void @PHY_RF6052SetBandwidth8723B(ptr noundef %Adapter, i32 noundef %73) #4
  %74 = ptrtoint ptr %bSetChnlBW.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %bSetChnlBW.i, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %phy_PostSetBwMode8723B.exit.i, %if.end5.i.if.end9.i_crit_edge
  %CurrentChannel.i = getelementptr inbounds %struct.hal_com_data, ptr %33, i32 0, i32 10
  %75 = ptrtoint ptr %CurrentChannel.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %CurrentChannel.i, align 8
  %77 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %HalData, align 8
  %AntDivCfg.i.i = getelementptr inbounds %struct.hal_com_data, ptr %78, i32 0, i32 113
  %79 = ptrtoint ptr %AntDivCfg.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %AntDivCfg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %RxIdleAnt.i.i = getelementptr inbounds %struct.hal_com_data, ptr %78, i32 0, i32 141, i32 130, i32 17
  %81 = ptrtoint ptr %RxIdleAnt.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %RxIdleAnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp.i22.i = icmp ne i8 %82, 1
  %conv2.i23.i = zext i1 %cmp.i22.i to i8
  br label %phy_SwChnlAndSetBwMode8723B.exit

if.else.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %ant_path.i.i = getelementptr inbounds %struct.hal_com_data, ptr %78, i32 0, i32 116
  %83 = ptrtoint ptr %ant_path.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ant_path.i.i, align 8
  br label %phy_SwChnlAndSetBwMode8723B.exit

phy_SwChnlAndSetBwMode8723B.exit:                 ; preds = %if.else.i.i, %if.then.i.i
  %RFPath.0.i.i = phi i8 [ %conv2.i23.i, %if.then.i.i ], [ %84, %if.else.i.i ]
  tail call void @PHY_SetTxPowerLevelByPath(ptr noundef %Adapter, i8 noundef zeroext %76, i8 noundef zeroext %RFPath.0.i.i) #4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %if.end33.if.else_crit_edge
  %85 = ptrtoint ptr %bSwChnl18 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bSwChnl18, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool39.not = icmp eq i8 %86, 0
  br i1 %tobool39.not, label %if.else.if.end43_crit_edge, label %if.then40

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %CurrentChannel to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %3, ptr %CurrentChannel, align 8
  %88 = ptrtoint ptr %CurrentCenterFrequencyIndex1 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %3, ptr %CurrentCenterFrequencyIndex1, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.else.if.end43_crit_edge
  %89 = ptrtoint ptr %bSetChnlBW11 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bSetChnlBW11, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool45.not = icmp eq i8 %90, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %5, ptr %CurrentChannelBW, align 4
  %92 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %7, ptr %nCur40MhzPrimeSC, align 2
  %93 = ptrtoint ptr %nCur80MhzPrimeSC to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %9, ptr %nCur80MhzPrimeSC, align 1
  %94 = ptrtoint ptr %CurrentCenterFrequencyIndex1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %11, ptr %CurrentCenterFrequencyIndex1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %phy_SwChnlAndSetBwMode8723B.exit, %land.lhs.true13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SwChnl8723B(ptr noundef %Adapter, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @PHY_HandleSwChnlAndSetBW8723B(ptr noundef %Adapter, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext %channel, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %channel)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_SetSwChnlBWMode8723B(ptr noundef %Adapter, i8 noundef zeroext %channel, i32 noundef %Bandwidth, i8 noundef zeroext %Offset40, i8 noundef zeroext %Offset80) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %Offset40 to i32
  %conv1 = zext i8 %Offset80 to i32
  tail call fastcc void @PHY_HandleSwChnlAndSetBW8723B(ptr noundef %Adapter, i1 noundef zeroext true, i1 noundef zeroext true, i8 noundef zeroext %channel, i32 noundef %Bandwidth, i32 noundef %conv, i32 noundef %conv1, i8 noundef zeroext %channel)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_bbreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_InitTxPowerLimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ConfigRFWithHeaderFile(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ConfigBBWithHeaderFile(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_InitTxPowerByRate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_TxPowerByRateConfiguration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_ConvertTxPowerLimitToPowerIndex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @HAL_IsLegalChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_RF6052SetBandwidth8723B(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
