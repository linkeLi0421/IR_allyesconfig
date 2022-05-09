; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/HalPhyRf_8188e.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/HalPhyRf_8188e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.HT_caps_element = type { %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i16, i8, [16 x i8], i16, i16, i8 }
%struct.HT_info_element = type { i8, [5 x i8], [16 x i8] }
%struct.FW_Sta_Info = type { ptr, i32, i32, i32, [16 x i8] }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
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
%struct.P2P_PS_Offload_t = type { i8 }
%struct.rereg_nd_name_data = type { ptr, [16 x i8], i8, i8 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.br_ext_info = type { i32, i32, i32, i32, [6 x i8], i32 }

@__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.OFDM_index_mapping = private unnamed_addr constant [2 x [15 x i8]] [[15 x i8] c"\00\00\02\03\04\04\05\06\07\07\08\09\0A\0A\0B", [15 x i8] c"\00\00\FF\FE\FD\FC\FC\FC\FC\FB\F9\F8\F7\F7\F6"], align 1
@__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping = private unnamed_addr constant [2 x [15 x i8]] [[15 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12\14\16\18\1A\1B", [15 x i8] c"\00\02\04\06\08\0A\0C\0E\10\12\14\16\19\19\19"], align 1
@OFDMSwingTable = external dso_local local_unnamed_addr global [43 x i32], align 4
@CCKSwingTable_Ch14 = external dso_local global [33 x [8 x i8]], align 1
@CCKSwingTable_Ch1_Ch13 = external dso_local global [33 x [8 x i8]], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__const.phy_IQCalibrate_8188E.ADDA_REG = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ODM_TxPwrTrackAdjust88E(ptr nocapture noundef readonly %dm_odm, i8 noundef zeroext %Type, ptr nocapture noundef %pDirection, ptr nocapture noundef writeonly %pOutWriteVal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %Type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %Type, label %entry.if.end51_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then22
  ]

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then:                                          ; preds = %entry
  %BbSwingIdxOfdm = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 30
  %1 = ptrtoint ptr %BbSwingIdxOfdm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %BbSwingIdxOfdm, align 8
  %BbSwingIdxOfdmBase = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 32
  %3 = ptrtoint ptr %BbSwingIdxOfdmBase to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %BbSwingIdxOfdmBase, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp4.not = icmp ugt i8 %2, %4
  br i1 %cmp4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %pDirection to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pDirection, align 1
  %6 = ptrtoint ptr %BbSwingIdxOfdmBase to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %BbSwingIdxOfdmBase, align 2
  %8 = ptrtoint ptr %BbSwingIdxOfdm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %BbSwingIdxOfdm, align 8
  %sub = sub i8 %7, %9
  br label %if.end43

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pDirection to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %pDirection, align 1
  %11 = ptrtoint ptr %BbSwingIdxOfdm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %BbSwingIdxOfdm, align 8
  %13 = ptrtoint ptr %BbSwingIdxOfdmBase to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %BbSwingIdxOfdmBase, align 2
  %sub16 = sub i8 %12, %14
  br label %if.end43

if.then22:                                        ; preds = %entry
  %BbSwingIdxCck = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 34
  %15 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %BbSwingIdxCck, align 4
  %BbSwingIdxCckBase = getelementptr inbounds %struct.odm_dm_struct, ptr %dm_odm, i32 0, i32 36
  %17 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %BbSwingIdxCckBase, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp25.not = icmp ugt i8 %16, %18
  br i1 %cmp25.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %pDirection to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %pDirection, align 1
  %20 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %BbSwingIdxCckBase, align 2
  %22 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %BbSwingIdxCck, align 4
  %sub32 = sub i8 %21, %23
  br label %if.end43

if.else34:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %pDirection to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %pDirection, align 1
  %25 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %BbSwingIdxCck, align 4
  %27 = ptrtoint ptr %BbSwingIdxCckBase to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %BbSwingIdxCckBase, align 2
  %sub39 = sub i8 %26, %28
  br label %if.end43

if.end43:                                         ; preds = %if.else34, %if.then27, %if.else, %if.then6
  %pwr_value.0 = phi i8 [ %sub, %if.then6 ], [ %sub16, %if.else ], [ %sub32, %if.then27 ], [ %sub39, %if.else34 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %pwr_value.0)
  %cmp45 = icmp ugt i8 %pwr_value.0, 5
  br i1 %cmp45, label %land.lhs.true, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %pDirection to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pDirection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp48 = icmp eq i8 %30, 1
  %spec.select = select i1 %cmp48, i8 6, i8 %pwr_value.0
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true, %if.end43.if.end51_crit_edge, %entry.if.end51_crit_edge
  %pwr_value.1 = phi i8 [ %pwr_value.0, %if.end43.if.end51_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.if.end51_crit_edge ]
  %conv52 = zext i8 %pwr_value.1 to i32
  %or59 = mul nuw i32 %conv52, 16843009
  %31 = ptrtoint ptr %pOutWriteVal to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or59, ptr %pOutWriteVal, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @odm_TXPowerTrackingCallback_ThermalMeter_8188E(ptr noundef %Adapter) local_unnamed_addr #2 align 64 {
entry:
  %TempCCk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %TempCCk) #7
  %odmpriv = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38
  %BbSwingFlagOfdm.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 33
  %0 = ptrtoint ptr %BbSwingFlagOfdm.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %BbSwingFlagOfdm.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %BbSwingFlagCck.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 37
  %2 = ptrtoint ptr %BbSwingFlagCck.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %BbSwingFlagCck.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.odm_TxPwrTrackSetPwr88E.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.odm_TxPwrTrackSetPwr88E.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %odm_TxPwrTrackSetPwr88E.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %4 = ptrtoint ptr %odmpriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %odmpriv, align 8
  %pChannel.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 10
  %6 = ptrtoint ptr %pChannel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pChannel.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  tail call void @PHY_SetTxPowerLevel8188E(ptr noundef %5, i8 noundef zeroext %9) #7
  %10 = ptrtoint ptr %BbSwingFlagOfdm.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %BbSwingFlagOfdm.i, align 1
  %BbSwingFlagCck3.i = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 37
  %11 = ptrtoint ptr %BbSwingFlagCck3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %BbSwingFlagCck3.i, align 1
  br label %odm_TxPwrTrackSetPwr88E.exit

odm_TxPwrTrackSetPwr88E.exit:                     ; preds = %if.then.i, %lor.lhs.false.i.odm_TxPwrTrackSetPwr88E.exit_crit_edge
  %RFCalibrateInfo = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29
  %TXPowerTrackingCallbackCnt = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 26
  %12 = ptrtoint ptr %TXPowerTrackingCallbackCnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %TXPowerTrackingCallbackCnt, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %TXPowerTrackingCallbackCnt, align 4
  %bTXPowerTrackingInit = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 6
  %14 = ptrtoint ptr %bTXPowerTrackingInit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bTXPowerTrackingInit, align 1
  %15 = ptrtoint ptr %RFCalibrateInfo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 151917335, ptr %RFCalibrateInfo, align 4
  %call = tail call i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %Adapter, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #7
  %conv = trunc i32 %call to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool3.not = icmp eq i8 %conv, 0
  br i1 %tobool3.not, label %odm_TxPwrTrackSetPwr88E.exit.if.end493_crit_edge, label %if.then4

odm_TxPwrTrackSetPwr88E.exit.if.end493_crit_edge: ; preds = %odm_TxPwrTrackSetPwr88E.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end493

if.then4:                                         ; preds = %odm_TxPwrTrackSetPwr88E.exit
  %call5 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %Adapter, i32 noundef 3200, i32 noundef -1) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4
  %i.0690 = phi i32 [ 0, %if.then4 ], [ %inc15, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x i32], ptr @OFDMSwingTable, i32 0, i32 %i.0690
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = xor i32 %17, %call5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %18)
  %cmp8 = icmp ult i32 %18, 4194304
  br i1 %cmp8, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = trunc i32 %i.0690 to i8
  %BbSwingIdxOfdmBase = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 32
  %19 = ptrtoint ptr %BbSwingIdxOfdmBase to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %BbSwingIdxOfdmBase, align 2
  br label %if.end35

for.inc:                                          ; preds = %for.body
  %inc15 = add nuw nsw i32 %i.0690, 1
  %exitcond.not = icmp eq i32 %inc15, 43
  br i1 %exitcond.not, label %for.inc.if.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %for.inc.if.end35_crit_edge, %if.then10
  %OFDM_index_old.sroa.0.0 = phi i8 [ %conv11, %if.then10 ], [ 0, %for.inc.if.end35_crit_edge ]
  %20 = ptrtoint ptr %RFCalibrateInfo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %RFCalibrateInfo, align 4
  %22 = ptrtoint ptr %TempCCk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %TempCCk, align 4
  %bCCKinCH14 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 27
  %23 = ptrtoint ptr %bCCKinCH14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bCCKinCH14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br label %for.body41

for.body41:                                       ; preds = %for.inc64.for.body41_crit_edge, %if.end35
  %i.2691 = phi i32 [ 0, %if.end35 ], [ %inc65, %for.inc64.for.body41_crit_edge ]
  br i1 %tobool43.not, label %if.else53, label %if.then44

if.then44:                                        ; preds = %for.body41
  %arrayidx46 = getelementptr [33 x [8 x i8]], ptr @CCKSwingTable_Ch14, i32 0, i32 %i.2691, i32 2
  %bcmp682 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %TempCCk, ptr noundef dereferenceable(4) %arrayidx46, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp682)
  %tobool48.not = icmp eq i32 %bcmp682, 0
  br i1 %tobool48.not, label %if.then44.for.inc64_crit_edge, label %if.then44.for.end66.sink.split_crit_edge

if.then44.for.end66.sink.split_crit_edge:         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66.sink.split

if.then44.for.inc64_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

if.else53:                                        ; preds = %for.body41
  %arrayidx55 = getelementptr [33 x [8 x i8]], ptr @CCKSwingTable_Ch1_Ch13, i32 0, i32 %i.2691, i32 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %TempCCk, ptr noundef dereferenceable(4) %arrayidx55, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool57.not = icmp eq i32 %bcmp, 0
  br i1 %tobool57.not, label %if.else53.for.inc64_crit_edge, label %if.else53.for.end66.sink.split_crit_edge

if.else53.for.end66.sink.split_crit_edge:         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66.sink.split

if.else53.for.inc64_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

for.inc64:                                        ; preds = %if.else53.for.inc64_crit_edge, %if.then44.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.2691, 1
  %exitcond701.not = icmp eq i32 %inc65, 33
  br i1 %exitcond701.not, label %for.inc64.for.end66_crit_edge, label %for.inc64.for.body41_crit_edge

for.inc64.for.body41_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.inc64.for.end66_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66

for.end66.sink.split:                             ; preds = %if.else53.for.end66.sink.split_crit_edge, %if.then44.for.end66.sink.split_crit_edge
  %conv50 = trunc i32 %i.2691 to i8
  %BbSwingIdxCckBase61 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 36
  %25 = ptrtoint ptr %BbSwingIdxCckBase61 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv50, ptr %BbSwingIdxCckBase61, align 2
  br label %for.end66

for.end66:                                        ; preds = %for.end66.sink.split, %for.inc64.for.end66_crit_edge
  %CCK_index_old.0 = phi i8 [ %conv50, %for.end66.sink.split ], [ 0, %for.inc64.for.end66_crit_edge ]
  %ThermalValue68 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 12
  %26 = ptrtoint ptr %ThermalValue68 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ThermalValue68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool69.not = icmp eq i8 %27, 0
  br i1 %tobool69.not, label %if.then70, label %for.end66.if.end89_crit_edge

for.end66.if.end89_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then70:                                        ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  %EEPROMThermalMeter = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  %28 = ptrtoint ptr %EEPROMThermalMeter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %EEPROMThermalMeter, align 1
  %30 = ptrtoint ptr %ThermalValue68 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ThermalValue68, align 1
  %ThermalValue_LCK = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 13
  %31 = ptrtoint ptr %ThermalValue_LCK to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %ThermalValue_LCK, align 2
  %ThermalValue_IQK = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 14
  %32 = ptrtoint ptr %ThermalValue_IQK to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %ThermalValue_IQK, align 1
  %OFDM_index82 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 29
  %33 = ptrtoint ptr %OFDM_index82 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %OFDM_index_old.sroa.0.0, ptr %OFDM_index82, align 1
  %CCK_index88 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 28
  %34 = ptrtoint ptr %CCK_index88 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %CCK_index_old.0, ptr %CCK_index88, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then70, %for.end66.if.end89_crit_edge
  %ThermalValue_AVG_index = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 17
  %35 = ptrtoint ptr %ThermalValue_AVG_index to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ThermalValue_AVG_index, align 1
  %idxprom = zext i8 %36 to i32
  %arrayidx93 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 16, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %arrayidx93, align 1
  %38 = load i8, ptr %ThermalValue_AVG_index, align 1
  %inc96 = add i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc96)
  %cmp100 = icmp eq i8 %inc96, 4
  %spec.select = select i1 %cmp100, i8 0, i8 %inc96
  %39 = ptrtoint ptr %ThermalValue_AVG_index to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.select, ptr %ThermalValue_AVG_index, align 1
  %arrayidx112 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 16, i32 0
  %40 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool113.not = icmp ne i8 %41, 0
  %inc119 = zext i1 %tobool113.not to i8
  %arrayidx112.1 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 16, i32 1
  %42 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx112.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool113.not.1 = icmp ne i8 %43, 0
  %inc119.1 = zext i1 %tobool113.not.1 to i8
  %ThermalValue_AVG_count.1.1 = add nuw nsw i8 %inc119, %inc119.1
  %arrayidx112.2 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 16, i32 2
  %44 = ptrtoint ptr %arrayidx112.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx112.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool113.not.2 = icmp ne i8 %45, 0
  %inc119.2 = zext i1 %tobool113.not.2 to i8
  %ThermalValue_AVG_count.1.2 = add nuw nsw i8 %ThermalValue_AVG_count.1.1, %inc119.2
  %arrayidx112.3 = getelementptr %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 16, i32 3
  %46 = ptrtoint ptr %arrayidx112.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx112.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool113.not.3 = icmp ne i8 %47, 0
  %inc119.3 = zext i1 %tobool113.not.3 to i8
  %ThermalValue_AVG_count.1.3 = add nuw nsw i8 %ThermalValue_AVG_count.1.2, %inc119.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ThermalValue_AVG_count.1.3)
  %tobool124.not = icmp eq i8 %ThermalValue_AVG_count.1.3, 0
  br i1 %tobool124.not, label %if.end89.if.end128_crit_edge, label %if.then125

if.end89.if.end128_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then125:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %conv118 = zext i8 %41 to i16
  %conv118.1 = zext i8 %43 to i16
  %ThermalValue_AVG.1.1 = add nuw nsw i16 %conv118, %conv118.1
  %conv118.2 = zext i8 %45 to i16
  %ThermalValue_AVG.1.2 = add nuw nsw i16 %ThermalValue_AVG.1.1, %conv118.2
  %conv118.3 = zext i8 %47 to i16
  %ThermalValue_AVG.1.3 = add nuw nsw i16 %ThermalValue_AVG.1.2, %conv118.3
  %conv126 = zext i8 %ThermalValue_AVG_count.1.3 to i16
  %div = udiv i16 %ThermalValue_AVG.1.3, %conv126
  %conv127 = trunc i16 %div to i8
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end89.if.end128_crit_edge
  %ThermalValue.0 = phi i8 [ %conv127, %if.then125 ], [ %conv, %if.end89.if.end128_crit_edge ]
  %bReloadtxpowerindex = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 24
  %48 = ptrtoint ptr %bReloadtxpowerindex to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bReloadtxpowerindex, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool130.not = icmp eq i8 %49, 0
  br i1 %tobool130.not, label %if.else148, label %if.then131

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %EEPROMThermalMeter133 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  %50 = ptrtoint ptr %EEPROMThermalMeter133 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %EEPROMThermalMeter133, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %51)
  %cmp135 = icmp ugt i8 %ThermalValue.0, %51
  %sub = sub i8 %ThermalValue.0, %51
  %sub143 = sub i8 %51, %ThermalValue.0
  %cond = select i1 %cmp135, i8 %sub, i8 %sub143
  %52 = ptrtoint ptr %bReloadtxpowerindex to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %bReloadtxpowerindex, align 4
  %bDoneTxpower = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 30
  %53 = ptrtoint ptr %bDoneTxpower to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bDoneTxpower, align 4
  br label %if.end194

if.else148:                                       ; preds = %if.end128
  %bDoneTxpower150 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 30
  %54 = ptrtoint ptr %bDoneTxpower150 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bDoneTxpower150, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool151.not = icmp eq i8 %55, 0
  br i1 %tobool151.not, label %if.else174, label %if.then152

if.then152:                                       ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ThermalValue68 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ThermalValue68, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %57)
  %cmp157 = icmp ugt i8 %ThermalValue.0, %57
  %sub164 = sub i8 %ThermalValue.0, %57
  %sub170 = sub i8 %57, %ThermalValue.0
  %cond172 = select i1 %cmp157, i8 %sub164, i8 %sub170
  br label %if.end194

if.else174:                                       ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #9
  %EEPROMThermalMeter176 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  %58 = ptrtoint ptr %EEPROMThermalMeter176 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %EEPROMThermalMeter176, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %59)
  %cmp178 = icmp ugt i8 %ThermalValue.0, %59
  %sub184 = sub i8 %ThermalValue.0, %59
  %sub189 = sub i8 %59, %ThermalValue.0
  %cond191 = select i1 %cmp178, i8 %sub184, i8 %sub189
  br label %if.end194

if.end194:                                        ; preds = %if.else174, %if.then152, %if.then131
  %delta.0 = phi i8 [ %cond, %if.then131 ], [ %cond172, %if.then152 ], [ %cond191, %if.else174 ]
  %ThermalValue_LCK197 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 13
  %60 = ptrtoint ptr %ThermalValue_LCK197 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ThermalValue_LCK197, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %61)
  %cmp199 = icmp ugt i8 %ThermalValue.0, %61
  %sub206 = sub i8 %ThermalValue.0, %61
  %sub212 = sub i8 %61, %ThermalValue.0
  %cond214 = select i1 %cmp199, i8 %sub206, i8 %sub212
  %ThermalValue_IQK218 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 14
  %62 = ptrtoint ptr %ThermalValue_IQK218 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ThermalValue_IQK218, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %63)
  %cmp220 = icmp ugt i8 %ThermalValue.0, %63
  %sub227 = sub i8 %ThermalValue.0, %63
  %sub233 = sub i8 %63, %ThermalValue.0
  %cond235 = select i1 %cmp220, i8 %sub227, i8 %sub233
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond214)
  %cmp238 = icmp ugt i8 %cond214, 7
  br i1 %cmp238, label %if.then240, label %if.end194.if.end243_crit_edge

if.end194.if.end243_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

if.then240:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %ThermalValue_LCK197 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %ThermalValue.0, ptr %ThermalValue_LCK197, align 2
  tail call void @PHY_LCCalibrate_8188E(ptr noundef %Adapter)
  br label %if.end243

if.end243:                                        ; preds = %if.then240, %if.end194.if.end243_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %delta.0)
  %cmp245.not = icmp eq i8 %delta.0, 0
  br i1 %cmp245.not, label %if.end243.if.end478_crit_edge, label %land.lhs.true

if.end243.if.end478_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end478

land.lhs.true:                                    ; preds = %if.end243
  %TxPowerTrackControl = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 8
  %65 = ptrtoint ptr %TxPowerTrackControl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %TxPowerTrackControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool249.not = icmp eq i8 %66, 0
  br i1 %tobool249.not, label %land.lhs.true.if.end478_crit_edge, label %if.then250

land.lhs.true.if.end478_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end478

if.then250:                                       ; preds = %land.lhs.true
  %EEPROMThermalMeter252 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 12
  %67 = ptrtoint ptr %EEPROMThermalMeter252 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %EEPROMThermalMeter252, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %ThermalValue.0, i8 %68)
  %cmp254 = icmp ugt i8 %ThermalValue.0, %68
  %sub260 = sub i8 %ThermalValue.0, %68
  %sub265 = sub i8 %68, %ThermalValue.0
  %cond267 = select i1 %cmp254, i8 %sub260, i8 %sub265
  %j.0 = zext i1 %cmp254 to i32
  %arrayidx285 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 0
  %69 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx285, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %70)
  %cmp287 = icmp ult i8 %cond267, %70
  br i1 %cmp287, label %if.then250.for.end298_crit_edge, label %for.inc296

if.then250.for.end298_crit_edge:                  ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296:                                       ; preds = %if.then250
  %arrayidx285.1 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 1
  %71 = ptrtoint ptr %arrayidx285.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx285.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %72)
  %cmp287.1 = icmp ult i8 %cond267, %72
  br i1 %cmp287.1, label %for.inc296.for.end298_crit_edge, label %for.inc296.1

for.inc296.for.end298_crit_edge:                  ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.1:                                     ; preds = %for.inc296
  %arrayidx285.2 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 2
  %73 = ptrtoint ptr %arrayidx285.2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx285.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %74)
  %cmp287.2 = icmp ult i8 %cond267, %74
  br i1 %cmp287.2, label %for.inc296.1.for.end298_crit_edge, label %for.inc296.2

for.inc296.1.for.end298_crit_edge:                ; preds = %for.inc296.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.2:                                     ; preds = %for.inc296.1
  %arrayidx285.3 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 3
  %75 = ptrtoint ptr %arrayidx285.3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx285.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %76)
  %cmp287.3 = icmp ult i8 %cond267, %76
  br i1 %cmp287.3, label %for.inc296.2.for.end298_crit_edge, label %for.inc296.3

for.inc296.2.for.end298_crit_edge:                ; preds = %for.inc296.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.3:                                     ; preds = %for.inc296.2
  %arrayidx285.4 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 4
  %77 = ptrtoint ptr %arrayidx285.4 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx285.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %78)
  %cmp287.4 = icmp ult i8 %cond267, %78
  br i1 %cmp287.4, label %for.inc296.3.for.end298_crit_edge, label %for.inc296.4

for.inc296.3.for.end298_crit_edge:                ; preds = %for.inc296.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.4:                                     ; preds = %for.inc296.3
  %arrayidx285.5 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 5
  %79 = ptrtoint ptr %arrayidx285.5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx285.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %80)
  %cmp287.5 = icmp ult i8 %cond267, %80
  br i1 %cmp287.5, label %for.inc296.4.for.end298_crit_edge, label %for.inc296.5

for.inc296.4.for.end298_crit_edge:                ; preds = %for.inc296.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.5:                                     ; preds = %for.inc296.4
  %arrayidx285.6 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 6
  %81 = ptrtoint ptr %arrayidx285.6 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx285.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %82)
  %cmp287.6 = icmp ult i8 %cond267, %82
  br i1 %cmp287.6, label %for.inc296.5.for.end298_crit_edge, label %for.inc296.6

for.inc296.5.for.end298_crit_edge:                ; preds = %for.inc296.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.6:                                     ; preds = %for.inc296.5
  %arrayidx285.7 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 7
  %83 = ptrtoint ptr %arrayidx285.7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx285.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %84)
  %cmp287.7 = icmp ult i8 %cond267, %84
  br i1 %cmp287.7, label %for.inc296.6.for.end298_crit_edge, label %for.inc296.7

for.inc296.6.for.end298_crit_edge:                ; preds = %for.inc296.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.7:                                     ; preds = %for.inc296.6
  %arrayidx285.8 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 8
  %85 = ptrtoint ptr %arrayidx285.8 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx285.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %86)
  %cmp287.8 = icmp ult i8 %cond267, %86
  br i1 %cmp287.8, label %for.inc296.7.for.end298_crit_edge, label %for.inc296.8

for.inc296.7.for.end298_crit_edge:                ; preds = %for.inc296.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.8:                                     ; preds = %for.inc296.7
  %arrayidx285.9 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 9
  %87 = ptrtoint ptr %arrayidx285.9 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx285.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %88)
  %cmp287.9 = icmp ult i8 %cond267, %88
  br i1 %cmp287.9, label %for.inc296.8.for.end298_crit_edge, label %for.inc296.9

for.inc296.8.for.end298_crit_edge:                ; preds = %for.inc296.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.9:                                     ; preds = %for.inc296.8
  %arrayidx285.10 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 10
  %89 = ptrtoint ptr %arrayidx285.10 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx285.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %90)
  %cmp287.10 = icmp ult i8 %cond267, %90
  br i1 %cmp287.10, label %for.inc296.9.for.end298_crit_edge, label %for.inc296.10

for.inc296.9.for.end298_crit_edge:                ; preds = %for.inc296.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.10:                                    ; preds = %for.inc296.9
  %arrayidx285.11 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 11
  %91 = ptrtoint ptr %arrayidx285.11 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx285.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %92)
  %cmp287.11 = icmp ult i8 %cond267, %92
  br i1 %cmp287.11, label %for.inc296.10.for.end298_crit_edge, label %for.inc296.11

for.inc296.10.for.end298_crit_edge:               ; preds = %for.inc296.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.11:                                    ; preds = %for.inc296.10
  %arrayidx285.12 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 12
  %93 = ptrtoint ptr %arrayidx285.12 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx285.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %94)
  %cmp287.12 = icmp ult i8 %cond267, %94
  br i1 %cmp287.12, label %for.inc296.11.for.end298_crit_edge, label %for.inc296.12

for.inc296.11.for.end298_crit_edge:               ; preds = %for.inc296.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.12:                                    ; preds = %for.inc296.11
  %arrayidx285.13 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 13
  %95 = ptrtoint ptr %arrayidx285.13 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx285.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %96)
  %cmp287.13 = icmp ult i8 %cond267, %96
  br i1 %cmp287.13, label %for.inc296.12.for.end298_crit_edge, label %for.inc296.13

for.inc296.12.for.end298_crit_edge:               ; preds = %for.inc296.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end298

for.inc296.13:                                    ; preds = %for.inc296.12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx285.14 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.Thermal_mapping, i32 0, i32 %j.0, i32 14
  %97 = ptrtoint ptr %arrayidx285.14 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx285.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond267, i8 %98)
  %cmp287.14 = icmp ult i8 %cond267, %98
  %spec.select707 = select i1 %cmp287.14, i8 13, i8 15
  br label %for.end298

for.end298:                                       ; preds = %for.inc296.13, %for.inc296.12.for.end298_crit_edge, %for.inc296.11.for.end298_crit_edge, %for.inc296.10.for.end298_crit_edge, %for.inc296.9.for.end298_crit_edge, %for.inc296.8.for.end298_crit_edge, %for.inc296.7.for.end298_crit_edge, %for.inc296.6.for.end298_crit_edge, %for.inc296.5.for.end298_crit_edge, %for.inc296.4.for.end298_crit_edge, %for.inc296.3.for.end298_crit_edge, %for.inc296.2.for.end298_crit_edge, %for.inc296.1.for.end298_crit_edge, %for.inc296.for.end298_crit_edge, %if.then250.for.end298_crit_edge
  %offset.1 = phi i8 [ 12, %for.inc296.12.for.end298_crit_edge ], [ 11, %for.inc296.11.for.end298_crit_edge ], [ 10, %for.inc296.10.for.end298_crit_edge ], [ 9, %for.inc296.9.for.end298_crit_edge ], [ 8, %for.inc296.8.for.end298_crit_edge ], [ 7, %for.inc296.7.for.end298_crit_edge ], [ 6, %for.inc296.6.for.end298_crit_edge ], [ 5, %for.inc296.5.for.end298_crit_edge ], [ 4, %for.inc296.4.for.end298_crit_edge ], [ 3, %for.inc296.3.for.end298_crit_edge ], [ 2, %for.inc296.2.for.end298_crit_edge ], [ 1, %for.inc296.1.for.end298_crit_edge ], [ 0, %for.inc296.for.end298_crit_edge ], [ 0, %if.then250.for.end298_crit_edge ], [ %spec.select707, %for.inc296.13 ]
  %99 = tail call i8 @llvm.umin.i8(i8 %offset.1, i8 14)
  %OFDM_index310 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 29
  %100 = ptrtoint ptr %OFDM_index310 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %OFDM_index310, align 1
  %idxprom314 = zext i8 %99 to i32
  %arrayidx315 = getelementptr [2 x [15 x i8]], ptr @__const.odm_TXPowerTrackingCallback_ThermalMeter_8188E.OFDM_index_mapping, i32 0, i32 %j.0, i32 %idxprom314
  %102 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx315, align 1
  %add317 = add i8 %103, %101
  %CCK_index324 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 28
  %104 = ptrtoint ptr %CCK_index324 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %CCK_index324, align 1
  %add330 = add i8 %105, %103
  %106 = tail call i8 @llvm.smax.i8(i8 %add317, i8 6)
  %107 = tail call i8 @llvm.smin.i8(i8 %106, i8 42)
  %108 = tail call i8 @llvm.smax.i8(i8 %add330, i8 0)
  %109 = tail call i8 @llvm.smin.i8(i8 %108, i8 32)
  %bDoneTxpower372 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 30
  %110 = ptrtoint ptr %bDoneTxpower372 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %bDoneTxpower372, align 4
  %BbSwingIdxOfdm = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 30
  %111 = ptrtoint ptr %BbSwingIdxOfdm to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %107, ptr %BbSwingIdxOfdm, align 8
  %BbSwingIdxCck = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 34
  %112 = ptrtoint ptr %BbSwingIdxCck to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %109, ptr %BbSwingIdxCck, align 4
  %BbSwingIdxOfdmCurrent = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 31
  %113 = ptrtoint ptr %BbSwingIdxOfdmCurrent to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %BbSwingIdxOfdmCurrent, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %107)
  %cmp389.not = icmp eq i8 %114, %107
  br i1 %cmp389.not, label %for.end298.if.end394_crit_edge, label %if.then391

for.end298.if.end394_crit_edge:                   ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end394

if.then391:                                       ; preds = %for.end298
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %BbSwingIdxOfdmCurrent to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %107, ptr %BbSwingIdxOfdmCurrent, align 1
  %116 = ptrtoint ptr %BbSwingFlagOfdm.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %BbSwingFlagOfdm.i, align 1
  br label %if.end394

if.end394:                                        ; preds = %if.then391, %for.end298.if.end394_crit_edge
  %BbSwingIdxCckCurrent = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 35
  %117 = ptrtoint ptr %BbSwingIdxCckCurrent to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %BbSwingIdxCckCurrent, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %109)
  %cmp398.not = icmp eq i8 %118, %109
  br i1 %cmp398.not, label %if.end394.if.end478_crit_edge, label %if.then400

if.end394.if.end478_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end478

if.then400:                                       ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %BbSwingIdxCckCurrent to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %109, ptr %BbSwingIdxCckCurrent, align 1
  %BbSwingFlagCck = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 37
  %120 = ptrtoint ptr %BbSwingFlagCck to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %BbSwingFlagCck, align 1
  br label %if.end478

if.end478:                                        ; preds = %if.then400, %if.end394.if.end478_crit_edge, %land.lhs.true.if.end478_crit_edge, %if.end243.if.end478_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond235)
  %cmp480 = icmp ugt i8 %cond235, 7
  br i1 %cmp480, label %if.then482, label %if.end478.if.end485_crit_edge

if.end478.if.end485_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end485

if.then482:                                       ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %ThermalValue_IQK218 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %ThermalValue.0, ptr %ThermalValue_IQK218, align 1
  tail call void @PHY_IQCalibrate_8188E(ptr noundef %Adapter, i1 noundef zeroext false)
  br label %if.end485

if.end485:                                        ; preds = %if.then482, %if.end478.if.end485_crit_edge
  %TxPowerTrackControl487 = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 8
  %122 = ptrtoint ptr %TxPowerTrackControl487 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %TxPowerTrackControl487, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool488.not = icmp eq i8 %123, 0
  br i1 %tobool488.not, label %if.end485.if.end493_crit_edge, label %if.then489

if.end485.if.end493_crit_edge:                    ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end493

if.then489:                                       ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %ThermalValue68 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %ThermalValue.0, ptr %ThermalValue68, align 1
  br label %if.end493

if.end493:                                        ; preds = %if.then489, %if.end485.if.end493_crit_edge, %odm_TxPwrTrackSetPwr88E.exit.if.end493_crit_edge
  %TXPowercount = getelementptr inbounds %struct.adapter, ptr %Adapter, i32 0, i32 19, i32 38, i32 29, i32 5
  %125 = ptrtoint ptr %TXPowercount to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %TXPowercount, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %TempCCk) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8188e_PHY_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_LCCalibrate_8188E(ptr noundef %adapt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 4
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 8
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %pbScanInProcess = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 11
  %2 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbScanInProcess, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not19.not = icmp eq i8 %5, 0
  br i1 %tobool5.not19.not, label %while.cond.preheader.while.end9_crit_edge, label %while.cond.preheader.while.cond6.preheader_crit_edge

while.cond.preheader.while.cond6.preheader_crit_edge: ; preds = %while.cond.preheader
  br label %while.cond6.preheader

while.cond.preheader.while.end9_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end9

while.cond6.preheader:                            ; preds = %while.end.while.cond6.preheader_crit_edge, %while.cond.preheader.while.cond6.preheader_crit_edge
  %timecount.020 = phi i32 [ %add, %while.end.while.cond6.preheader_crit_edge ], [ 0, %while.cond.preheader.while.cond6.preheader_crit_edge ]
  br label %while.body8

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond6.preheader
  %__ms.018 = phi i32 [ 50, %while.cond6.preheader ], [ %dec, %while.body8.while.body8_crit_edge ]
  %dec = add nsw i32 %__ms.018, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.end, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body8

while.end:                                        ; preds = %while.body8
  %add = add nuw nsw i32 %timecount.020, 50
  %7 = ptrtoint ptr %pbScanInProcess to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbScanInProcess, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950, i32 %timecount.020)
  %cmp = icmp ult i32 %timecount.020, 1950
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.end.while.cond6.preheader_crit_edge, label %while.end.while.end9_crit_edge

while.end.while.end9_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end9

while.end.while.cond6.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond6.preheader

while.end9:                                       ; preds = %while.end.while.end9_crit_edge, %while.cond.preheader.while.end9_crit_edge
  %call.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 3331) #7
  %11 = and i8 %call.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end9
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i8 %call.i, -113
  %call5.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 3331, i8 noundef zeroext %and3.i) #7
  %call12.i = tail call i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #7
  %and16.i = and i32 %call12.i, 589823
  %or.i = or i32 %and16.i, 65536
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or.i) #7
  br label %if.end22.i

if.else.i:                                        ; preds = %while.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1314, i8 noundef zeroext -1) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then.i
  %RF_Amode.0.i = phi i32 [ %call12.i, %if.then.i ], [ 0, %if.else.i ]
  %call23.i = tail call i32 @rtl8188e_PHY_QueryRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #7
  %or24.i = or i32 %call23.i, 32768
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or24.i) #7
  tail call void @msleep(i32 noundef 100) #7
  br i1 %cmp.not.i, label %if.else34.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 3331, i8 noundef zeroext %call.i) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %RF_Amode.0.i) #7
  br label %cleanup

if.else34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1314, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else34.i, %if.then29.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetBBReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PHY_IQCalibrate_8188E(ptr noundef %adapt, i1 noundef zeroext %recovery) local_unnamed_addr #2 align 64 {
entry:
  %ADDA_REG.i = alloca [16 x i32], align 4
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #7
  %SupportAbility = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 4
  %0 = ptrtoint ptr %SupportAbility to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SupportAbility, align 8
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  br i1 %recovery, label %if.then6, label %for.inc.7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %IQK_BB_backup_recover = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48
  %2 = ptrtoint ptr %IQK_BB_backup_recover to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IQK_BB_backup_recover, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3092, i32 noundef -1, i32 noundef %3) #7
  %arrayidx1.i.1 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 1
  %4 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i.1, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3100, i32 noundef -1, i32 noundef %5) #7
  %arrayidx1.i.2 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 2
  %6 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.2, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3148, i32 noundef -1, i32 noundef %7) #7
  %arrayidx1.i.3 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 3
  %8 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i.3, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3192, i32 noundef -1, i32 noundef %9) #7
  %arrayidx1.i.4 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 4
  %10 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.4, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3200, i32 noundef -1, i32 noundef %11) #7
  %arrayidx1.i.5 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 5
  %12 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i.5, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3208, i32 noundef -1, i32 noundef %13) #7
  %arrayidx1.i.6 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 6
  %14 = ptrtoint ptr %arrayidx1.i.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.6, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3220, i32 noundef -1, i32 noundef %15) #7
  %arrayidx1.i.7 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 7
  %16 = ptrtoint ptr %arrayidx1.i.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i.7, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3228, i32 noundef -1, i32 noundef %17) #7
  %arrayidx1.i.8 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 8
  %18 = ptrtoint ptr %arrayidx1.i.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i.8, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3232, i32 noundef -1, i32 noundef %19) #7
  br label %cleanup

for.inc.7:                                        ; preds = %if.end4
  %arrayidx35 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 0
  %20 = call ptr @memset(ptr %result, i32 0, i32 96)
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %arrayidx35, align 4
  %arrayidx38.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx38.1, align 4
  %arrayidx35.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %arrayidx35.2, align 4
  %arrayidx38.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx38.3, align 4
  %arrayidx35.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %arrayidx35.4, align 4
  %arrayidx38.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx38.5, align 4
  %arrayidx35.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %27 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %arrayidx35.6, align 4
  %arrayidx38.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx38.7, align 4
  %ADDA_backup.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46
  %arrayidx.i.1.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 1
  %arrayidx1.i.1.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 1
  %arrayidx.i.2.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 2
  %arrayidx1.i.2.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 2
  %arrayidx.i.3.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 3
  %arrayidx1.i.3.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 3
  %arrayidx.i.4.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 4
  %arrayidx1.i.4.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 4
  %arrayidx.i.5.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 5
  %arrayidx1.i.5.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 5
  %arrayidx.i.6.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 6
  %arrayidx1.i.6.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 6
  %arrayidx.i.7.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 7
  %arrayidx1.i.7.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 7
  %arrayidx.i.8.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 8
  %arrayidx1.i.8.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 8
  %arrayidx.i.9.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 9
  %arrayidx1.i.9.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 9
  %arrayidx.i.10.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 10
  %arrayidx1.i.10.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 10
  %arrayidx.i.11.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 11
  %arrayidx1.i.11.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 11
  %arrayidx.i.12.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 12
  %arrayidx1.i.12.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 12
  %arrayidx.i.13.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 13
  %arrayidx1.i.13.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 13
  %arrayidx.i.14.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 14
  %arrayidx1.i.14.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 14
  %arrayidx.i.15.i = getelementptr inbounds i32, ptr %ADDA_REG.i, i32 15
  %arrayidx1.i.15.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 46, i32 15
  %IQK_MAC_backup.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 47
  %arrayidx1.1.i.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 47, i32 1
  %arrayidx1.2.i.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 47, i32 2
  %arrayidx4.i.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 47, i32 3
  %IQK_BB_backup.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49
  %arrayidx1.i148.1.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 1
  %arrayidx1.i148.2.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 2
  %arrayidx1.i148.3.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 3
  %arrayidx1.i148.4.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 4
  %arrayidx1.i148.5.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 5
  %arrayidx1.i148.6.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 6
  %arrayidx1.i148.7.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 7
  %arrayidx1.i148.8.i = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 49, i32 8
  %bRfPiEnable.i = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 25
  br label %for.body44

for.body44:                                       ; preds = %for.inc74.for.body44_crit_edge, %for.inc.7
  %indvars.iv = phi i32 [ 0, %for.inc.7 ], [ %indvars.iv.next, %for.inc74.for.body44_crit_edge ]
  %final_candidate.0270 = phi i8 [ -1, %for.inc.7 ], [ %final_candidate.1, %for.inc74.for.body44_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ADDA_REG.i) #7
  %29 = call ptr @memcpy(ptr %ADDA_REG.i, ptr @__const.phy_IQCalibrate_8188E.ADDA_REG, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp.i = icmp eq i32 %indvars.iv, 0
  br i1 %cmp.i, label %if.then.i, label %if.end16.critedge.i

if.then.i:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ADDA_REG.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ADDA_REG.i, align 4
  %call.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %31, i32 noundef -1) #7
  %32 = ptrtoint ptr %ADDA_backup.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i.i, ptr %ADDA_backup.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.1.i, align 4
  %call.i.1.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %34, i32 noundef -1) #7
  %35 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.1.i, ptr %arrayidx1.i.1.i, align 4
  %36 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.2.i, align 4
  %call.i.2.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %37, i32 noundef -1) #7
  %38 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i.2.i, ptr %arrayidx1.i.2.i, align 4
  %39 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.3.i, align 4
  %call.i.3.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %40, i32 noundef -1) #7
  %41 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i.3.i, ptr %arrayidx1.i.3.i, align 4
  %42 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.4.i, align 4
  %call.i.4.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %43, i32 noundef -1) #7
  %44 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i.4.i, ptr %arrayidx1.i.4.i, align 4
  %45 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.5.i, align 4
  %call.i.5.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %46, i32 noundef -1) #7
  %47 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i.5.i, ptr %arrayidx1.i.5.i, align 4
  %48 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.6.i, align 4
  %call.i.6.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %49, i32 noundef -1) #7
  %50 = ptrtoint ptr %arrayidx1.i.6.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i.6.i, ptr %arrayidx1.i.6.i, align 4
  %51 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.7.i, align 4
  %call.i.7.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %52, i32 noundef -1) #7
  %53 = ptrtoint ptr %arrayidx1.i.7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i.7.i, ptr %arrayidx1.i.7.i, align 4
  %54 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.8.i, align 4
  %call.i.8.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %55, i32 noundef -1) #7
  %56 = ptrtoint ptr %arrayidx1.i.8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i.8.i, ptr %arrayidx1.i.8.i, align 4
  %57 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.9.i, align 4
  %call.i.9.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %58, i32 noundef -1) #7
  %59 = ptrtoint ptr %arrayidx1.i.9.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i.9.i, ptr %arrayidx1.i.9.i, align 4
  %60 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.10.i, align 4
  %call.i.10.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %61, i32 noundef -1) #7
  %62 = ptrtoint ptr %arrayidx1.i.10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i.10.i, ptr %arrayidx1.i.10.i, align 4
  %63 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.11.i, align 4
  %call.i.11.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %64, i32 noundef -1) #7
  %65 = ptrtoint ptr %arrayidx1.i.11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i.11.i, ptr %arrayidx1.i.11.i, align 4
  %66 = ptrtoint ptr %arrayidx.i.12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.12.i, align 4
  %call.i.12.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %67, i32 noundef -1) #7
  %68 = ptrtoint ptr %arrayidx1.i.12.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i.12.i, ptr %arrayidx1.i.12.i, align 4
  %69 = ptrtoint ptr %arrayidx.i.13.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.13.i, align 4
  %call.i.13.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %70, i32 noundef -1) #7
  %71 = ptrtoint ptr %arrayidx1.i.13.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i.13.i, ptr %arrayidx1.i.13.i, align 4
  %72 = ptrtoint ptr %arrayidx.i.14.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.14.i, align 4
  %call.i.14.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %73, i32 noundef -1) #7
  %74 = ptrtoint ptr %arrayidx1.i.14.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i.14.i, ptr %arrayidx1.i.14.i, align 4
  %75 = ptrtoint ptr %arrayidx.i.15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.15.i, align 4
  %call.i.15.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %76, i32 noundef -1) #7
  %77 = ptrtoint ptr %arrayidx1.i.15.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.i.15.i, ptr %arrayidx1.i.15.i, align 4
  %call.i144.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1314) #7
  %conv.i.i = zext i8 %call.i144.i to i32
  %78 = ptrtoint ptr %IQK_MAC_backup.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i.i, ptr %IQK_MAC_backup.i, align 4
  %call.1.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1360) #7
  %conv.1.i.i = zext i8 %call.1.i.i to i32
  %79 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv.1.i.i, ptr %arrayidx1.1.i.i, align 4
  %call.2.i.i = tail call zeroext i8 @rtw_read8(ptr noundef %adapt, i32 noundef 1361) #7
  %conv.2.i.i = zext i8 %call.2.i.i to i32
  %80 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.2.i.i, ptr %arrayidx1.2.i.i, align 4
  %call3.i.i = tail call i32 @rtw_read32(ptr noundef %adapt, i32 noundef 64) #7
  %81 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call3.i.i, ptr %arrayidx4.i.i, align 4
  %call.i147.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3076, i32 noundef -1) #7
  %82 = ptrtoint ptr %IQK_BB_backup.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call.i147.i, ptr %IQK_BB_backup.i, align 4
  %call.i147.1.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3080, i32 noundef -1) #7
  %83 = ptrtoint ptr %arrayidx1.i148.1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call.i147.1.i, ptr %arrayidx1.i148.1.i, align 4
  %call.i147.2.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2164, i32 noundef -1) #7
  %84 = ptrtoint ptr %arrayidx1.i148.2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call.i147.2.i, ptr %arrayidx1.i148.2.i, align 4
  %call.i147.3.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2920, i32 noundef -1) #7
  %85 = ptrtoint ptr %arrayidx1.i148.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call.i147.3.i, ptr %arrayidx1.i148.3.i, align 4
  %call.i147.4.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2924, i32 noundef -1) #7
  %86 = ptrtoint ptr %arrayidx1.i148.4.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call.i147.4.i, ptr %arrayidx1.i148.4.i, align 4
  %call.i147.5.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2160, i32 noundef -1) #7
  %87 = ptrtoint ptr %arrayidx1.i148.5.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call.i147.5.i, ptr %arrayidx1.i148.5.i, align 4
  %call.i147.6.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2144, i32 noundef -1) #7
  %88 = ptrtoint ptr %arrayidx1.i148.6.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call.i147.6.i, ptr %arrayidx1.i148.6.i, align 4
  %call.i147.7.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2148, i32 noundef -1) #7
  %89 = ptrtoint ptr %arrayidx1.i148.7.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i147.7.i, ptr %arrayidx1.i148.7.i, align 4
  %call.i147.8.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2048, i32 noundef -1) #7
  %90 = ptrtoint ptr %arrayidx1.i148.8.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i147.8.i, ptr %arrayidx1.i148.8.i, align 4
  call fastcc void @_PHY_PathADDAOn(ptr noundef %adapt, ptr noundef nonnull %ADDA_REG.i) #7
  %call.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 2080, i32 noundef 256) #7
  %conv14.i = trunc i32 %call.i to i8
  %91 = ptrtoint ptr %bRfPiEnable.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv14.i, ptr %bRfPiEnable.i, align 1
  br label %if.end16.i

if.end16.critedge.i:                              ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @_PHY_PathADDAOn(ptr noundef %adapt, ptr noundef nonnull %ADDA_REG.i) #7
  %92 = ptrtoint ptr %bRfPiEnable.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %.pr = load i8, ptr %bRfPiEnable.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.critedge.i, %if.then.i
  %93 = phi i8 [ %.pr, %if.end16.critedge.i ], [ %conv14.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i, label %if.then19.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2080, i32 noundef -1, i32 noundef 16777472) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2088, i32 noundef -1, i32 noundef 16777472) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end20.i_crit_edge
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2048, i32 noundef 16777216, i32 noundef 0) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2164, i32 noundef -1, i32 noundef 572538880) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2160, i32 noundef 1024, i32 noundef 1) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2160, i32 noundef 67108864, i32 noundef 1) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2144, i32 noundef 1024, i32 noundef 0) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #7
  %call.i153.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1314, i8 noundef zeroext 63) #7
  %94 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx1.1.i.i, align 4
  %96 = trunc i32 %95 to i8
  %conv.i156.i = and i8 %96, -9
  %call3.i157.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %conv.i156.i) #7
  %97 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx1.2.i.i, align 4
  %99 = trunc i32 %98 to i8
  %conv.1.i159.i = and i8 %99, -9
  %call3.1.i.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1361, i8 noundef zeroext %conv.1.i159.i) #7
  %100 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx4.i.i, align 4
  %102 = trunc i32 %101 to i8
  %conv7.i.i = and i8 %102, -33
  %call8.i.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 64, i8 noundef zeroext %conv7.i.i) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2920, i32 noundef -1, i32 noundef 257949696) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3652, i32 noundef -1, i32 noundef -2130688000) #7
  br label %for.body.i242

for.cond.i:                                       ; preds = %for.body.i242
  br i1 %cmp25.i, label %for.cond.i.for.body.i242_crit_edge, label %for.cond.i.for.body44.i.preheader_crit_edge

for.cond.i.for.body44.i.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44.i.preheader

for.cond.i.for.body.i242_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.cond.i.for.body.i242_crit_edge, %if.end20.i
  %cmp25.i = phi i1 [ true, %if.end20.i ], [ false, %for.cond.i.for.body.i242_crit_edge ]
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3632, i32 noundef -1, i32 noundef 268471324) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3636, i32 noundef -1, i32 noundef 805342236) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3640, i32 noundef -1, i32 noundef -2112617686) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3644, i32 noundef -1, i32 noundef 672530432) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #7
  %call.i161.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3756, i32 noundef -1) #7
  %call1.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3732, i32 noundef -1) #7
  %call2.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3740, i32 noundef -1) #7
  %and.i.i = and i32 %call.i161.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %113 = and i32 %call1.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %113)
  %cmp.not.i.i = icmp ne i32 %113, 21102592
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp.not.i.i, i1 false
  %114 = and i32 %call2.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %114)
  %cmp8.not.i.i = icmp ne i32 %114, 4325376
  %or.cond20.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  br i1 %or.cond20.i.i, label %if.then31.i, label %for.cond.i

if.then31.i:                                      ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3732, i32 noundef -1) #7
  %and.i = lshr i32 %call32.i, 16
  %shr.i = and i32 %and.i, 1023
  %arrayidx.i243 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv
  %115 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shr.i, ptr %arrayidx.i243, align 4
  %call34.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3740, i32 noundef -1) #7
  %and35.i = lshr i32 %call34.i, 16
  %shr36.i = and i32 %and35.i, 1023
  %arrayidx39.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 1
  %116 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shr36.i, ptr %arrayidx39.i, align 4
  br label %for.body44.i.preheader

for.body44.i.preheader:                           ; preds = %if.then31.i, %for.cond.i.for.body44.i.preheader_crit_edge
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.inc63.i.for.body44.i_crit_edge, %for.body44.i.preheader
  %cmp42.i = phi i1 [ false, %for.inc63.i.for.body44.i_crit_edge ], [ true, %for.body44.i.preheader ]
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 987515) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 2432) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 86, i32 noundef 1048575, i32 noundef 331776) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3652, i32 noundef -1, i32 noundef -2130688000) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3632, i32 noundef -1, i32 noundef 268471324) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3636, i32 noundef -1, i32 noundef 805342236) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3640, i32 noundef -1, i32 noundef -2112484321) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3644, i32 noundef -1, i32 noundef 672530432) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #7
  %call.i162.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3756, i32 noundef -1) #7
  %call1.i163.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3732, i32 noundef -1) #7
  %call2.i164.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3740, i32 noundef -1) #7
  %and.i165.i = and i32 %call.i162.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165.i)
  %tobool3.not.i166.i = icmp eq i32 %and.i165.i, 0
  br i1 %tobool3.not.i166.i, label %land.lhs.true.i.i, label %for.body44.i.for.inc63.i_crit_edge

for.body44.i.for.inc63.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

land.lhs.true.i.i:                                ; preds = %for.body44.i
  %and4.i.i = and i32 %call1.i163.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i.i)
  %cmp.not.i167.i = icmp eq i32 %and4.i.i, 21102592
  br i1 %cmp.not.i167.i, label %land.lhs.true.i.i.for.inc63.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.for.inc63.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %and6.i.i = lshr i32 %call2.i164.i, 16
  %shr7.i.i = and i32 %and6.i.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i.i)
  %cmp8.not.i168.i = icmp eq i32 %shr7.i.i, 66
  br i1 %cmp8.not.i168.i, label %land.lhs.true5.i.i.for.inc63.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.for.inc63.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  %or11.i.i = or i32 %and4.i.i, %shr7.i.i
  %or14.i.i = or i32 %or11.i.i, -2147451904
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3648, i32 noundef -1, i32 noundef %or14.i.i) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015802) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3640, i32 noundef -1, i32 noundef -2112484347) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3644, i32 noundef -1, i32 noundef 672533535) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #7
  %call21.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3756, i32 noundef -1) #7
  %call22.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3732, i32 noundef -1) #7
  %call23.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3740, i32 noundef -1) #7
  %call24.i.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3748, i32 noundef -1) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  tail call void @rtl8188e_PHY_SetRFReg(ptr noundef %adapt, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #7
  %and25.i.i = and i32 %call21.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp ne i32 %and25.i.i, 0
  %137 = and i32 %call24.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %137)
  %cmp30.not.i.i = icmp eq i32 %137, 20054016
  %or.cond.i169.i = select i1 %tobool26.not.i.i, i1 true, i1 %cmp30.not.i.i
  %138 = and i32 %call21.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %138)
  %cmp35.not.i.i = icmp eq i32 %138, 3538944
  %or.cond94.i.i = select i1 %or.cond.i169.i, i1 true, i1 %cmp35.not.i.i
  br i1 %or.cond94.i.i, label %if.then.i.i.for.inc63.i_crit_edge, label %if.then49.i

if.then.i.i.for.inc63.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

if.then49.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3748, i32 noundef -1) #7
  %and51.i = lshr i32 %call50.i, 16
  %shr52.i = and i32 %and51.i, 1023
  %arrayidx55.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 2
  %139 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shr52.i, ptr %arrayidx55.i, align 4
  %call56.i = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3756, i32 noundef -1) #7
  %and57.i = lshr i32 %call56.i, 16
  %shr58.i = and i32 %and57.i, 1023
  %arrayidx61.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 3
  %140 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %shr58.i, ptr %arrayidx61.i, align 4
  br label %for.end65.i

for.inc63.i:                                      ; preds = %if.then.i.i.for.inc63.i_crit_edge, %land.lhs.true5.i.i.for.inc63.i_crit_edge, %land.lhs.true.i.i.for.inc63.i_crit_edge, %for.body44.i.for.inc63.i_crit_edge
  br i1 %cmp42.i, label %for.inc63.i.for.body44.i_crit_edge, label %for.inc63.i.for.end65.i_crit_edge

for.inc63.i.for.end65.i_crit_edge:                ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65.i

for.inc63.i.for.body44.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44.i

for.end65.i:                                      ; preds = %for.inc63.i.for.end65.i_crit_edge, %if.then49.i
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  br i1 %cmp.i, label %phy_IQCalibrate_8188E.exit.thread, label %if.then69.i

phy_IQCalibrate_8188E.exit.thread:                ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ADDA_REG.i) #7
  br label %for.inc74

if.then69.i:                                      ; preds = %for.end65.i
  %141 = ptrtoint ptr %bRfPiEnable.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bRfPiEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool72.not.i = icmp eq i8 %142, 0
  br i1 %tobool72.not.i, label %if.then73.i, label %if.then69.i.phy_IQCalibrate_8188E.exit_crit_edge

if.then69.i.phy_IQCalibrate_8188E.exit_crit_edge: ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_IQCalibrate_8188E.exit

if.then73.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2080, i32 noundef -1, i32 noundef 16777216) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2088, i32 noundef -1, i32 noundef 16777216) #7
  br label %phy_IQCalibrate_8188E.exit

phy_IQCalibrate_8188E.exit:                       ; preds = %if.then73.i, %if.then69.i.phy_IQCalibrate_8188E.exit_crit_edge
  %143 = ptrtoint ptr %ADDA_REG.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ADDA_REG.i, align 4
  %145 = ptrtoint ptr %ADDA_backup.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ADDA_backup.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %144, i32 noundef -1, i32 noundef %146) #7
  %147 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.1.i, align 4
  %149 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx1.i.1.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %148, i32 noundef -1, i32 noundef %150) #7
  %151 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.2.i, align 4
  %153 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx1.i.2.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %152, i32 noundef -1, i32 noundef %154) #7
  %155 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i.3.i, align 4
  %157 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx1.i.3.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %156, i32 noundef -1, i32 noundef %158) #7
  %159 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i.4.i, align 4
  %161 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx1.i.4.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %160, i32 noundef -1, i32 noundef %162) #7
  %163 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.5.i, align 4
  %165 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx1.i.5.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %164, i32 noundef -1, i32 noundef %166) #7
  %167 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i.6.i, align 4
  %169 = ptrtoint ptr %arrayidx1.i.6.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx1.i.6.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %168, i32 noundef -1, i32 noundef %170) #7
  %171 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i.7.i, align 4
  %173 = ptrtoint ptr %arrayidx1.i.7.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx1.i.7.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %172, i32 noundef -1, i32 noundef %174) #7
  %175 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx.i.8.i, align 4
  %177 = ptrtoint ptr %arrayidx1.i.8.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx1.i.8.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %176, i32 noundef -1, i32 noundef %178) #7
  %179 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i.9.i, align 4
  %181 = ptrtoint ptr %arrayidx1.i.9.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx1.i.9.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %180, i32 noundef -1, i32 noundef %182) #7
  %183 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i.10.i, align 4
  %185 = ptrtoint ptr %arrayidx1.i.10.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx1.i.10.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %184, i32 noundef -1, i32 noundef %186) #7
  %187 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.i.11.i, align 4
  %189 = ptrtoint ptr %arrayidx1.i.11.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx1.i.11.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %188, i32 noundef -1, i32 noundef %190) #7
  %191 = ptrtoint ptr %arrayidx.i.12.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i.12.i, align 4
  %193 = ptrtoint ptr %arrayidx1.i.12.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx1.i.12.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %192, i32 noundef -1, i32 noundef %194) #7
  %195 = ptrtoint ptr %arrayidx.i.13.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.i.13.i, align 4
  %197 = ptrtoint ptr %arrayidx1.i.13.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx1.i.13.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %196, i32 noundef -1, i32 noundef %198) #7
  %199 = ptrtoint ptr %arrayidx.i.14.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i.14.i, align 4
  %201 = ptrtoint ptr %arrayidx1.i.14.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx1.i.14.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %200, i32 noundef -1, i32 noundef %202) #7
  %203 = ptrtoint ptr %arrayidx.i.15.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx.i.15.i, align 4
  %205 = ptrtoint ptr %arrayidx1.i.15.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx1.i.15.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %204, i32 noundef -1, i32 noundef %206) #7
  %207 = ptrtoint ptr %IQK_MAC_backup.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %IQK_MAC_backup.i, align 4
  %conv.i177.i = trunc i32 %208 to i8
  %call.i178.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1314, i8 noundef zeroext %conv.i177.i) #7
  %209 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx1.1.i.i, align 4
  %conv.1.i181.i = trunc i32 %210 to i8
  %call.1.i182.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1360, i8 noundef zeroext %conv.1.i181.i) #7
  %211 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx1.2.i.i, align 4
  %conv.2.i185.i = trunc i32 %212 to i8
  %call.2.i186.i = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef 1361, i8 noundef zeroext %conv.2.i185.i) #7
  %213 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx4.i.i, align 4
  %call4.i.i = tail call i32 @rtw_write32(ptr noundef %adapt, i32 noundef 64, i32 noundef %214) #7
  %215 = ptrtoint ptr %IQK_BB_backup.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %IQK_BB_backup.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3076, i32 noundef -1, i32 noundef %216) #7
  %217 = ptrtoint ptr %arrayidx1.i148.1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx1.i148.1.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3080, i32 noundef -1, i32 noundef %218) #7
  %219 = ptrtoint ptr %arrayidx1.i148.2.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx1.i148.2.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2164, i32 noundef -1, i32 noundef %220) #7
  %221 = ptrtoint ptr %arrayidx1.i148.3.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx1.i148.3.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2920, i32 noundef -1, i32 noundef %222) #7
  %223 = ptrtoint ptr %arrayidx1.i148.4.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx1.i148.4.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2924, i32 noundef -1, i32 noundef %224) #7
  %225 = ptrtoint ptr %arrayidx1.i148.5.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx1.i148.5.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2160, i32 noundef -1, i32 noundef %226) #7
  %227 = ptrtoint ptr %arrayidx1.i148.6.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx1.i148.6.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2144, i32 noundef -1, i32 noundef %228) #7
  %229 = ptrtoint ptr %arrayidx1.i148.7.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx1.i148.7.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2148, i32 noundef -1, i32 noundef %230) #7
  %231 = ptrtoint ptr %arrayidx1.i148.8.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx1.i148.8.i, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2048, i32 noundef -1, i32 noundef %232) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 2112, i32 noundef -1, i32 noundef 208595) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3632, i32 noundef -1, i32 noundef 16813056) #7
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3636, i32 noundef -1, i32 noundef 16813056) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ADDA_REG.i) #7
  %233 = trunc i32 %indvars.iv to i8
  %234 = zext i8 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %233, label %phy_IQCalibrate_8188E.exit.for.inc74_crit_edge [
    i8 1, label %if.then49
    i8 2, label %if.then59
  ]

phy_IQCalibrate_8188E.exit.for.inc74_crit_edge:   ; preds = %phy_IQCalibrate_8188E.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc74

if.then49:                                        ; preds = %phy_IQCalibrate_8188E.exit
  %call = call fastcc zeroext i1 @phy_SimularityCompare_8188E(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call, label %if.then49.if.end136_crit_edge, label %if.then49.for.inc74_crit_edge

if.then49.for.inc74_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc74

if.then49.if.end136_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then59:                                        ; preds = %phy_IQCalibrate_8188E.exit
  %call61 = call fastcc zeroext i1 @phy_SimularityCompare_8188E(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call61, label %if.then59.if.end136_crit_edge, label %if.end65

if.then59.if.end136_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call fastcc zeroext i1 @phy_SimularityCompare_8188E(ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  %. = select i1 %call67, i8 1, i8 3
  br label %for.inc74

for.inc74:                                        ; preds = %if.end65, %if.then49.for.inc74_crit_edge, %phy_IQCalibrate_8188E.exit.for.inc74_crit_edge, %phy_IQCalibrate_8188E.exit.thread
  %final_candidate.1 = phi i8 [ %final_candidate.0270, %phy_IQCalibrate_8188E.exit.for.inc74_crit_edge ], [ %., %if.end65 ], [ %final_candidate.0270, %phy_IQCalibrate_8188E.exit.thread ], [ %final_candidate.0270, %if.then49.for.inc74_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.end76, label %for.inc74.for.body44_crit_edge

for.inc74.for.body44_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

for.end76:                                        ; preds = %for.inc74
  %conv100 = zext i8 %final_candidate.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.1)
  %cmp101.not = icmp eq i8 %final_candidate.1, -1
  br i1 %cmp101.not, label %if.end136.thread, label %for.end76.if.end136_crit_edge

for.end76.if.end136_crit_edge:                    ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end136:                                        ; preds = %for.end76.if.end136_crit_edge, %if.then59.if.end136_crit_edge, %if.then49.if.end136_crit_edge
  %conv100281 = phi i32 [ %conv100, %for.end76.if.end136_crit_edge ], [ 0, %if.then49.if.end136_crit_edge ], [ 0, %if.then59.if.end136_crit_edge ]
  %final_candidate.2280 = phi i8 [ %final_candidate.1, %for.end76.if.end136_crit_edge ], [ 0, %if.then49.if.end136_crit_edge ], [ 0, %if.then59.if.end136_crit_edge ]
  %arrayidx105 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv100281
  %235 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx105, align 4
  %arrayidx109 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv100281, i32 1
  %237 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx109, align 4
  %arrayidx112 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv100281, i32 2
  %239 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx112, align 4
  %arrayidx115 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv100281, i32 4
  %241 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx115, align 4
  %arrayidx118 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv100281, i32 5
  %243 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx118, align 4
  %RegE94120 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 1
  %245 = ptrtoint ptr %RegE94120 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %236, ptr %RegE94120, align 4
  %RegE9C122 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 2
  %246 = ptrtoint ptr %RegE9C122 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %238, ptr %RegE9C122, align 4
  %RegEB4124 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 3
  %247 = ptrtoint ptr %RegEB4124 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %242, ptr %RegEB4124, align 4
  %RegEBC126 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 4
  %248 = ptrtoint ptr %RegEBC126 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %244, ptr %RegEBC126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp137.not = icmp eq i32 %236, 0
  br i1 %cmp137.not, label %if.end136.if.end144_crit_edge, label %if.then3.i

if.end136.if.end144_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.end136.thread:                                 ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #9
  %RegE94129 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 1
  %249 = ptrtoint ptr %RegE94129 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 256, ptr %RegE94129, align 4
  %RegEB4131 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 3
  %250 = ptrtoint ptr %RegEB4131 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 256, ptr %RegEB4131, align 4
  %RegE9C133 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 2
  %251 = ptrtoint ptr %RegE9C133 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %RegE9C133, align 4
  %RegEBC135 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 4
  %252 = ptrtoint ptr %RegEBC135 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %RegEBC135, align 4
  br label %if.end167

if.then3.i:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp142 = icmp eq i32 %240, 0
  %call.i246 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3200, i32 noundef -1) #7
  %shr.i247 = lshr i32 %call.i246, 22
  %253 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx105, align 4
  %and5.i = and i32 %254, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %254, -1024
  %spec.select.i = select i1 %cmp6.not.i, i32 %254, i32 %or.i
  %mul.i = mul i32 %spec.select.i, %shr.i247
  %shr9.i = lshr i32 %mul.i, 8
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3200, i32 noundef 1023, i32 noundef %shr9.i) #7
  %shr11.i = lshr i32 %mul.i, 7
  %and12.i = and i32 %shr11.i, 1
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3148, i32 noundef -2147483648, i32 noundef %and12.i) #7
  %255 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx109, align 4
  %and16.i = and i32 %256, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 0
  %or20.i = or i32 %256, -1024
  %Y.0.i = select i1 %cmp17.not.i, i32 %256, i32 %or20.i
  %mul22.i = mul i32 %Y.0.i, %shr.i247
  %shr23.i = lshr i32 %mul22.i, 8
  %and24.i = lshr i32 %mul22.i, 14
  %257 = and i32 %and24.i, 15
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3220, i32 noundef -268435456, i32 noundef %257) #7
  %and26.i = and i32 %shr23.i, 63
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3200, i32 noundef 4128768, i32 noundef %and26.i) #7
  %shr28.i = lshr i32 %mul22.i, 7
  %and29.i = and i32 %shr28.i, 1
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3148, i32 noundef 536870912, i32 noundef %and29.i) #7
  br i1 %cmp142, label %if.then3.i.if.end144_crit_edge, label %if.end32.i

if.then3.i.if.end144_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.end32.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx112, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3092, i32 noundef 1023, i32 noundef %259) #7
  %arrayidx38.i = getelementptr [8 x i32], ptr %result, i32 %conv100281, i32 3
  %260 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx38.i, align 4
  %and39.i = and i32 %261, 63
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3092, i32 noundef 64512, i32 noundef %and39.i) #7
  %262 = lshr i32 %261, 6
  %and44.i = and i32 %262, 15
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef 3232, i32 noundef -268435456, i32 noundef %and44.i) #7
  br label %if.end144

if.end144:                                        ; preds = %if.end32.i, %if.then3.i.if.end144_crit_edge, %if.end136.if.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %final_candidate.2280)
  %cmp146 = icmp ult i8 %final_candidate.2280, 4
  br i1 %cmp146, label %for.cond149.preheader, label %if.end144.if.end167_crit_edge

if.end144.if.end167_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

for.cond149.preheader:                            ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %Value = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 33, i32 1
  %263 = shl nuw nsw i32 %conv100281, 5
  %uglygep274 = getelementptr i8, ptr %result, i32 %263
  %264 = call ptr @memcpy(ptr %Value, ptr %uglygep274, i32 32)
  %IQKMatrixRegSetting166 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 33
  %265 = ptrtoint ptr %IQKMatrixRegSetting166 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %IQKMatrixRegSetting166, align 4
  br label %if.end167

if.end167:                                        ; preds = %for.cond149.preheader, %if.end144.if.end167_crit_edge, %if.end136.thread
  %IQK_BB_backup_recover170 = getelementptr inbounds %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48
  %call.i251 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3092, i32 noundef -1) #7
  %266 = ptrtoint ptr %IQK_BB_backup_recover170 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %call.i251, ptr %IQK_BB_backup_recover170, align 4
  %call.i251.1 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3100, i32 noundef -1) #7
  %arrayidx1.i252.1 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 1
  %267 = ptrtoint ptr %arrayidx1.i252.1 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %call.i251.1, ptr %arrayidx1.i252.1, align 4
  %call.i251.2 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3148, i32 noundef -1) #7
  %arrayidx1.i252.2 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 2
  %268 = ptrtoint ptr %arrayidx1.i252.2 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %call.i251.2, ptr %arrayidx1.i252.2, align 4
  %call.i251.3 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3192, i32 noundef -1) #7
  %arrayidx1.i252.3 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 3
  %269 = ptrtoint ptr %arrayidx1.i252.3 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %call.i251.3, ptr %arrayidx1.i252.3, align 4
  %call.i251.4 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3200, i32 noundef -1) #7
  %arrayidx1.i252.4 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 4
  %270 = ptrtoint ptr %arrayidx1.i252.4 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call.i251.4, ptr %arrayidx1.i252.4, align 4
  %call.i251.5 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3208, i32 noundef -1) #7
  %arrayidx1.i252.5 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 5
  %271 = ptrtoint ptr %arrayidx1.i252.5 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %call.i251.5, ptr %arrayidx1.i252.5, align 4
  %call.i251.6 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3220, i32 noundef -1) #7
  %arrayidx1.i252.6 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 6
  %272 = ptrtoint ptr %arrayidx1.i252.6 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %call.i251.6, ptr %arrayidx1.i252.6, align 4
  %call.i251.7 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3228, i32 noundef -1) #7
  %arrayidx1.i252.7 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 7
  %273 = ptrtoint ptr %arrayidx1.i252.7 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %call.i251.7, ptr %arrayidx1.i252.7, align 4
  %call.i251.8 = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef 3232, i32 noundef -1) #7
  %arrayidx1.i252.8 = getelementptr %struct.adapter, ptr %adapt, i32 0, i32 19, i32 38, i32 29, i32 48, i32 8
  %274 = ptrtoint ptr %arrayidx1.i252.8 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %call.i251.8, ptr %arrayidx1.i252.8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %if.then6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_PHY_SaveADDARegisters(ptr noundef %adapt, ptr nocapture noundef readonly %ADDAReg, ptr nocapture noundef writeonly %ADDABackup, i32 noundef %RegisterNum) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %RegisterNum)
  %cmp5.not = icmp eq i32 %RegisterNum, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %ADDAReg, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @rtl8188e_PHY_QueryBBReg(ptr noundef %adapt, i32 noundef %1, i32 noundef -1) #7
  %arrayidx1 = getelementptr i32, ptr %ADDABackup, i32 %i.06
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %RegisterNum
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_PHY_MACSettingCalibration(ptr noundef %adapt, ptr nocapture noundef readonly %MACReg, ptr nocapture noundef readonly %MACBackup) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %MACReg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %MACReg, align 4
  %call = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %1, i8 noundef zeroext 63) #7
  %arrayidx1 = getelementptr i32, ptr %MACReg, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %MACBackup, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = trunc i32 %5 to i8
  %conv = and i8 %6, -9
  %call3 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %3, i8 noundef zeroext %conv) #7
  %arrayidx1.1 = getelementptr i32, ptr %MACReg, i32 2
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.1, align 4
  %arrayidx2.1 = getelementptr i32, ptr %MACBackup, i32 2
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.1, align 4
  %11 = trunc i32 %10 to i8
  %conv.1 = and i8 %11, -9
  %call3.1 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %8, i8 noundef zeroext %conv.1) #7
  %arrayidx4 = getelementptr i32, ptr %MACReg, i32 3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %MACBackup, i32 3
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %16 = trunc i32 %15 to i8
  %conv7 = and i8 %16, -33
  %call8 = tail call i32 @rtw_write8(ptr noundef %adapt, i32 noundef %13, i8 noundef zeroext %conv7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @phy_SimularityCompare_8188E(ptr nocapture noundef %resulta, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #4 align 64 {
if.end38:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c1 to i32
  %idxprom16 = zext i8 %c2 to i32
  %arrayidx34 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 0
  %0 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 0
  %2 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp39 = icmp sgt i32 %1, %3
  %sub = sub i32 %1, %3
  %sub40 = sub i32 %3, %1
  %cond = select i1 %cmp39, i32 %sub, i32 %sub40
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond)
  %cmp41 = icmp ugt i32 %cond, 5
  %spec.select = zext i1 %cmp41 to i32
  %arrayidx7.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.1, align 4
  %and.1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp8.not.1 = icmp eq i32 %and.1, 0
  %or.1 = or i32 %5, -1024
  %tmp1.0.1 = select i1 %cmp8.not.1, i32 %5, i32 %or.1
  %arrayidx18.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 1
  %6 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx18.1, align 4
  %and19.1 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1)
  %cmp20.not.1 = icmp eq i32 %and19.1, 0
  %or25.1 = or i32 %7, -1024
  %spec.select.1 = select i1 %cmp20.not.1, i32 %7, i32 %or25.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.1, i32 %spec.select.1)
  %cmp39.1 = icmp sgt i32 %tmp1.0.1, %spec.select.1
  %sub.1 = sub i32 %tmp1.0.1, %spec.select.1
  %sub40.1 = sub i32 %spec.select.1, %tmp1.0.1
  %cond.1 = select i1 %cmp39.1, i32 %sub.1, i32 %sub40.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.1)
  %cmp41.1 = icmp ugt i32 %cond.1, 5
  %or76.1 = or i32 %spec.select, 2
  %sim_bitmap.1.1 = select i1 %cmp41.1, i32 %or76.1, i32 %spec.select
  %arrayidx34.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx34.2, align 4
  %arrayidx37.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 2
  %10 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx37.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp39.2 = icmp sgt i32 %9, %11
  %sub.2 = sub i32 %9, %11
  %sub40.2 = sub i32 %11, %9
  %cond.2 = select i1 %cmp39.2, i32 %sub.2, i32 %sub40.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.2)
  %cmp41.2 = icmp ugt i32 %cond.2, 5
  br i1 %cmp41.2, label %if.then42.2, label %if.end38.if.end38.3_crit_edge

if.end38.if.end38.3_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3

if.then42.2:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sim_bitmap.1.1)
  %tobool.not.2 = icmp eq i32 %sim_bitmap.1.1, 0
  br i1 %tobool.not.2, label %if.then46.2, label %if.else74.2

if.else74.2:                                      ; preds = %if.then42.2
  call void @__sanitizer_cov_trace_pc() #9
  %or76.2 = or i32 %sim_bitmap.1.1, 4
  br label %if.end38.3

if.then46.2:                                      ; preds = %if.then42.2
  %arrayidx49.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx49.2, align 4
  %arrayidx52.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx52.2, align 4
  %add53.2 = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add53.2)
  %cmp54.2 = icmp eq i32 %13, %add53.2
  br i1 %cmp54.2, label %if.then46.2.if.end38.3_crit_edge, label %if.else57.2

if.then46.2.if.end38.3_crit_edge:                 ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3

if.else57.2:                                      ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx60.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 2
  %16 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx60.2, align 4
  %arrayidx64.2 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 3
  %18 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx64.2, align 4
  %add65.2 = sub i32 0, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add65.2)
  %cmp66.2 = icmp eq i32 %17, %add65.2
  %spec.select3.2 = select i1 %cmp66.2, i8 %c1, i8 -1
  %spec.select4.2 = select i1 %cmp66.2, i32 0, i32 4
  br label %if.end38.3

if.end38.3:                                       ; preds = %if.else57.2, %if.then46.2.if.end38.3_crit_edge, %if.else74.2, %if.end38.if.end38.3_crit_edge
  %final_candidate.sroa.0.1.2 = phi i8 [ -1, %if.else74.2 ], [ -1, %if.end38.if.end38.3_crit_edge ], [ %c2, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select3.2, %if.else57.2 ]
  %sim_bitmap.1.2 = phi i32 [ %or76.2, %if.else74.2 ], [ %sim_bitmap.1.1, %if.end38.if.end38.3_crit_edge ], [ 0, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select4.2, %if.else57.2 ]
  %arrayidx7.3 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 3
  %20 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.3, align 4
  %and.3 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp8.not.3 = icmp eq i32 %and.3, 0
  %or.3 = or i32 %21, -1024
  %tmp1.0.3 = select i1 %cmp8.not.3, i32 %21, i32 %or.3
  %arrayidx18.3 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom16, i32 3
  %22 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18.3, align 4
  %and19.3 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3)
  %cmp20.not.3 = icmp eq i32 %and19.3, 0
  %or25.3 = or i32 %23, -1024
  %spec.select.3 = select i1 %cmp20.not.3, i32 %23, i32 %or25.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.3, i32 %spec.select.3)
  %cmp39.3 = icmp sgt i32 %tmp1.0.3, %spec.select.3
  %sub.3 = sub i32 %tmp1.0.3, %spec.select.3
  %sub40.3 = sub i32 %spec.select.3, %tmp1.0.3
  %cond.3 = select i1 %cmp39.3, i32 %sub.3, i32 %sub40.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.3)
  %cmp41.3 = icmp ugt i32 %cond.3, 5
  br i1 %cmp41.3, label %for.inc.3.thread, label %for.inc.3

for.inc.3.thread:                                 ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #9
  %or76.3 = or i32 %sim_bitmap.1.2, 8
  br label %if.else110

for.inc.3:                                        ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sim_bitmap.1.2)
  %cmp79 = icmp eq i32 %sim_bitmap.1.2, 0
  br i1 %cmp79, label %for.cond81.preheader, label %for.inc.3.if.else110_crit_edge

for.inc.3.if.else110_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

for.cond81.preheader:                             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.0.1.2)
  %cmp86.not = icmp eq i8 %final_candidate.sroa.0.1.2, -1
  br i1 %cmp86.not, label %for.cond81.preheader.cleanup_crit_edge, label %for.body95.preheader

for.cond81.preheader.cleanup_crit_edge:           ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body95.preheader:                             ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom97 = zext i8 %final_candidate.sroa.0.1.2 to i32
  %arrayidx99 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom97, i32 0
  %24 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx99, align 4
  %arrayidx101 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 0
  %26 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx101, align 4
  %arrayidx99.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom97, i32 1
  br label %cleanup.sink.split

if.else110:                                       ; preds = %for.inc.3.if.else110_crit_edge, %for.inc.3.thread
  %sim_bitmap.1.325 = phi i32 [ %or76.3, %for.inc.3.thread ], [ %sim_bitmap.1.2, %for.inc.3.if.else110_crit_edge ]
  %and111 = and i32 %sim_bitmap.1.325, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.cond114.preheader, label %if.else110.if.end126_crit_edge

if.else110.if.end126_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

for.cond114.preheader:                            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx120 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 0
  %27 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx120, align 4
  %arrayidx122 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 0
  %29 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx122, align 4
  %arrayidx120.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 1
  %30 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx120.1, align 4
  %arrayidx122.1 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx122.1, align 4
  br label %if.end126

if.end126:                                        ; preds = %for.cond114.preheader, %if.else110.if.end126_crit_edge
  %and127 = and i32 %sim_bitmap.1.325, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %for.cond130.preheader, label %if.end126.if.end142_crit_edge

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

for.cond130.preheader:                            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx136 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 2
  %33 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx138, align 4
  %arrayidx136.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 3
  %36 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx136.1, align 4
  %arrayidx138.1 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 3
  %38 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx138.1, align 4
  br label %if.end142

if.end142:                                        ; preds = %for.cond130.preheader, %if.end126.if.end142_crit_edge
  %and143 = and i32 %sim_bitmap.1.325, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %for.cond146.preheader, label %if.end142.if.end158_crit_edge

if.end142.if.end158_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

for.cond146.preheader:                            ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx152 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 4
  %39 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 4
  %41 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx154, align 4
  %arrayidx152.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 5
  %42 = ptrtoint ptr %arrayidx152.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx152.1, align 4
  %arrayidx154.1 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 5
  %44 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx154.1, align 4
  br label %if.end158

if.end158:                                        ; preds = %for.cond146.preheader, %if.end142.if.end158_crit_edge
  %and159 = and i32 %sim_bitmap.1.325, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %for.cond162.preheader, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond162.preheader:                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx168 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 6
  %45 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx168, align 4
  %arrayidx170 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 6
  %47 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx170, align 4
  %arrayidx168.1 = getelementptr [8 x i32], ptr %resulta, i32 %idxprom, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond162.preheader, %for.body95.preheader
  %arrayidx168.1.sink = phi ptr [ %arrayidx168.1, %for.cond162.preheader ], [ %arrayidx99.1, %for.body95.preheader ]
  %.sink26 = phi i32 [ 7, %for.cond162.preheader ], [ 1, %for.body95.preheader ]
  %48 = ptrtoint ptr %arrayidx168.1.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx168.1.sink, align 4
  %arrayidx170.1 = getelementptr [8 x i32], ptr %resulta, i32 3, i32 %.sink26
  %50 = ptrtoint ptr %arrayidx170.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx170.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end158.cleanup_crit_edge, %for.cond81.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end158.cleanup_crit_edge ], [ true, %for.cond81.preheader.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @PHY_SetTxPowerLevel8188E(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_PHY_PathADDAOn(ptr noundef %adapt, ptr nocapture noundef readonly %ADDAReg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ADDAReg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ADDAReg, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %1, i32 noundef -1, i32 noundef 186328480) #7
  %arrayidx1 = getelementptr i32, ptr %ADDAReg, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %3, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.1 = getelementptr i32, ptr %ADDAReg, i32 2
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.1, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %5, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.2 = getelementptr i32, ptr %ADDAReg, i32 3
  %6 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.2, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %7, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.3 = getelementptr i32, ptr %ADDAReg, i32 4
  %8 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.3, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %9, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.4 = getelementptr i32, ptr %ADDAReg, i32 5
  %10 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.4, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %11, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.5 = getelementptr i32, ptr %ADDAReg, i32 6
  %12 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.5, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %13, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.6 = getelementptr i32, ptr %ADDAReg, i32 7
  %14 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.6, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %15, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.7 = getelementptr i32, ptr %ADDAReg, i32 8
  %16 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.7, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %17, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.8 = getelementptr i32, ptr %ADDAReg, i32 9
  %18 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.8, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %19, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.9 = getelementptr i32, ptr %ADDAReg, i32 10
  %20 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.9, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %21, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.10 = getelementptr i32, ptr %ADDAReg, i32 11
  %22 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.10, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %23, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.11 = getelementptr i32, ptr %ADDAReg, i32 12
  %24 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.11, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %25, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.12 = getelementptr i32, ptr %ADDAReg, i32 13
  %26 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.12, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %27, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.13 = getelementptr i32, ptr %ADDAReg, i32 14
  %28 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.13, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %29, i32 noundef -1, i32 noundef 198911392) #7
  %arrayidx1.14 = getelementptr i32, ptr %ADDAReg, i32 15
  %30 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.14, align 4
  tail call void @rtl8188e_PHY_SetBBReg(ptr noundef %adapt, i32 noundef %31, i32 noundef -1, i32 noundef 198911392) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188e_PHY_SetRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

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
