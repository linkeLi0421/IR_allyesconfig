; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/hal/HalPhyRf.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/hal/HalPhyRf.c"
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
%struct.hal_com_data = type { %struct.hal_version, i32, i32, i32, i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i32, i8, [4 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.efuse_hal, [4 x [14 x i8]], [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i8, i8, i8, i8, [2 x [84 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], [4 x [2 x [3 x [14 x [2 x i8]]]]], [2 x [3 x i8]], [2 x [14 x i8]], [2 x [14 x i8]], i8, i8, i8, i8, i8, i8, i8, [13 x [16 x i32]], i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x %struct.bb_register_def], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, %struct.submit_ctx, i32, i32, i32, [4 x i8], %struct.spinlock, i8, i8, i8, i16, [3 x i32], %struct.dm_priv, %struct.dm_odm_t, %struct.bt_coexist, i32, i32 }
%struct.hal_version = type { i32, i32, i32, i32, i8 }
%struct.efuse_hal = type { i8, i32, [512 x i8], [512 x i8], [512 x i8], i16, i8, [3 x [512 x i8]], [1024 x i8], [1024 x i8], i16, [3 x [512 x i8]], [1024 x i8], [1024 x i8] }
%struct.bb_register_def = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [2 x [2 x i32]], i8, i8, i8, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [6 x i8], [2 x i8], i8, i8, i8, i8, [2 x i8], [8 x i8], i8, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.bt_coexist = type { i8, i8, i8, i8 }
%struct.txpwrtrack_cfg = type { i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ConfigureTxpowerTrack(ptr nocapture readnone %pDM_Odm, ptr noundef %pConfig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ConfigureTxpowerTrack_8723B(ptr noundef %pConfig) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ConfigureTxpowerTrack_8723B(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_ClearTxPowerTrackingState(ptr nocapture noundef %pDM_Odm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pDM_Odm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pDM_Odm, align 8
  %HalData = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %HalData, align 8
  %DefaultCckIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 166
  %4 = ptrtoint ptr %DefaultCckIndex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %DefaultCckIndex, align 2
  %BbSwingIdxCckBase = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 164
  %6 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %BbSwingIdxCckBase, align 4
  %BbSwingIdxCck = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 162
  %7 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %BbSwingIdxCck, align 2
  %CCK_index = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 26
  %8 = ptrtoint ptr %CCK_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %CCK_index, align 1
  %DefaultOfdmIndex = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 165
  %9 = ptrtoint ptr %DefaultOfdmIndex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DefaultOfdmIndex, align 1
  %arrayidx = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 158, i32 0
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %arrayidx5, align 1
  %arrayidx9 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 0
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx9, align 1
  %arrayidx12 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 0
  %arrayidx15 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 0
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx15, align 1
  %arrayidx18 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 0
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx18, align 1
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx24 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 0
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 0
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx26, align 1
  %arrayidx.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %arrayidx.1, align 1
  %arrayidx5.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 158, i32 1
  %20 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %10, ptr %arrayidx5.1, align 1
  %arrayidx9.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 1
  %21 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %10, ptr %arrayidx9.1, align 1
  %arrayidx12.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 1
  %arrayidx15.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 1
  %22 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx15.1, align 1
  %arrayidx18.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 1
  %23 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx18.1, align 1
  %24 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx12.1, align 1
  %arrayidx24.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 1
  %25 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx24.1, align 1
  %arrayidx26.1 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 1
  %26 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx26.1, align 1
  %arrayidx.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %10, ptr %arrayidx.2, align 1
  %arrayidx5.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 158, i32 2
  %28 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %10, ptr %arrayidx5.2, align 1
  %arrayidx9.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 2
  %29 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %10, ptr %arrayidx9.2, align 1
  %arrayidx12.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 2
  %arrayidx15.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 2
  %30 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx15.2, align 1
  %arrayidx18.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 2
  %31 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx18.2, align 1
  %32 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx12.2, align 1
  %arrayidx24.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 2
  %33 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx24.2, align 1
  %arrayidx26.2 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 2
  %34 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx26.2, align 1
  %arrayidx.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 160, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %10, ptr %arrayidx.3, align 1
  %arrayidx5.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 158, i32 3
  %36 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %10, ptr %arrayidx5.3, align 1
  %arrayidx9.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 27, i32 3
  %37 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %10, ptr %arrayidx9.3, align 1
  %arrayidx12.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 28, i32 3
  %arrayidx15.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 29, i32 3
  %38 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx15.3, align 1
  %arrayidx18.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 30, i32 3
  %39 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx18.3, align 1
  %40 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx12.3, align 1
  %arrayidx24.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 168, i32 3
  %41 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx24.3, align 1
  %arrayidx26.3 = getelementptr %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 169, i32 3
  %42 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx26.3, align 1
  %Modify_TxAGC_Flag_PathA = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 172
  %43 = ptrtoint ptr %Modify_TxAGC_Flag_PathA to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %Modify_TxAGC_Flag_PathA, align 2
  %Modify_TxAGC_Flag_PathB = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 173
  %44 = ptrtoint ptr %Modify_TxAGC_Flag_PathB to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %Modify_TxAGC_Flag_PathB, align 1
  %Remnant_CCKSwingIdx = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 170
  %45 = ptrtoint ptr %Remnant_CCKSwingIdx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %Remnant_CCKSwingIdx, align 8
  %EEPROMThermalMeter = getelementptr inbounds %struct.hal_com_data, ptr %3, i32 0, i32 32
  %46 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 11
  %48 = ptrtoint ptr %ThermalValue to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ThermalValue, align 1
  %49 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue_IQK = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 13
  %50 = ptrtoint ptr %ThermalValue_IQK to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %ThermalValue_IQK, align 1
  %51 = load i8, ptr %EEPROMThermalMeter, align 2
  %ThermalValue_LCK = getelementptr inbounds %struct.dm_odm_t, ptr %pDM_Odm, i32 0, i32 157, i32 12
  %52 = ptrtoint ptr %ThermalValue_LCK to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %ThermalValue_LCK, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ODM_TXPowerTrackingCallback_ThermalMeter(ptr nocapture noundef readonly %Adapter) local_unnamed_addr #0 align 64 {
entry:
  %c = alloca %struct.txpwrtrack_cfg, align 4
  %deltaSwingTableIdx_TUP_A = alloca ptr, align 4
  %deltaSwingTableIdx_TDOWN_A = alloca ptr, align 4
  %deltaSwingTableIdx_TUP_B = alloca ptr, align 4
  %deltaSwingTableIdx_TDOWN_B = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %HalData = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 18
  %0 = ptrtoint ptr %HalData to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %HalData, align 8
  %odmpriv = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %c) #5
  %2 = call ptr @memset(ptr %c, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TUP_A) #5
  %3 = ptrtoint ptr %deltaSwingTableIdx_TUP_A to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %deltaSwingTableIdx_TUP_A, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TDOWN_A) #5
  %4 = ptrtoint ptr %deltaSwingTableIdx_TDOWN_A to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %deltaSwingTableIdx_TDOWN_A, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TUP_B) #5
  %5 = ptrtoint ptr %deltaSwingTableIdx_TUP_B to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %deltaSwingTableIdx_TUP_B, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TDOWN_B) #5
  %6 = ptrtoint ptr %deltaSwingTableIdx_TDOWN_B to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %deltaSwingTableIdx_TDOWN_B, align 4, !annotation !9
  call void @ConfigureTxpowerTrack_8723B(ptr noundef nonnull %c) #5
  %GetDeltaSwingTable = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 9
  %7 = ptrtoint ptr %GetDeltaSwingTable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %GetDeltaSwingTable, align 4
  call void %8(ptr noundef %odmpriv, ptr noundef nonnull %deltaSwingTableIdx_TUP_A, ptr noundef nonnull %deltaSwingTableIdx_TDOWN_A, ptr noundef nonnull %deltaSwingTableIdx_TUP_B, ptr noundef nonnull %deltaSwingTableIdx_TDOWN_B) #5
  %TXPowerTrackingCallbackCnt = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 24
  %9 = ptrtoint ptr %TXPowerTrackingCallbackCnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %TXPowerTrackingCallbackCnt, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %TXPowerTrackingCallbackCnt, align 8
  %bTXPowerTrackingInit = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 6
  %11 = ptrtoint ptr %bTXPowerTrackingInit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bTXPowerTrackingInit, align 1
  %12 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %odmpriv, align 8
  %ThermalRegAddr = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 5
  %14 = ptrtoint ptr %ThermalRegAddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ThermalRegAddr, align 4
  %call = call i32 @rtw_hal_read_rfreg(ptr noundef %13, i32 noundef 0, i32 noundef %15, i32 noundef 64512) #5
  %conv = trunc i32 %call to i8
  %TxPowerTrackControl = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 8
  %16 = ptrtoint ptr %TxPowerTrackControl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %TxPowerTrackControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %EEPROMThermalMeter = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 32
  %18 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %EEPROMThermalMeter, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 -1, label %lor.lhs.false.cleanup_crit_edge630
  ]

lor.lhs.false.cleanup_crit_edge630:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ThermalValue_AVG_index = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 16
  %21 = ptrtoint ptr %ThermalValue_AVG_index to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ThermalValue_AVG_index, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 15, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx, align 1
  %24 = load i8, ptr %ThermalValue_AVG_index, align 1
  %inc16 = add i8 %24, 1
  %AverageThermalNum = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 3
  %25 = ptrtoint ptr %AverageThermalNum to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %AverageThermalNum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc16, i8 %26)
  %cmp21 = icmp eq i8 %inc16, %26
  %spec.store.select = select i1 %cmp21, i8 0, i8 %inc16
  %27 = ptrtoint ptr %ThermalValue_AVG_index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.store.select, ptr %ThermalValue_AVG_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp30593.not = icmp eq i8 %26, 0
  br i1 %cmp30593.not, label %if.end.if.end50_crit_edge, label %for.body.preheader

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i8 %26 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %ThermalValue_AVG.0596 = phi i32 [ 0, %for.body.preheader ], [ %ThermalValue_AVG.1, %for.body.for.body_crit_edge ]
  %ThermalValue_AVG_count.0595 = phi i8 [ 0, %for.body.preheader ], [ %ThermalValue_AVG_count.1, %for.body.for.body_crit_edge ]
  %arrayidx35 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 15, i32 %indvars.iv
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool36.not = icmp ne i8 %29, 0
  %conv42 = zext i8 %29 to i32
  %inc43 = zext i1 %tobool36.not to i8
  %ThermalValue_AVG_count.1 = add i8 %ThermalValue_AVG_count.0595, %inc43
  %ThermalValue_AVG.1 = add i32 %ThermalValue_AVG.0596, %conv42
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ThermalValue_AVG_count.1)
  %tobool46.not = icmp eq i8 %ThermalValue_AVG_count.1, 0
  br i1 %tobool46.not, label %for.end.if.end50_crit_edge, label %if.then47

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv48 = zext i8 %ThermalValue_AVG_count.1 to i32
  %div = udiv i32 %ThermalValue_AVG.1, %conv48
  %conv49 = trunc i32 %div to i8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.end.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %ThermalValue.0 = phi i8 [ %conv49, %if.then47 ], [ %conv, %for.end.if.end50_crit_edge ], [ %conv, %if.end.if.end50_crit_edge ]
  %ThermalValue53 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 11
  %30 = ptrtoint ptr %ThermalValue53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ThermalValue53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %31)
  %cmp55 = icmp ugt i8 %ThermalValue.0, %31
  %sub = sub i8 %ThermalValue.0, %31
  %sub65 = sub i8 %31, %ThermalValue.0
  %cond = select i1 %cmp55, i8 %sub, i8 %sub65
  %ThermalValue_LCK = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 12
  %32 = ptrtoint ptr %ThermalValue_LCK to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ThermalValue_LCK, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %33)
  %cmp70 = icmp ugt i8 %ThermalValue.0, %33
  %sub77 = sub i8 %ThermalValue.0, %33
  %sub83 = sub i8 %33, %ThermalValue.0
  %cond85 = select i1 %cmp70, i8 %sub77, i8 %sub83
  %Threshold_IQK = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 2
  %34 = ptrtoint ptr %Threshold_IQK to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %Threshold_IQK, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %cond85, i8 %35)
  %cmp89.not = icmp ult i8 %cond85, %35
  br i1 %cmp89.not, label %if.end50.if.end98_crit_edge, label %if.then91

if.end50.if.end98_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then91:                                        ; preds = %if.end50
  %36 = ptrtoint ptr %ThermalValue_LCK to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %ThermalValue.0, ptr %ThermalValue_LCK, align 4
  %PHY_LCCalibrate = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 8
  %37 = ptrtoint ptr %PHY_LCCalibrate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %PHY_LCCalibrate, align 4
  %tobool94.not = icmp eq ptr %38, null
  br i1 %tobool94.not, label %if.then91.if.end98_crit_edge, label %if.then95

if.then91.if.end98_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then95:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  call void %38(ptr noundef %odmpriv) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.then91.if.end98_crit_edge, %if.end50.if.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp100.not = icmp eq i8 %cond, 0
  br i1 %cmp100.not, label %if.end98.if.else339_crit_edge, label %land.lhs.true

if.end98.if.else339_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else339

land.lhs.true:                                    ; preds = %if.end98
  %39 = ptrtoint ptr %TxPowerTrackControl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TxPowerTrackControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool105.not = icmp eq i8 %40, 0
  br i1 %tobool105.not, label %land.lhs.true.if.else339_crit_edge, label %if.then106

land.lhs.true.if.else339_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else339

if.then106:                                       ; preds = %land.lhs.true
  %41 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %EEPROMThermalMeter, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %42)
  %cmp110 = icmp ugt i8 %ThermalValue.0, %42
  %sub116 = sub i8 %ThermalValue.0, %42
  %sub121 = sub i8 %42, %ThermalValue.0
  %cond123 = select i1 %cmp110, i8 %sub116, i8 %sub121
  %43 = call i8 @llvm.umin.i8(i8 %cond123, i8 29)
  %DeltaPowerIndex = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 29
  %44 = ptrtoint ptr %DeltaPowerIndex to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DeltaPowerIndex, align 2
  %DeltaPowerIndexLast = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 30
  %46 = ptrtoint ptr %DeltaPowerIndexLast to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %DeltaPowerIndexLast, align 2
  br i1 %cmp110, label %if.then135, label %if.else

if.then135:                                       ; preds = %if.then106
  %47 = ptrtoint ptr %deltaSwingTableIdx_TUP_A to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %deltaSwingTableIdx_TUP_A, align 4
  %idxprom140 = zext i8 %43 to i32
  %arrayidx141 = getelementptr i8, ptr %48, i32 %idxprom140
  %49 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx141, align 1
  %51 = ptrtoint ptr %DeltaPowerIndex to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %DeltaPowerIndex, align 2
  %52 = load i8, ptr %arrayidx141, align 1
  %Absolute_OFDMSwingIdx = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 168
  %53 = ptrtoint ptr %Absolute_OFDMSwingIdx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %Absolute_OFDMSwingIdx, align 8
  %RfPathCount = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 4
  %54 = ptrtoint ptr %RfPathCount to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %RfPathCount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp149 = icmp ugt i8 %55, 1
  br i1 %cmp149, label %if.then151, label %if.then135.if.end215_crit_edge

if.then135.if.end215_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

if.then151:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx154 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 29, i32 1
  %56 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx154, align 1
  %arrayidx157 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 30, i32 1
  %58 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx157, align 1
  %59 = ptrtoint ptr %deltaSwingTableIdx_TUP_B to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %deltaSwingTableIdx_TUP_B, align 4
  %arrayidx159 = getelementptr i8, ptr %60, i32 %idxprom140
  %61 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx159, align 1
  store i8 %62, ptr %arrayidx154, align 1
  %63 = load ptr, ptr %deltaSwingTableIdx_TUP_B, align 4
  %arrayidx164 = getelementptr i8, ptr %63, i32 %idxprom140
  %64 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx164, align 1
  br label %if.end215.sink.split

if.else:                                          ; preds = %if.then106
  %66 = ptrtoint ptr %deltaSwingTableIdx_TDOWN_A to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %deltaSwingTableIdx_TDOWN_A, align 4
  %idxprom174 = zext i8 %43 to i32
  %arrayidx175 = getelementptr i8, ptr %67, i32 %idxprom174
  %68 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx175, align 1
  %mul = sub i8 0, %69
  %70 = ptrtoint ptr %DeltaPowerIndex to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %mul, ptr %DeltaPowerIndex, align 2
  %71 = load i8, ptr %arrayidx175, align 1
  %mul184 = sub i8 0, %71
  %Absolute_OFDMSwingIdx186 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 168
  %72 = ptrtoint ptr %Absolute_OFDMSwingIdx186 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %mul184, ptr %Absolute_OFDMSwingIdx186, align 8
  %RfPathCount188 = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 4
  %73 = ptrtoint ptr %RfPathCount188 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %RfPathCount188, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp190 = icmp ugt i8 %74, 1
  br i1 %cmp190, label %if.then192, label %if.else.if.end215_crit_edge

if.else.if.end215_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

if.then192:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx195 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 29, i32 1
  %75 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx195, align 1
  %arrayidx198 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 30, i32 1
  %77 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx198, align 1
  %78 = ptrtoint ptr %deltaSwingTableIdx_TDOWN_B to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %deltaSwingTableIdx_TDOWN_B, align 4
  %arrayidx200 = getelementptr i8, ptr %79, i32 %idxprom174
  %80 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx200, align 1
  %mul202 = sub i8 0, %81
  store i8 %mul202, ptr %arrayidx195, align 1
  %82 = load ptr, ptr %deltaSwingTableIdx_TDOWN_B, align 4
  %arrayidx208 = getelementptr i8, ptr %82, i32 %idxprom174
  %83 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx208, align 1
  %mul210 = sub i8 0, %84
  br label %if.end215.sink.split

if.end215.sink.split:                             ; preds = %if.then192, %if.then151
  %mul210.sink = phi i8 [ %mul210, %if.then192 ], [ %65, %if.then151 ]
  %arrayidx213 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 168, i32 1
  %85 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %mul210.sink, ptr %arrayidx213, align 1
  br label %if.end215

if.end215:                                        ; preds = %if.end215.sink.split, %if.else.if.end215_crit_edge, %if.then135.if.end215_crit_edge
  %RfPathCount218 = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 4
  %86 = ptrtoint ptr %RfPathCount218 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %RfPathCount218, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp220598.not = icmp eq i8 %87, 0
  br i1 %cmp220598.not, label %if.end215.for.end323_crit_edge, label %for.body222.lr.ph

if.end215.for.end323_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end323

for.body222.lr.ph:                                ; preds = %if.end215
  %BbSwingIdxCckBase = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 164
  %CCK_index = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 26
  %BbSwingIdxCck = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 162
  %SwingTableSize_OFDM = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 1
  br label %for.body222

for.body222:                                      ; preds = %for.inc321.for.body222_crit_edge, %for.body222.lr.ph
  %indvars.iv611 = phi i32 [ 0, %for.body222.lr.ph ], [ %indvars.iv.next612, %for.inc321.for.body222_crit_edge ]
  %arrayidx226 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 29, i32 %indvars.iv611
  %88 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx226, align 1
  %arrayidx231 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 30, i32 %indvars.iv611
  %90 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx231, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp233 = icmp eq i8 %89, %91
  %sub250 = sub i8 %89, %91
  %spec.select = select i1 %cmp233, i8 0, i8 %sub250
  %92 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 28, i32 %indvars.iv611
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select, ptr %92, align 1
  %arrayidx258 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 160, i32 %indvars.iv611
  %94 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx258, align 1
  %add265 = add i8 %spec.select, %95
  %arrayidx269 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 27, i32 %indvars.iv611
  %96 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %add265, ptr %arrayidx269, align 1
  %97 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %BbSwingIdxCckBase, align 4
  %add276 = add i8 %98, %spec.select
  %99 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %add276, ptr %BbSwingIdxCck, align 2
  %arrayidx286 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 158, i32 %indvars.iv611
  %100 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %add265, ptr %arrayidx286, align 1
  %101 = ptrtoint ptr %SwingTableSize_OFDM to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %SwingTableSize_OFDM, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %add265)
  %cmp294.not = icmp ugt i8 %102, %add265
  br i1 %cmp294.not, label %for.body222.for.inc321_crit_edge, label %if.then296

for.body222.for.inc321_crit_edge:                 ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc321

if.then296:                                       ; preds = %for.body222
  call void @__sanitizer_cov_trace_pc() #7
  %sub293 = add i8 %102, -1
  %103 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %sub293, ptr %arrayidx269, align 1
  br label %for.inc321

for.inc321:                                       ; preds = %if.then296, %for.body222.for.inc321_crit_edge
  %indvars.iv.next612 = add nuw nsw i32 %indvars.iv611, 1
  %104 = ptrtoint ptr %RfPathCount218 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %RfPathCount218, align 4
  %106 = zext i8 %105 to i32
  %cmp220 = icmp ult i32 %indvars.iv.next612, %106
  br i1 %cmp220, label %for.inc321.for.body222_crit_edge, label %for.end323.loopexit

for.inc321.for.body222_crit_edge:                 ; preds = %for.inc321
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body222

for.end323.loopexit:                              ; preds = %for.inc321
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %CCK_index to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %add276, ptr %CCK_index, align 1
  br label %for.end323

for.end323:                                       ; preds = %for.end323.loopexit, %if.end215.for.end323_crit_edge
  %CCK_index325 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 26
  %108 = ptrtoint ptr %CCK_index325 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %CCK_index325, align 1
  %110 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %c, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %109)
  %cmp329.not = icmp ugt i8 %111, %109
  br i1 %cmp329.not, label %for.end323.if.end354_crit_edge, label %if.then331

for.end323.if.end354_crit_edge:                   ; preds = %for.end323
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end354

if.then331:                                       ; preds = %for.end323
  call void @__sanitizer_cov_trace_pc() #7
  %sub328 = add i8 %111, -1
  %112 = ptrtoint ptr %CCK_index325 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %sub328, ptr %CCK_index325, align 1
  br label %if.end354

if.else339:                                       ; preds = %land.lhs.true.if.else339_crit_edge, %if.end98.if.else339_crit_edge
  %RfPathCount342 = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 4
  %113 = ptrtoint ptr %RfPathCount342 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %RfPathCount342, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp344602.not = icmp eq i8 %114, 0
  br i1 %cmp344602.not, label %if.else339.if.end354_crit_edge, label %if.else339.for.body346_crit_edge

if.else339.for.body346_crit_edge:                 ; preds = %if.else339
  br label %for.body346

if.else339.if.end354_crit_edge:                   ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end354

for.body346:                                      ; preds = %for.body346.for.body346_crit_edge, %if.else339.for.body346_crit_edge
  %indvars.iv613 = phi i32 [ %indvars.iv.next614, %for.body346.for.body346_crit_edge ], [ 0, %if.else339.for.body346_crit_edge ]
  %arrayidx350 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 28, i32 %indvars.iv613
  %115 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx350, align 1
  %indvars.iv.next614 = add nuw nsw i32 %indvars.iv613, 1
  %116 = ptrtoint ptr %RfPathCount342 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %RfPathCount342, align 4
  %118 = zext i8 %117 to i32
  %cmp344 = icmp ult i32 %indvars.iv.next614, %118
  br i1 %cmp344, label %for.body346.for.body346_crit_edge, label %for.body346.if.end354_crit_edge

for.body346.if.end354_crit_edge:                  ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end354

for.body346.for.body346_crit_edge:                ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body346

if.end354:                                        ; preds = %for.body346.if.end354_crit_edge, %if.else339.if.end354_crit_edge, %if.then331, %for.end323.if.end354_crit_edge
  %RfPathCount357.le = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 4
  %PowerIndexOffset366 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 28
  %119 = ptrtoint ptr %PowerIndexOffset366 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %PowerIndexOffset366, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp369.not = icmp eq i8 %120, 0
  br i1 %cmp369.not, label %lor.lhs.false371, label %if.end354.land.lhs.true378_crit_edge

if.end354.land.lhs.true378_crit_edge:             ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true378

lor.lhs.false371:                                 ; preds = %if.end354
  %arrayidx374 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 28, i32 1
  %121 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx374, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp376.not = icmp eq i8 %122, 0
  br i1 %cmp376.not, label %lor.lhs.false371.if.end434_crit_edge, label %lor.lhs.false371.land.lhs.true378_crit_edge

lor.lhs.false371.land.lhs.true378_crit_edge:      ; preds = %lor.lhs.false371
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true378

lor.lhs.false371.if.end434_crit_edge:             ; preds = %lor.lhs.false371
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end434

land.lhs.true378:                                 ; preds = %lor.lhs.false371.land.lhs.true378_crit_edge, %if.end354.land.lhs.true378_crit_edge
  %123 = ptrtoint ptr %TxPowerTrackControl to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %TxPowerTrackControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool382.not = icmp eq i8 %124, 0
  br i1 %tobool382.not, label %land.lhs.true378.if.end434_crit_edge, label %if.then383

land.lhs.true378.if.end434_crit_edge:             ; preds = %land.lhs.true378
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end434

if.then383:                                       ; preds = %land.lhs.true378
  %bTxPowerChanged = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 31
  %125 = ptrtoint ptr %bTxPowerChanged to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %bTxPowerChanged, align 2
  %126 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %EEPROMThermalMeter, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %127)
  %cmp388 = icmp ugt i8 %ThermalValue.0, %127
  %128 = ptrtoint ptr %RfPathCount357.le to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %RfPathCount357.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp395606.not = icmp eq i8 %129, 0
  br i1 %cmp388, label %for.cond391.preheader, label %for.cond402.preheader

for.cond402.preheader:                            ; preds = %if.then383
  br i1 %cmp395606.not, label %for.cond402.preheader.if.end413.thread_crit_edge, label %for.body408.lr.ph

for.cond402.preheader.if.end413.thread_crit_edge: ; preds = %for.cond402.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413.thread

for.body408.lr.ph:                                ; preds = %for.cond402.preheader
  %ODM_TxPwrTrackSetPwr409 = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 6
  br label %for.body408

for.cond391.preheader:                            ; preds = %if.then383
  br i1 %cmp395606.not, label %for.cond391.preheader.if.end413.thread_crit_edge, label %for.body397.lr.ph

for.cond391.preheader.if.end413.thread_crit_edge: ; preds = %for.cond391.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413.thread

for.body397.lr.ph:                                ; preds = %for.cond391.preheader
  %ODM_TxPwrTrackSetPwr = getelementptr inbounds %struct.txpwrtrack_cfg, ptr %c, i32 0, i32 6
  br label %for.body397

for.body397:                                      ; preds = %for.body397.for.body397_crit_edge, %for.body397.lr.ph
  %p.3607 = phi i8 [ 0, %for.body397.lr.ph ], [ %inc399, %for.body397.for.body397_crit_edge ]
  %130 = ptrtoint ptr %ODM_TxPwrTrackSetPwr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ODM_TxPwrTrackSetPwr, align 4
  call void %131(ptr noundef %odmpriv, i32 noundef 2, i8 noundef zeroext %p.3607, i8 noundef zeroext 0) #5
  %inc399 = add nuw i8 %p.3607, 1
  %132 = ptrtoint ptr %RfPathCount357.le to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %RfPathCount357.le, align 4
  %cmp395 = icmp ult i8 %inc399, %133
  br i1 %cmp395, label %for.body397.for.body397_crit_edge, label %for.body397.if.end413_crit_edge

for.body397.if.end413_crit_edge:                  ; preds = %for.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413

for.body397.for.body397_crit_edge:                ; preds = %for.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body397

for.body408:                                      ; preds = %for.body408.for.body408_crit_edge, %for.body408.lr.ph
  %p.4605 = phi i8 [ 0, %for.body408.lr.ph ], [ %inc411, %for.body408.for.body408_crit_edge ]
  %134 = ptrtoint ptr %ODM_TxPwrTrackSetPwr409 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ODM_TxPwrTrackSetPwr409, align 4
  call void %135(ptr noundef %odmpriv, i32 noundef 2, i8 noundef zeroext %p.4605, i8 noundef zeroext 0) #5
  %inc411 = add nuw i8 %p.4605, 1
  %136 = ptrtoint ptr %RfPathCount357.le to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %RfPathCount357.le, align 4
  %cmp406 = icmp ult i8 %inc411, %137
  br i1 %cmp406, label %for.body408.for.body408_crit_edge, label %for.body408.if.end413_crit_edge

for.body408.if.end413_crit_edge:                  ; preds = %for.body408
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end413

for.body408.for.body408_crit_edge:                ; preds = %for.body408
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body408

if.end413.thread:                                 ; preds = %for.cond391.preheader.if.end413.thread_crit_edge, %for.cond402.preheader.if.end413.thread_crit_edge
  %BbSwingIdxCck414620 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 162
  %138 = ptrtoint ptr %BbSwingIdxCck414620 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %BbSwingIdxCck414620, align 2
  %BbSwingIdxCckBase415621 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 164
  %140 = ptrtoint ptr %BbSwingIdxCckBase415621 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %BbSwingIdxCckBase415621, align 4
  br label %for.end431

if.end413:                                        ; preds = %for.body408.if.end413_crit_edge, %for.body397.if.end413_crit_edge
  %141 = phi i8 [ %133, %for.body397.if.end413_crit_edge ], [ %137, %for.body408.if.end413_crit_edge ]
  %BbSwingIdxCck414 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 162
  %142 = ptrtoint ptr %BbSwingIdxCck414 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %BbSwingIdxCck414, align 2
  %BbSwingIdxCckBase415 = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 164
  %144 = ptrtoint ptr %BbSwingIdxCckBase415 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %BbSwingIdxCckBase415, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp420608.not = icmp eq i8 %141, 0
  br i1 %cmp420608.not, label %if.end413.for.end431_crit_edge, label %if.end413.for.body422_crit_edge

if.end413.for.body422_crit_edge:                  ; preds = %if.end413
  br label %for.body422

if.end413.for.end431_crit_edge:                   ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end431

for.body422:                                      ; preds = %for.body422.for.body422_crit_edge, %if.end413.for.body422_crit_edge
  %indvars.iv615 = phi i32 [ %indvars.iv.next616, %for.body422.for.body422_crit_edge ], [ 0, %if.end413.for.body422_crit_edge ]
  %arrayidx425 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 158, i32 %indvars.iv615
  %145 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx425, align 1
  %arrayidx428 = getelementptr %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 160, i32 %indvars.iv615
  %147 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx428, align 1
  %indvars.iv.next616 = add nuw nsw i32 %indvars.iv615, 1
  %148 = ptrtoint ptr %RfPathCount357.le to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %RfPathCount357.le, align 4
  %150 = zext i8 %149 to i32
  %cmp420 = icmp ult i32 %indvars.iv.next616, %150
  br i1 %cmp420, label %for.body422.for.body422_crit_edge, label %for.body422.for.end431_crit_edge

for.body422.for.end431_crit_edge:                 ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end431

for.body422.for.body422_crit_edge:                ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body422

for.end431:                                       ; preds = %for.body422.for.end431_crit_edge, %if.end413.for.end431_crit_edge, %if.end413.thread
  %151 = ptrtoint ptr %ThermalValue53 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %ThermalValue.0, ptr %ThermalValue53, align 1
  br label %if.end434

if.end434:                                        ; preds = %for.end431, %land.lhs.true378.if.end434_crit_edge, %lor.lhs.false371.if.end434_crit_edge
  %TXPowercount = getelementptr inbounds %struct.hal_com_data, ptr %1, i32 0, i32 141, i32 157, i32 5
  %152 = ptrtoint ptr %TXPowercount to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %TXPowercount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end434, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge630, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TDOWN_B) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TUP_B) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TDOWN_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %deltaSwingTableIdx_TUP_A) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %c) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hal_read_rfreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!9 = !{!"auto-init"}
