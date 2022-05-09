; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/rtl8188e_rf6052.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter = type { i32, [3 x i32], i32, ptr, %struct.mlme_priv, %struct.mlme_ext_priv, %struct.cmd_priv, %struct.evt_priv, %struct.io_priv, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.led_priv, ptr, %struct.wifidirect_info, %struct.hal_data_8188e, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rereg_nd_name_data, i32, %struct.net_device_stats, %struct.iw_statistics, ptr, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.spinlock, [16 x ptr], i32, [6 x i8], [6 x i8], [4 x i8], ptr, [6 x i8], [4 x i8], %struct.br_ext_info, i8 }
%struct.mlme_priv = type { %struct.spinlock, i32, i8, i8, i8, ptr, i8, ptr, %struct.__queue, %struct.__queue, ptr, i8, i32, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.qos_priv, i32, i32, %struct.ht_priv, %struct.rt_link_detect, %struct.timer_list, i8, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.wlan_bcn_info }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.ndis_802_11_config, i32, [16 x i8], %struct.wlan_phy_info, i32, [768 x i8] }
%struct.ndis_802_11_config = type { i32, i32, i32, i32, %struct.ndis_802_11_config_fh }
%struct.ndis_802_11_config_fh = type { i32, i32, i32, i32 }
%struct.wlan_phy_info = type { i8, i8, i8, i8 }
%struct.wlan_bcn_info = type { i8, i32, i32, i32, i16, i8 }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.rt_link_detect = type { i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlme_ext_priv = type { ptr, i8, %struct.atomic_t, i16, i8, i8, i8, i8, i8, i8, i8, i8, [14 x %struct.rt_channel_info], %struct.p2p_channels, [13 x i8], [13 x i8], %struct.ss_res, %struct.mlme_ext_info, %struct.timer_list, %struct.timer_list, i16, i8, i8, i32, i64, i8, i8, i8, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.rt_channel_info = type { i8, i32, i32 }
%struct.p2p_channels = type { [10 x %struct.p2p_reg_class], i32 }
%struct.p2p_reg_class = type { i8, [20 x i8], i32 }
%struct.ss_res = type { i32, i32, i32, i32, i8, i8, [9 x %struct.ndis_802_11_ssid], [51 x %struct.rtw_ieee80211_channel] }
%struct.rtw_ieee80211_channel = type { i16, i32 }
%struct.mlme_ext_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.ADDBA_request, %struct.WMM_para_element, %struct.HT_caps_element, %struct.HT_info_element, %struct.wlan_bssid_ex, [32 x %struct.FW_Sta_Info] }
%struct.ADDBA_request = type { i8, i8, i16, i16, i16 }
%struct.WMM_para_element = type { i8, i8, [4 x %struct.AC_param] }
%struct.AC_param = type { i8, i8, i16 }
%struct.HT_caps_element = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.evt_priv = type { %struct.work_struct, i8, ptr, %struct.atomic_t, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_priv = type { ptr, %struct.intf_hdl }
%struct.intf_hdl = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.semaphore, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, i32, ptr, i8, i8, i8, i64, i64, i64, i64, i64, ptr, i8, [4 x i8], %struct.semaphore, i8, %struct.tasklet_struct, i32, i32, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i16, i32, %struct.mutex, %struct.submit_ctx }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_ctx = type { i32, i32, i32, %struct.completion }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, i32, i32, i32, i32, %struct.semaphore, i8, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i8], i32, %struct.timer_list, i32, %struct.signal_stat, %struct.signal_stat }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.signal_stat = type { i8, i8, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, i8, i8, i32, i32, i32, [32 x ptr], i16, i16, i16, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { i32, i32, [16 x %struct.rtw_wlan_acl_node], %struct.__queue }
%struct.rtw_wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [4 x %union.Keytype], [4 x %union.Keytype], [4 x %union.Keytype], %union.pn48, %union.pn48, %struct.arc4_ctx, %struct.arc4_ctx, i32, i32, i32, i32, i32, i32, [512 x i8], i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.ndis_802_11_wep, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.rt_pmkid_list], i8, i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.ndis_802_11_wep = type { i32, i32, i32, [16 x i8] }
%struct.rt_pmkid_list = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type <{ i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [2 x i8] }>
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i32, %struct.work_struct, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, %struct.timer_list, i32, i8, i32, i32, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, i8, [6 x i8], i16, i8, [3 x i8], [512 x i8] }
%struct.led_priv = type { %struct.LED_871x, i8 }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wifidirect_info = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tx_provdisc_req_info, %struct.rx_provdisc_req_info, %struct.tx_invite_req_info, [10 x %struct.profile_info], %struct.tx_invite_resp_info, %struct.tx_nego_req_info, %struct.group_id_info, %struct.scan_limit_info, %struct.scan_limit_info, i32, i32, i32, [6 x i8], [6 x i8], [4 x i8], i8, i8, i8, [8 x i8], [7 x i8], i8, [6 x i8], [6 x i8], i8, [32 x i8], i8, i8, i8, i8, i16, i8, [32 x i8], i8, [32 x i8], i8, i8, i8, i32, i16, i32, [100 x i8], i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.tx_provdisc_req_info = type { i16, [2 x i16], %struct.ndis_802_11_ssid, [6 x i8], [6 x i8], i8 }
%struct.rx_provdisc_req_info = type { [6 x i8], [4 x i8] }
%struct.tx_invite_req_info = type { i8, i8, [32 x i8], i8, [6 x i8], [6 x i8], i8, i8 }
%struct.profile_info = type { i8, [32 x i8], [6 x i8] }
%struct.tx_invite_resp_info = type { i8 }
%struct.tx_nego_req_info = type { [2 x i16], [6 x i8], i8 }
%struct.group_id_info = type { [6 x i8], [32 x i8] }
%struct.scan_limit_info = type { i8, [2 x i8] }
%struct.hal_data_8188e = type { %struct.HAL_VERSION, i16, i16, i16, i16, i8, i32, i32, i8, i8, i16, i8, i8, [14 x i8], [14 x i8], [4 x i8], [4 x i8], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], [3 x [14 x i8]], i8, i8, i8, i8, i8, [13 x [16 x i32]], i8, i8, i32, [2 x %struct.bb_reg_def], [2 x i32], i8, i8, i8, i8, i8, %struct.dm_priv, %struct.odm_dm_struct, i8, i8, i8, i8, i8, i8, i8, i16, %struct.P2P_PS_Offload_t, i8, i32, i8, i8, i32, i8, i8, i8, i8 }
%struct.HAL_VERSION = type { i32, i32, i32, i8 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_priv = type { i32, i32, i32, i32 }
%struct.odm_dm_struct = type { ptr, i8, i8, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x ptr], i16, [32 x %struct.odm_ra_info], %struct.odm_phy_dbg_info, %struct.fast_ant_train, %struct.rtw_dig, %struct.rtl_ps, %struct.false_alarm_stats, %struct.sw_ant_switch, %struct.edca_turbo, i8, %struct.odm_rate_adapt, %struct.odm_rf_cal, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_ra_info = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [5 x i16], i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.odm_phy_dbg_info = type { [3 x i8], i64, i64, i64, [3 x i32] }
%struct.fast_ant_train = type { i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x i32], [32 x i32], [32 x i32], [32 x i32], i8, i8 }
%struct.rtw_dig = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32 }
%struct.rtl_ps = type { i8, i8, i8, i32, i32, i32, i32 }
%struct.false_alarm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sw_ant_switch = type { i8, i8, i8 }
%struct.edca_turbo = type { i8, i8, i32 }
%struct.odm_rate_adapt = type { i8, i8, i8, i32 }
%struct.odm_rf_cal = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, [2 x i8], i8, [8 x i8], i8, %struct.ijk_matrix_regs_set, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [16 x i32], [4 x i32], [9 x i32], [9 x i32], [2 x [2 x i32]], i8, i8, i8, i8, i8 }
%struct.ijk_matrix_regs_set = type { i8, [1 x [8 x i32]] }
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }

@__const.writeOFDMPowerReg88E.regoffset_a = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@__const.writeOFDMPowerReg88E.regoffset_b = private unnamed_addr constant [6 x i16] [i16 2096, i16 2100, i16 2108, i16 2120, i16 2124, i16 2152], align 2
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 3604]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 2152]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 3604]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_PHY_RF6052SetBandwidth(ptr noundef %Adapter, i32 noundef %Bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %Bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %Bandwidth, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %RfRegChnlVal = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 31
  %1 = ptrtoint ptr %RfRegChnlVal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %RfRegChnlVal, align 4
  %or1 = or i32 %2, 3072
  store i32 %or1, ptr %RfRegChnlVal, align 4
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %RfRegChnlVal7 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 31
  %3 = ptrtoint ptr %RfRegChnlVal7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %RfRegChnlVal7, align 4
  %and9 = and i32 %4, -3073
  %or10 = or i32 %and9, 1024
  store i32 %or10, ptr %RfRegChnlVal7, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %sw.bb
  %or10.sink = phi i32 [ %or10, %sw.bb6 ], [ %or1, %sw.bb ]
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or10.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_PHY_RF6052SetCckTxPower(ptr noundef %Adapter, ptr nocapture noundef readonly %pPowerlevel) local_unnamed_addr #0 align 64 {
entry:
  %pwrtrac_value = alloca i32, align 4
  %direction = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwrtrac_value) #4
  %0 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwrtrac_value, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %direction) #4
  %1 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %direction, align 1, !annotation !9
  %sitesurvey_res = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 5, i32 16
  %2 = ptrtoint ptr %sitesurvey_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sitesurvey_res, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %for.body33.preheader

for.body33.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %pPowerlevel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pPowerlevel, align 1
  %arrayidx35.1 = getelementptr i8, ptr %pPowerlevel, i32 1
  %6 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx35.1, align 1
  %EEPROMRegulatory = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 11
  %8 = ptrtoint ptr %EEPROMRegulatory to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %EEPROMRegulatory, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp58 = icmp eq i8 %9, 0
  br i1 %cmp58, label %if.then60, label %for.body33.preheader.if.end80_crit_edge

for.body33.preheader.if.end80_crit_edge:          ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then:                                          ; preds = %entry
  %ExternalPA = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 28
  %10 = ptrtoint ptr %pPowerlevel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pPowerlevel, align 1
  %conv5 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv5
  %shl12 = shl nuw nsw i32 %conv5, 16
  %or13 = or i32 %or, %shl12
  %shl17 = shl nuw i32 %conv5, 24
  %or18 = or i32 %or13, %shl17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %or18)
  %cmp23 = icmp ugt i32 %or18, 32
  br i1 %cmp23, label %land.lhs.true, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ExternalPA to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ExternalPA, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool.not, i8 %11, i8 32
  %spec.select343 = select i1 %tobool.not, i8 %11, i8 0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.then.for.inc_crit_edge
  %TxAGC.sroa.0.sroa.20.0 = phi i8 [ %11, %if.then.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %TxAGC.sroa.0.sroa.0.0 = phi i8 [ %11, %if.then.for.inc_crit_edge ], [ %spec.select343, %land.lhs.true ]
  %arrayidx4.1 = getelementptr i8, ptr %pPowerlevel, i32 1
  %14 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.1, align 1
  %conv5.1 = zext i8 %15 to i32
  %shl.1 = shl nuw nsw i32 %conv5.1, 8
  %or.1 = or i32 %shl.1, %conv5.1
  %shl12.1 = shl nuw nsw i32 %conv5.1, 16
  %or13.1 = or i32 %or.1, %shl12.1
  %shl17.1 = shl nuw i32 %conv5.1, 24
  %or18.1 = or i32 %or13.1, %shl17.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %or18.1)
  %cmp23.1 = icmp ugt i32 %or18.1, 32
  br i1 %cmp23.1, label %land.lhs.true.1, label %for.inc.if.end80_crit_edge

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

land.lhs.true.1:                                  ; preds = %for.inc
  %16 = ptrtoint ptr %ExternalPA to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ExternalPA, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.1 = icmp eq i8 %17, 0
  br i1 %tobool.not.1, label %land.lhs.true.1.if.end80_crit_edge, label %if.then26.1

land.lhs.true.1.if.end80_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then26.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then60:                                        ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %conv36.1 = zext i8 %7 to i32
  %shl50.1 = shl nuw i32 %conv36.1, 24
  %conv36 = zext i8 %5 to i32
  %shl50 = shl nuw i32 %conv36, 24
  %arrayidx62 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx62, align 4
  %arrayidx65 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 0, i32 7
  %20 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx65, align 4
  %shl66 = shl i32 %21, 8
  %add = add i32 %shl66, %19
  %TxAGC.sroa.0.sroa.20.0.insert.ext338 = zext i8 %5 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.ext322 = zext i8 %5 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.shift323 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.18.0.insert.ext322, 8
  %TxAGC.sroa.0.sroa.18.0.insert.insert325 = or i32 %TxAGC.sroa.0.sroa.18.0.insert.shift323, %TxAGC.sroa.0.sroa.20.0.insert.ext338
  %TxAGC.sroa.0.sroa.16.0.insert.ext302 = zext i8 %5 to i32
  %TxAGC.sroa.0.sroa.16.0.insert.shift303 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.16.0.insert.ext302, 16
  %TxAGC.sroa.0.sroa.16.0.insert.insert305 = or i32 %TxAGC.sroa.0.sroa.18.0.insert.insert325, %TxAGC.sroa.0.sroa.16.0.insert.shift303
  %TxAGC.sroa.0.sroa.0.0.insert.insert285 = or i32 %TxAGC.sroa.0.sroa.16.0.insert.insert305, %shl50
  %add68 = add i32 %add, %TxAGC.sroa.0.sroa.0.0.insert.insert285
  %TxAGC.sroa.0.sroa.0.0.extract.shift280 = lshr i32 %add68, 24
  %TxAGC.sroa.0.sroa.0.0.extract.trunc281 = trunc i32 %TxAGC.sroa.0.sroa.0.0.extract.shift280 to i8
  %TxAGC.sroa.0.sroa.16.0.extract.shift300 = lshr i32 %add68, 16
  %TxAGC.sroa.0.sroa.16.0.extract.trunc301 = trunc i32 %TxAGC.sroa.0.sroa.16.0.extract.shift300 to i8
  %TxAGC.sroa.0.sroa.18.0.extract.shift320 = lshr i32 %add68, 8
  %TxAGC.sroa.0.sroa.18.0.extract.trunc321 = trunc i32 %TxAGC.sroa.0.sroa.18.0.extract.shift320 to i8
  %TxAGC.sroa.0.sroa.20.0.extract.trunc337 = trunc i32 %add68 to i8
  %arrayidx71 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 0, i32 14
  %22 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx71, align 4
  %arrayidx74 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx74, align 4
  %shl75 = shl i32 %25, 24
  %add76 = add i32 %shl75, %23
  %TxAGC.sroa.22.sroa.20.0.insert.ext265 = zext i8 %7 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.ext249 = zext i8 %7 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.shift250 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.18.0.insert.ext249, 8
  %TxAGC.sroa.22.sroa.18.0.insert.insert252 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.shift250, %TxAGC.sroa.22.sroa.20.0.insert.ext265
  %TxAGC.sroa.22.sroa.16.0.insert.ext229 = zext i8 %7 to i32
  %TxAGC.sroa.22.sroa.16.0.insert.shift230 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.16.0.insert.ext229, 16
  %TxAGC.sroa.22.sroa.16.0.insert.insert232 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.insert252, %TxAGC.sroa.22.sroa.16.0.insert.shift230
  %TxAGC.sroa.22.sroa.0.0.insert.insert212 = or i32 %TxAGC.sroa.22.sroa.16.0.insert.insert232, %shl50.1
  %add78 = add i32 %add76, %TxAGC.sroa.22.sroa.0.0.insert.insert212
  %TxAGC.sroa.22.sroa.0.0.extract.shift207 = lshr i32 %add78, 24
  %TxAGC.sroa.22.sroa.0.0.extract.trunc208 = trunc i32 %TxAGC.sroa.22.sroa.0.0.extract.shift207 to i8
  %TxAGC.sroa.22.sroa.16.0.extract.shift227 = lshr i32 %add78, 16
  %TxAGC.sroa.22.sroa.16.0.extract.trunc228 = trunc i32 %TxAGC.sroa.22.sroa.16.0.extract.shift227 to i8
  %TxAGC.sroa.22.sroa.18.0.extract.shift247 = lshr i32 %add78, 8
  %TxAGC.sroa.22.sroa.18.0.extract.trunc248 = trunc i32 %TxAGC.sroa.22.sroa.18.0.extract.shift247 to i8
  %TxAGC.sroa.22.sroa.20.0.extract.trunc264 = trunc i32 %add78 to i8
  br label %if.end80

if.end80:                                         ; preds = %if.then60, %if.then26.1, %land.lhs.true.1.if.end80_crit_edge, %for.inc.if.end80_crit_edge, %for.body33.preheader.if.end80_crit_edge
  %TxAGC.sroa.0.sroa.20.1 = phi i8 [ %TxAGC.sroa.0.sroa.20.0.extract.trunc337, %if.then60 ], [ %5, %for.body33.preheader.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.20.0, %if.then26.1 ], [ %TxAGC.sroa.0.sroa.20.0, %land.lhs.true.1.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.20.0, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.0.sroa.18.1 = phi i8 [ %TxAGC.sroa.0.sroa.18.0.extract.trunc321, %if.then60 ], [ %5, %for.body33.preheader.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %if.then26.1 ], [ %TxAGC.sroa.0.sroa.0.0, %land.lhs.true.1.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.0.sroa.16.1 = phi i8 [ %TxAGC.sroa.0.sroa.16.0.extract.trunc301, %if.then60 ], [ %5, %for.body33.preheader.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %if.then26.1 ], [ %TxAGC.sroa.0.sroa.0.0, %land.lhs.true.1.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.0.sroa.0.1 = phi i8 [ %TxAGC.sroa.0.sroa.0.0.extract.trunc281, %if.then60 ], [ %5, %for.body33.preheader.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %if.then26.1 ], [ %TxAGC.sroa.0.sroa.0.0, %land.lhs.true.1.if.end80_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.22.sroa.20.1 = phi i8 [ %TxAGC.sroa.22.sroa.20.0.extract.trunc264, %if.then60 ], [ %7, %for.body33.preheader.if.end80_crit_edge ], [ 32, %if.then26.1 ], [ %15, %land.lhs.true.1.if.end80_crit_edge ], [ %15, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.22.sroa.18.1 = phi i8 [ %TxAGC.sroa.22.sroa.18.0.extract.trunc248, %if.then60 ], [ %7, %for.body33.preheader.if.end80_crit_edge ], [ 0, %if.then26.1 ], [ %15, %land.lhs.true.1.if.end80_crit_edge ], [ %15, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.22.sroa.16.1 = phi i8 [ %TxAGC.sroa.22.sroa.16.0.extract.trunc228, %if.then60 ], [ %7, %for.body33.preheader.if.end80_crit_edge ], [ 0, %if.then26.1 ], [ %15, %land.lhs.true.1.if.end80_crit_edge ], [ %15, %for.inc.if.end80_crit_edge ]
  %TxAGC.sroa.22.sroa.0.1 = phi i8 [ %TxAGC.sroa.22.sroa.0.0.extract.trunc208, %if.then60 ], [ %7, %for.body33.preheader.if.end80_crit_edge ], [ 0, %if.then26.1 ], [ %15, %land.lhs.true.1.if.end80_crit_edge ], [ %15, %for.inc.if.end80_crit_edge ]
  %26 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.0.sroa.0.1, i8 63)
  %27 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.0.sroa.16.1, i8 63)
  %28 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.0.sroa.18.1, i8 63)
  %29 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.0.sroa.20.1, i8 63)
  %30 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.22.sroa.0.1, i8 63)
  %31 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.22.sroa.16.1, i8 63)
  %32 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.22.sroa.18.1, i8 63)
  %33 = call i8 @llvm.umin.i8(i8 %TxAGC.sroa.22.sroa.20.1, i8 63)
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  call void @ODM_TxPwrTrackAdjust88E(ptr noundef %odmpriv, i8 noundef zeroext 1, ptr noundef nonnull %direction, ptr noundef nonnull %pwrtrac_value) #4
  %34 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %direction, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %35, label %if.end80.if.end121_crit_edge [
    i8 1, label %if.then107
    i8 2, label %if.then116
  ]

if.end80.if.end121_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then107:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pwrtrac_value, align 4
  %TxAGC.sroa.0.sroa.20.0.insert.ext = zext i8 %29 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.ext = zext i8 %28 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.shift = shl nuw nsw i32 %TxAGC.sroa.0.sroa.18.0.insert.ext, 8
  %TxAGC.sroa.0.sroa.18.0.insert.insert = or i32 %TxAGC.sroa.0.sroa.18.0.insert.shift, %TxAGC.sroa.0.sroa.20.0.insert.ext
  %TxAGC.sroa.0.sroa.16.0.insert.ext = zext i8 %27 to i32
  %TxAGC.sroa.0.sroa.16.0.insert.shift = shl nuw nsw i32 %TxAGC.sroa.0.sroa.16.0.insert.ext, 16
  %TxAGC.sroa.0.sroa.16.0.insert.insert = or i32 %TxAGC.sroa.0.sroa.18.0.insert.insert, %TxAGC.sroa.0.sroa.16.0.insert.shift
  %TxAGC.sroa.0.sroa.0.0.insert.ext = zext i8 %26 to i32
  %TxAGC.sroa.0.sroa.0.0.insert.shift = shl nuw nsw i32 %TxAGC.sroa.0.sroa.0.0.insert.ext, 24
  %TxAGC.sroa.0.sroa.0.0.insert.insert = or i32 %TxAGC.sroa.0.sroa.16.0.insert.insert, %TxAGC.sroa.0.sroa.0.0.insert.shift
  %add109 = add i32 %TxAGC.sroa.0.sroa.0.0.insert.insert, %38
  %TxAGC.sroa.0.sroa.0.0.extract.shift = lshr i32 %add109, 24
  %TxAGC.sroa.0.sroa.0.0.extract.trunc = trunc i32 %TxAGC.sroa.0.sroa.0.0.extract.shift to i8
  %TxAGC.sroa.0.sroa.16.0.extract.shift = lshr i32 %add109, 16
  %TxAGC.sroa.0.sroa.16.0.extract.trunc = trunc i32 %TxAGC.sroa.0.sroa.16.0.extract.shift to i8
  %TxAGC.sroa.0.sroa.18.0.extract.shift = lshr i32 %add109, 8
  %TxAGC.sroa.0.sroa.18.0.extract.trunc = trunc i32 %TxAGC.sroa.0.sroa.18.0.extract.shift to i8
  %TxAGC.sroa.0.sroa.20.0.extract.trunc = trunc i32 %add109 to i8
  %TxAGC.sroa.22.sroa.20.0.insert.ext261 = zext i8 %33 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.ext243 = zext i8 %32 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.shift244 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.18.0.insert.ext243, 8
  %TxAGC.sroa.22.sroa.18.0.insert.insert246 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.shift244, %TxAGC.sroa.22.sroa.20.0.insert.ext261
  %TxAGC.sroa.22.sroa.16.0.insert.ext223 = zext i8 %31 to i32
  %TxAGC.sroa.22.sroa.16.0.insert.shift224 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.16.0.insert.ext223, 16
  %TxAGC.sroa.22.sroa.16.0.insert.insert226 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.insert246, %TxAGC.sroa.22.sroa.16.0.insert.shift224
  %TxAGC.sroa.22.sroa.0.0.insert.ext203 = zext i8 %30 to i32
  %TxAGC.sroa.22.sroa.0.0.insert.shift204 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.0.0.insert.ext203, 24
  %TxAGC.sroa.22.sroa.0.0.insert.insert206 = or i32 %TxAGC.sroa.22.sroa.16.0.insert.insert226, %TxAGC.sroa.22.sroa.0.0.insert.shift204
  %add111 = add i32 %TxAGC.sroa.22.sroa.0.0.insert.insert206, %38
  %TxAGC.sroa.22.sroa.0.0.extract.shift201 = lshr i32 %add111, 24
  %TxAGC.sroa.22.sroa.0.0.extract.trunc202 = trunc i32 %TxAGC.sroa.22.sroa.0.0.extract.shift201 to i8
  %TxAGC.sroa.22.sroa.16.0.extract.shift221 = lshr i32 %add111, 16
  %TxAGC.sroa.22.sroa.16.0.extract.trunc222 = trunc i32 %TxAGC.sroa.22.sroa.16.0.extract.shift221 to i8
  %TxAGC.sroa.22.sroa.18.0.extract.shift241 = lshr i32 %add111, 8
  %TxAGC.sroa.22.sroa.18.0.extract.trunc242 = trunc i32 %TxAGC.sroa.22.sroa.18.0.extract.shift241 to i8
  %TxAGC.sroa.22.sroa.20.0.extract.trunc260 = trunc i32 %add111 to i8
  br label %if.end121

if.then116:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pwrtrac_value, align 4
  %TxAGC.sroa.0.sroa.20.0.insert.ext334 = zext i8 %29 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.ext316 = zext i8 %28 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.shift317 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.18.0.insert.ext316, 8
  %TxAGC.sroa.0.sroa.18.0.insert.insert319 = or i32 %TxAGC.sroa.0.sroa.18.0.insert.shift317, %TxAGC.sroa.0.sroa.20.0.insert.ext334
  %TxAGC.sroa.0.sroa.16.0.insert.ext296 = zext i8 %27 to i32
  %TxAGC.sroa.0.sroa.16.0.insert.shift297 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.16.0.insert.ext296, 16
  %TxAGC.sroa.0.sroa.16.0.insert.insert299 = or i32 %TxAGC.sroa.0.sroa.18.0.insert.insert319, %TxAGC.sroa.0.sroa.16.0.insert.shift297
  %TxAGC.sroa.0.sroa.0.0.insert.ext276 = zext i8 %26 to i32
  %TxAGC.sroa.0.sroa.0.0.insert.shift277 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.0.0.insert.ext276, 24
  %TxAGC.sroa.0.sroa.0.0.insert.insert279 = or i32 %TxAGC.sroa.0.sroa.16.0.insert.insert299, %TxAGC.sroa.0.sroa.0.0.insert.shift277
  %sub = sub i32 %TxAGC.sroa.0.sroa.0.0.insert.insert279, %40
  %TxAGC.sroa.0.sroa.0.0.extract.shift274 = lshr i32 %sub, 24
  %TxAGC.sroa.0.sroa.0.0.extract.trunc275 = trunc i32 %TxAGC.sroa.0.sroa.0.0.extract.shift274 to i8
  %TxAGC.sroa.0.sroa.16.0.extract.shift294 = lshr i32 %sub, 16
  %TxAGC.sroa.0.sroa.16.0.extract.trunc295 = trunc i32 %TxAGC.sroa.0.sroa.16.0.extract.shift294 to i8
  %TxAGC.sroa.0.sroa.18.0.extract.shift314 = lshr i32 %sub, 8
  %TxAGC.sroa.0.sroa.18.0.extract.trunc315 = trunc i32 %TxAGC.sroa.0.sroa.18.0.extract.shift314 to i8
  %TxAGC.sroa.0.sroa.20.0.extract.trunc333 = trunc i32 %sub to i8
  %TxAGC.sroa.22.sroa.20.0.insert.ext257 = zext i8 %33 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.ext237 = zext i8 %32 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.shift238 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.18.0.insert.ext237, 8
  %TxAGC.sroa.22.sroa.18.0.insert.insert240 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.shift238, %TxAGC.sroa.22.sroa.20.0.insert.ext257
  %TxAGC.sroa.22.sroa.16.0.insert.ext217 = zext i8 %31 to i32
  %TxAGC.sroa.22.sroa.16.0.insert.shift218 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.16.0.insert.ext217, 16
  %TxAGC.sroa.22.sroa.16.0.insert.insert220 = or i32 %TxAGC.sroa.22.sroa.18.0.insert.insert240, %TxAGC.sroa.22.sroa.16.0.insert.shift218
  %TxAGC.sroa.22.sroa.0.0.insert.ext197 = zext i8 %30 to i32
  %TxAGC.sroa.22.sroa.0.0.insert.shift198 = shl nuw nsw i32 %TxAGC.sroa.22.sroa.0.0.insert.ext197, 24
  %TxAGC.sroa.22.sroa.0.0.insert.insert200 = or i32 %TxAGC.sroa.22.sroa.16.0.insert.insert220, %TxAGC.sroa.22.sroa.0.0.insert.shift198
  %sub119 = sub i32 %TxAGC.sroa.22.sroa.0.0.insert.insert200, %40
  %TxAGC.sroa.22.sroa.0.0.extract.shift = lshr i32 %sub119, 24
  %TxAGC.sroa.22.sroa.0.0.extract.trunc = trunc i32 %TxAGC.sroa.22.sroa.0.0.extract.shift to i8
  %TxAGC.sroa.22.sroa.16.0.extract.shift = lshr i32 %sub119, 16
  %TxAGC.sroa.22.sroa.16.0.extract.trunc = trunc i32 %TxAGC.sroa.22.sroa.16.0.extract.shift to i8
  %TxAGC.sroa.22.sroa.18.0.extract.shift = lshr i32 %sub119, 8
  %TxAGC.sroa.22.sroa.18.0.extract.trunc = trunc i32 %TxAGC.sroa.22.sroa.18.0.extract.shift to i8
  %TxAGC.sroa.22.sroa.20.0.extract.trunc = trunc i32 %sub119 to i8
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %if.then107, %if.end80.if.end121_crit_edge
  %TxAGC.sroa.0.sroa.20.3 = phi i8 [ %29, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.0.sroa.20.0.extract.trunc333, %if.then116 ], [ %TxAGC.sroa.0.sroa.20.0.extract.trunc, %if.then107 ]
  %TxAGC.sroa.0.sroa.18.3 = phi i8 [ %28, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.0.sroa.18.0.extract.trunc315, %if.then116 ], [ %TxAGC.sroa.0.sroa.18.0.extract.trunc, %if.then107 ]
  %TxAGC.sroa.0.sroa.16.3 = phi i8 [ %27, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.0.sroa.16.0.extract.trunc295, %if.then116 ], [ %TxAGC.sroa.0.sroa.16.0.extract.trunc, %if.then107 ]
  %TxAGC.sroa.0.sroa.0.3 = phi i8 [ %26, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.0.sroa.0.0.extract.trunc275, %if.then116 ], [ %TxAGC.sroa.0.sroa.0.0.extract.trunc, %if.then107 ]
  %TxAGC.sroa.22.sroa.20.3 = phi i8 [ %33, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.22.sroa.20.0.extract.trunc, %if.then116 ], [ %TxAGC.sroa.22.sroa.20.0.extract.trunc260, %if.then107 ]
  %TxAGC.sroa.22.sroa.18.3 = phi i8 [ %32, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.22.sroa.18.0.extract.trunc, %if.then116 ], [ %TxAGC.sroa.22.sroa.18.0.extract.trunc242, %if.then107 ]
  %TxAGC.sroa.22.sroa.16.3 = phi i8 [ %31, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.22.sroa.16.0.extract.trunc, %if.then116 ], [ %TxAGC.sroa.22.sroa.16.0.extract.trunc222, %if.then107 ]
  %TxAGC.sroa.22.sroa.0.3 = phi i8 [ %30, %if.end80.if.end121_crit_edge ], [ %TxAGC.sroa.22.sroa.0.0.extract.trunc, %if.then116 ], [ %TxAGC.sroa.22.sroa.0.0.extract.trunc202, %if.then107 ]
  %TxAGC.sroa.0.sroa.20.0.insert.ext330 = zext i8 %TxAGC.sroa.0.sroa.20.3 to i32
  %TxAGC.sroa.0.sroa.18.0.insert.ext310 = zext i8 %TxAGC.sroa.0.sroa.18.3 to i32
  %TxAGC.sroa.0.sroa.16.0.insert.ext290 = zext i8 %TxAGC.sroa.0.sroa.16.3 to i32
  %TxAGC.sroa.0.sroa.16.0.insert.shift291 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.16.0.insert.ext290, 8
  %TxAGC.sroa.0.sroa.16.0.insert.insert293 = or i32 %TxAGC.sroa.0.sroa.16.0.insert.shift291, %TxAGC.sroa.0.sroa.18.0.insert.ext310
  %TxAGC.sroa.0.sroa.0.0.insert.ext270 = zext i8 %TxAGC.sroa.0.sroa.0.3 to i32
  %TxAGC.sroa.0.sroa.0.0.insert.shift271 = shl nuw nsw i32 %TxAGC.sroa.0.sroa.0.0.insert.ext270, 16
  %TxAGC.sroa.0.sroa.0.0.insert.insert273 = or i32 %TxAGC.sroa.0.sroa.16.0.insert.insert293, %TxAGC.sroa.0.sroa.0.0.insert.shift271
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 3592, i32 noundef 65280, i32 noundef %TxAGC.sroa.0.sroa.20.0.insert.ext330) #4
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2156, i32 noundef -256, i32 noundef %TxAGC.sroa.0.sroa.0.0.insert.insert273) #4
  %TxAGC.sroa.22.sroa.20.0.insert.ext = zext i8 %TxAGC.sroa.22.sroa.20.3 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.ext = zext i8 %TxAGC.sroa.22.sroa.18.3 to i32
  %TxAGC.sroa.22.sroa.18.0.insert.shift = shl nuw nsw i32 %TxAGC.sroa.22.sroa.18.0.insert.ext, 8
  %TxAGC.sroa.22.sroa.18.0.insert.insert = or i32 %TxAGC.sroa.22.sroa.18.0.insert.shift, %TxAGC.sroa.22.sroa.20.0.insert.ext
  %TxAGC.sroa.22.sroa.16.0.insert.ext = zext i8 %TxAGC.sroa.22.sroa.16.3 to i32
  %TxAGC.sroa.22.sroa.16.0.insert.shift = shl nuw nsw i32 %TxAGC.sroa.22.sroa.16.0.insert.ext, 16
  %TxAGC.sroa.22.sroa.16.0.insert.insert = or i32 %TxAGC.sroa.22.sroa.18.0.insert.insert, %TxAGC.sroa.22.sroa.16.0.insert.shift
  %TxAGC.sroa.22.sroa.0.0.insert.ext = zext i8 %TxAGC.sroa.22.sroa.0.3 to i32
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2156, i32 noundef 255, i32 noundef %TxAGC.sroa.22.sroa.0.0.insert.ext) #4
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef 2104, i32 noundef -256, i32 noundef %TxAGC.sroa.22.sroa.16.0.insert.insert) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %direction) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwrtrac_value) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ODM_TxPwrTrackAdjust88E(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8188e_PHY_RF6052SetOFDMTxPower(ptr noundef %Adapter, ptr nocapture noundef readonly %pPowerLevelOFDM, ptr nocapture noundef readonly %pPowerLevelBW20, ptr nocapture noundef readonly %pPowerLevelBW40, i8 noundef zeroext %Channel) local_unnamed_addr #0 align 64 {
entry:
  %pwrtrac_value = alloca i32, align 4
  %direction = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwrtrac_value) #4
  %0 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwrtrac_value, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %direction) #4
  %1 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %direction, align 1, !annotation !9
  %2 = ptrtoint ptr %pPowerLevelOFDM to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pPowerLevelOFDM, align 1
  %conv2.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv2.i, 24
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %shl4.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv2.i
  %or5.i = or i32 %or.i, %shl.i
  %or6.i = or i32 %or5.i, %shl4.i
  %arrayidx.1.i = getelementptr i8, ptr %pPowerLevelOFDM, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1.i, align 1
  %conv2.1.i = zext i8 %5 to i32
  %shl.1.i = shl nuw i32 %conv2.1.i, 24
  %shl3.1.i = shl nuw nsw i32 %conv2.1.i, 16
  %shl4.1.i = shl nuw nsw i32 %conv2.1.i, 8
  %or.1.i = or i32 %shl3.1.i, %conv2.1.i
  %or5.1.i = or i32 %or.1.i, %shl.1.i
  %or6.1.i = or i32 %or5.1.i, %shl4.1.i
  %CurrentChannelBW.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 7
  %6 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %CurrentChannelBW.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.i = icmp eq i32 %7, 0
  %pPowerLevelBW20.pPowerLevelBW40.i = select i1 %cmp8.i, ptr %pPowerLevelBW20, ptr %pPowerLevelBW40
  %8 = ptrtoint ptr %pPowerLevelBW20.pPowerLevelBW40.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %powerBase1.0.in.i = load i8, ptr %pPowerLevelBW20.pPowerLevelBW40.i, align 1
  %powerBase1.0.i = zext i8 %powerBase1.0.in.i to i32
  %shl14.i = shl nuw i32 %powerBase1.0.i, 24
  %shl15.i = shl nuw nsw i32 %powerBase1.0.i, 16
  %shl17.i = shl nuw nsw i32 %powerBase1.0.i, 8
  %or16.i = or i32 %shl15.i, %powerBase1.0.i
  %or18.i = or i32 %or16.i, %shl14.i
  %or19.i = or i32 %or18.i, %shl17.i
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  call void @ODM_TxPwrTrackAdjust88E(ptr noundef %odmpriv, i8 noundef zeroext 0, ptr noundef nonnull %direction, ptr noundef nonnull %pwrtrac_value) #4
  %EEPROMRegulatory.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 11
  %conv96.i = zext i8 %Channel to i32
  %sub97.i = add nsw i32 %conv96.i, -1
  %MCSTxPowerLevelOriginalOffset131.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26
  %arrayidx98.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 17, i32 0, i32 %sub97.i
  %arrayidx90.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 18, i32 0, i32 %sub97.i
  %arrayidx108.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 20, i32 0, i32 %sub97.i
  %arrayidx113.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 19, i32 0, i32 %sub97.i
  %arrayidx98.1.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 17, i32 1, i32 %sub97.i
  %arrayidx90.1.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 18, i32 1, i32 %sub97.i
  %arrayidx108.1.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 20, i32 1, i32 %sub97.i
  %arrayidx113.1.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 19, i32 1, i32 %sub97.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %Channel)
  %cmp45.i = icmp eq i8 %Channel, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %Channel)
  %cmp40.i = icmp ult i8 %Channel, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %Channel)
  %cmp35.i = icmp ult i8 %Channel, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %Channel)
  %cmp30.i = icmp ult i8 %Channel, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %Channel)
  %cmp25.i = icmp ult i8 %Channel, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %Channel)
  %cmp21.i = icmp ult i8 %Channel, 3
  %PGMaxGroup.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 5
  %pwrGroupCnt.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 25
  %spec.select275.i = select i1 %cmp45.i, i8 5, i8 0
  %spec.select291.i = select i1 %cmp40.i, i8 4, i8 %spec.select275.i
  br label %for.body

for.body:                                         ; preds = %for.inc97.i.1.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc97.i.1.for.body_crit_edge ]
  %9 = ptrtoint ptr %EEPROMRegulatory.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %EEPROMRegulatory.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp85.i = icmp ult i32 %indvars.iv, 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %10, label %sw.epilog.i [
    i8 0, label %sw.epilog.thread.i
    i8 1, label %sw.epilog.thread303.i
    i8 2, label %sw.epilog.thread308.i
    i8 3, label %sw.bb83.i
  ]

sw.epilog.thread.i:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx2.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %indvars.iv
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %cond8.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.i, i32 %or19.i
  %add9.i = add i32 %13, %cond8.i.sroa.speculated
  %add.1.i = add nuw nsw i32 %indvars.iv, 8
  %arrayidx2.1.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %add.1.i
  %14 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.1.i, align 4
  %cond8.1.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.1.i, i32 -1
  %add9.1.i = add i32 %15, %cond8.1.i.sroa.speculated
  br label %get_rx_power_val_by_reg.exit

sw.epilog.thread303.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %pwrGroupCnt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwrGroupCnt.i, align 2
  %18 = ptrtoint ptr %PGMaxGroup.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %PGMaxGroup.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp17.not.i = icmp ult i8 %17, %19
  %brmerge.i = or i1 %cmp21.i, %cmp17.not.i
  %brmerge288.i = or i1 %cmp25.i, %cmp17.not.i
  %not.brmerge.i = xor i1 %brmerge.i, true
  %spec.select.mux.mux.i = zext i1 %not.brmerge.i to i8
  %brmerge289.i = or i1 %cmp30.i, %cmp17.not.i
  %spec.select.mux.mux.mux.i = select i1 %brmerge288.i, i8 %spec.select.mux.mux.i, i8 2
  %brmerge290.i = or i1 %cmp35.i, %cmp17.not.i
  %spec.select.mux.mux.mux.mux.i = select i1 %brmerge289.i, i8 %spec.select.mux.mux.mux.i, i8 3
  %chnlGroup.2.i = select i1 %brmerge290.i, i8 %spec.select.mux.mux.mux.mux.i, i8 %spec.select291.i
  %idxprom56.i = zext i8 %chnlGroup.2.i to i32
  %arrayidx62.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom56.i, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx62.i, align 4
  %cond71.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.i, i32 %or19.i
  %add72.i = add i32 %21, %cond71.i.sroa.speculated
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp12.1.i = icmp eq i8 %17, 1
  %spec.select.1.i = select i1 %cmp12.1.i, i8 0, i8 %chnlGroup.2.i
  %spec.select.mux.1.i = select i1 %cmp17.not.i, i8 %spec.select.1.i, i8 0
  %spec.select.mux.mux.1.i = select i1 %brmerge.i, i8 %spec.select.mux.1.i, i8 1
  %spec.select.mux.mux.mux.1.i = select i1 %brmerge288.i, i8 %spec.select.mux.mux.1.i, i8 2
  %spec.select.mux.mux.mux.mux.1.i = select i1 %brmerge289.i, i8 %spec.select.mux.mux.mux.1.i, i8 3
  %spec.select275.1.i = select i1 %cmp45.i, i8 5, i8 %spec.select.1.i
  %spec.select291.1.i = select i1 %cmp40.i, i8 4, i8 %spec.select275.1.i
  %chnlGroup.2.1.i = select i1 %brmerge290.i, i8 %spec.select.mux.mux.mux.mux.1.i, i8 %spec.select291.1.i
  %idxprom56.1.i = zext i8 %chnlGroup.2.1.i to i32
  %add61.1.i = add nuw nsw i32 %indvars.iv, 8
  %arrayidx62.1.i = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 26, i32 %idxprom56.1.i, i32 %add61.1.i
  %22 = ptrtoint ptr %arrayidx62.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx62.1.i, align 4
  %cond71.1.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.1.i, i32 -1
  %add72.1.i = add i32 %23, %cond71.1.i.sroa.speculated
  br label %get_rx_power_val_by_reg.exit

sw.epilog.thread308.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %cond82.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.i, i32 %or19.i
  %cond82.1.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.1.i, i32 -1
  br label %get_rx_power_val_by_reg.exit

sw.bb83.i:                                        ; preds = %for.body
  br i1 %cmp85.i, label %sw.bb83.i.sw.epilog.thread312.sink.split.i_crit_edge, label %if.else91.i

sw.bb83.i.sw.epilog.thread312.sink.split.i_crit_edge: ; preds = %sw.bb83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread312.sink.split.i

if.else91.i:                                      ; preds = %sw.bb83.i
  %24 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %CurrentChannelBW.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp92.i = icmp eq i32 %25, 0
  br i1 %cmp92.i, label %if.else91.i.sw.epilog.thread312.sink.split.i_crit_edge, label %if.else91.i.sw.epilog.thread312.i_crit_edge

if.else91.i.sw.epilog.thread312.i_crit_edge:      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread312.i

if.else91.i.sw.epilog.thread312.sink.split.i_crit_edge: ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread312.sink.split.i

sw.epilog.thread312.sink.split.i:                 ; preds = %if.else91.i.sw.epilog.thread312.sink.split.i_crit_edge, %sw.bb83.i.sw.epilog.thread312.sink.split.i_crit_edge
  %arrayidx90.sink.i = phi ptr [ %arrayidx90.i, %sw.bb83.i.sw.epilog.thread312.sink.split.i_crit_edge ], [ %arrayidx98.i, %if.else91.i.sw.epilog.thread312.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %arrayidx90.sink.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx90.sink.i, align 1
  %28 = ptrtoint ptr %CurrentChannelBW.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %CurrentChannelBW.i, align 8
  br label %sw.epilog.thread312.i

sw.epilog.thread312.i:                            ; preds = %sw.epilog.thread312.sink.split.i, %if.else91.i.sw.epilog.thread312.i_crit_edge
  %29 = phi i32 [ %.pr, %sw.epilog.thread312.sink.split.i ], [ %25, %if.else91.i.sw.epilog.thread312.i_crit_edge ]
  %pwr_diff.1.i = phi i8 [ %27, %sw.epilog.thread312.sink.split.i ], [ 0, %if.else91.i.sw.epilog.thread312.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp102.i = icmp eq i32 %29, 1
  %customer_pwr_limit.0.in.i = select i1 %cmp102.i, ptr %arrayidx108.i, ptr %arrayidx113.i
  %30 = ptrtoint ptr %customer_pwr_limit.0.in.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %customer_pwr_limit.0.i = load i8, ptr %customer_pwr_limit.0.in.i, align 1
  %conv115.i = sext i8 %pwr_diff.1.i to i32
  %conv116.i = zext i8 %customer_pwr_limit.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv116.i, i32 %conv115.i)
  %cmp117.not.i = icmp sgt i32 %conv116.i, %conv115.i
  %sub123.i = sub i8 %customer_pwr_limit.0.i, %pwr_diff.1.i
  %pwr_diff.2.i = select i1 %cmp117.not.i, i8 %sub123.i, i8 0
  %arrayidx138.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %indvars.iv
  %31 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx138.i, align 4
  %conv148.i = sext i8 %pwr_diff.2.i to i32
  %and.i = and i32 %32, 127
  %conv142.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv148.i)
  %cmp149.i = icmp sgt i32 %and.i, %conv148.i
  %spec.select278.i = select i1 %cmp149.i, i8 %pwr_diff.2.i, i8 %conv142.i
  %and.1.i = lshr i32 %32, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv142.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv148.i)
  %cmp149.1.i = icmp sgt i32 %shr.1.i, %conv148.i
  %spec.select278.1.i = select i1 %cmp149.1.i, i8 %pwr_diff.2.i, i8 %conv142.1.i
  %and.2.i = lshr i32 %32, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv142.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv148.i)
  %cmp149.2.i = icmp sgt i32 %shr.2.i, %conv148.i
  %spec.select278.2.i = select i1 %cmp149.2.i, i8 %pwr_diff.2.i, i8 %conv142.2.i
  %and.3.i = lshr i32 %32, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv142.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv148.i)
  %cmp149.3.i = icmp sgt i32 %shr.3.i, %conv148.i
  %spec.select278.3.i = select i1 %cmp149.3.i, i8 %pwr_diff.2.i, i8 %conv142.3.i
  %conv156.i = zext i8 %spec.select278.3.i to i32
  %shl157.i = shl nuw i32 %conv156.i, 24
  %conv159.i = zext i8 %spec.select278.2.i to i32
  %shl160.i = shl nuw nsw i32 %conv159.i, 16
  %conv162.i = zext i8 %spec.select278.1.i to i32
  %shl163.i = shl nuw nsw i32 %conv162.i, 8
  %conv166.i = zext i8 %spec.select278.i to i32
  %cond176.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.i, i32 %or19.i
  %or167.i = add i32 %cond176.i.sroa.speculated, %conv166.i
  %or.i29 = add i32 %or167.i, %shl157.i
  %or164.i = add i32 %or.i29, %shl160.i
  %add177.i = add i32 %or164.i, %shl163.i
  br i1 %cmp85.i, label %sw.epilog.thread312.i.if.end100.1.sink.split.i_crit_edge, label %if.else91.1.i

sw.epilog.thread312.i.if.end100.1.sink.split.i_crit_edge: ; preds = %sw.epilog.thread312.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100.1.sink.split.i

sw.epilog.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx185.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %indvars.iv
  %33 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx185.i, align 4
  %cond194.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.i, i32 %or19.i
  %add195.i = add i32 %34, %cond194.i.sroa.speculated
  %add184.1.i = add nuw nsw i32 %indvars.iv, 8
  %arrayidx185.1.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %add184.1.i
  %35 = ptrtoint ptr %arrayidx185.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx185.1.i, align 4
  %cond194.1.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.1.i, i32 -1
  %add195.1.i = add i32 %36, %cond194.1.i.sroa.speculated
  br label %get_rx_power_val_by_reg.exit

if.else91.1.i:                                    ; preds = %sw.epilog.thread312.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp92.1.i = icmp eq i32 %29, 0
  br i1 %cmp92.1.i, label %if.else91.1.i.if.end100.1.sink.split.i_crit_edge, label %if.else91.1.i.if.end100.1.i_crit_edge

if.else91.1.i.if.end100.1.i_crit_edge:            ; preds = %if.else91.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100.1.i

if.else91.1.i.if.end100.1.sink.split.i_crit_edge: ; preds = %if.else91.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100.1.sink.split.i

if.end100.1.sink.split.i:                         ; preds = %if.else91.1.i.if.end100.1.sink.split.i_crit_edge, %sw.epilog.thread312.i.if.end100.1.sink.split.i_crit_edge
  %arrayidx90.1.sink.i = phi ptr [ %arrayidx98.1.i, %if.else91.1.i.if.end100.1.sink.split.i_crit_edge ], [ %arrayidx90.1.i, %sw.epilog.thread312.i.if.end100.1.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %arrayidx90.1.sink.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx90.1.sink.i, align 1
  %.pre = sext i8 %38 to i32
  br label %if.end100.1.i

if.end100.1.i:                                    ; preds = %if.end100.1.sink.split.i, %if.else91.1.i.if.end100.1.i_crit_edge
  %conv115.1.i.pre-phi = phi i32 [ %.pre, %if.end100.1.sink.split.i ], [ %conv148.i, %if.else91.1.i.if.end100.1.i_crit_edge ]
  %pwr_diff.1.1.i = phi i8 [ %38, %if.end100.1.sink.split.i ], [ %pwr_diff.2.i, %if.else91.1.i.if.end100.1.i_crit_edge ]
  %customer_pwr_limit.0.in.1.i = select i1 %cmp102.i, ptr %arrayidx108.1.i, ptr %arrayidx113.1.i
  %39 = ptrtoint ptr %customer_pwr_limit.0.in.1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %customer_pwr_limit.0.1.i = load i8, ptr %customer_pwr_limit.0.in.1.i, align 1
  %conv116.1.i = zext i8 %customer_pwr_limit.0.1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv115.1.i.pre-phi, i32 %conv116.1.i)
  %cmp117.not.1.i = icmp slt i32 %conv115.1.i.pre-phi, %conv116.1.i
  %sub123.1.i = sub i8 %customer_pwr_limit.0.1.i, %pwr_diff.1.1.i
  %pwr_diff.2.1.i = select i1 %cmp117.not.1.i, i8 %sub123.1.i, i8 0
  %add137.1.i = add nuw nsw i32 %indvars.iv, 8
  %arrayidx138.1.i = getelementptr [16 x i32], ptr %MCSTxPowerLevelOriginalOffset131.i, i32 0, i32 %add137.1.i
  %40 = ptrtoint ptr %arrayidx138.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx138.1.i, align 4
  %conv148.1.i = sext i8 %pwr_diff.2.1.i to i32
  %and.1292.i = and i32 %41, 127
  %conv142.1293.i = trunc i32 %and.1292.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1292.i, i32 %conv148.1.i)
  %cmp149.1294.i = icmp sgt i32 %and.1292.i, %conv148.1.i
  %spec.select278.1295.i = select i1 %cmp149.1294.i, i8 %pwr_diff.2.1.i, i8 %conv142.1293.i
  %and.1.1.i = lshr i32 %41, 8
  %shr.1.1.i = and i32 %and.1.1.i, 127
  %conv142.1.1.i = trunc i32 %shr.1.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.1.i, i32 %conv148.1.i)
  %cmp149.1.1.i = icmp sgt i32 %shr.1.1.i, %conv148.1.i
  %spec.select278.1.1.i = select i1 %cmp149.1.1.i, i8 %pwr_diff.2.1.i, i8 %conv142.1.1.i
  %and.2.1.i = lshr i32 %41, 16
  %shr.2.1.i = and i32 %and.2.1.i, 127
  %conv142.2.1.i = trunc i32 %shr.2.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.1.i, i32 %conv148.1.i)
  %cmp149.2.1.i = icmp sgt i32 %shr.2.1.i, %conv148.1.i
  %spec.select278.2.1.i = select i1 %cmp149.2.1.i, i8 %pwr_diff.2.1.i, i8 %conv142.2.1.i
  %and.3.1.i = lshr i32 %41, 24
  %shr.3.1.i = and i32 %and.3.1.i, 127
  %conv142.3.1.i = trunc i32 %shr.3.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.1.i, i32 %conv148.1.i)
  %cmp149.3.1.i = icmp sgt i32 %shr.3.1.i, %conv148.1.i
  %spec.select278.3.1.i = select i1 %cmp149.3.1.i, i8 %pwr_diff.2.1.i, i8 %conv142.3.1.i
  %conv156.1.i = zext i8 %spec.select278.3.1.i to i32
  %shl157.1.i = shl nuw i32 %conv156.1.i, 24
  %conv159.1.i = zext i8 %spec.select278.2.1.i to i32
  %shl160.1.i = shl nuw nsw i32 %conv159.1.i, 16
  %conv162.1.i = zext i8 %spec.select278.1.1.i to i32
  %shl163.1.i = shl nuw nsw i32 %conv162.1.i, 8
  %conv166.1.i = zext i8 %spec.select278.1295.i to i32
  %cond176.1.i.sroa.speculated = select i1 %cmp85.i, i32 %or6.1.i, i32 -1
  %or167.1.i = add i32 %cond176.1.i.sroa.speculated, %conv166.1.i
  %or.1.i30 = add i32 %or167.1.i, %shl157.1.i
  %or164.1.i = add i32 %or.1.i30, %shl160.1.i
  %add177.1.i = add i32 %or164.1.i, %shl163.1.i
  br label %get_rx_power_val_by_reg.exit

get_rx_power_val_by_reg.exit:                     ; preds = %if.end100.1.i, %sw.epilog.i, %sw.epilog.thread308.i, %sw.epilog.thread303.i, %sw.epilog.thread.i
  %writeVal.sroa.0.0 = phi i32 [ %add195.i, %sw.epilog.i ], [ %add177.i, %if.end100.1.i ], [ %cond82.i.sroa.speculated, %sw.epilog.thread308.i ], [ %add72.i, %sw.epilog.thread303.i ], [ %add9.i, %sw.epilog.thread.i ]
  %writeVal.0.1.i = phi i32 [ %add195.1.i, %sw.epilog.i ], [ %add177.1.i, %if.end100.1.i ], [ %cond82.1.i.sroa.speculated, %sw.epilog.thread308.i ], [ %add72.1.i, %sw.epilog.thread303.i ], [ %add9.1.i, %sw.epilog.thread.i ]
  %42 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %direction, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %43, label %get_rx_power_val_by_reg.exit.if.end19_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then15
  ]

get_rx_power_val_by_reg.exit.if.end19_crit_edge:  ; preds = %get_rx_power_val_by_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then:                                          ; preds = %get_rx_power_val_by_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pwrtrac_value, align 4
  %add = add i32 %writeVal.sroa.0.0, %46
  %add11 = add i32 %writeVal.0.1.i, %46
  br label %if.end19

if.then15:                                        ; preds = %get_rx_power_val_by_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pwrtrac_value, align 4
  %sub = sub i32 %writeVal.sroa.0.0, %48
  %sub18 = sub i32 %writeVal.0.1.i, %48
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then, %get_rx_power_val_by_reg.exit.if.end19_crit_edge
  %writeVal.sroa.13.0 = phi i32 [ %writeVal.0.1.i, %get_rx_power_val_by_reg.exit.if.end19_crit_edge ], [ %sub18, %if.then15 ], [ %add11, %if.then ]
  %writeVal.sroa.0.1 = phi i32 [ %writeVal.sroa.0.0, %get_rx_power_val_by_reg.exit.if.end19_crit_edge ], [ %sub, %if.then15 ], [ %add, %if.then ]
  %arrayidx38.i = getelementptr [6 x i16], ptr @__const.writeOFDMPowerReg88E.regoffset_a, i32 0, i32 %indvars.iv
  %arrayidx40.i = getelementptr [6 x i16], ptr @__const.writeOFDMPowerReg88E.regoffset_b, i32 0, i32 %indvars.iv
  %and.i32 = and i32 %writeVal.sroa.0.1, 127
  %conv15.i = and i32 %writeVal.sroa.0.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 0
  %shr.1.i33 = and i32 %writeVal.sroa.0.1, 32512
  %49 = and i32 %writeVal.sroa.0.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp16.not.1.i = icmp eq i32 %49, 0
  %shr.2.i34 = and i32 %writeVal.sroa.0.1, 8323072
  %50 = and i32 %writeVal.sroa.0.1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp16.not.2.i = icmp eq i32 %50, 0
  %and.3.i35 = lshr i32 %writeVal.sroa.0.1, 24
  %shr.3.i36 = and i32 %and.3.i35, 127
  %51 = and i32 %writeVal.sroa.0.1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp16.not.3.i = icmp eq i32 %51, 0
  %conv21.i = select i1 %cmp16.not.3.i, i32 %shr.3.i36, i32 63
  %shl22.i = shl nuw nsw i32 %conv21.i, 24
  %conv24.i = select i1 %cmp16.not.2.i, i32 %shr.2.i34, i32 4128768
  %or.i37 = or i32 %shl22.i, %conv24.i
  %conv27.i = select i1 %cmp16.not.1.i, i32 %shr.1.i33, i32 16128
  %or29.i = or i32 %or.i37, %conv27.i
  %conv31.i = select i1 %cmp16.not.i, i32 %and.i32, i32 63
  %or32.i = or i32 %or29.i, %conv31.i
  %52 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %regoffset.0.i = load i16, ptr %arrayidx38.i, align 2
  %conv42.i = zext i16 %regoffset.0.i to i32
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %conv42.i, i32 noundef -1, i32 noundef %or32.i) #4
  %53 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %regoffset.0.i, label %if.end19.for.inc97.i_crit_edge [
    i16 3604, label %if.end19.if.then49.i_crit_edge
    i16 2120, label %if.end19.if.then49.i_crit_edge68
  ]

if.end19.if.then49.i_crit_edge68:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49.i

if.end19.if.then49.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49.i

if.end19.for.inc97.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97.i

if.then49.i:                                      ; preds = %if.end19.if.then49.i_crit_edge, %if.end19.if.then49.i_crit_edge68
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv)
  %cmp44.i = icmp eq i32 %indvars.iv, 3
  %regoffset.1.i = select i1 %cmp44.i, i16 3216, i16 %regoffset.0.i
  %54 = zext i16 %regoffset.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %regoffset.1.i, label %if.then49.i.if.end89.2.i_crit_edge [
    i16 2152, label %if.then49.i.if.then68.i_crit_edge
    i16 2120, label %if.then49.i.if.then68.i_crit_edge69
  ]

if.then49.i.if.then68.i_crit_edge69:              ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68.i

if.then49.i.if.then68.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68.i

if.then49.i.if.end89.2.i_crit_edge:               ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.2.i

if.then68.i:                                      ; preds = %if.then49.i.if.then68.i_crit_edge, %if.then49.i.if.then68.i_crit_edge69
  br label %if.end89.2.i

if.end89.2.i:                                     ; preds = %if.then68.i, %if.then49.i.if.end89.2.i_crit_edge
  %regoffset.2.i = phi i16 [ 3224, %if.then68.i ], [ %regoffset.1.i, %if.then49.i.if.end89.2.i_crit_edge ]
  %conv90.i = zext i16 %regoffset.2.i to i32
  %55 = call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 8) #4
  %conv92.i = trunc i32 %55 to i8
  %call.i = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %conv90.i, i8 noundef zeroext %conv92.i) #4
  %56 = call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 16) #4
  %add.1.i38 = add nuw nsw i32 %conv90.i, 1
  %conv92.1.i = trunc i32 %56 to i8
  %call.1.i = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %add.1.i38, i8 noundef zeroext %conv92.1.i) #4
  %57 = call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 22) #4
  %add.2.i = add nuw nsw i32 %conv90.i, 2
  %conv92.2.i = trunc i32 %57 to i8
  %call.2.i = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %add.2.i, i8 noundef zeroext %conv92.2.i) #4
  br label %for.inc97.i

for.inc97.i:                                      ; preds = %if.end89.2.i, %if.end19.for.inc97.i_crit_edge
  %and.i32.1 = and i32 %writeVal.sroa.13.0, 127
  %conv15.i.1 = and i32 %writeVal.sroa.13.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i.1)
  %cmp16.not.i.1 = icmp eq i32 %conv15.i.1, 0
  %shr.1.i33.1 = and i32 %writeVal.sroa.13.0, 32512
  %58 = and i32 %writeVal.sroa.13.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp16.not.1.i.1 = icmp eq i32 %58, 0
  %shr.2.i34.1 = and i32 %writeVal.sroa.13.0, 8323072
  %59 = and i32 %writeVal.sroa.13.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp16.not.2.i.1 = icmp eq i32 %59, 0
  %and.3.i35.1 = lshr i32 %writeVal.sroa.13.0, 24
  %shr.3.i36.1 = and i32 %and.3.i35.1, 127
  %60 = and i32 %writeVal.sroa.13.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp16.not.3.i.1 = icmp eq i32 %60, 0
  %conv21.i.1 = select i1 %cmp16.not.3.i.1, i32 %shr.3.i36.1, i32 63
  %shl22.i.1 = shl nuw nsw i32 %conv21.i.1, 24
  %conv24.i.1 = select i1 %cmp16.not.2.i.1, i32 %shr.2.i34.1, i32 4128768
  %or.i37.1 = or i32 %shl22.i.1, %conv24.i.1
  %conv27.i.1 = select i1 %cmp16.not.1.i.1, i32 %shr.1.i33.1, i32 16128
  %or29.i.1 = or i32 %or.i37.1, %conv27.i.1
  %conv31.i.1 = select i1 %cmp16.not.i.1, i32 %and.i32.1, i32 63
  %or32.i.1 = or i32 %or29.i.1, %conv31.i.1
  %61 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %regoffset.0.i.1 = load i16, ptr %arrayidx40.i, align 2
  %conv42.i.1 = zext i16 %regoffset.0.i.1 to i32
  call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %conv42.i.1, i32 noundef -1, i32 noundef %or32.i.1) #4
  %62 = zext i16 %regoffset.0.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %regoffset.0.i.1, label %for.inc97.i.for.inc97.i.1_crit_edge [
    i16 2120, label %if.then68.i.1
    i16 3604, label %for.inc97.i.if.end89.2.i.1_crit_edge
  ]

for.inc97.i.if.end89.2.i.1_crit_edge:             ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.2.i.1

for.inc97.i.for.inc97.i.1_crit_edge:              ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97.i.1

if.then68.i.1:                                    ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.2.i.1

if.end89.2.i.1:                                   ; preds = %if.then68.i.1, %for.inc97.i.if.end89.2.i.1_crit_edge
  %regoffset.2.i.1 = phi i16 [ 3224, %if.then68.i.1 ], [ %regoffset.0.i.1, %for.inc97.i.if.end89.2.i.1_crit_edge ]
  %conv90.i.1 = zext i16 %regoffset.2.i.1 to i32
  %63 = call i32 @llvm.usub.sat.i32(i32 %conv21.i.1, i32 8) #4
  %conv92.i.1 = trunc i32 %63 to i8
  %call.i.1 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %conv90.i.1, i8 noundef zeroext %conv92.i.1) #4
  %64 = call i32 @llvm.usub.sat.i32(i32 %conv21.i.1, i32 16) #4
  %add.1.i38.1 = add nuw nsw i32 %conv90.i.1, 1
  %conv92.1.i.1 = trunc i32 %64 to i8
  %call.1.i.1 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %add.1.i38.1, i8 noundef zeroext %conv92.1.i.1) #4
  %65 = call i32 @llvm.usub.sat.i32(i32 %conv21.i.1, i32 22) #4
  %add.2.i.1 = add nuw nsw i32 %conv90.i.1, 2
  %conv92.2.i.1 = trunc i32 %65 to i8
  %call.2.i.1 = call i32 @rtw_write8(ptr noundef %Adapter, i32 noundef %add.2.i.1, i8 noundef zeroext %conv92.2.i.1) #4
  br label %for.inc97.i.1

for.inc97.i.1:                                    ; preds = %if.end89.2.i.1, %for.inc97.i.for.inc97.i.1_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %for.inc97.i.1.for.body_crit_edge

for.inc97.i.1.for.body_crit_edge:                 ; preds = %for.inc97.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc97.i.1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %direction) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwrtrac_value) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @PHY_RF6052_Config8188E(ptr noundef %Adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %PHYRegDef.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30
  %0 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %PHYRegDef.i, align 4
  %call.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %Adapter, i32 noundef %1, i32 noundef 16) #4
  %rfintfe.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 3
  %2 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rfintfe.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %3, i32 noundef 1048576, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %rfintfo.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 2
  %5 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rfintfo.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %6, i32 noundef 16, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #4
  %rfHSSIPara2.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 30, i32 0, i32 8
  %8 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfHSSIPara2.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %9, i32 noundef 1024, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #4
  %11 = ptrtoint ptr %rfHSSIPara2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rfHSSIPara2.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %12, i32 noundef 2048, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #4
  %odmpriv.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %call3.i = tail call i32 @ODM_ConfigRFWithHeaderFile(ptr noundef %odmpriv.i, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.i = icmp ne i32 %call3.i, 1
  %spec.select.i = zext i1 %cmp.i to i32
  %14 = ptrtoint ptr %PHYRegDef.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %PHYRegDef.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %Adapter, i32 noundef %15, i32 noundef 16, i32 noundef %call.i) #4
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ODM_ConfigRFWithHeaderFile(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"auto-init"}
