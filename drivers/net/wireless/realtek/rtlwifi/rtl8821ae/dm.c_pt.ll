; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get C2H Command! Rate=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HwRateToMRate8812(): Non supported Rate [%x]!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"===>%s\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.rtl8812ae_dm_txpwr_track_set_pwr = private unnamed_addr constant [33 x i8] c"rtl8812ae_dm_txpwr_track_set_pwr\00", align 1
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TxRate=0x%x, PwrTrackingLimit=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_A]=%d,pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_A]=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@txscaling_tbl = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 129, i32 136, i32 144, i32 153, i32 162, i32 172, i32 182, i32 192, i32 204, i32 216, i32 229, i32 242, i32 257, i32 272, i32 288, i32 305, i32 323, i32 342, i32 362, i32 384, i32 407, i32 431, i32 456, i32 483, i32 512, i32 542, i32 574, i32 609, i32 645, i32 683, i32 723, i32 766, i32 811, i32 860, i32 910, i32 964, i32 1022], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_B]=%d, pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_B]=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"pDM_Odm->DefaultOfdmIndex=%d, pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"******Path_A Over BBSwing Limit ,PwrTrackingLimit = %d ,Remnant TxAGC Value = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"******Path_A Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"******Path_A Compensate with BBSwing, Final_OFDM_Swing_Index = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"******Path_A pDM_Odm->Modify_TxAGC_Flag = FALSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"******Path_B Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"******Path_B Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"******Path_B Compensate with BBSwing ,Final_OFDM_Swing_Index = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"******Path_B pDM_Odm->Modify_TxAGC_Flag = FALSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"pDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]:%d, pDM_Odm->DefaultOfdmIndex: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reload ofdm index for band switch\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"AVG Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(delta, delta_LCK, delta_IQK) = (%d, %d, %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"delta_LCK(%d) >= Threshold_IQK(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"delta_swing_table_idx_tup_a[%d] = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"delta_swing_table_idx_tup_b[%d] = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"delta_swing_table_idx_tdown_a[%d] = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"deltaSwingTableIdx_TDOWN_B[%d] = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"============================= [Path-%c]Calculating PowerIndexOffset =============================\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"[Path-%c] PowerIndexOffset(%d) =DeltaPowerIndex(%d) -DeltaPowerIndexLast(%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"The 'CCK' final index(%d) = BaseIndex(%d) + PowerIndexOffset(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"The 'OFDM' final index(%d) = BaseIndex[%c](%d) + PowerIndexOffset(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\0A\0A====================================================================================\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"The thermal meter is unchanged or TxPowerTracking OFF(%d): ThermalValue: %d , pDM_Odm->RFCalibrateInfo.ThermalValue: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"TxPowerTracking: [CCK] Swing Current Index: %d,Swing Base Index: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"TxPowerTracking: [OFDM] Swing Current Index: %d,Swing Base Index[%c]: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Temperature Increasing(A): delta_pi: %d , delta_t: %d, Now_t: %d,EFUSE_t: %d, Last_t: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Temperature Increasing(B): delta_pi: %d ,delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Temperature Decreasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Temperature Decreasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Temperature(%d) higher than PG value(%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"**********Enter POWER Tracking MIX_MODE**********\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Temperature(%d) lower than PG value(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"pDM_Odm->RFCalibrateInfo.ThermalValue =%d ThermalValue= %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<===%s\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__.rtl8812ae_dm_txpower_tracking_callback_thermalmeter = private unnamed_addr constant [52 x i8] c"rtl8812ae_dm_txpower_tracking_callback_thermalmeter\00", align 1
@__func__.rtl8821ae_dm_txpwr_track_set_pwr = private unnamed_addr constant [33 x i8] c"rtl8821ae_dm_txpwr_track_set_pwr\00", align 1
@.str.46 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"pDM_Odm->DefaultOfdmIndex=%d,pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c" ******Path_A Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"******Path_A Compensate with BBSwing ,Final_OFDM_Swing_Index = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"******Path_A pDM_Odm->Modify_TxAGC_Flag= FALSE\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"===>%s,\0A pDM_Odm->BbSwingIdxCckBase: %d,pDM_Odm->BbSwingIdxOfdmBase[A]:%d, pDM_Odm->DefaultOfdmIndex: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rtl8821ae_dm_txpower_tracking_callback_thermalmeter = private unnamed_addr constant [52 x i8] c"rtl8821ae_dm_txpower_tracking_callback_thermalmeter\00", align 1
@.str.51 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\0A\0A================================ [Path-%c]Calculating PowerIndexOffset ================================\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[Path-%c] PowerIndexOffset(%d) = DeltaPowerIndex(%d) - DeltaPowerIndexLast(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\0A\0A========================================================================================================\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"The thermal meter is unchanged or TxPowerTracking OFF(%d):ThermalValue: %d , pDM_Odm->RFCalibrateInfo.ThermalValue: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"TxPowerTracking: [CCK] Swing Current Index: %d, Swing Base Index: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"TxPowerTracking: [OFDM] Swing Current Index: %d, Swing Base Index[%c]: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Temperature Increasing(A): delta_pi: %d , delta_t: %d,Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"****Enter POWER Tracking MIX_MODE****\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*****Enter POWER Tracking MIX_MODE*****\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"pDM_Odm->RFCalibrateInfo.ThermalValue = %d ThermalValue= %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Trigger 8821ae Thermal Meter!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Schedule TxPowerTracking !!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl8821ae_txscaling_table = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 129, i32 136, i32 144, i32 153, i32 162, i32 172, i32 182, i32 192, i32 204, i32 216, i32 229, i32 242, i32 257, i32 272, i32 288, i32 305, i32 323, i32 342, i32 362, i32 384, i32 407, i32 431, i32 456, i32 483, i32 512, i32 542, i32 574, i32 609, i32 645, i32 683, i32 723, i32 766, i32 811, i32 860, i32 910, i32 964, i32 1022], [44 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gccka_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\04\04\05\05\06\06\06\07\07\07\08\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gccka_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\02\03\03\03\04\04\05\05\05\06\06\06\07\08\08\09\09\09\0A\0A\0A\0A\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gcckb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\04\04\05\05\06\06\06\07\07\07\08\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gcckb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\02\03\03\03\04\04\05\05\05\06\06\06\07\08\09\09\09\09\0A\0A\0A\0A\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24ga_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\04\04\05\05\06\06\06\07\07\07\08\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24ga_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\02\03\03\03\04\04\05\05\05\06\06\06\07\08\08\09\09\09\0A\0A\0A\0A\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\04\04\05\05\06\06\06\07\07\07\08\08\08\09\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_24gb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\01\02\02\02\03\03\03\04\04\05\05\05\06\06\06\07\08\09\09\09\09\0A\0A\0A\0A\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_5ga_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\03\03\04\04\04\04\05\05\06\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B", [30 x i8] c"\00\01\01\02\02\03\03\04\04\04\05\05\06\06\07\07\08\09\09\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B", [30 x i8] c"\00\01\01\02\03\03\04\04\05\06\06\07\07\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B"], [38 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_5ga_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\03\03\04\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0D\0D\0D", [30 x i8] c"\00\01\01\02\02\02\03\03\04\04\05\05\06\06\07\08\09\09\0A\0A\0B\0B\0B\0C\0C\0C\0C\0C\0D\0D", [30 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\08\08\09\0A\0B\0C\0D\0E\0E\0F\0F\0F\10\10\10\11\11\12\12"], [38 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_5gb_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\06\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B", [30 x i8] c"\00\01\01\02\02\03\03\04\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B", [30 x i8] c"\00\01\01\02\02\03\03\04\04\05\05\06\07\07\08\08\09\09\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B"], [38 x i8] zeroinitializer }, align 32
@rtl8812ae_delta_swing_table_idx_5gb_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\01\01\02\02\02\03\03\04\04\05\05\06\06\06\07\07\07\08\08\09\09\09\0A\0A\0B\0B\0C\0C\0D", [30 x i8] c"\00\01\01\02\02\02\03\03\04\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0D\0D", [30 x i8] c"\00\01\01\02\03\03\04\04\05\06\06\07\08\09\0A\0B\0C\0C\0D\0E\0E\0E\0F\10\11\11\11\12\12\12"], [38 x i8] zeroinitializer }, align 32
@rtl8818e_delta_swing_table_idx_24gb_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\00\01\01\02\02\03\03\04\04\04\04\04\04\04\04\05\05\07\07\08\08\08\09\09\09\09\09", [34 x i8] zeroinitializer }, align 32
@rtl8818e_delta_swing_table_idx_24gb_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\00\02\02\03\03\04\04\04\04\05\05\06\06\07\07\07\07\08\08\09\09\0A\0A\0A\0B\0B\0B\0B", [34 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_24gccka_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C", [34 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_24gccka_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\02\02\02\03\03\03\04\04\04\05\05\05\06\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_24ga_p = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\00\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0C\0C", [34 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_24ga_n = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\00\01\01\02\02\02\03\03\03\04\04\04\05\05\05\06\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0A", [34 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_5ga_p = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10", [30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10", [30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10"], [38 x i8] zeroinitializer }, align 32
@rtl8821ae_delta_swing_table_idx_5ga_n = internal constant { [3 x [30 x i8]], [38 x i8] } { [3 x [30 x i8]] [[30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10", [30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10", [30 x i8] c"\00\00\01\02\03\03\04\05\06\06\07\08\09\09\0A\0B\0C\0C\0D\0E\0F\0F\10\10\10\10\10\10\10\10"], [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Cnt_Cck_fail=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cnt_ofdm_fail=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Total False Alarm=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl8821ae_dm_check_rssi_monitor.last_rxokcnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMaxPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMinPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8821ae_dm_find_minimum_rssi.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8821ae\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8821ae_dm_find_minimum_rssi\00", [33 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl8821ae: Not connected to any AP\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rtl8821ae: rtl8821ae: Not connected to any AP\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Return: In Scan Progress\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"dm_digtable->rssi_val_min=0x%x,dm_digtable->rx_gain_max = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bOneEntryOnly=TRUE, dig_min_0=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No Link\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Abnormally false alarm case.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Normal Case: At Lower Bound\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Normal Case: Approach Lower Bound\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pDM_DigTable->LargeFAHit=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DIG AfterLink\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"First Connect\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Beacon is less than 10 and FA is less than 768, IGI GOES TO 0x1E!!!!!!!!!!!!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DIG BeforeLink\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"First DisConnect\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"England DIG\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DIG End Adjust IGI\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx_gain_max=0x%x, rx_gain_min=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TotalFA=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CurIGValue=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CCK cca thresh hold =%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver is going to unload\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"driver does not control rate adaptive mask\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSSI = %ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSSI_LEVEL = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PreState = %d, CurState = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.104 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtl8821ae_dm_refresh_basic_rate_mask.stage = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s=====>\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.rtl8821ae_dm_check_edca_turbo = private unnamed_addr constant [30 x i8] c"rtl8821ae_dm_check_edca_turbo\00", align 1
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Original BE PARAM: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bIsAnyNonBEPkts : 0x%x  bDisableFrameBursting : 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bEdcaTurboOn : 0x%x bBiasOnRx : 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"curTxOkCnt : 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"curRxOkCnt : 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EDCA Turbo on: EDCA_BE:0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"EDCA_BE_DL : 0x%x  EDCA_BE_UL : 0x%x  EDCA_BE : 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Balance Traffic\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Downlink\09Traffic\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No link!!\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atc_status = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crystal_cap = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"packet counter doesn't change\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"packet counter = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"cfo_khz_a = %dkHz, cfo_khz_b = %dkHz, cfo_ave = %dkHz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"first large CFO hit\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dynamic threshold = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Crystal cap = 0x%x, Crystal cap offset = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"New crystal cap = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Trigger 8812 Thermal Meter!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Schedule TxPowerTracking direct call!!\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [50 x i64] [i64 48, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 16, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 983, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1147, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1189, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1261, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1278, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"txscaling_tbl\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 16, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1294, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1303, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1335, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1354, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1361, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1374, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1397, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1414, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1421, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1435, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1476, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1485, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1496, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1516, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1535, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1543, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1566, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1578, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1582, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1594, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1598, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1610, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1614, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1627, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1633, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1649, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1668, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1673, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1687, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1694, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1704, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1708, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1729, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1736, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1743, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1750, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1759, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1763, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1769, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1785, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1796, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1932, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1963, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 1989, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2003, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2044, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2165, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2181, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2219, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2226, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2235, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2240, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2261, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2281, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2291, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2302, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2334, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2339, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2783, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [26 x i8] c"rtl8821ae_txscaling_table\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 56, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant [42 x i8] c"rtl8812ae_delta_swing_table_idx_24gccka_p\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 154, i32 17 }
@___asan_gen_.340 = private unnamed_addr constant [42 x i8] c"rtl8812ae_delta_swing_table_idx_24gccka_n\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 150, i32 17 }
@___asan_gen_.343 = private unnamed_addr constant [42 x i8] c"rtl8812ae_delta_swing_table_idx_24gcckb_p\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 146, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant [42 x i8] c"rtl8812ae_delta_swing_table_idx_24gcckb_n\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 142, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant [39 x i8] c"rtl8812ae_delta_swing_table_idx_24ga_p\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 138, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant [39 x i8] c"rtl8812ae_delta_swing_table_idx_24ga_n\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 134, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant [39 x i8] c"rtl8812ae_delta_swing_table_idx_24gb_p\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 130, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant [39 x i8] c"rtl8812ae_delta_swing_table_idx_24gb_n\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 126, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant [38 x i8] c"rtl8812ae_delta_swing_table_idx_5ga_p\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 185, i32 17 }
@___asan_gen_.364 = private unnamed_addr constant [38 x i8] c"rtl8812ae_delta_swing_table_idx_5ga_n\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 176, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant [38 x i8] c"rtl8812ae_delta_swing_table_idx_5gb_p\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 167, i32 17 }
@___asan_gen_.370 = private unnamed_addr constant [38 x i8] c"rtl8812ae_delta_swing_table_idx_5gb_n\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 158, i32 17 }
@___asan_gen_.373 = private unnamed_addr constant [38 x i8] c"rtl8818e_delta_swing_table_idx_24gb_p\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 118, i32 17 }
@___asan_gen_.376 = private unnamed_addr constant [38 x i8] c"rtl8818e_delta_swing_table_idx_24gb_n\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 122, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant [42 x i8] c"rtl8821ae_delta_swing_table_idx_24gccka_p\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 206, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant [42 x i8] c"rtl8821ae_delta_swing_table_idx_24gccka_n\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 202, i32 17 }
@___asan_gen_.385 = private unnamed_addr constant [39 x i8] c"rtl8821ae_delta_swing_table_idx_24ga_p\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 198, i32 17 }
@___asan_gen_.388 = private unnamed_addr constant [39 x i8] c"rtl8821ae_delta_swing_table_idx_24ga_n\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 194, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant [38 x i8] c"rtl8821ae_delta_swing_table_idx_5ga_p\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 219, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant [38 x i8] c"rtl8821ae_delta_swing_table_idx_5ga_n\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 210, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 882, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 884, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 886, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [13 x i8] c"last_rxokcnt\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 507, i32 31 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 538, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 548, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 433, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 440, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 446, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 453, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 457, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 632, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 669, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 685, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 694, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 698, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 730, i32 6 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 736, i32 6 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 744, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 756, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 763, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 776, i32 5 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 781, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 785, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 801, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 804, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 813, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 816, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 818, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2608, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2359, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2365, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2394, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2397, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2399, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 695, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 723, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [6 x i8] c"stage\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2420, i32 12 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2494, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2496, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2530, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2535, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2540, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2542, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2555, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2560, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2460, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2466, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2628, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2629, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2645, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2655, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2661, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2671, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2681, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2703, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2713, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 2737, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 898, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.590 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 903, i32 2 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @txscaling_tbl, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @rtl8821ae_txscaling_table, ptr @rtl8812ae_delta_swing_table_idx_24gccka_p, ptr @rtl8812ae_delta_swing_table_idx_24gccka_n, ptr @rtl8812ae_delta_swing_table_idx_24gcckb_p, ptr @rtl8812ae_delta_swing_table_idx_24gcckb_n, ptr @rtl8812ae_delta_swing_table_idx_24ga_p, ptr @rtl8812ae_delta_swing_table_idx_24ga_n, ptr @rtl8812ae_delta_swing_table_idx_24gb_p, ptr @rtl8812ae_delta_swing_table_idx_24gb_n, ptr @rtl8812ae_delta_swing_table_idx_5ga_p, ptr @rtl8812ae_delta_swing_table_idx_5ga_n, ptr @rtl8812ae_delta_swing_table_idx_5gb_p, ptr @rtl8812ae_delta_swing_table_idx_5gb_n, ptr @rtl8818e_delta_swing_table_idx_24gb_p, ptr @rtl8818e_delta_swing_table_idx_24gb_n, ptr @rtl8821ae_delta_swing_table_idx_24gccka_p, ptr @rtl8821ae_delta_swing_table_idx_24gccka_n, ptr @rtl8821ae_delta_swing_table_idx_24ga_p, ptr @rtl8821ae_delta_swing_table_idx_24ga_n, ptr @rtl8821ae_delta_swing_table_idx_5ga_p, ptr @rtl8821ae_delta_swing_table_idx_5ga_n, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @rtl8821ae_dm_check_rssi_monitor.last_rxokcnt, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txscaling_tbl to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_txscaling_table to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gccka_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gccka_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gcckb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gcckb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24ga_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24ga_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_24gb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_5ga_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_5ga_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_5gb_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8812ae_delta_swing_table_idx_5gb_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8818e_delta_swing_table_idx_24gb_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8818e_delta_swing_table_idx_24gb_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_24gccka_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_24gccka_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_24ga_p to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_24ga_n to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_5ga_p to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_delta_swing_table_idx_5ga_n to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_dm_check_rssi_monitor.last_rxokcnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8821ae_dm_txpower_track_adjust(ptr nocapture noundef readonly %hw, i8 noundef zeroext %type, ptr nocapture noundef %pdirection, ptr nocapture noundef writeonly %poutwrite_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.if.end59_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then30
  ]

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then:                                          ; preds = %entry
  %swing_idx_ofdm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61
  %3 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %swing_idx_ofdm, align 1
  %swing_idx_ofdm_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63
  %5 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %swing_idx_ofdm_base, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp8.not = icmp ugt i8 %4, %6
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %pdirection, align 1
  %8 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %swing_idx_ofdm_base, align 2
  %10 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %swing_idx_ofdm, align 1
  %sub = sub i8 %9, %11
  br label %if.end51

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %pdirection, align 1
  %13 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %swing_idx_ofdm, align 1
  %15 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %swing_idx_ofdm_base, align 2
  %sub24 = sub i8 %14, %16
  br label %if.end51

if.then30:                                        ; preds = %entry
  %swing_idx_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %17 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %swing_idx_cck, align 1
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %19 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %swing_idx_cck_base, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp33.not = icmp ugt i8 %18, %20
  br i1 %cmp33.not, label %if.else42, label %if.then35

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %pdirection, align 1
  %22 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swing_idx_cck_base, align 1
  %24 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %swing_idx_cck, align 1
  %sub40 = sub i8 %23, %25
  br label %if.end51

if.else42:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %pdirection to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %pdirection, align 1
  %27 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %swing_idx_cck, align 1
  %29 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %swing_idx_cck_base, align 1
  %sub47 = sub i8 %28, %30
  br label %if.end51

if.end51:                                         ; preds = %if.else42, %if.then35, %if.else, %if.then10
  %pwr_val.0 = phi i8 [ %sub, %if.then10 ], [ %sub24, %if.else ], [ %sub40, %if.then35 ], [ %sub47, %if.else42 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %pwr_val.0)
  %cmp53 = icmp ugt i8 %pwr_val.0, 5
  br i1 %cmp53, label %land.lhs.true, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %pdirection to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pdirection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp56 = icmp eq i8 %32, 1
  %spec.select = select i1 %cmp56, i8 6, i8 %pwr_val.0
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true, %if.end51.if.end59_crit_edge, %entry.if.end59_crit_edge
  %pwr_val.1 = phi i8 [ %pwr_val.0, %if.end51.if.end59_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.if.end59_crit_edge ]
  %conv60 = zext i8 %pwr_val.1 to i32
  %or67 = mul nuw i32 %conv60, 16843009
  %33 = ptrtoint ptr %poutwrite_val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or67, ptr %poutwrite_val, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_clear_txpower_tracking_state(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %default_cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 39
  %2 = ptrtoint ptr %default_cck_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %default_cck_index, align 8
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %4 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %swing_idx_cck_base, align 1
  %swing_idx_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %5 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %3, ptr %swing_idx_cck, align 1
  %cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %6 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cck_index, align 1
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %7 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %default_ofdm_index, align 1
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 0
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 0
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 0
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 0
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44, i32 0
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45, i32 0
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx18, align 1
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %8, ptr %arrayidx.1, align 1
  %arrayidx5.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 1
  %18 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %8, ptr %arrayidx5.1, align 1
  %arrayidx8.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 1
  %19 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %arrayidx8.1, align 1
  %arrayidx10.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %20 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx10.1, align 1
  %arrayidx12.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 1
  %21 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx12.1, align 1
  %arrayidx14.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 1
  %22 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx14.1, align 1
  %arrayidx16.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44, i32 1
  %23 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx16.1, align 1
  %arrayidx18.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45, i32 1
  %24 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx18.1, align 1
  %modify_txagc_flag_path_a = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %25 = ptrtoint ptr %modify_txagc_flag_path_a to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %modify_txagc_flag_path_a, align 1
  %modify_txagc_flag_path_b = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 48
  %26 = ptrtoint ptr %modify_txagc_flag_path_b to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %modify_txagc_flag_path_b, align 8
  %remnant_cck_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %27 = ptrtoint ptr %remnant_cck_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %remnant_cck_idx, align 2
  %eeprom_thermalmeter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 55
  %28 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %eeprom_thermalmeter, align 4
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %30 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %thermalvalue, align 2
  %thermalvalue_iqk = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 21
  %31 = ptrtoint ptr %thermalvalue_iqk to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %thermalvalue_iqk, align 4
  %thermalvalue_lck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 22
  %32 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %29, ptr %thermalvalue_lck, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_initialize_txpower_tracking_thermalmeter(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpower_track_control = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 34
  %2 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %txpower_track_control, align 8
  %eeprom_thermalmeter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 55
  %3 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eeprom_thermalmeter, align 4
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %5 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %thermalvalue, align 2
  %thermalvalue_iqk = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 21
  %6 = ptrtoint ptr %thermalvalue_iqk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %thermalvalue_iqk, align 4
  %thermalvalue_lck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 22
  %7 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %thermalvalue_lck, align 1
  %8 = load ptr, ptr %priv, align 8
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 10, i32 53
  %9 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_bandtype.i, align 8
  %conv.i = trunc i32 %10 to i8
  %call.i = tail call i32 @phy_get_tx_swing_8812A(ptr noundef %hw, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [37 x i32], ptr @rtl8821ae_txscaling_table, i32 0, i32 %indvars.iv.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %12)
  %cmp4.i = icmp eq i32 %call.i, %12
  br i1 %cmp4.i, label %rtl8821ae_dm_get_swing_index.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 37
  br i1 %exitcond.not.i, label %for.inc.i.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_get_swing_index.exit.thread

rtl8821ae_dm_get_swing_index.exit:                ; preds = %for.body.i
  %13 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %13)
  %cmp = icmp eq i8 %13, 37
  br i1 %cmp, label %rtl8821ae_dm_get_swing_index.exit.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge, label %rtl8821ae_dm_get_swing_index.exit.for.body_crit_edge

rtl8821ae_dm_get_swing_index.exit.for.body_crit_edge: ; preds = %rtl8821ae_dm_get_swing_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

rtl8821ae_dm_get_swing_index.exit.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge: ; preds = %rtl8821ae_dm_get_swing_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_get_swing_index.exit.thread

rtl8821ae_dm_get_swing_index.exit.thread:         ; preds = %rtl8821ae_dm_get_swing_index.exit.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge, %for.inc.i.rtl8821ae_dm_get_swing_index.exit.thread_crit_edge
  br label %for.body

for.body:                                         ; preds = %rtl8821ae_dm_get_swing_index.exit.thread, %rtl8821ae_dm_get_swing_index.exit.for.body_crit_edge
  %14 = phi i8 [ 24, %rtl8821ae_dm_get_swing_index.exit.thread ], [ %13, %rtl8821ae_dm_get_swing_index.exit.for.body_crit_edge ]
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %15 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %default_ofdm_index, align 1
  %default_cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 39
  %16 = ptrtoint ptr %default_cck_index to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 24, ptr %default_cck_index, align 8
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %17 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 24, ptr %swing_idx_cck_base, align 1
  %cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %18 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 24, ptr %cck_index, align 1
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %arrayidx, align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 0
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 0
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 0
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 0
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx21, align 1
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %14, ptr %arrayidx.1, align 1
  %arrayidx15.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 1
  %25 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %14, ptr %arrayidx15.1, align 1
  %arrayidx17.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 1
  %26 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx17.1, align 1
  %arrayidx19.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %27 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx19.1, align 1
  %arrayidx21.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 1
  %28 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx21.1, align 1
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %14, ptr %arrayidx.2, align 1
  %arrayidx15.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 2
  %30 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %14, ptr %arrayidx15.2, align 1
  %arrayidx17.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 2
  %31 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx17.2, align 1
  %arrayidx19.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 2
  %32 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx19.2, align 1
  %arrayidx21.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 2
  %33 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx21.2, align 1
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %14, ptr %arrayidx.3, align 1
  %arrayidx15.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 3
  %35 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %14, ptr %arrayidx15.3, align 1
  %arrayidx17.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 3
  %36 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx17.3, align 1
  %arrayidx19.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 3
  %37 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx19.3, align 1
  %arrayidx21.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 3
  %38 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx21.3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8821ae_dm_init_edca_turbo(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_turbo_edca = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %2 = ptrtoint ptr %current_turbo_edca to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %current_turbo_edca, align 2
  %is_any_nonbepkts = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 8
  %3 = ptrtoint ptr %is_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_any_nonbepkts, align 1
  %is_cur_rdlstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 9
  %4 = ptrtoint ptr %is_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_cur_rdlstate, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8821ae_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ratr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %ratr_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ratr_state, align 1
  %pre_ratr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 21
  %3 = ptrtoint ptr %pre_ratr_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pre_ratr_state, align 4
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %4 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dm_type, align 2
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %5 = ptrtoint ptr %useramask to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %useramask, align 1
  %high_rssi_thresh_for_ra = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %high_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %high_rssi_thresh_for_ra, align 4
  %low_rssi_thresh_for_ra40m = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 6
  %7 = ptrtoint ptr %low_rssi_thresh_for_ra40m to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %low_rssi_thresh_for_ra40m, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_init(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 127) #8
  %iqk_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 13
  tail call void @_raw_spin_lock(ptr noundef %iqk_lock) #8
  %lck_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 13
  %8 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %lck_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %iqk_lock) #8
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %9 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %dm_type, align 2
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef %hw, i32 noundef 2052, i32 noundef 65536) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i = icmp ne i32 %call.i.i, 0
  %conv.i = zext i1 %tobool.i to i8
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 14, i32 39
  %18 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %cck_high_power.i, align 1
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %cfg.i19.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i19.i, align 8
  %ops.i20.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ops.i20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i20.i, align 4
  %get_bbreg.i21.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %get_bbreg.i21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_bbreg.i21.i, align 4
  %call.i22.i = tail call i32 %26(ptr noundef %hw, i32 noundef 2056, i32 noundef 15) #8
  %and.i = and i32 %call.i22.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rfpath_rxenable.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 15, i32 15
  %27 = ptrtoint ptr %rfpath_rxenable.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rfpath_rxenable.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and6.i = and i32 %call.i22.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.rtl8821ae_dm_common_info_self_init.exit_crit_edge, label %if.then8.i

if.end.i.rtl8821ae_dm_common_info_self_init.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_common_info_self_init.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 15, i32 15, i32 1
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx11.i, align 1
  br label %rtl8821ae_dm_common_info_self_init.exit

rtl8821ae_dm_common_info_self_init.exit:          ; preds = %if.then8.i, %if.end.i.rtl8821ae_dm_common_info_self_init.exit_crit_edge
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef %call.i) #8
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 22, i32 1
  %31 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 22, i32 21
  %32 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 15, i32 32
  %33 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dm_type.i, align 2
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 15, i32 14
  %34 = ptrtoint ptr %useramask.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %useramask.i, align 1
  %high_rssi_thresh_for_ra.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 22, i32 3
  %35 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 50, ptr %high_rssi_thresh_for_ra.i, align 4
  %low_rssi_thresh_for_ra40m.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 22, i32 6
  %36 = ptrtoint ptr %low_rssi_thresh_for_ra40m.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %low_rssi_thresh_for_ra40m.i, align 4
  %37 = load ptr, ptr %priv, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 15, i32 7
  %38 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %current_turbo_edca.i, align 2
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 15, i32 8
  %39 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 15, i32 9
  %40 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %is_cur_rdlstate.i, align 8
  %41 = load ptr, ptr %priv, align 8
  %txpower_track_control.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 34
  %42 = ptrtoint ptr %txpower_track_control.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %txpower_track_control.i, align 8
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 17, i32 55
  %43 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %thermalvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 23
  %45 = ptrtoint ptr %thermalvalue.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %thermalvalue.i, align 2
  %thermalvalue_iqk.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 21
  %46 = ptrtoint ptr %thermalvalue_iqk.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %thermalvalue_iqk.i, align 4
  %thermalvalue_lck.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 22
  %47 = ptrtoint ptr %thermalvalue_lck.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %44, ptr %thermalvalue_lck.i, align 1
  %48 = load ptr, ptr %priv, align 8
  %current_bandtype.i.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 10, i32 53
  %49 = ptrtoint ptr %current_bandtype.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current_bandtype.i.i, align 8
  %conv.i.i = trunc i32 %50 to i8
  %call.i.i17 = tail call i32 @phy_get_tx_swing_8812A(ptr noundef %hw, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rtl8821ae_dm_common_info_self_init.exit
  %indvars.iv.i.i = phi i32 [ 0, %rtl8821ae_dm_common_info_self_init.exit ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [37 x i32], ptr @rtl8821ae_txscaling_table, i32 0, i32 %indvars.iv.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i17, i32 %52)
  %cmp4.i.i = icmp eq i32 %call.i.i17, %52
  br i1 %cmp4.i.i, label %rtl8821ae_dm_get_swing_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 37
  br i1 %exitcond.not.i.i, label %for.inc.i.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_get_swing_index.exit.thread.i

rtl8821ae_dm_get_swing_index.exit.i:              ; preds = %for.body.i.i
  %53 = trunc i32 %indvars.iv.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %53)
  %cmp.i = icmp eq i8 %53, 37
  br i1 %cmp.i, label %rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge, label %rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit_crit_edge

rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit_crit_edge: ; preds = %rtl8821ae_dm_get_swing_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit

rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge: ; preds = %rtl8821ae_dm_get_swing_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_get_swing_index.exit.thread.i

rtl8821ae_dm_get_swing_index.exit.thread.i:       ; preds = %rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge, %for.inc.i.i.rtl8821ae_dm_get_swing_index.exit.thread.i_crit_edge
  br label %rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit

rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit: ; preds = %rtl8821ae_dm_get_swing_index.exit.thread.i, %rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit_crit_edge
  %54 = phi i8 [ 24, %rtl8821ae_dm_get_swing_index.exit.thread.i ], [ %53, %rtl8821ae_dm_get_swing_index.exit.i.rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.exit_crit_edge ]
  %default_ofdm_index.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 38
  %55 = ptrtoint ptr %default_ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %default_ofdm_index.i, align 1
  %default_cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 39
  %56 = ptrtoint ptr %default_cck_index.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 24, ptr %default_cck_index.i, align 8
  %swing_idx_cck_base.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 67
  %57 = ptrtoint ptr %swing_idx_cck_base.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 24, ptr %swing_idx_cck_base.i, align 1
  %cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 40
  %58 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 24, ptr %cck_index.i, align 1
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 63, i32 0
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %54, ptr %arrayidx.i, align 1
  %arrayidx15.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 37, i32 0
  %60 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %54, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 41, i32 0
  %61 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx17.i, align 1
  %arrayidx19.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 43, i32 0
  %62 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx19.i, align 1
  %arrayidx21.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 42, i32 0
  %63 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx21.i, align 1
  %arrayidx.1.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 63, i32 1
  %64 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %54, ptr %arrayidx.1.i, align 1
  %arrayidx15.1.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 37, i32 1
  %65 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %54, ptr %arrayidx15.1.i, align 1
  %arrayidx17.1.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 41, i32 1
  %66 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx17.1.i, align 1
  %arrayidx19.1.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 43, i32 1
  %67 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx19.1.i, align 1
  %arrayidx21.1.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 42, i32 1
  %68 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx21.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 63, i32 2
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %54, ptr %arrayidx.2.i, align 1
  %arrayidx15.2.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 37, i32 2
  %70 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %54, ptr %arrayidx15.2.i, align 1
  %arrayidx17.2.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 41, i32 2
  %71 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx17.2.i, align 1
  %arrayidx19.2.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 43, i32 2
  %72 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx19.2.i, align 1
  %arrayidx21.2.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 42, i32 2
  %73 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx21.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 63, i32 3
  %74 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %54, ptr %arrayidx.3.i, align 1
  %arrayidx15.3.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 37, i32 3
  %75 = ptrtoint ptr %arrayidx15.3.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %54, ptr %arrayidx15.3.i, align 1
  %arrayidx17.3.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 41, i32 3
  %76 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx17.3.i, align 1
  %arrayidx19.3.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 43, i32 3
  %77 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx19.3.i, align 1
  %arrayidx21.3.i = getelementptr %struct.rtl_priv, ptr %41, i32 0, i32 15, i32 42, i32 3
  %78 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx21.3.i, align 1
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 17, i32 58
  %81 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %crystalcap.i, align 2
  %conv.i19 = zext i8 %82 to i32
  %crystal_cap.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 15, i32 56
  %83 = ptrtoint ptr %crystal_cap.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i19, ptr %crystal_cap.i, align 8
  %84 = load ptr, ptr %priv, align 8
  %cfg.i.i20 = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i.i20 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i.i20, align 8
  %ops.i.i21 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i.i21, align 4
  %get_bbreg.i.i22 = getelementptr inbounds %struct.rtl_hal_ops, ptr %88, i32 0, i32 45
  %89 = ptrtoint ptr %get_bbreg.i.i22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_bbreg.i.i22, align 4
  %call.i.i23 = tail call i32 %90(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool.i24 = icmp ne i32 %call.i.i23, 0
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 15, i32 51
  %frombool.i = zext i1 %tobool.i24 to i8
  %91 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %frombool.i, ptr %atc_status.i, align 8
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 15, i32 57
  %92 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 10, ptr %cfo_threshold.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_write_cck_cca_thres(ptr nocapture noundef readonly %hw, i8 noundef zeroext %current_cca) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_cck_cca_thres = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 29
  %2 = ptrtoint ptr %cur_cck_cca_thres to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_cck_cca_thres, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %current_cca)
  %cmp.not = icmp eq i8 %3, %current_cca
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 2570, i8 noundef zeroext %current_cca) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 2570) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %cur_cck_cca_thres to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_cck_cca_thres, align 2
  %pre_cck_cca_thres = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 28
  %14 = ptrtoint ptr %pre_cck_cca_thres to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pre_cck_cca_thres, align 1
  store i8 %current_cca, ptr %cur_cck_cca_thres, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_write_dig(ptr noundef %hw, i8 noundef zeroext %current_igi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop_dig = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 20
  %2 = ptrtoint ptr %stop_dig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dig, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 9
  %4 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_igvalue, align 4
  %conv = zext i8 %current_igi to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %11(ptr noundef %hw, i32 noundef 3152, i32 noundef -1, i32 noundef %conv) #8
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp6.not = icmp eq i8 %13, 0
  br i1 %cmp6.not, label %if.then3.if.end11_crit_edge, label %if.then8

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %cfg.i24 = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i24, align 8
  %ops.i25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i25, align 4
  %set_bbreg.i26 = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %set_bbreg.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bbreg.i26, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef %conv) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %22 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %cur_igvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_update_init_rate(ptr noundef %hw, i8 noundef zeroext %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i8 %rate to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #8
  %tx_rate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 60
  %2 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %rate, ptr %tx_rate, align 8
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %4)
  %cmp = icmp eq i16 %4, 13
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 0, i8 zeroext undef)
  tail call void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 1, i8 zeroext undef)
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8821ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 0, i8 zeroext undef)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef %method, i8 noundef zeroext %rf_path, i8 zeroext %channel_mapped_index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_rate2 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 60
  %2 = ptrtoint ptr %tx_rate2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_rate2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8821ae_dm_txpwr_track_set_pwr) #8
  br label %if.end111

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @rtl8821ae_hw_rate_to_mrate(ptr noundef %hw, i8 noundef zeroext %3)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8821ae_dm_txpwr_track_set_pwr) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp6.not = icmp eq i8 %call, -1
  br i1 %cmp6.not, label %if.end.if.end111_crit_edge, label %land.lhs.true

if.end.if.end111_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %call)
  %cmp13 = icmp ult i8 %call, 23
  br i1 %cmp13, label %land.lhs.true.if.end111_crit_edge, label %land.lhs.true19

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

land.lhs.true19:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %call)
  %cmp21 = icmp ult i8 %call, 97
  br i1 %cmp21, label %land.lhs.true19.if.end111_crit_edge, label %if.else24

land.lhs.true19.if.end111_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %call)
  %cmp26 = icmp eq i8 %call, 108
  br i1 %cmp26, label %if.else24.if.end111_crit_edge, label %if.else29

if.else24.if.end111_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %call)
  %4 = icmp slt i8 %call, -125
  br i1 %4, label %if.else29.if.end111_crit_edge, label %if.else38

if.else29.if.end111_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else38:                                        ; preds = %if.else29
  %5 = add i8 %call, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %if.else38.if.end111_crit_edge, label %if.else47

if.else38.if.end111_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else47:                                        ; preds = %if.else38
  %7 = add i8 %call, 123
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %if.else47.if.end111_crit_edge, label %if.else56

if.else47.if.end111_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else56:                                        ; preds = %if.else47
  %9 = add i8 %call, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %if.else56.if.end111_crit_edge, label %if.else65

if.else56.if.end111_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else65:                                        ; preds = %if.else56
  %11 = add i8 %call, 109
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %if.else65.if.end111_crit_edge, label %if.else74

if.else65.if.end111_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else74:                                        ; preds = %if.else65
  %13 = add i8 %call, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %if.else74.if.end111_crit_edge, label %if.else83

if.else74.if.end111_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else83:                                        ; preds = %if.else74
  %switch.tableidx = add i8 %call, 105
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %if.else83.if.end111_crit_edge

if.else83.if.end111_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

switch.lookup:                                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nsw i32 %switch.idx.cast, -2
  %switch.offset324 = add nsw i32 %switch.idx.mult, 26
  br label %if.end111

if.end111:                                        ; preds = %switch.lookup, %if.else83.if.end111_crit_edge, %if.else74.if.end111_crit_edge, %if.else65.if.end111_crit_edge, %if.else56.if.end111_crit_edge, %if.else47.if.end111_crit_edge, %if.else38.if.end111_crit_edge, %if.else29.if.end111_crit_edge, %if.else24.if.end111_crit_edge, %land.lhs.true19.if.end111_crit_edge, %land.lhs.true.if.end111_crit_edge, %if.end.if.end111_crit_edge, %if.end.thread
  %conv5323.shrunk = phi i8 [ -1, %if.end.if.end111_crit_edge ], [ %call, %land.lhs.true.if.end111_crit_edge ], [ %call, %land.lhs.true19.if.end111_crit_edge ], [ 108, %if.else24.if.end111_crit_edge ], [ %call, %if.else29.if.end111_crit_edge ], [ %call, %if.else38.if.end111_crit_edge ], [ %call, %if.else47.if.end111_crit_edge ], [ %call, %if.else56.if.end111_crit_edge ], [ %call, %if.else65.if.end111_crit_edge ], [ %call, %if.else74.if.end111_crit_edge ], [ -1, %if.end.thread ], [ %call, %switch.lookup ], [ %call, %if.else83.if.end111_crit_edge ]
  %pwr_tracking_limit.0 = phi i32 [ 26, %if.end.if.end111_crit_edge ], [ 32, %land.lhs.true.if.end111_crit_edge ], [ 30, %land.lhs.true19.if.end111_crit_edge ], [ 28, %if.else24.if.end111_crit_edge ], [ 34, %if.else29.if.end111_crit_edge ], [ 30, %if.else38.if.end111_crit_edge ], [ 28, %if.else47.if.end111_crit_edge ], [ 34, %if.else56.if.end111_crit_edge ], [ 30, %if.else65.if.end111_crit_edge ], [ 28, %if.else74.if.end111_crit_edge ], [ 26, %if.end.thread ], [ %switch.offset324, %switch.lookup ], [ 24, %if.else83.if.end111_crit_edge ]
  %conv5323 = zext i8 %conv5323.shrunk to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv5323, i32 noundef %pwr_tracking_limit.0) #8
  %16 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %method, label %if.end111.cleanup_crit_edge [
    i32 0, label %if.then116
    i32 2, label %if.then140
  ]

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then116:                                       ; preds = %if.end111
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8821ae_dm_txpwr_track_set_pwr) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_path)
  %cmp118 = icmp eq i8 %rf_path, 0
  br i1 %cmp118, label %if.then120, label %if.then116.cleanup_crit_edge

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then120:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  %ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37
  %17 = ptrtoint ptr %ofdm_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ofdm_index, align 1
  %conv121 = sext i8 %18 to i32
  %19 = tail call i32 @llvm.smin.i32(i32 %pwr_tracking_limit.0, i32 %conv121)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv121, i32 noundef %19) #8
  %arrayidx135 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx135, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %29(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %21) #8
  br label %cleanup

if.then140:                                       ; preds = %if.end111
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %30 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %default_ofdm_index, align 1
  %conv141 = zext i8 %31 to i32
  %idxprom = zext i8 %rf_path to i32
  %arrayidx142 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx142, align 1
  %conv143 = sext i8 %33 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %conv141, i32 noundef %conv143, i32 noundef %idxprom) #8
  %34 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %default_ofdm_index, align 1
  %36 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx142, align 1
  %add = add i8 %37, %35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_path)
  %cmp153 = icmp eq i8 %rf_path, 0
  br i1 %cmp153, label %if.then155, label %if.then140.cleanup_crit_edge

if.then140.cleanup_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then155:                                       ; preds = %if.then140
  %conv156 = sext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pwr_tracking_limit.0, i32 %conv156)
  %cmp158 = icmp slt i32 %pwr_tracking_limit.0, %conv156
  br i1 %cmp158, label %if.then160, label %if.else177

if.then160:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  %38 = trunc i32 %pwr_tracking_limit.0 to i8
  %conv163 = sub i8 %add, %38
  %remnant_cck_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %39 = ptrtoint ptr %remnant_cck_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv163, ptr %remnant_cck_idx, align 2
  %remnant_ofdm_swing_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %40 = ptrtoint ptr %remnant_ofdm_swing_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv163, ptr %remnant_ofdm_swing_idx, align 1
  %arrayidx171 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %pwr_tracking_limit.0
  %41 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx171, align 4
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %cfg.i309 = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %cfg.i309 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i309, align 8
  %ops.i310 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ops.i310 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i310, align 4
  %set_bbreg.i311 = getelementptr inbounds %struct.rtl_hal_ops, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %set_bbreg.i311 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_bbreg.i311, align 4
  tail call void %50(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %42) #8
  %modify_txagc_flag_path_a = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %51 = ptrtoint ptr %modify_txagc_flag_path_a to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %modify_txagc_flag_path_a, align 1
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %52 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %current_channel, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %53, i8 noundef zeroext 0) #8
  %54 = ptrtoint ptr %remnant_ofdm_swing_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %remnant_ofdm_swing_idx, align 1
  %conv176 = sext i8 %55 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %pwr_tracking_limit.0, i32 noundef %conv176) #8
  br label %cleanup

if.else177:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp179 = icmp slt i8 %add, 0
  br i1 %cmp179, label %if.then181, label %if.else192

if.then181:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #10
  %remnant_cck_idx182 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %56 = ptrtoint ptr %remnant_cck_idx182 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add, ptr %remnant_cck_idx182, align 2
  %remnant_ofdm_swing_idx183 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %57 = ptrtoint ptr %remnant_ofdm_swing_idx183 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %add, ptr %remnant_ofdm_swing_idx183, align 1
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  %cfg.i313 = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i313 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i313, align 8
  %ops.i314 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %ops.i314 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i314, align 4
  %set_bbreg.i315 = getelementptr inbounds %struct.rtl_hal_ops, ptr %63, i32 0, i32 46
  %64 = ptrtoint ptr %set_bbreg.i315 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_bbreg.i315, align 4
  tail call void %65(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef 129) #8
  %modify_txagc_flag_path_a186 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %66 = ptrtoint ptr %modify_txagc_flag_path_a186 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %modify_txagc_flag_path_a186, align 1
  %current_channel187 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %67 = ptrtoint ptr %current_channel187 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %current_channel187, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %68, i8 noundef zeroext 0) #8
  %69 = ptrtoint ptr %remnant_ofdm_swing_idx183 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %remnant_ofdm_swing_idx183, align 1
  %conv191 = sext i8 %70 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv191) #8
  br label %cleanup

if.else192:                                       ; preds = %if.else177
  %idxprom193 = zext i8 %add to i32
  %arrayidx194 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %idxprom193
  %71 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx194, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %cfg.i317 = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i317 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i317, align 8
  %ops.i318 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i318 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i318, align 4
  %set_bbreg.i319 = getelementptr inbounds %struct.rtl_hal_ops, ptr %78, i32 0, i32 46
  %79 = ptrtoint ptr %set_bbreg.i319 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_bbreg.i319, align 4
  tail call void %80(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %72) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %conv156) #8
  %modify_txagc_flag_path_a196 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %81 = ptrtoint ptr %modify_txagc_flag_path_a196 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %modify_txagc_flag_path_a196, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not = icmp eq i8 %82, 0
  br i1 %tobool.not, label %if.else192.cleanup_crit_edge, label %if.then197

if.else192.cleanup_crit_edge:                     ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then197:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #10
  %remnant_cck_idx198 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %83 = ptrtoint ptr %remnant_cck_idx198 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %remnant_cck_idx198, align 2
  %remnant_ofdm_swing_idx199 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %84 = ptrtoint ptr %remnant_ofdm_swing_idx199 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %remnant_ofdm_swing_idx199, align 1
  %current_channel202 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %85 = ptrtoint ptr %current_channel202 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %current_channel202, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %86, i8 noundef zeroext 0) #8
  %87 = ptrtoint ptr %modify_txagc_flag_path_a196 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %modify_txagc_flag_path_a196, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.49) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then197, %if.else192.cleanup_crit_edge, %if.then181, %if.then160, %if.then140.cleanup_crit_edge, %if.then120, %if.then116.cleanup_crit_edge, %if.end111.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef %method, i8 noundef zeroext %rf_path, i8 zeroext %channel_mapped_index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_rate2 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 60
  %2 = ptrtoint ptr %tx_rate2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_rate2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8812ae_dm_txpwr_track_set_pwr) #8
  br label %if.end189

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @rtl8821ae_hw_rate_to_mrate(ptr noundef %hw, i8 noundef zeroext %3)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8812ae_dm_txpwr_track_set_pwr) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp6.not = icmp eq i8 %call, -1
  br i1 %cmp6.not, label %if.end.if.end189_crit_edge, label %land.lhs.true

if.end.if.end189_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %call)
  %cmp13 = icmp ult i8 %call, 23
  br i1 %cmp13, label %land.lhs.true.if.end189_crit_edge, label %land.lhs.true19

land.lhs.true.if.end189_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

land.lhs.true19:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %call)
  %cmp21 = icmp ult i8 %call, 97
  br i1 %cmp21, label %land.lhs.true19.if.end189_crit_edge, label %if.else24

land.lhs.true19.if.end189_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %call)
  %cmp26 = icmp eq i8 %call, 108
  br i1 %cmp26, label %if.else24.if.end189_crit_edge, label %if.else29

if.else24.if.end189_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %call)
  %4 = icmp slt i8 %call, -125
  br i1 %4, label %if.else29.if.end189_crit_edge, label %if.else38

if.else29.if.end189_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else38:                                        ; preds = %if.else29
  %5 = add i8 %call, 125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %if.else38.if.end189_crit_edge, label %if.else47

if.else38.if.end189_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else47:                                        ; preds = %if.else38
  %7 = add i8 %call, 123
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %if.else47.if.end189_crit_edge, label %if.else56

if.else47.if.end189_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else56:                                        ; preds = %if.else47
  %9 = add i8 %call, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %if.else56.if.end189_crit_edge, label %if.else65

if.else56.if.end189_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else65:                                        ; preds = %if.else56
  %11 = add i8 %call, 117
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %if.else65.if.end189_crit_edge, label %if.else74

if.else65.if.end189_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else74:                                        ; preds = %if.else65
  %13 = add i8 %call, 115
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %14 = icmp ult i8 %13, 3
  br i1 %14, label %if.else74.if.end189_crit_edge, label %if.else83

if.else74.if.end189_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else83:                                        ; preds = %if.else74
  %15 = add i8 %call, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %16 = icmp ult i8 %15, 3
  br i1 %16, label %if.else83.if.end189_crit_edge, label %if.else92

if.else83.if.end189_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else92:                                        ; preds = %if.else83
  %17 = add i8 %call, 109
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %18 = icmp ult i8 %17, 2
  br i1 %18, label %if.else92.if.end189_crit_edge, label %if.else101

if.else92.if.end189_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else101:                                       ; preds = %if.else92
  %19 = add i8 %call, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %20 = icmp ult i8 %19, 2
  br i1 %20, label %if.else101.if.end189_crit_edge, label %if.else110

if.else101.if.end189_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else110:                                       ; preds = %if.else101
  %switch.tableidx = add i8 %call, 105
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %21 = icmp ult i8 %switch.tableidx, 3
  br i1 %21, label %switch.lookup, label %if.else125

if.else125:                                       ; preds = %if.else110
  %22 = add i8 %call, 102
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %23 = icmp ult i8 %22, 3
  br i1 %23, label %if.else125.if.end189_crit_edge, label %if.else134

if.else125.if.end189_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else134:                                       ; preds = %if.else125
  %24 = add i8 %call, 99
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %25 = icmp ult i8 %24, 2
  br i1 %25, label %if.else134.if.end189_crit_edge, label %if.else143

if.else134.if.end189_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else143:                                       ; preds = %if.else134
  %26 = add i8 %call, 97
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %27 = icmp ult i8 %26, 2
  br i1 %27, label %if.else143.if.end189_crit_edge, label %if.else152

if.else143.if.end189_crit_edge:                   ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.else152:                                       ; preds = %if.else143
  %switch.tableidx564 = add i8 %call, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx564)
  %28 = icmp ult i8 %switch.tableidx564, 3
  br i1 %28, label %switch.lookup563, label %if.else152.if.end189_crit_edge

if.else152.if.end189_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

switch.lookup:                                    ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nsw i32 %switch.idx.cast, -2
  %switch.offset562 = add nsw i32 %switch.idx.mult, 26
  br label %if.end189

switch.lookup563:                                 ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.cast566 = zext i8 %switch.tableidx564 to i32
  %switch.idx.mult567 = mul nsw i32 %switch.idx.cast566, -2
  %switch.offset568 = add nsw i32 %switch.idx.mult567, 26
  br label %if.end189

if.end189:                                        ; preds = %switch.lookup563, %switch.lookup, %if.else152.if.end189_crit_edge, %if.else143.if.end189_crit_edge, %if.else134.if.end189_crit_edge, %if.else125.if.end189_crit_edge, %if.else101.if.end189_crit_edge, %if.else92.if.end189_crit_edge, %if.else83.if.end189_crit_edge, %if.else74.if.end189_crit_edge, %if.else65.if.end189_crit_edge, %if.else56.if.end189_crit_edge, %if.else47.if.end189_crit_edge, %if.else38.if.end189_crit_edge, %if.else29.if.end189_crit_edge, %if.else24.if.end189_crit_edge, %land.lhs.true19.if.end189_crit_edge, %land.lhs.true.if.end189_crit_edge, %if.end.if.end189_crit_edge, %if.end.thread
  %conv5561.shrunk = phi i8 [ -1, %if.end.if.end189_crit_edge ], [ %call, %land.lhs.true.if.end189_crit_edge ], [ %call, %land.lhs.true19.if.end189_crit_edge ], [ 108, %if.else24.if.end189_crit_edge ], [ %call, %if.else29.if.end189_crit_edge ], [ %call, %if.else38.if.end189_crit_edge ], [ %call, %if.else47.if.end189_crit_edge ], [ %call, %if.else56.if.end189_crit_edge ], [ %call, %if.else65.if.end189_crit_edge ], [ %call, %if.else74.if.end189_crit_edge ], [ %call, %if.else83.if.end189_crit_edge ], [ %call, %if.else92.if.end189_crit_edge ], [ %call, %if.else101.if.end189_crit_edge ], [ %call, %if.else125.if.end189_crit_edge ], [ %call, %if.else134.if.end189_crit_edge ], [ %call, %if.else143.if.end189_crit_edge ], [ -1, %if.end.thread ], [ %call, %switch.lookup ], [ %call, %switch.lookup563 ], [ %call, %if.else152.if.end189_crit_edge ]
  %pwr_tracking_limit.0 = phi i32 [ 26, %if.end.if.end189_crit_edge ], [ 32, %land.lhs.true.if.end189_crit_edge ], [ 30, %land.lhs.true19.if.end189_crit_edge ], [ 28, %if.else24.if.end189_crit_edge ], [ 34, %if.else29.if.end189_crit_edge ], [ 30, %if.else38.if.end189_crit_edge ], [ 28, %if.else47.if.end189_crit_edge ], [ 34, %if.else56.if.end189_crit_edge ], [ 30, %if.else65.if.end189_crit_edge ], [ 28, %if.else74.if.end189_crit_edge ], [ 34, %if.else83.if.end189_crit_edge ], [ 30, %if.else92.if.end189_crit_edge ], [ 28, %if.else101.if.end189_crit_edge ], [ 34, %if.else125.if.end189_crit_edge ], [ 30, %if.else134.if.end189_crit_edge ], [ 28, %if.else143.if.end189_crit_edge ], [ 26, %if.end.thread ], [ %switch.offset562, %switch.lookup ], [ %switch.offset568, %switch.lookup563 ], [ 24, %if.else152.if.end189_crit_edge ]
  %conv5561 = zext i8 %conv5561.shrunk to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv5561, i32 noundef %pwr_tracking_limit.0) #8
  %29 = zext i32 %method to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %method, label %if.end189.cleanup_crit_edge [
    i32 0, label %if.then194
    i32 2, label %if.then241
  ]

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then194:                                       ; preds = %if.end189
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8812ae_dm_txpwr_track_set_pwr) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rf_path)
  %cmp196 = icmp eq i8 %rf_path, 0
  br i1 %cmp196, label %if.then198, label %if.else214

if.then198:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37
  %30 = ptrtoint ptr %ofdm_index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ofdm_index, align 1
  %conv199 = sext i8 %31 to i32
  %32 = tail call i32 @llvm.smin.i32(i32 %pwr_tracking_limit.0, i32 %conv199)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv199, i32 noundef %32) #8
  %arrayidx213 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx213, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %42(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %34) #8
  br label %cleanup

if.else214:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx217 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 1
  %43 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx217, align 1
  %conv218 = sext i8 %44 to i32
  %45 = tail call i32 @llvm.smin.i32(i32 %pwr_tracking_limit.0, i32 %conv218)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv218, i32 noundef %45) #8
  %arrayidx236 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx236, align 4
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i531 = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i531 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i531, align 8
  %ops.i532 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i532 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i532, align 4
  %set_bbreg.i533 = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %set_bbreg.i533 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bbreg.i533, align 4
  tail call void %55(ptr noundef %hw, i32 noundef 3612, i32 noundef -2097152, i32 noundef %47) #8
  br label %cleanup

if.then241:                                       ; preds = %if.end189
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %56 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %default_ofdm_index, align 1
  %conv242 = zext i8 %57 to i32
  %idxprom = zext i8 %rf_path to i32
  %arrayidx243 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44, i32 %idxprom
  %58 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx243, align 1
  %conv244 = sext i8 %59 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv242, i32 noundef %conv244, i32 noundef %idxprom) #8
  %60 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %default_ofdm_index, align 1
  %62 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx243, align 1
  %add = add i8 %63, %61
  %64 = zext i8 %rf_path to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %rf_path, label %if.then241.cleanup_crit_edge [
    i8 0, label %if.then256
    i8 1, label %if.then312
  ]

if.then241.cleanup_crit_edge:                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then256:                                       ; preds = %if.then241
  %conv257 = sext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pwr_tracking_limit.0, i32 %conv257)
  %cmp259 = icmp slt i32 %pwr_tracking_limit.0, %conv257
  br i1 %cmp259, label %if.then261, label %if.else278

if.then261:                                       ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #10
  %65 = trunc i32 %pwr_tracking_limit.0 to i8
  %conv264 = sub i8 %add, %65
  %remnant_cck_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %66 = ptrtoint ptr %remnant_cck_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv264, ptr %remnant_cck_idx, align 2
  %remnant_ofdm_swing_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %67 = ptrtoint ptr %remnant_ofdm_swing_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv264, ptr %remnant_ofdm_swing_idx, align 1
  %arrayidx272 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %pwr_tracking_limit.0
  %68 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx272, align 4
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i535 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i535 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i535, align 8
  %ops.i536 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i536 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i536, align 4
  %set_bbreg.i537 = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i537 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i537, align 4
  tail call void %77(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %69) #8
  %modify_txagc_flag_path_a = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %78 = ptrtoint ptr %modify_txagc_flag_path_a to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %modify_txagc_flag_path_a, align 1
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %79 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %current_channel, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %80, i8 noundef zeroext 0) #8
  %81 = ptrtoint ptr %remnant_ofdm_swing_idx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %remnant_ofdm_swing_idx, align 1
  %conv277 = sext i8 %82 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %pwr_tracking_limit.0, i32 noundef %conv277) #8
  br label %cleanup

if.else278:                                       ; preds = %if.then256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp280 = icmp slt i8 %add, 0
  br i1 %cmp280, label %if.then282, label %if.else293

if.then282:                                       ; preds = %if.else278
  call void @__sanitizer_cov_trace_pc() #10
  %remnant_cck_idx283 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %83 = ptrtoint ptr %remnant_cck_idx283 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %add, ptr %remnant_cck_idx283, align 2
  %remnant_ofdm_swing_idx284 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %84 = ptrtoint ptr %remnant_ofdm_swing_idx284 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %add, ptr %remnant_ofdm_swing_idx284, align 1
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %cfg.i539 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %87 = ptrtoint ptr %cfg.i539 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i539, align 8
  %ops.i540 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ops.i540 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i540, align 4
  %set_bbreg.i541 = getelementptr inbounds %struct.rtl_hal_ops, ptr %90, i32 0, i32 46
  %91 = ptrtoint ptr %set_bbreg.i541 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_bbreg.i541, align 4
  tail call void %92(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef 129) #8
  %modify_txagc_flag_path_a287 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %93 = ptrtoint ptr %modify_txagc_flag_path_a287 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %modify_txagc_flag_path_a287, align 1
  %current_channel288 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %94 = ptrtoint ptr %current_channel288 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %current_channel288, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %95, i8 noundef zeroext 0) #8
  %96 = ptrtoint ptr %remnant_ofdm_swing_idx284 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %remnant_ofdm_swing_idx284, align 1
  %conv292 = sext i8 %97 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv292) #8
  br label %cleanup

if.else293:                                       ; preds = %if.else278
  %idxprom294 = zext i8 %add to i32
  %arrayidx295 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %idxprom294
  %98 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx295, align 4
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %cfg.i543 = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %102 = ptrtoint ptr %cfg.i543 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i543, align 8
  %ops.i544 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %ops.i544 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i544, align 4
  %set_bbreg.i545 = getelementptr inbounds %struct.rtl_hal_ops, ptr %105, i32 0, i32 46
  %106 = ptrtoint ptr %set_bbreg.i545 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_bbreg.i545, align 4
  tail call void %107(ptr noundef %hw, i32 noundef 3100, i32 noundef -2097152, i32 noundef %99) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %conv257) #8
  %modify_txagc_flag_path_a297 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 47
  %108 = ptrtoint ptr %modify_txagc_flag_path_a297 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %modify_txagc_flag_path_a297, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not = icmp eq i8 %109, 0
  br i1 %tobool.not, label %if.else293.cleanup_crit_edge, label %if.then298

if.else293.cleanup_crit_edge:                     ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then298:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #10
  %remnant_cck_idx299 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 46
  %110 = ptrtoint ptr %remnant_cck_idx299 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %remnant_cck_idx299, align 2
  %remnant_ofdm_swing_idx300 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45
  %111 = ptrtoint ptr %remnant_ofdm_swing_idx300 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %remnant_ofdm_swing_idx300, align 1
  %current_channel303 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %112 = ptrtoint ptr %current_channel303 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %current_channel303, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %113, i8 noundef zeroext 0) #8
  %114 = ptrtoint ptr %modify_txagc_flag_path_a297 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %modify_txagc_flag_path_a297, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.then312:                                       ; preds = %if.then241
  %conv313 = sext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pwr_tracking_limit.0, i32 %conv313)
  %cmp315 = icmp slt i32 %pwr_tracking_limit.0, %conv313
  br i1 %cmp315, label %if.then317, label %if.else333

if.then317:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  %115 = trunc i32 %pwr_tracking_limit.0 to i8
  %conv321 = sub i8 %add, %115
  %arrayidx324 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45, i32 1
  %116 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv321, ptr %arrayidx324, align 1
  %arrayidx326 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %pwr_tracking_limit.0
  %117 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx326, align 4
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %cfg.i547 = getelementptr inbounds %struct.rtl_priv, ptr %120, i32 0, i32 32
  %121 = ptrtoint ptr %cfg.i547 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i547, align 8
  %ops.i548 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %ops.i548 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i548, align 4
  %set_bbreg.i549 = getelementptr inbounds %struct.rtl_hal_ops, ptr %124, i32 0, i32 46
  %125 = ptrtoint ptr %set_bbreg.i549 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %set_bbreg.i549, align 4
  tail call void %126(ptr noundef %hw, i32 noundef 3612, i32 noundef -2097152, i32 noundef %118) #8
  %modify_txagc_flag_path_b = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 48
  %127 = ptrtoint ptr %modify_txagc_flag_path_b to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %modify_txagc_flag_path_b, align 8
  %current_channel327 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %128 = ptrtoint ptr %current_channel327 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %current_channel327, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %129, i8 noundef zeroext 1) #8
  %130 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx324, align 1
  %conv332 = sext i8 %131 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %pwr_tracking_limit.0, i32 noundef %conv332) #8
  br label %cleanup

if.else333:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp335 = icmp slt i8 %add, 0
  br i1 %cmp335, label %if.then337, label %if.else347

if.then337:                                       ; preds = %if.else333
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx340 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45, i32 1
  %132 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %add, ptr %arrayidx340, align 1
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 8
  %cfg.i551 = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 32
  %135 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i551, align 8
  %ops.i552 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %ops.i552 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i552, align 4
  %set_bbreg.i553 = getelementptr inbounds %struct.rtl_hal_ops, ptr %138, i32 0, i32 46
  %139 = ptrtoint ptr %set_bbreg.i553 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_bbreg.i553, align 4
  tail call void %140(ptr noundef %hw, i32 noundef 3612, i32 noundef -2097152, i32 noundef 129) #8
  %modify_txagc_flag_path_b341 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 48
  %141 = ptrtoint ptr %modify_txagc_flag_path_b341 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %modify_txagc_flag_path_b341, align 8
  %current_channel342 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %142 = ptrtoint ptr %current_channel342 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %current_channel342, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %143, i8 noundef zeroext 1) #8
  %144 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx340, align 1
  %conv346 = sext i8 %145 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %conv346) #8
  br label %cleanup

if.else347:                                       ; preds = %if.else333
  %idxprom348 = zext i8 %add to i32
  %arrayidx349 = getelementptr [37 x i32], ptr @txscaling_tbl, i32 0, i32 %idxprom348
  %146 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx349, align 4
  %148 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv, align 8
  %cfg.i555 = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 32
  %150 = ptrtoint ptr %cfg.i555 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i555, align 8
  %ops.i556 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %ops.i556 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i556, align 4
  %set_bbreg.i557 = getelementptr inbounds %struct.rtl_hal_ops, ptr %153, i32 0, i32 46
  %154 = ptrtoint ptr %set_bbreg.i557 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %set_bbreg.i557, align 4
  tail call void %155(ptr noundef %hw, i32 noundef 3612, i32 noundef -2097152, i32 noundef %147) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv313) #8
  %modify_txagc_flag_path_b351 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 48
  %156 = ptrtoint ptr %modify_txagc_flag_path_b351 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %modify_txagc_flag_path_b351, align 8, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool352.not = icmp eq i8 %157, 0
  br i1 %tobool352.not, label %if.else347.cleanup_crit_edge, label %if.then353

if.else347.cleanup_crit_edge:                     ; preds = %if.else347
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then353:                                       ; preds = %if.else347
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx356 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 45, i32 1
  %158 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx356, align 1
  %current_channel357 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %159 = ptrtoint ptr %current_channel357 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %current_channel357, align 1
  tail call void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef %hw, i8 noundef zeroext %160, i8 noundef zeroext 1) #8
  %161 = ptrtoint ptr %modify_txagc_flag_path_b351 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %modify_txagc_flag_path_b351, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then353, %if.else347.cleanup_crit_edge, %if.then337, %if.then317, %if.then298, %if.else293.cleanup_crit_edge, %if.then282, %if.then261, %if.then241.cleanup_crit_edge, %if.else214, %if.then198, %if.end189.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8821ae_hw_rate_to_mrate(ptr nocapture noundef readonly %hw, i8 noundef zeroext %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %rate, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
    i8 7, label %sw.bb7
    i8 8, label %sw.bb8
    i8 9, label %sw.bb9
    i8 10, label %sw.bb10
    i8 11, label %sw.bb11
    i8 12, label %sw.bb12
    i8 13, label %sw.bb13
    i8 14, label %sw.bb14
    i8 15, label %sw.bb15
    i8 16, label %sw.bb16
    i8 17, label %sw.bb17
    i8 18, label %sw.bb18
    i8 19, label %sw.bb19
    i8 20, label %sw.bb20
    i8 21, label %sw.bb21
    i8 22, label %sw.bb22
    i8 23, label %sw.bb23
    i8 24, label %sw.bb24
    i8 25, label %sw.bb25
    i8 26, label %sw.bb26
    i8 27, label %sw.bb27
    i8 44, label %sw.bb28
    i8 45, label %sw.bb29
    i8 46, label %sw.bb30
    i8 47, label %sw.bb31
    i8 48, label %sw.bb32
    i8 49, label %sw.bb33
    i8 50, label %sw.bb34
    i8 51, label %sw.bb35
    i8 52, label %sw.bb36
    i8 53, label %sw.bb37
    i8 54, label %sw.bb38
    i8 55, label %sw.bb39
    i8 56, label %sw.bb40
    i8 57, label %sw.bb41
    i8 58, label %sw.bb42
    i8 59, label %sw.bb43
    i8 60, label %sw.bb44
    i8 61, label %sw.bb45
    i8 62, label %sw.bb46
    i8 63, label %sw.bb47
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %rate to i32
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ret_rate.0 = phi i8 [ 2, %sw.default ], [ -93, %sw.bb47 ], [ -94, %sw.bb46 ], [ -95, %sw.bb45 ], [ -96, %sw.bb44 ], [ -97, %sw.bb43 ], [ -98, %sw.bb42 ], [ -99, %sw.bb41 ], [ -100, %sw.bb40 ], [ -101, %sw.bb39 ], [ -102, %sw.bb38 ], [ -103, %sw.bb37 ], [ -104, %sw.bb36 ], [ -105, %sw.bb35 ], [ -106, %sw.bb34 ], [ -107, %sw.bb33 ], [ -108, %sw.bb32 ], [ -109, %sw.bb31 ], [ -110, %sw.bb30 ], [ -111, %sw.bb29 ], [ -112, %sw.bb28 ], [ -113, %sw.bb27 ], [ -114, %sw.bb26 ], [ -115, %sw.bb25 ], [ -116, %sw.bb24 ], [ -117, %sw.bb23 ], [ -118, %sw.bb22 ], [ -119, %sw.bb21 ], [ -120, %sw.bb20 ], [ -121, %sw.bb19 ], [ -122, %sw.bb18 ], [ -123, %sw.bb17 ], [ -124, %sw.bb16 ], [ -125, %sw.bb15 ], [ -126, %sw.bb14 ], [ -127, %sw.bb13 ], [ -128, %sw.bb12 ], [ 108, %sw.bb11 ], [ 96, %sw.bb10 ], [ 72, %sw.bb9 ], [ 48, %sw.bb8 ], [ 36, %sw.bb7 ], [ 24, %sw.bb6 ], [ 18, %sw.bb5 ], [ 12, %sw.bb4 ], [ 22, %sw.bb3 ], [ 11, %sw.bb2 ], [ 4, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  ret i8 %ret_rate.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_phy_set_txpower_level_by_path(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8812ae_dm_txpower_tracking_callback_thermalmeter(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %2 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_channel.i, align 1
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %4)
  %5 = icmp ult i8 %4, 14
  br i1 %5, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_rate.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 60
  %6 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %switch.i = icmp ult i8 %7, 4
  %rtl8812ae_delta_swing_table_idx_24gccka_p.rtl8812ae_delta_swing_table_idx_24ga_p.i = select i1 %switch.i, ptr @rtl8812ae_delta_swing_table_idx_24gccka_p, ptr @rtl8812ae_delta_swing_table_idx_24ga_p
  %rtl8812ae_delta_swing_table_idx_24gccka_n.rtl8812ae_delta_swing_table_idx_24ga_n.i = select i1 %switch.i, ptr @rtl8812ae_delta_swing_table_idx_24gccka_n, ptr @rtl8812ae_delta_swing_table_idx_24ga_n
  %rtl8812ae_delta_swing_table_idx_24gcckb_p.rtl8812ae_delta_swing_table_idx_24gb_p.i = select i1 %switch.i, ptr @rtl8812ae_delta_swing_table_idx_24gcckb_p, ptr @rtl8812ae_delta_swing_table_idx_24gb_p
  %rtl8812ae_delta_swing_table_idx_24gcckb_n.rtl8812ae_delta_swing_table_idx_24gb_n.i = select i1 %switch.i, ptr @rtl8812ae_delta_swing_table_idx_24gcckb_n, ptr @rtl8812ae_delta_swing_table_idx_24gb_n
  br label %rtl8812ae_get_delta_swing_table.exit

if.else21.i:                                      ; preds = %entry
  %8 = add i8 %3, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %8)
  %9 = icmp ult i8 %8, 29
  br i1 %9, label %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge, label %if.else30.i

if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge: ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8812ae_get_delta_swing_table.exit

if.else30.i:                                      ; preds = %if.else21.i
  %10 = add i8 %3, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %10)
  %11 = icmp ult i8 %10, 41
  br i1 %11, label %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge, label %if.else39.i

if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8812ae_get_delta_swing_table.exit

if.else39.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = add i8 %3, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %12)
  %13 = icmp ult i8 %12, 25
  %.rtl8818e_delta_swing_table_idx_24gb_p.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5ga_p, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_p
  %.rtl8818e_delta_swing_table_idx_24gb_n.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5ga_n, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_n
  %.rtl8818e_delta_swing_table_idx_24gb_p87.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5gb_p, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_p
  %.rtl8818e_delta_swing_table_idx_24gb_n88.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5gb_n, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_n
  br label %rtl8812ae_get_delta_swing_table.exit

rtl8812ae_get_delta_swing_table.exit:             ; preds = %if.else39.i, %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge, %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge, %if.then.i
  %rtl8812ae_delta_swing_table_idx_5ga_p.sink.i = phi ptr [ %rtl8812ae_delta_swing_table_idx_24gccka_p.rtl8812ae_delta_swing_table_idx_24ga_p.i, %if.then.i ], [ @rtl8812ae_delta_swing_table_idx_5ga_p, %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5ga_p, i32 0, i32 1), %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_p.i, %if.else39.i ]
  %rtl8812ae_delta_swing_table_idx_5ga_n.sink.i = phi ptr [ %rtl8812ae_delta_swing_table_idx_24gccka_n.rtl8812ae_delta_swing_table_idx_24ga_n.i, %if.then.i ], [ @rtl8812ae_delta_swing_table_idx_5ga_n, %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5ga_n, i32 0, i32 1), %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_n.i, %if.else39.i ]
  %rtl8812ae_delta_swing_table_idx_5gb_p.sink.i = phi ptr [ %rtl8812ae_delta_swing_table_idx_24gcckb_p.rtl8812ae_delta_swing_table_idx_24gb_p.i, %if.then.i ], [ @rtl8812ae_delta_swing_table_idx_5gb_p, %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5gb_p, i32 0, i32 1), %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_p87.i, %if.else39.i ]
  %rtl8812ae_delta_swing_table_idx_5gb_n.sink.i = phi ptr [ %rtl8812ae_delta_swing_table_idx_24gcckb_n.rtl8812ae_delta_swing_table_idx_24gb_n.i, %if.then.i ], [ @rtl8812ae_delta_swing_table_idx_5gb_n, %if.else21.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8812ae_delta_swing_table_idx_5gb_n, i32 0, i32 1), %if.else30.i.rtl8812ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_n88.i, %if.else39.i ]
  %txpower_trackinginit = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %txpower_trackinginit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %txpower_trackinginit, align 1
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %15 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %swing_idx_cck_base, align 1
  %conv = zext i8 %16 to i32
  %swing_idx_ofdm_base = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63
  %17 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %swing_idx_ofdm_base, align 2
  %conv5 = zext i8 %18 to i32
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %19 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %default_ofdm_index, align 1
  %conv6 = zext i8 %20 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6) #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = tail call i32 %28(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #8
  %conv7 = trunc i32 %call.i to i8
  %conv8 = and i32 %call.i, 255
  %eeprom_thermalmeter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 55
  %29 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv9 = zext i8 %30 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %conv8, i32 noundef %conv9) #8
  %txpower_track_control = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 34
  %31 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %rtl8812ae_get_delta_swing_table.exit.cleanup_crit_edge, label %lor.lhs.false

rtl8812ae_get_delta_swing_table.exit.cleanup_crit_edge: ; preds = %rtl8812ae_get_delta_swing_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %rtl8812ae_get_delta_swing_table.exit
  %33 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %eeprom_thermalmeter, align 4
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %34, label %if.end [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 -1, label %lor.lhs.false.cleanup_crit_edge844
  ]

lor.lhs.false.cleanup_crit_edge844:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %reloadtxpowerindex = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 62
  %36 = ptrtoint ptr %reloadtxpowerindex to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reloadtxpowerindex, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool18.not = icmp eq i8 %37, 0
  br i1 %tobool18.not, label %if.end.if.end20_crit_edge, label %if.then19

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.17) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end.if.end20_crit_edge
  %thermalvalue_avg_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 26
  %38 = ptrtoint ptr %thermalvalue_avg_index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %thermalvalue_avg_index, align 8
  %idxprom = zext i8 %39 to i32
  %arrayidx21 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 %idxprom
  %40 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7, ptr %arrayidx21, align 1
  %41 = load i8, ptr %thermalvalue_avg_index, align 8
  %inc = add i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc)
  %cmp25 = icmp eq i8 %inc, 4
  %spec.select = select i1 %cmp25, i8 0, i8 %inc
  %42 = ptrtoint ptr %thermalvalue_avg_index to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %spec.select, ptr %thermalvalue_avg_index, align 8
  %arrayidx35 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 0
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool36.not = icmp ne i8 %44, 0
  %inc42 = zext i1 %tobool36.not to i8
  %arrayidx35.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 1
  %45 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx35.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool36.not.1 = icmp ne i8 %46, 0
  %inc42.1 = zext i1 %tobool36.not.1 to i8
  %thermal_value_avg_count.1.1 = add nuw nsw i8 %inc42, %inc42.1
  %arrayidx35.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 2
  %47 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx35.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool36.not.2 = icmp ne i8 %48, 0
  %inc42.2 = zext i1 %tobool36.not.2 to i8
  %thermal_value_avg_count.1.2 = add nuw nsw i8 %thermal_value_avg_count.1.1, %inc42.2
  %arrayidx35.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 3
  %49 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx35.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool36.not.3 = icmp ne i8 %50, 0
  %inc42.3 = zext i1 %tobool36.not.3 to i8
  %thermal_value_avg_count.1.3 = add nuw nsw i8 %thermal_value_avg_count.1.2, %inc42.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thermal_value_avg_count.1.3)
  %tobool45.not = icmp eq i8 %thermal_value_avg_count.1.3, 0
  br i1 %tobool45.not, label %if.end20.if.end52_crit_edge, label %if.then46

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then46:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv41 = zext i8 %44 to i16
  %conv41.1 = zext i8 %46 to i16
  %thermal_value_avg.1.1 = add nuw nsw i16 %conv41, %conv41.1
  %conv41.2 = zext i8 %48 to i16
  %thermal_value_avg.1.2 = add nuw nsw i16 %thermal_value_avg.1.1, %conv41.2
  %conv41.3 = zext i8 %50 to i16
  %thermal_value_avg.1.3 = add nuw nsw i16 %thermal_value_avg.1.2, %conv41.3
  %div.rhs.trunc = zext i8 %thermal_value_avg_count.1.3 to i16
  %div841 = udiv i16 %thermal_value_avg.1.3, %div.rhs.trunc
  %conv48 = trunc i16 %div841 to i8
  %51 = and i16 %div841, 255
  %conv49 = zext i16 %51 to i32
  %52 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv51 = zext i8 %53 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv49, i32 noundef %conv51) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end20.if.end52_crit_edge
  %thermal_value.0 = phi i8 [ %conv48, %if.then46 ], [ %conv7, %if.end20.if.end52_crit_edge ]
  %conv53 = zext i8 %thermal_value.0 to i32
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %54 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %thermalvalue, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %55)
  %cmp55 = icmp ugt i8 %thermal_value.0, %55
  %sub = sub i8 %thermal_value.0, %55
  %sub63 = sub i8 %55, %thermal_value.0
  %cond = select i1 %cmp55, i8 %sub, i8 %sub63
  %thermalvalue_lck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 22
  %56 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %thermalvalue_lck, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %57)
  %cmp67 = icmp ugt i8 %thermal_value.0, %57
  %sub73 = sub i8 %thermal_value.0, %57
  %sub78 = sub i8 %57, %thermal_value.0
  %cond80 = select i1 %cmp67, i8 %sub73, i8 %sub78
  %thermalvalue_iqk = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 21
  %58 = ptrtoint ptr %thermalvalue_iqk to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %thermalvalue_iqk, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %59)
  %cmp84 = icmp ugt i8 %thermal_value.0, %59
  %sub90 = sub i8 %thermal_value.0, %59
  %sub95 = sub i8 %59, %thermal_value.0
  %cond97 = select i1 %cmp84, i8 %sub90, i8 %sub95
  %conv99 = zext i8 %cond to i32
  %conv100 = zext i8 %cond80 to i32
  %conv101 = zext i8 %cond97 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv99, i32 noundef %conv100, i32 noundef %conv101) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond80)
  %cmp103 = icmp ugt i8 %cond80, 7
  br i1 %cmp103, label %if.then105, label %if.end52.if.end108_crit_edge

if.end52.if.end108_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then105:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv100, i32 noundef 8) #8
  %60 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %thermal_value.0, ptr %thermalvalue_lck, align 1
  tail call void @rtl8821ae_phy_lc_calibrate(ptr noundef %hw) #8
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end52.if.end108_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp110.not = icmp eq i8 %cond, 0
  br i1 %cmp110.not, label %if.end108.if.else375_crit_edge, label %land.lhs.true

if.end108.if.else375_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else375

land.lhs.true:                                    ; preds = %if.end108
  %61 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool114.not = icmp eq i8 %62, 0
  br i1 %tobool114.not, label %land.lhs.true.if.else375_crit_edge, label %if.then115

land.lhs.true.if.else375_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else375

if.then115:                                       ; preds = %land.lhs.true
  %63 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %eeprom_thermalmeter, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %64)
  %cmp119 = icmp ugt i8 %thermal_value.0, %64
  %sub125 = sub i8 %thermal_value.0, %64
  %sub130 = sub i8 %64, %thermal_value.0
  %cond132 = select i1 %cmp119, i8 %sub125, i8 %sub130
  %65 = tail call i8 @llvm.umin.i8(i8 %cond132, i8 29)
  %conv145 = zext i8 %65 to i32
  br i1 %cmp119, label %if.then144, label %if.else

if.then144:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx147 = getelementptr i8, ptr %rtl8812ae_delta_swing_table_idx_5ga_p.sink.i, i32 %conv145
  %66 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %67 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv145, i32 noundef %conv148) #8
  %delta_power_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41
  %68 = ptrtoint ptr %delta_power_index to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %delta_power_index, align 2
  %delta_power_index_last = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42
  %70 = ptrtoint ptr %delta_power_index_last to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %delta_power_index_last, align 2
  %71 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx147, align 1
  store i8 %72, ptr %delta_power_index, align 2
  %73 = load i8, ptr %arrayidx147, align 1
  %absolute_ofdm_swing_idx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44
  %74 = ptrtoint ptr %absolute_ofdm_swing_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %absolute_ofdm_swing_idx, align 2
  %conv160 = sext i8 %73 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %conv160) #8
  %arrayidx163 = getelementptr i8, ptr %rtl8812ae_delta_swing_table_idx_5gb_p.sink.i, i32 %conv145
  %75 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %76 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %conv145, i32 noundef %conv164) #8
  %arrayidx166 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 1
  %77 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx166, align 1
  %arrayidx168 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 1
  %79 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx168, align 1
  %80 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx163, align 1
  store i8 %81, ptr %arrayidx166, align 1
  %82 = load i8, ptr %arrayidx163, align 1
  br label %if.end229

if.else:                                          ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx182 = getelementptr i8, ptr %rtl8812ae_delta_swing_table_idx_5ga_n.sink.i, i32 %conv145
  %83 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %84 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %conv145, i32 noundef %conv183) #8
  %delta_power_index184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41
  %85 = ptrtoint ptr %delta_power_index184 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %delta_power_index184, align 2
  %delta_power_index_last186 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42
  %87 = ptrtoint ptr %delta_power_index_last186 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %delta_power_index_last186, align 2
  %88 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx182, align 1
  %mul = sub i8 0, %89
  store i8 %mul, ptr %delta_power_index184, align 2
  %90 = load i8, ptr %arrayidx182, align 1
  %mul197 = sub i8 0, %90
  %absolute_ofdm_swing_idx199 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44
  %91 = ptrtoint ptr %absolute_ofdm_swing_idx199 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %mul197, ptr %absolute_ofdm_swing_idx199, align 2
  %conv203 = sext i8 %mul197 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %conv203) #8
  %arrayidx206 = getelementptr i8, ptr %rtl8812ae_delta_swing_table_idx_5gb_n.sink.i, i32 %conv145
  %92 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %93 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %conv145, i32 noundef %conv207) #8
  %arrayidx209 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 1
  %94 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx209, align 1
  %arrayidx211 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 1
  %96 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx211, align 1
  %97 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx206, align 1
  %mul215 = sub i8 0, %98
  store i8 %mul215, ptr %arrayidx209, align 1
  %99 = load i8, ptr %arrayidx206, align 1
  %mul222 = sub i8 0, %99
  br label %if.end229

if.end229:                                        ; preds = %if.else, %if.then144
  %mul222.sink842 = phi i8 [ %mul222, %if.else ], [ %82, %if.then144 ]
  %.str.28.sink = phi ptr [ @.str.28, %if.else ], [ @.str.24, %if.then144 ]
  %arrayidx225 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44, i32 1
  %100 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %mul222.sink842, ptr %arrayidx225, align 1
  %conv228 = sext i8 %mul222.sink842 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull %.str.28.sink, i32 noundef %conv228) #8
  %cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %swing_idx_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef 65) #8
  %arrayidx241 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 0
  %101 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx241, align 1
  %arrayidx245 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 0
  %103 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx245, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp247 = icmp eq i8 %102, %104
  %sub261 = sub i8 %102, %104
  %sub261.sink = select i1 %cmp247, i8 0, i8 %sub261
  %105 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 0
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %sub261.sink, ptr %105, align 1
  %conv274 = sext i8 %sub261.sink to i32
  %107 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx241, align 1
  %conv278 = sext i8 %108 to i32
  %109 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx245, align 1
  %conv282 = sext i8 %110 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef 65, i32 noundef %conv274, i32 noundef %conv278, i32 noundef %conv282) #8
  %111 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %swing_idx_ofdm_base, align 1
  %113 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %105, align 1
  %add291 = add i8 %114, %112
  %arrayidx294 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 0
  %115 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %add291, ptr %arrayidx294, align 1
  %116 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %swing_idx_cck_base, align 1
  %add301 = add i8 %117, %114
  %118 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %add301, ptr %cck_index, align 1
  %119 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %add301, ptr %swing_idx_cck, align 1
  %arrayidx308 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 0
  %120 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %add291, ptr %arrayidx308, align 1
  %conv310 = zext i8 %add301 to i32
  %conv312 = zext i8 %117 to i32
  %conv316 = sext i8 %114 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv310, i32 noundef %conv312, i32 noundef %conv316) #8
  %121 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx308, align 1
  %conv320 = zext i8 %122 to i32
  %123 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %swing_idx_ofdm_base, align 1
  %conv328 = zext i8 %124 to i32
  %125 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %105, align 1
  %conv332 = sext i8 %126 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv320, i32 noundef 65, i32 noundef %conv328, i32 noundef %conv332) #8
  %127 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx294, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %128)
  %cmp337 = icmp sgt i8 %128, 36
  br i1 %cmp337, label %if.end229.for.inc357.sink.split_crit_edge, label %if.else343

if.end229.for.inc357.sink.split_crit_edge:        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357.sink.split

if.else343:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %128)
  %cmp349 = icmp slt i8 %128, 6
  br i1 %cmp349, label %if.else343.for.inc357.sink.split_crit_edge, label %if.else343.for.inc357_crit_edge

if.else343.for.inc357_crit_edge:                  ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357

if.else343.for.inc357.sink.split_crit_edge:       ; preds = %if.else343
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357.sink.split

for.inc357.sink.split:                            ; preds = %if.else343.for.inc357.sink.split_crit_edge, %if.end229.for.inc357.sink.split_crit_edge
  %.sink = phi i8 [ 36, %if.end229.for.inc357.sink.split_crit_edge ], [ 6, %if.else343.for.inc357.sink.split_crit_edge ]
  %129 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %.sink, ptr %arrayidx294, align 1
  br label %for.inc357

for.inc357:                                       ; preds = %for.inc357.sink.split, %if.else343.for.inc357_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef 66) #8
  %arrayidx241.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41, i32 1
  %130 = ptrtoint ptr %arrayidx241.1 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx241.1, align 1
  %arrayidx245.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42, i32 1
  %132 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx245.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp247.1 = icmp eq i8 %131, %133
  %sub261.1 = sub i8 %131, %133
  %sub261.1.sink = select i1 %cmp247.1, i8 0, i8 %sub261.1
  %134 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %sub261.1.sink, ptr %134, align 1
  %conv274.1 = sext i8 %sub261.1.sink to i32
  %136 = ptrtoint ptr %arrayidx241.1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx241.1, align 1
  %conv278.1 = sext i8 %137 to i32
  %138 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx245.1, align 1
  %conv282.1 = sext i8 %139 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef 66, i32 noundef %conv274.1, i32 noundef %conv278.1, i32 noundef %conv282.1) #8
  %arrayidx285.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 1
  %140 = ptrtoint ptr %arrayidx285.1 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx285.1, align 1
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %134, align 1
  %add291.1 = add i8 %143, %141
  %arrayidx294.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 1
  %144 = ptrtoint ptr %arrayidx294.1 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %add291.1, ptr %arrayidx294.1, align 1
  %145 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %swing_idx_cck_base, align 1
  %add301.1 = add i8 %146, %143
  %147 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %add301.1, ptr %cck_index, align 1
  %148 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %add301.1, ptr %swing_idx_cck, align 1
  %arrayidx308.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 1
  %149 = ptrtoint ptr %arrayidx308.1 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %add291.1, ptr %arrayidx308.1, align 1
  %conv310.1 = zext i8 %add301.1 to i32
  %conv312.1 = zext i8 %146 to i32
  %conv316.1 = sext i8 %143 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv310.1, i32 noundef %conv312.1, i32 noundef %conv316.1) #8
  %150 = ptrtoint ptr %arrayidx308.1 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx308.1, align 1
  %conv320.1 = zext i8 %151 to i32
  %152 = ptrtoint ptr %arrayidx285.1 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx285.1, align 1
  %conv328.1 = zext i8 %153 to i32
  %154 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %134, align 1
  %conv332.1 = sext i8 %155 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv320.1, i32 noundef 66, i32 noundef %conv328.1, i32 noundef %conv332.1) #8
  %156 = ptrtoint ptr %arrayidx294.1 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx294.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %157)
  %cmp337.1 = icmp sgt i8 %157, 36
  br i1 %cmp337.1, label %for.inc357.for.inc357.1.sink.split_crit_edge, label %if.else343.1

for.inc357.for.inc357.1.sink.split_crit_edge:     ; preds = %for.inc357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357.1.sink.split

if.else343.1:                                     ; preds = %for.inc357
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %157)
  %cmp349.1 = icmp slt i8 %157, 6
  br i1 %cmp349.1, label %if.else343.1.for.inc357.1.sink.split_crit_edge, label %if.else343.1.for.inc357.1_crit_edge

if.else343.1.for.inc357.1_crit_edge:              ; preds = %if.else343.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357.1

if.else343.1.for.inc357.1.sink.split_crit_edge:   ; preds = %if.else343.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc357.1.sink.split

for.inc357.1.sink.split:                          ; preds = %if.else343.1.for.inc357.1.sink.split_crit_edge, %for.inc357.for.inc357.1.sink.split_crit_edge
  %.sink843 = phi i8 [ 6, %if.else343.1.for.inc357.1.sink.split_crit_edge ], [ 36, %for.inc357.for.inc357.1.sink.split_crit_edge ]
  %158 = ptrtoint ptr %arrayidx294.1 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %.sink843, ptr %arrayidx294.1, align 1
  br label %for.inc357.1

for.inc357.1:                                     ; preds = %for.inc357.1.sink.split, %if.else343.1.for.inc357.1_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.33) #8
  %159 = ptrtoint ptr %cck_index to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cck_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %160)
  %cmp362 = icmp sgt i8 %160, 36
  br i1 %cmp362, label %if.then364, label %if.else366

if.then364:                                       ; preds = %for.inc357.1
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 36, ptr %cck_index, align 1
  br label %if.end392

if.else366:                                       ; preds = %for.inc357.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp369 = icmp slt i8 %160, 0
  br i1 %cmp369, label %if.then371, label %if.else366.if.end392_crit_edge

if.else366.if.end392_crit_edge:                   ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.then371:                                       ; preds = %if.else366
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %cck_index, align 1
  br label %if.end392

if.else375:                                       ; preds = %land.lhs.true.if.else375_crit_edge, %if.end108.if.else375_crit_edge
  %163 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %txpower_track_control, align 8
  %conv377 = zext i8 %164 to i32
  %165 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %thermalvalue, align 2
  %conv380 = zext i8 %166 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %conv377, i32 noundef %conv53, i32 noundef %conv380) #8
  %uglygep = getelementptr i8, ptr %1, i32 42930
  %167 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 0, ptr %uglygep, align 1
  br label %if.end392

if.end392:                                        ; preds = %if.else375, %if.then371, %if.else366.if.end392_crit_edge, %if.then364
  %delta.0 = phi i8 [ %65, %if.then364 ], [ %65, %if.then371 ], [ %65, %if.else366.if.end392_crit_edge ], [ %cond, %if.else375 ]
  %cck_index393 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %168 = ptrtoint ptr %cck_index393 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %cck_index393, align 1
  %conv394 = sext i8 %169 to i32
  %170 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %swing_idx_cck_base, align 1
  %conv396 = zext i8 %171 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %conv394, i32 noundef %conv396) #8
  %arrayidx404 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 0
  %172 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx404, align 1
  %conv405 = sext i8 %173 to i32
  %174 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %swing_idx_ofdm_base, align 1
  %conv413 = zext i8 %175 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %conv405, i32 noundef 65, i32 noundef %conv413) #8
  %arrayidx404.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37, i32 1
  %176 = ptrtoint ptr %arrayidx404.1 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx404.1, align 1
  %conv405.1 = sext i8 %177 to i32
  %arrayidx412.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63, i32 1
  %178 = ptrtoint ptr %arrayidx412.1 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx412.1, align 1
  %conv413.1 = zext i8 %179 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %conv405.1, i32 noundef 66, i32 noundef %conv413.1) #8
  %power_index_offset417 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43
  %180 = ptrtoint ptr %power_index_offset417 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %power_index_offset417, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp420.not = icmp eq i8 %181, 0
  br i1 %cmp420.not, label %lor.lhs.false422, label %if.end392.land.lhs.true428_crit_edge

if.end392.land.lhs.true428_crit_edge:             ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true428

lor.lhs.false422:                                 ; preds = %if.end392
  %arrayidx424 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %182 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx424, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp426.not = icmp eq i8 %183, 0
  br i1 %cmp426.not, label %lor.lhs.false422.if.end534_crit_edge, label %lor.lhs.false422.land.lhs.true428_crit_edge

lor.lhs.false422.land.lhs.true428_crit_edge:      ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true428

lor.lhs.false422.if.end534_crit_edge:             ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end534

land.lhs.true428:                                 ; preds = %lor.lhs.false422.land.lhs.true428_crit_edge, %if.end392.land.lhs.true428_crit_edge
  %184 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool431.not = icmp eq i8 %185, 0
  br i1 %tobool431.not, label %land.lhs.true428.if.end534_crit_edge, label %if.then432

land.lhs.true428.if.end534_crit_edge:             ; preds = %land.lhs.true428
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end534

if.then432:                                       ; preds = %land.lhs.true428
  %186 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %thermalvalue, align 2
  %conv435 = zext i8 %187 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %187)
  %cmp436 = icmp ugt i8 %thermal_value.0, %187
  br i1 %cmp436, label %if.then438, label %if.else457

if.then438:                                       ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #10
  %conv441 = sext i8 %181 to i32
  %conv442 = zext i8 %delta.0 to i32
  %188 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv445 = zext i8 %189 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %conv441, i32 noundef %conv442, i32 noundef %conv53, i32 noundef %conv445, i32 noundef %conv435) #8
  %arrayidx449 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %190 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx449, align 1
  %conv450 = sext i8 %191 to i32
  %192 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv454 = zext i8 %193 to i32
  %194 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %thermalvalue, align 2
  %conv456 = zext i8 %195 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %conv450, i32 noundef %conv442, i32 noundef %conv53, i32 noundef %conv454, i32 noundef %conv456) #8
  br label %if.end483

if.else457:                                       ; preds = %if.then432
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %187)
  %cmp461 = icmp ult i8 %thermal_value.0, %187
  br i1 %cmp461, label %if.then463, label %if.else457.if.end483_crit_edge

if.else457.if.end483_crit_edge:                   ; preds = %if.else457
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end483

if.then463:                                       ; preds = %if.else457
  call void @__sanitizer_cov_trace_pc() #10
  %conv466 = sext i8 %181 to i32
  %conv467 = zext i8 %delta.0 to i32
  %196 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv470 = zext i8 %197 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %conv466, i32 noundef %conv467, i32 noundef %conv53, i32 noundef %conv470, i32 noundef %conv435) #8
  %arrayidx474 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %198 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx474, align 1
  %conv475 = sext i8 %199 to i32
  %200 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv479 = zext i8 %201 to i32
  %202 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %thermalvalue, align 2
  %conv481 = zext i8 %203 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %conv475, i32 noundef %conv467, i32 noundef %conv53, i32 noundef %conv479, i32 noundef %conv481) #8
  br label %if.end483

if.end483:                                        ; preds = %if.then463, %if.else457.if.end483_crit_edge, %if.then438
  %204 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv486 = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %205)
  %cmp487 = icmp ugt i8 %thermal_value.0, %205
  %.str.41..str.43 = select i1 %cmp487, ptr @.str.41, ptr @.str.43
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull %.str.41..str.43, i32 noundef %conv53, i32 noundef %conv486) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.42) #8
  tail call void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 0, i8 zeroext undef)
  tail call void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 1, i8 zeroext undef)
  %swing_idx_cck514 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %206 = ptrtoint ptr %swing_idx_cck514 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %swing_idx_cck514, align 1
  %208 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %swing_idx_cck_base, align 1
  %arrayidx523 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 0
  %209 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx523, align 1
  %211 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %swing_idx_ofdm_base, align 1
  %arrayidx523.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61, i32 1
  %212 = ptrtoint ptr %arrayidx523.1 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx523.1, align 1
  %214 = ptrtoint ptr %arrayidx412.1 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx412.1, align 1
  %215 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %thermalvalue, align 2
  %conv531 = zext i8 %216 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %conv531, i32 noundef %conv53) #8
  %217 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %thermal_value.0, ptr %thermalvalue, align 2
  br label %if.end534

if.end534:                                        ; preds = %if.end483, %land.lhs.true428.if.end534_crit_edge, %lor.lhs.false422.if.end534_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond97)
  %cmp536 = icmp ugt i8 %cond97, 7
  br i1 %cmp536, label %if.then538, label %if.end534.if.end539_crit_edge

if.end534.if.end539_crit_edge:                    ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end539

if.then538:                                       ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8812ae_do_iqk(ptr noundef %hw, i8 noundef zeroext %cond97, i8 noundef zeroext %thermal_value.0, i8 noundef zeroext 8) #8
  br label %if.end539

if.end539:                                        ; preds = %if.then538, %if.end534.if.end539_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.rtl8812ae_dm_txpower_tracking_callback_thermalmeter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end539, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge844, %rtl8812ae_get_delta_swing_table.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_phy_lc_calibrate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8812ae_do_iqk(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_txpower_tracking_callback_thermalmeter(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %2 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_channel.i, align 1
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %4)
  %5 = icmp ult i8 %4, 14
  br i1 %5, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_rate.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 60
  %6 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %switch.i = icmp ult i8 %7, 4
  %rtl8821ae_delta_swing_table_idx_24gccka_p.rtl8821ae_delta_swing_table_idx_24ga_p.i = select i1 %switch.i, ptr @rtl8821ae_delta_swing_table_idx_24gccka_p, ptr @rtl8821ae_delta_swing_table_idx_24ga_p
  %rtl8821ae_delta_swing_table_idx_24gccka_n.rtl8821ae_delta_swing_table_idx_24ga_n.i = select i1 %switch.i, ptr @rtl8821ae_delta_swing_table_idx_24gccka_n, ptr @rtl8821ae_delta_swing_table_idx_24ga_n
  br label %rtl8821ae_get_delta_swing_table.exit

if.else21.i:                                      ; preds = %entry
  %8 = add i8 %3, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %8)
  %9 = icmp ult i8 %8, 29
  br i1 %9, label %if.else21.i.rtl8821ae_get_delta_swing_table.exit_crit_edge, label %if.else30.i

if.else21.i.rtl8821ae_get_delta_swing_table.exit_crit_edge: ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_get_delta_swing_table.exit

if.else30.i:                                      ; preds = %if.else21.i
  %10 = add i8 %3, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %10)
  %11 = icmp ult i8 %10, 41
  br i1 %11, label %if.else30.i.rtl8821ae_get_delta_swing_table.exit_crit_edge, label %if.else39.i

if.else30.i.rtl8821ae_get_delta_swing_table.exit_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_get_delta_swing_table.exit

if.else39.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = add i8 %3, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %12)
  %13 = icmp ult i8 %12, 25
  %.rtl8818e_delta_swing_table_idx_24gb_p.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8821ae_delta_swing_table_idx_5ga_p, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_p
  %.rtl8818e_delta_swing_table_idx_24gb_n.i = select i1 %13, ptr getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8821ae_delta_swing_table_idx_5ga_n, i32 0, i32 2), ptr @rtl8818e_delta_swing_table_idx_24gb_n
  br label %rtl8821ae_get_delta_swing_table.exit

rtl8821ae_get_delta_swing_table.exit:             ; preds = %if.else39.i, %if.else30.i.rtl8821ae_get_delta_swing_table.exit_crit_edge, %if.else21.i.rtl8821ae_get_delta_swing_table.exit_crit_edge, %if.then.i
  %rtl8821ae_delta_swing_table_idx_5ga_p.sink.i = phi ptr [ %rtl8821ae_delta_swing_table_idx_24gccka_p.rtl8821ae_delta_swing_table_idx_24ga_p.i, %if.then.i ], [ @rtl8821ae_delta_swing_table_idx_5ga_p, %if.else21.i.rtl8821ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8821ae_delta_swing_table_idx_5ga_p, i32 0, i32 1), %if.else30.i.rtl8821ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_p.i, %if.else39.i ]
  %rtl8821ae_delta_swing_table_idx_5ga_n.sink.i = phi ptr [ %rtl8821ae_delta_swing_table_idx_24gccka_n.rtl8821ae_delta_swing_table_idx_24ga_n.i, %if.then.i ], [ @rtl8821ae_delta_swing_table_idx_5ga_n, %if.else21.i.rtl8821ae_get_delta_swing_table.exit_crit_edge ], [ getelementptr inbounds ([3 x [30 x i8]], ptr @rtl8821ae_delta_swing_table_idx_5ga_n, i32 0, i32 1), %if.else30.i.rtl8821ae_get_delta_swing_table.exit_crit_edge ], [ %.rtl8818e_delta_swing_table_idx_24gb_n.i, %if.else39.i ]
  %txpower_trackinginit = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %txpower_trackinginit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %txpower_trackinginit, align 1
  %swing_idx_cck_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 67
  %15 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %swing_idx_cck_base, align 1
  %conv = zext i8 %16 to i32
  %swing_idx_ofdm_base = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 63
  %17 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %swing_idx_ofdm_base, align 2
  %conv5 = zext i8 %18 to i32
  %default_ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 38
  %19 = ptrtoint ptr %default_ofdm_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %default_ofdm_index, align 1
  %conv6 = zext i8 %20 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.rtl8821ae_dm_txpower_tracking_callback_thermalmeter, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6) #8
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = tail call i32 %28(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 64512) #8
  %conv7 = trunc i32 %call.i to i8
  %txpower_track_control = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 34
  %29 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %rtl8821ae_get_delta_swing_table.exit.cleanup_crit_edge, label %lor.lhs.false

rtl8821ae_get_delta_swing_table.exit.cleanup_crit_edge: ; preds = %rtl8821ae_get_delta_swing_table.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %rtl8821ae_get_delta_swing_table.exit
  %eeprom_thermalmeter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 55
  %31 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %eeprom_thermalmeter, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %32, label %if.end [
    i8 0, label %lor.lhs.false.cleanup_crit_edge
    i8 -1, label %lor.lhs.false.cleanup_crit_edge747
  ]

lor.lhs.false.cleanup_crit_edge747:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %reloadtxpowerindex = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 62
  %34 = ptrtoint ptr %reloadtxpowerindex to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reloadtxpowerindex, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool15.not = icmp eq i8 %35, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.17) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %thermalvalue_avg_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 26
  %36 = ptrtoint ptr %thermalvalue_avg_index to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %thermalvalue_avg_index, align 8
  %idxprom = zext i8 %37 to i32
  %arrayidx18 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 %idxprom
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv7, ptr %arrayidx18, align 1
  %39 = load i8, ptr %thermalvalue_avg_index, align 8
  %inc = add i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc)
  %cmp22 = icmp eq i8 %inc, 4
  %spec.select = select i1 %cmp22, i8 0, i8 %inc
  %40 = ptrtoint ptr %thermalvalue_avg_index to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.select, ptr %thermalvalue_avg_index, align 8
  %arrayidx32 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 0
  %41 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp ne i8 %42, 0
  %inc39 = zext i1 %tobool33.not to i8
  %arrayidx32.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 1
  %43 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool33.not.1 = icmp ne i8 %44, 0
  %inc39.1 = zext i1 %tobool33.not.1 to i8
  %thermal_value_avg_count.1.1 = add nuw nsw i8 %inc39, %inc39.1
  %arrayidx32.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 2
  %45 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx32.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool33.not.2 = icmp ne i8 %46, 0
  %inc39.2 = zext i1 %tobool33.not.2 to i8
  %thermal_value_avg_count.1.2 = add nuw nsw i8 %thermal_value_avg_count.1.1, %inc39.2
  %arrayidx32.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 25, i32 3
  %47 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx32.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool33.not.3 = icmp ne i8 %48, 0
  %inc39.3 = zext i1 %tobool33.not.3 to i8
  %thermal_value_avg_count.1.3 = add nuw nsw i8 %thermal_value_avg_count.1.2, %inc39.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %thermal_value_avg_count.1.3)
  %tobool42.not = icmp eq i8 %thermal_value_avg_count.1.3, 0
  br i1 %tobool42.not, label %if.end17.if.end49_crit_edge, label %if.then43

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv38 = zext i8 %42 to i16
  %conv38.1 = zext i8 %44 to i16
  %thermal_value_avg.1.1 = add nuw nsw i16 %conv38, %conv38.1
  %conv38.2 = zext i8 %46 to i16
  %thermal_value_avg.1.2 = add nuw nsw i16 %thermal_value_avg.1.1, %conv38.2
  %conv38.3 = zext i8 %48 to i16
  %thermal_value_avg.1.3 = add nuw nsw i16 %thermal_value_avg.1.2, %conv38.3
  %div.rhs.trunc = zext i8 %thermal_value_avg_count.1.3 to i16
  %div744 = udiv i16 %thermal_value_avg.1.3, %div.rhs.trunc
  %conv45 = trunc i16 %div744 to i8
  %49 = and i16 %div744, 255
  %conv46 = zext i16 %49 to i32
  %50 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv48 = zext i8 %51 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv46, i32 noundef %conv48) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end17.if.end49_crit_edge
  %thermal_value.0 = phi i8 [ %conv45, %if.then43 ], [ %conv7, %if.end17.if.end49_crit_edge ]
  %conv50 = zext i8 %thermal_value.0 to i32
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %52 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %thermalvalue, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %53)
  %cmp52 = icmp ugt i8 %thermal_value.0, %53
  %sub = sub i8 %thermal_value.0, %53
  %sub60 = sub i8 %53, %thermal_value.0
  %cond = select i1 %cmp52, i8 %sub, i8 %sub60
  %thermalvalue_lck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 22
  %54 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %thermalvalue_lck, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %55)
  %cmp64 = icmp ugt i8 %thermal_value.0, %55
  %sub70 = sub i8 %thermal_value.0, %55
  %sub75 = sub i8 %55, %thermal_value.0
  %cond77 = select i1 %cmp64, i8 %sub70, i8 %sub75
  %thermalvalue_iqk = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 21
  %56 = ptrtoint ptr %thermalvalue_iqk to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %thermalvalue_iqk, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %57)
  %cmp81 = icmp ugt i8 %thermal_value.0, %57
  %sub87 = sub i8 %thermal_value.0, %57
  %sub92 = sub i8 %57, %thermal_value.0
  %cond94 = select i1 %cmp81, i8 %sub87, i8 %sub92
  %conv96 = zext i8 %cond to i32
  %conv97 = zext i8 %cond77 to i32
  %conv98 = zext i8 %cond94 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv96, i32 noundef %conv97, i32 noundef %conv98) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond77)
  %cmp100 = icmp ugt i8 %cond77, 7
  br i1 %cmp100, label %if.then102, label %if.end49.if.end105_crit_edge

if.end49.if.end105_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then102:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv97, i32 noundef 8) #8
  %58 = ptrtoint ptr %thermalvalue_lck to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %thermal_value.0, ptr %thermalvalue_lck, align 1
  tail call void @rtl8821ae_phy_lc_calibrate(ptr noundef %hw) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end49.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond)
  %cmp107.not = icmp eq i8 %cond, 0
  br i1 %cmp107.not, label %if.end105.if.else328_crit_edge, label %land.lhs.true

if.end105.if.else328_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else328

land.lhs.true:                                    ; preds = %if.end105
  %59 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool111.not = icmp eq i8 %60, 0
  br i1 %tobool111.not, label %land.lhs.true.if.else328_crit_edge, label %if.then112

land.lhs.true.if.else328_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else328

if.then112:                                       ; preds = %land.lhs.true
  %61 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %eeprom_thermalmeter, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %62)
  %cmp116 = icmp ugt i8 %thermal_value.0, %62
  %sub122 = sub i8 %thermal_value.0, %62
  %sub127 = sub i8 %62, %thermal_value.0
  %cond129 = select i1 %cmp116, i8 %sub122, i8 %sub127
  %63 = tail call i8 @llvm.umin.i8(i8 %cond129, i8 36)
  %conv142 = zext i8 %63 to i32
  br i1 %cmp116, label %if.then141, label %if.else

if.then141:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx144 = getelementptr i8, ptr %rtl8821ae_delta_swing_table_idx_5ga_p.sink.i, i32 %conv142
  %64 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %65 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv142, i32 noundef %conv145) #8
  %delta_power_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41
  %66 = ptrtoint ptr %delta_power_index to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %delta_power_index, align 2
  %delta_power_index_last = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42
  %68 = ptrtoint ptr %delta_power_index_last to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %delta_power_index_last, align 2
  %69 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx144, align 1
  store i8 %70, ptr %delta_power_index, align 2
  %71 = load i8, ptr %arrayidx144, align 1
  br label %if.end182

if.else:                                          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx160 = getelementptr i8, ptr %rtl8821ae_delta_swing_table_idx_5ga_n.sink.i, i32 %conv142
  %72 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %73 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %conv142, i32 noundef %conv161) #8
  %delta_power_index162 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41
  %74 = ptrtoint ptr %delta_power_index162 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %delta_power_index162, align 2
  %delta_power_index_last164 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42
  %76 = ptrtoint ptr %delta_power_index_last164 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %delta_power_index_last164, align 2
  %77 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx160, align 1
  %mul = sub i8 0, %78
  store i8 %mul, ptr %delta_power_index162, align 2
  %79 = load i8, ptr %arrayidx160, align 1
  %mul175 = sub i8 0, %79
  br label %if.end182

if.end182:                                        ; preds = %if.else, %if.then141
  %mul175.sink745 = phi i8 [ %mul175, %if.else ], [ %71, %if.then141 ]
  %.str.26.sink = phi ptr [ @.str.26, %if.else ], [ @.str.22, %if.then141 ]
  %absolute_ofdm_swing_idx177 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 44
  %80 = ptrtoint ptr %absolute_ofdm_swing_idx177 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %mul175.sink745, ptr %absolute_ofdm_swing_idx177, align 2
  %conv181 = sext i8 %mul175.sink745 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull %.str.26.sink, i32 noundef %conv181) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef 65) #8
  %delta_power_index192 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 41
  %81 = ptrtoint ptr %delta_power_index192 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %delta_power_index192, align 1
  %delta_power_index_last196 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 42
  %83 = ptrtoint ptr %delta_power_index_last196 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %delta_power_index_last196, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp200 = icmp eq i8 %82, %84
  %sub214 = sub i8 %82, %84
  %sub214.sink = select i1 %cmp200, i8 0, i8 %sub214
  %85 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %sub214.sink, ptr %85, align 1
  %conv227 = sext i8 %sub214.sink to i32
  %87 = ptrtoint ptr %delta_power_index192 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %delta_power_index192, align 1
  %conv231 = sext i8 %88 to i32
  %89 = ptrtoint ptr %delta_power_index_last196 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %delta_power_index_last196, align 1
  %conv235 = sext i8 %90 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef 65, i32 noundef %conv227, i32 noundef %conv231, i32 noundef %conv235) #8
  %91 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %swing_idx_ofdm_base, align 1
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %85, align 1
  %add244 = add i8 %94, %92
  %ofdm_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37
  %95 = ptrtoint ptr %ofdm_index to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %add244, ptr %ofdm_index, align 1
  %96 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %swing_idx_cck_base, align 1
  %add254 = add i8 %97, %94
  %cck_index = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %98 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %add254, ptr %cck_index, align 1
  %swing_idx_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %99 = ptrtoint ptr %swing_idx_cck to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %add254, ptr %swing_idx_cck, align 1
  %swing_idx_ofdm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61
  %100 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %add244, ptr %swing_idx_ofdm, align 1
  %conv263 = zext i8 %add254 to i32
  %conv265 = zext i8 %97 to i32
  %conv269 = sext i8 %94 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv263, i32 noundef %conv265, i32 noundef %conv269) #8
  %101 = ptrtoint ptr %swing_idx_ofdm to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %swing_idx_ofdm, align 1
  %conv273 = zext i8 %102 to i32
  %103 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %swing_idx_ofdm_base, align 1
  %conv281 = zext i8 %104 to i32
  %105 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %85, align 1
  %conv285 = sext i8 %106 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv273, i32 noundef 65, i32 noundef %conv281, i32 noundef %conv285) #8
  %107 = ptrtoint ptr %ofdm_index to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ofdm_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %108)
  %cmp290 = icmp sgt i8 %108, 36
  br i1 %cmp290, label %if.end182.for.end312.sink.split_crit_edge, label %if.else296

if.end182.for.end312.sink.split_crit_edge:        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end312.sink.split

if.else296:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %108)
  %cmp302 = icmp slt i8 %108, 6
  br i1 %cmp302, label %if.else296.for.end312.sink.split_crit_edge, label %if.else296.for.end312_crit_edge

if.else296.for.end312_crit_edge:                  ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end312

if.else296.for.end312.sink.split_crit_edge:       ; preds = %if.else296
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end312.sink.split

for.end312.sink.split:                            ; preds = %if.else296.for.end312.sink.split_crit_edge, %if.end182.for.end312.sink.split_crit_edge
  %.sink = phi i8 [ 36, %if.end182.for.end312.sink.split_crit_edge ], [ 6, %if.else296.for.end312.sink.split_crit_edge ]
  %109 = ptrtoint ptr %ofdm_index to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %.sink, ptr %ofdm_index, align 1
  br label %for.end312

for.end312:                                       ; preds = %for.end312.sink.split, %if.else296.for.end312_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.53) #8
  %110 = ptrtoint ptr %cck_index to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %cck_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %111)
  %cmp315 = icmp sgt i8 %111, 36
  br i1 %cmp315, label %if.then317, label %if.else319

if.then317:                                       ; preds = %for.end312
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 36, ptr %cck_index, align 1
  br label %if.end345

if.else319:                                       ; preds = %for.end312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp322 = icmp slt i8 %111, 0
  br i1 %cmp322, label %if.then324, label %if.else319.if.end345_crit_edge

if.else319.if.end345_crit_edge:                   ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end345

if.then324:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %cck_index to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %cck_index, align 1
  br label %if.end345

if.else328:                                       ; preds = %land.lhs.true.if.else328_crit_edge, %if.end105.if.else328_crit_edge
  %114 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %txpower_track_control, align 8
  %conv330 = zext i8 %115 to i32
  %116 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %thermalvalue, align 2
  %conv333 = zext i8 %117 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.54, i32 noundef %conv330, i32 noundef %conv50, i32 noundef %conv333) #8
  %power_index_offset339 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43
  %118 = ptrtoint ptr %power_index_offset339 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %power_index_offset339, align 1
  br label %if.end345

if.end345:                                        ; preds = %if.else328, %if.then324, %if.else319.if.end345_crit_edge, %if.then317
  %delta.0 = phi i8 [ %63, %if.then317 ], [ %63, %if.then324 ], [ %63, %if.else319.if.end345_crit_edge ], [ %cond, %if.else328 ]
  %cck_index346 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 40
  %119 = ptrtoint ptr %cck_index346 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %cck_index346, align 1
  %conv347 = sext i8 %120 to i32
  %121 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %swing_idx_cck_base, align 1
  %conv349 = zext i8 %122 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.55, i32 noundef %conv347, i32 noundef %conv349) #8
  %ofdm_index355 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 37
  %123 = ptrtoint ptr %ofdm_index355 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ofdm_index355, align 1
  %conv358 = sext i8 %124 to i32
  %125 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %swing_idx_ofdm_base, align 1
  %conv366 = zext i8 %126 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %conv358, i32 noundef 65, i32 noundef %conv366) #8
  %power_index_offset370 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43
  %127 = ptrtoint ptr %power_index_offset370 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %power_index_offset370, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp373.not = icmp eq i8 %128, 0
  br i1 %cmp373.not, label %lor.lhs.false375, label %if.end345.land.lhs.true381_crit_edge

if.end345.land.lhs.true381_crit_edge:             ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true381

lor.lhs.false375:                                 ; preds = %if.end345
  %arrayidx377 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 43, i32 1
  %129 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx377, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp379.not = icmp eq i8 %130, 0
  br i1 %cmp379.not, label %lor.lhs.false375.if.end469_crit_edge, label %lor.lhs.false375.land.lhs.true381_crit_edge

lor.lhs.false375.land.lhs.true381_crit_edge:      ; preds = %lor.lhs.false375
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true381

lor.lhs.false375.if.end469_crit_edge:             ; preds = %lor.lhs.false375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

land.lhs.true381:                                 ; preds = %lor.lhs.false375.land.lhs.true381_crit_edge, %if.end345.land.lhs.true381_crit_edge
  %131 = ptrtoint ptr %txpower_track_control to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %txpower_track_control, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool384.not = icmp eq i8 %132, 0
  br i1 %tobool384.not, label %land.lhs.true381.if.end469_crit_edge, label %if.then385

land.lhs.true381.if.end469_crit_edge:             ; preds = %land.lhs.true381
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end469

if.then385:                                       ; preds = %land.lhs.true381
  %133 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %thermalvalue, align 2
  %conv388 = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %134)
  %cmp389 = icmp ugt i8 %thermal_value.0, %134
  br i1 %cmp389, label %if.then385.if.end418.sink.split_crit_edge, label %if.else401

if.then385.if.end418.sink.split_crit_edge:        ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end418.sink.split

if.else401:                                       ; preds = %if.then385
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %134)
  %cmp405 = icmp ult i8 %thermal_value.0, %134
  br i1 %cmp405, label %if.else401.if.end418.sink.split_crit_edge, label %if.else401.if.end418_crit_edge

if.else401.if.end418_crit_edge:                   ; preds = %if.else401
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end418

if.else401.if.end418.sink.split_crit_edge:        ; preds = %if.else401
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end418.sink.split

if.end418.sink.split:                             ; preds = %if.else401.if.end418.sink.split_crit_edge, %if.then385.if.end418.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.57, %if.then385.if.end418.sink.split_crit_edge ], [ @.str.39, %if.else401.if.end418.sink.split_crit_edge ]
  %conv410 = sext i8 %128 to i32
  %conv411 = zext i8 %delta.0 to i32
  %135 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv414 = zext i8 %136 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull %.str.39.sink, i32 noundef %conv410, i32 noundef %conv411, i32 noundef %conv50, i32 noundef %conv414, i32 noundef %conv388) #8
  br label %if.end418

if.end418:                                        ; preds = %if.end418.sink.split, %if.else401.if.end418_crit_edge
  %137 = ptrtoint ptr %eeprom_thermalmeter to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %eeprom_thermalmeter, align 4
  %conv421 = zext i8 %138 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %thermal_value.0, i8 %138)
  %cmp422 = icmp ugt i8 %thermal_value.0, %138
  br i1 %cmp422, label %if.then424, label %if.else436

if.then424:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %conv50, i32 noundef %conv421) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.58) #8
  tail call void @rtl8821ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 0, i8 zeroext undef)
  br label %if.end448

if.else436:                                       ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %conv50, i32 noundef %conv421) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.59) #8
  tail call void @rtl8812ae_dm_txpwr_track_set_pwr(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext 0, i8 zeroext undef)
  br label %if.end448

if.end448:                                        ; preds = %if.else436, %if.then424
  %swing_idx_cck449 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 65
  %139 = ptrtoint ptr %swing_idx_cck449 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %swing_idx_cck449, align 1
  %141 = ptrtoint ptr %swing_idx_cck_base to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %swing_idx_cck_base, align 1
  %swing_idx_ofdm456 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 61
  %142 = ptrtoint ptr %swing_idx_ofdm456 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %swing_idx_ofdm456, align 1
  %144 = ptrtoint ptr %swing_idx_ofdm_base to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %swing_idx_ofdm_base, align 1
  %145 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %thermalvalue, align 2
  %conv466 = zext i8 %146 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %conv466, i32 noundef %conv50) #8
  %147 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %thermal_value.0, ptr %thermalvalue, align 2
  br label %if.end469

if.end469:                                        ; preds = %if.end448, %land.lhs.true381.if.end469_crit_edge, %lor.lhs.false375.if.end469_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %cond94)
  %cmp471 = icmp ugt i8 %cond94, 7
  br i1 %cmp471, label %if.then473, label %if.end469.if.end485_crit_edge

if.end469.if.end485_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end485

if.then473:                                       ; preds = %if.end469
  %lck_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 13
  %148 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %lck_inprogress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool474.not = icmp eq i8 %149, 0
  br i1 %tobool474.not, label %if.then475, label %if.then473.if.end485_crit_edge

if.then473.if.end485_crit_edge:                   ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end485

if.then475:                                       ; preds = %if.then473
  call void @__sanitizer_cov_trace_pc() #10
  %iqk_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 13
  tail call void @_raw_spin_lock(ptr noundef %iqk_lock) #8
  %150 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %lck_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %iqk_lock) #8
  tail call void @rtl8821ae_do_iqk(ptr noundef %hw, i8 noundef zeroext %cond94, i8 noundef zeroext %thermal_value.0, i8 noundef zeroext 8) #8
  tail call void @_raw_spin_lock(ptr noundef %iqk_lock) #8
  %151 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %lck_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %iqk_lock) #8
  br label %if.end485

if.end485:                                        ; preds = %if.then475, %if.then473.if.end485_crit_edge, %if.end469.if.end485_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.rtl8821ae_dm_txpower_tracking_callback_thermalmeter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end485, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge747, %rtl8821ae_get_delta_swing_table.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_do_iqk(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_check_txpower_tracking_thermalmeter(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tm_trigger = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 27
  %2 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tm_trigger, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %9(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.61) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.62) #8
  tail call void @rtl8821ae_dm_txpower_tracking_callback_thermalmeter(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %storemerge = phi i8 [ 1, %if.then ], [ 0, %if.else ]
  %10 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %tm_trigger, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_watchdog(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %basic_rate.i = alloca i16, align 2
  %h2c_parameter.i = alloca [4 x i8], align 4
  %fw_current_inpsmode = alloca i8, align 1
  %fw_ps_awake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inpsmode) #8
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_ps_awake) #8
  %3 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %fw_ps_awake, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_hw_reg, align 4
  call void %9(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inpsmode) #8
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops5, align 4
  %get_hw_reg6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg6, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 86, ptr noundef nonnull %fw_ps_awake) #8
  %p2p_ps_info = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39
  %16 = ptrtoint ptr %p2p_ps_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2p_ps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fw_ps_awake, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #8
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %19 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true8:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ps_awake, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end17_crit_edge, label %land.lhs.true10

land.lhs.true8.if.end17_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfchange_inprogress, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not = icmp eq i8 %26, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true10.if.end17_crit_edge

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true10
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %tx_rate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 60
  %29 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %tx_rate.i, align 8
  %one_entry_only.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 49
  %30 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %one_entry_only.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opmode.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %32, label %if.then12.rtl8821ae_dm_common_info_self_update.exit_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 3, label %if.then12.if.then16.i_crit_edge
    i32 1, label %if.then12.if.then16.i_crit_edge164
    i32 7, label %if.then12.if.then16.i_crit_edge165
  ]

if.then12.if.then16.i_crit_edge165:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then12.if.then16.i_crit_edge164:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then12.if.then16.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.then12.rtl8821ae_dm_common_info_self_update.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_common_info_self_update.exit

land.lhs.true.i:                                  ; preds = %if.then12
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 10
  %34 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp3.i = icmp ugt i32 %35, 1
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge

land.lhs.true.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_common_info_self_update.exit

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then16.i:                                      ; preds = %if.then12.if.then16.i_crit_edge, %if.then12.if.then16.i_crit_edge164, %if.then12.if.then16.i_crit_edge165
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #8
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 28
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then16.i
  %drv_priv.0.in.i = phi ptr [ %entry_list.i, %if.then16.i ], [ %drv_priv.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %cnt.0.i = phi i8 [ 0, %if.then16.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %36 = ptrtoint ptr %drv_priv.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %drv_priv.0.i = load ptr, ptr %drv_priv.0.in.i, align 1
  %cmp18.not.i = icmp eq ptr %drv_priv.0.i, %entry_list.i
  %inc.i = add i8 %cnt.0.i, 1
  br i1 %cmp18.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cnt.0.i)
  %cmp26.i = icmp eq i8 %cnt.0.i, 1
  br i1 %cmp26.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge

for.end.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_common_info_self_update.exit

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %37 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %one_entry_only.i, align 1
  br label %rtl8821ae_dm_common_info_self_update.exit

rtl8821ae_dm_common_info_self_update.exit:        ; preds = %cleanup.sink.split.i, %for.end.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge, %land.lhs.true.i.rtl8821ae_dm_common_info_self_update.exit_crit_edge, %if.then12.rtl8821ae_dm_common_info_self_update.exit_crit_edge
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 45
  %44 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %45(ptr noundef %hw, i32 noundef 3912, i32 noundef 65535) #8
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 26, i32 6
  %46 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i.i, ptr %cnt_ofdm_fail.i, align 4
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %cfg.i31.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i31.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i31.i, align 8
  %ops.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i32.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i32.i, align 4
  %get_bbreg.i33.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %get_bbreg.i33.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_bbreg.i33.i, align 4
  %call.i34.i = call i32 %54(ptr noundef %hw, i32 noundef 2652, i32 noundef 65535) #8
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 26, i32 7
  %55 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i34.i, ptr %cnt_cck_fail.i, align 4
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %cfg.i36.i = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i36.i, align 8
  %ops.i37.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i37.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i37.i, align 4
  %get_bbreg.i38.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 45
  %62 = ptrtoint ptr %get_bbreg.i38.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_bbreg.i38.i, align 4
  %call.i39.i = call i32 %63(ptr noundef %hw, i32 noundef 2056, i32 noundef 268435456) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool.not.i = icmp eq i32 %call.i39.i, 0
  %64 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cnt_ofdm_fail.i, align 4
  br i1 %tobool.not.i, label %rtl8821ae_dm_common_info_self_update.exit.rtl8821ae_dm_false_alarm_counter_statistics.exit_crit_edge, label %if.then.i

rtl8821ae_dm_common_info_self_update.exit.rtl8821ae_dm_false_alarm_counter_statistics.exit_crit_edge: ; preds = %rtl8821ae_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_false_alarm_counter_statistics.exit

if.then.i:                                        ; preds = %rtl8821ae_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cnt_cck_fail.i, align 4
  %add.i = add i32 %67, %65
  br label %rtl8821ae_dm_false_alarm_counter_statistics.exit

rtl8821ae_dm_false_alarm_counter_statistics.exit: ; preds = %if.then.i, %rtl8821ae_dm_common_info_self_update.exit.rtl8821ae_dm_false_alarm_counter_statistics.exit_crit_edge
  %add.sink.i = phi i32 [ %add.i, %if.then.i ], [ %65, %rtl8821ae_dm_common_info_self_update.exit.rtl8821ae_dm_false_alarm_counter_statistics.exit_crit_edge ]
  %68 = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 26, i32 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.sink.i, ptr %68, align 4
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i41.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i41.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i41.i, align 8
  %ops.i42.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i42.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i42.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %77(ptr noundef %hw, i32 noundef 2468, i32 noundef 131072, i32 noundef 1) #8
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %cfg.i44.i = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i44.i, align 8
  %ops.i45.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i45.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i45.i, align 4
  %set_bbreg.i46.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %set_bbreg.i46.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_bbreg.i46.i, align 4
  call void %85(ptr noundef %hw, i32 noundef 2468, i32 noundef 131072, i32 noundef 0) #8
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %cfg.i48.i = getelementptr inbounds %struct.rtl_priv, ptr %87, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i48.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i48.i, align 8
  %ops.i49.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ops.i49.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i49.i, align 4
  %set_bbreg.i50.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %91, i32 0, i32 46
  %92 = ptrtoint ptr %set_bbreg.i50.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_bbreg.i50.i, align 4
  call void %93(ptr noundef %hw, i32 noundef 2604, i32 noundef 32768, i32 noundef 0) #8
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %cfg.i52.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i52.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i52.i, align 8
  %ops.i53.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i53.i, align 4
  %set_bbreg.i54.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %99, i32 0, i32 46
  %100 = ptrtoint ptr %set_bbreg.i54.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_bbreg.i54.i, align 4
  call void %101(ptr noundef %hw, i32 noundef 2604, i32 noundef 32768, i32 noundef 1) #8
  %102 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cnt_cck_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %103) #8
  %104 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cnt_ofdm_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %105) #8
  %106 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %68, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %107) #8
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h2c_parameter.i) #8
  %110 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %h2c_parameter.i, align 4
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 24
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 24, i32 3
  %111 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rxbytesunicast.i, align 8
  %113 = load i64, ptr @rtl8821ae_dm_check_rssi_monitor.last_rxokcnt, align 8
  %sub.i = sub i64 %112, %113
  %114 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %stats.i, align 8
  store i64 %112, ptr @rtl8821ae_dm_check_rssi_monitor.last_rxokcnt, align 8
  %mul.i = mul i64 %115, 6
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %mul.i)
  %cmp.i = icmp ugt i64 %sub.i, %mul.i
  %spec.select.i = zext i1 %cmp.i to i8
  %116 = getelementptr inbounds [4 x i8], ptr %h2c_parameter.i, i32 0, i32 3
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %spec.select.i, ptr %116, align 1
  %opmode.i45 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 9, i32 8
  %118 = ptrtoint ptr %opmode.i45 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %opmode.i45, align 8
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %119, label %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.end49.i_crit_edge [
    i32 3, label %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge
    i32 1, label %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge166
    i32 7, label %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge167
  ]

rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge167: ; preds = %rtl8821ae_dm_false_alarm_counter_statistics.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge166: ; preds = %rtl8821ae_dm_false_alarm_counter_statistics.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge: ; preds = %rtl8821ae_dm_false_alarm_counter_statistics.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

rtl8821ae_dm_false_alarm_counter_statistics.exit.if.end49.i_crit_edge: ; preds = %rtl8821ae_dm_false_alarm_counter_statistics.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then14.i:                                      ; preds = %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge, %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge166, %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.then14.i_crit_edge167
  %entry_list_lock.i46 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i46) #8
  %entry_list.i47 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 28
  %121 = ptrtoint ptr %entry_list.i47 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %drv_priv.0160.i = load ptr, ptr %entry_list.i47, align 1
  %cmp16.not161.i = icmp eq ptr %drv_priv.0160.i, %entry_list.i47
  br i1 %cmp16.not161.i, label %for.end.thread.i, label %if.then14.i.for.body.i_crit_edge

if.then14.i.for.body.i_crit_edge:                 ; preds = %if.then14.i
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i46) #8
  br label %if.else38.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then14.i.for.body.i_crit_edge
  %drv_priv.0164.i = phi ptr [ %drv_priv.0.i48, %for.body.i.for.body.i_crit_edge ], [ %drv_priv.0160.i, %if.then14.i.for.body.i_crit_edge ]
  %tmp_entry_min_pwdb.0163.i = phi i32 [ %124, %for.body.i.for.body.i_crit_edge ], [ 255, %if.then14.i.for.body.i_crit_edge ]
  %tmp_entry_max_pwdb.0162.i = phi i32 [ %125, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then14.i.for.body.i_crit_edge ]
  %rssi_stat.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.0164.i, i32 0, i32 2
  %122 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %rssi_stat.i, align 1
  %124 = call i32 @llvm.smin.i32(i32 %123, i32 %tmp_entry_min_pwdb.0163.i) #8
  %125 = call i32 @llvm.smax.i32(i32 %123, i32 %tmp_entry_max_pwdb.0162.i) #8
  %126 = ptrtoint ptr %drv_priv.0164.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %drv_priv.0.i48 = load ptr, ptr %drv_priv.0164.i, align 1
  %cmp16.not.i = icmp eq ptr %drv_priv.0.i48, %entry_list.i47
  br i1 %cmp16.not.i, label %for.end.i49, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i49:                                      ; preds = %for.body.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp36.not.i = icmp eq i32 %125, 0
  br i1 %cmp36.not.i, label %for.end.i49.if.else38.i_crit_edge, label %if.then37.i

for.end.i49.if.else38.i_crit_edge:                ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else38.i

if.then37.i:                                      ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %entry_max_undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15, i32 3
  %127 = ptrtoint ptr %entry_max_undec_sm_pwdb.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %125, ptr %entry_max_undec_sm_pwdb.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %109, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.67, i32 noundef %125, i32 noundef %125) #8
  br label %if.end41.i

if.else38.i:                                      ; preds = %for.end.i49.if.else38.i_crit_edge, %for.end.thread.i
  %tmp_entry_min_pwdb.0.lcssa171.i = phi i32 [ 255, %for.end.thread.i ], [ %124, %for.end.i49.if.else38.i_crit_edge ]
  %entry_max_undec_sm_pwdb40.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15, i32 3
  %128 = ptrtoint ptr %entry_max_undec_sm_pwdb40.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %entry_max_undec_sm_pwdb40.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %if.then37.i
  %tmp_entry_min_pwdb.0.lcssa170.i = phi i32 [ %tmp_entry_min_pwdb.0.lcssa171.i, %if.else38.i ], [ %124, %if.then37.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %tmp_entry_min_pwdb.0.lcssa170.i)
  %cmp42.not.i = icmp eq i32 %tmp_entry_min_pwdb.0.lcssa170.i, 255
  %dm46.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15
  br i1 %cmp42.not.i, label %if.else45.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %dm46.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %tmp_entry_min_pwdb.0.lcssa170.i, ptr %dm46.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %109, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %tmp_entry_min_pwdb.0.lcssa170.i, i32 noundef %tmp_entry_min_pwdb.0.lcssa170.i) #8
  br label %if.end49.i

if.else45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %dm46.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %dm46.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else45.i, %if.then43.i, %rtl8821ae_dm_false_alarm_counter_statistics.exit.if.end49.i_crit_edge
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15, i32 14
  %131 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %useramask.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i50 = icmp eq i8 %132, 0
  br i1 %tobool.not.i50, label %if.else99.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end49.i
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 10, i32 10
  %133 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %134)
  %cmp52.i = icmp eq i16 %134, 14
  br i1 %cmp52.i, label %if.then54.i, label %if.then51.i.if.end83.i_crit_edge

if.then51.i.if.end83.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

if.then54.i:                                      ; preds = %if.then51.i
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 9, i32 42
  %135 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %mode.i, align 4
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.136)
  switch i16 %136, label %if.else72.i [
    i16 128, label %if.then54.i.if.then68.i_crit_edge
    i16 64, label %if.then54.i.if.then68.i_crit_edge168
    i16 256, label %if.then54.i.if.then68.i_crit_edge169
  ]

if.then54.i.if.then68.i_crit_edge169:             ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

if.then54.i.if.then68.i_crit_edge168:             ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

if.then54.i.if.then68.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

if.then68.i:                                      ; preds = %if.then54.i.if.then68.i_crit_edge, %if.then54.i.if.then68.i_crit_edge168, %if.then54.i.if.then68.i_crit_edge169
  %vht_cur_stbc.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 9, i32 29
  br label %if.end78.i

if.else72.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  %ht_cur_stbc.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 9, i32 25
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else72.i, %if.then68.i
  %stbc_tx.0.in.in.in.i = phi ptr [ %vht_cur_stbc.i, %if.then68.i ], [ %ht_cur_stbc.i, %if.else72.i ]
  %138 = ptrtoint ptr %stbc_tx.0.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %stbc_tx.0.in.in.i = load i8, ptr %stbc_tx.0.in.in.in.i, align 1
  %stbc_tx.0.i = and i8 %stbc_tx.0.in.in.i, 2
  %139 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %116, align 1
  %or.i = or i8 %stbc_tx.0.i, %140
  store i8 %or.i, ptr %116, align 1
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end78.i, %if.then51.i.if.end83.i_crit_edge
  %undec_sm_pwdb85.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15, i32 2
  %141 = ptrtoint ptr %undec_sm_pwdb85.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %undec_sm_pwdb85.i, align 8
  %conv87.i = trunc i32 %142 to i8
  %arrayidx88.i = getelementptr inbounds [4 x i8], ptr %h2c_parameter.i, i32 0, i32 2
  %143 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv87.i, ptr %arrayidx88.i, align 2
  %arrayidx89.i = getelementptr inbounds [4 x i8], ptr %h2c_parameter.i, i32 0, i32 1
  %144 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 32, ptr %arrayidx89.i, align 1
  %145 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %h2c_parameter.i, align 4
  %146 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %147)
  %cmp93.i = icmp eq i16 %147, 14
  br i1 %cmp93.i, label %if.then95.i, label %if.else96.i

if.then95.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 66, i32 noundef 4, ptr noundef nonnull %h2c_parameter.i) #8
  br label %if.end103.i

if.else96.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 66, i32 noundef 3, ptr noundef nonnull %h2c_parameter.i) #8
  br label %if.end103.i

if.else99.i:                                      ; preds = %if.end49.i
  %undec_sm_pwdb101.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 15, i32 2
  %148 = ptrtoint ptr %undec_sm_pwdb101.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %undec_sm_pwdb101.i, align 8
  %conv102.i = trunc i32 %149 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 5
  %150 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write8_async.i.i, align 4
  call void %151(ptr noundef %109, i32 noundef 1278, i8 noundef zeroext %conv102.i) #8
  %cfg.i.i51 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %152 = ptrtoint ptr %cfg.i.i51 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cfg.i.i51, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %write_readback.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i.i, label %if.else99.i.if.end103.i_crit_edge, label %if.then.i.i

if.else99.i.if.end103.i_crit_edge:                ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then.i.i:                                      ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 9
  %156 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i52 = call zeroext i8 %157(ptr noundef %109, i32 noundef 1278) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then.i.i, %if.else99.i.if.end103.i_crit_edge, %if.else96.i, %if.then95.i
  %hw_type104.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 10, i32 10
  %158 = ptrtoint ptr %hw_type104.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %hw_type104.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %159)
  %cmp106.i = icmp eq i16 %159, 14
  br i1 %cmp106.i, label %if.then108.i, label %if.end103.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge

if.end103.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge: ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_check_rssi_monitor.exit

if.then108.i:                                     ; preds = %if.end103.i
  %160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %priv, align 8
  %rx_rssi_percentage.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 17
  %162 = ptrtoint ptr %rx_rssi_percentage.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %rx_rssi_percentage.i.i, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 5
  %164 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %165(ptr noundef %161, i32 noundef 3056, i8 noundef zeroext %163) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 32
  %166 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %write_readback.i.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i.i.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i.i.i, label %if.then108.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then108.i.rtl_write_byte.exit.i.i_crit_edge:   ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %170 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %171(ptr noundef %161, i32 noundef 3056) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then108.i.rtl_write_byte.exit.i.i_crit_edge
  %arrayidx3.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 17, i32 1
  %172 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx3.i.i, align 1
  %174 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %175(ptr noundef %161, i32 noundef 3057, i8 noundef zeroext %173) #8
  %176 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i46.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %write_readback.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %write_readback.i46.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i47.i.i = icmp eq i8 %179, 0
  br i1 %tobool.not.i47.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge, label %if.then.i50.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit51.i.i

if.then.i50.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i48.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %180 = ptrtoint ptr %read8_sync.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %read8_sync.i48.i.i, align 4
  %call.i49.i.i = call zeroext i8 %181(ptr noundef %161, i32 noundef 3057) #8
  br label %rtl_write_byte.exit51.i.i

rtl_write_byte.exit51.i.i:                        ; preds = %if.then.i50.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge
  %rx_evm_dbm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 18
  %182 = ptrtoint ptr %rx_evm_dbm.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %rx_evm_dbm.i.i, align 4
  %184 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %185(ptr noundef %161, i32 noundef 3060, i8 noundef zeroext %183) #8
  %186 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i54.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %write_readback.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %write_readback.i54.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i55.i.i = icmp eq i8 %189, 0
  br i1 %tobool.not.i55.i.i, label %rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge, label %if.then.i58.i.i

rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge: ; preds = %rtl_write_byte.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit59.i.i

if.then.i58.i.i:                                  ; preds = %rtl_write_byte.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i56.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %190 = ptrtoint ptr %read8_sync.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read8_sync.i56.i.i, align 4
  %call.i57.i.i = call zeroext i8 %191(ptr noundef %161, i32 noundef 3060) #8
  br label %rtl_write_byte.exit59.i.i

rtl_write_byte.exit59.i.i:                        ; preds = %if.then.i58.i.i, %rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 18, i32 1
  %192 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx8.i.i, align 1
  %194 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %195(ptr noundef %161, i32 noundef 3061, i8 noundef zeroext %193) #8
  %196 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i62.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %write_readback.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %write_readback.i62.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i63.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i63.i.i, label %rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge, label %if.then.i66.i.i

rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge: ; preds = %rtl_write_byte.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit67.i.i

if.then.i66.i.i:                                  ; preds = %rtl_write_byte.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i64.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %200 = ptrtoint ptr %read8_sync.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read8_sync.i64.i.i, align 4
  %call.i65.i.i = call zeroext i8 %201(ptr noundef %161, i32 noundef 3061) #8
  br label %rtl_write_byte.exit67.i.i

rtl_write_byte.exit67.i.i:                        ; preds = %if.then.i66.i.i, %rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge
  %rx_snr_db.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 10
  %202 = ptrtoint ptr %rx_snr_db.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rx_snr_db.i.i, align 8
  %conv.i.i = trunc i32 %203 to i8
  %204 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %205(ptr noundef %161, i32 noundef 3062, i8 noundef zeroext %conv.i.i) #8
  %206 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i70.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %write_readback.i70.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %write_readback.i70.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i71.i.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i71.i.i, label %rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge, label %if.then.i74.i.i

rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge: ; preds = %rtl_write_byte.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit75.i.i

if.then.i74.i.i:                                  ; preds = %rtl_write_byte.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i72.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %210 = ptrtoint ptr %read8_sync.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read8_sync.i72.i.i, align 4
  %call.i73.i.i = call zeroext i8 %211(ptr noundef %161, i32 noundef 3062) #8
  br label %rtl_write_byte.exit75.i.i

rtl_write_byte.exit75.i.i:                        ; preds = %if.then.i74.i.i, %rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge
  %arrayidx13.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 10, i32 1
  %212 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx13.i.i, align 4
  %conv14.i.i = trunc i32 %213 to i8
  %214 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %215(ptr noundef %161, i32 noundef 3063, i8 noundef zeroext %conv14.i.i) #8
  %216 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i78.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %write_readback.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %write_readback.i78.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.not.i79.i.i = icmp eq i8 %219, 0
  br i1 %tobool.not.i79.i.i, label %rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge, label %if.then.i82.i.i

rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge: ; preds = %rtl_write_byte.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit83.i.i

if.then.i82.i.i:                                  ; preds = %rtl_write_byte.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 9
  %220 = ptrtoint ptr %read8_sync.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read8_sync.i80.i.i, align 4
  %call.i81.i.i = call zeroext i8 %221(ptr noundef %161, i32 noundef 3063) #8
  br label %rtl_write_byte.exit83.i.i

rtl_write_byte.exit83.i.i:                        ; preds = %if.then.i82.i.i, %rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge
  %rx_cfo_short.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 20
  %222 = ptrtoint ptr %rx_cfo_short.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %rx_cfo_short.i.i, align 2
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 6
  %224 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %225(ptr noundef %161, i32 noundef 3064, i16 noundef zeroext %223) #8
  %226 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i85.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %write_readback.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %write_readback.i85.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i86.i.i = icmp eq i8 %229, 0
  br i1 %tobool.not.i86.i.i, label %rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i88.i.i

rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i.i

if.then.i88.i.i:                                  ; preds = %rtl_write_byte.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 10
  %230 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i87.i.i = call zeroext i16 %231(ptr noundef %161, i32 noundef 3064) #8
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i88.i.i, %rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge
  %arrayidx19.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 20, i32 1
  %232 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx19.i.i, align 2
  %234 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %235(ptr noundef %161, i32 noundef 3066, i16 noundef zeroext %233) #8
  %236 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i91.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %write_readback.i91.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %write_readback.i91.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i92.i.i = icmp eq i8 %239, 0
  br i1 %tobool.not.i92.i.i, label %rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge, label %if.then.i95.i.i

rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit96.i.i

if.then.i95.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i93.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 10
  %240 = ptrtoint ptr %read16_sync.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read16_sync.i93.i.i, align 4
  %call.i94.i.i = call zeroext i16 %241(ptr noundef %161, i32 noundef 3066) #8
  br label %rtl_write_word.exit96.i.i

rtl_write_word.exit96.i.i:                        ; preds = %if.then.i95.i.i, %rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge
  %rx_cfo_tail.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 21
  %242 = ptrtoint ptr %rx_cfo_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %rx_cfo_tail.i.i, align 2
  %244 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %245(ptr noundef %161, i32 noundef 3052, i16 noundef zeroext %243) #8
  %246 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i99.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %write_readback.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %write_readback.i99.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool.not.i100.i.i = icmp eq i8 %249, 0
  br i1 %tobool.not.i100.i.i, label %rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge, label %if.then.i103.i.i

rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge: ; preds = %rtl_write_word.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit104.i.i

if.then.i103.i.i:                                 ; preds = %rtl_write_word.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i101.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 10
  %250 = ptrtoint ptr %read16_sync.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %read16_sync.i101.i.i, align 4
  %call.i102.i.i = call zeroext i16 %251(ptr noundef %161, i32 noundef 3052) #8
  br label %rtl_write_word.exit104.i.i

rtl_write_word.exit104.i.i:                       ; preds = %if.then.i103.i.i, %rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge
  %arrayidx24.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 24, i32 21, i32 1
  %252 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx24.i.i, align 2
  %254 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %255(ptr noundef %161, i32 noundef 3054, i16 noundef zeroext %253) #8
  %256 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i107.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %write_readback.i107.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %write_readback.i107.i.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i108.i.i = icmp eq i8 %259, 0
  br i1 %tobool.not.i108.i.i, label %rtl_write_word.exit104.i.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge, label %if.then.i111.i.i

rtl_write_word.exit104.i.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge: ; preds = %rtl_write_word.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_check_rssi_monitor.exit

if.then.i111.i.i:                                 ; preds = %rtl_write_word.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i109.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 13, i32 10
  %260 = ptrtoint ptr %read16_sync.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read16_sync.i109.i.i, align 4
  %call.i110.i.i = call zeroext i16 %261(ptr noundef %161, i32 noundef 3054) #8
  br label %rtl8821ae_dm_check_rssi_monitor.exit

rtl8821ae_dm_check_rssi_monitor.exit:             ; preds = %if.then.i111.i.i, %rtl_write_word.exit104.i.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge, %if.end103.i.rtl8821ae_dm_check_rssi_monitor.exit_crit_edge
  call fastcc void @rtl8821ae_dm_find_minimum_rssi(ptr noundef %hw) #8
  %min_undec_pwdb_for_dm.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 35, i32 26
  %262 = ptrtoint ptr %min_undec_pwdb_for_dm.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %min_undec_pwdb_for_dm.i, align 1
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 35, i32 27
  %264 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %rssi_val_min.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h2c_parameter.i) #8
  %265 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %priv, align 8
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 9
  %267 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cur_igvalue.i, align 4
  %conv.i = trunc i32 %268 to i8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.63) #8
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 9, i32 20
  %269 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %act_scanning.i, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool.not.i54 = icmp eq i8 %270, 0
  br i1 %tobool.not.i54, label %if.end.i, label %if.then.i55

if.then.i55:                                      ; preds = %rtl8821ae_dm_check_rssi_monitor.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.78) #8
  br label %rtl8821ae_dm_dig.exit

if.end.i:                                         ; preds = %rtl8821ae_dm_check_rssi_monitor.exit
  %dig_min_05.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 51
  %link_state.i56 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 9, i32 10
  %271 = ptrtoint ptr %link_state.i56 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %link_state.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %272)
  %cmp.i57 = icmp ugt i32 %272, 1
  %media_connect_0.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 54
  %273 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %media_connect_0.i, align 1, !range !324
  br i1 %cmp.i57, label %if.then25.i, label %if.else91.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool7.not.i = icmp eq i8 %274, 0
  %hw_type463.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 10, i32 10
  %275 = ptrtoint ptr %hw_type463.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %hw_type463.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %276)
  %cmp18.not464.i = icmp eq i16 %276, 13
  %.465.i = select i1 %cmp18.not464.i, i8 28, i8 30
  %.458.i = select i1 %cmp18.not464.i, i32 10, i32 20
  %rssi_val_min.i58 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 27
  %277 = ptrtoint ptr %rssi_val_min.i58 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %rssi_val_min.i58, align 4
  %conv33.i = zext i8 %278 to i32
  %add.i59 = add nuw nsw i32 %.458.i, %conv33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %add.i59)
  %cmp36.i = icmp ugt i32 %add.i59, 90
  %conv44.i = zext i8 %.465.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i59, i32 %conv44.i)
  %cmp45.i = icmp ult i32 %add.i59, %conv44.i
  %conv54.i = trunc i32 %add.i59 to i8
  %spec.select476.i = select i1 %cmp45.i, i8 %.465.i, i8 %conv54.i
  %.465.sink.i = select i1 %cmp36.i, i8 90, i8 %spec.select476.i
  %rx_gain_max48.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 24
  %279 = ptrtoint ptr %rx_gain_max48.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %.465.sink.i, ptr %rx_gain_max48.i, align 1
  %conv61.i = zext i8 %.465.sink.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef %conv33.i, i32 noundef %conv61.i) #8
  %one_entry_only.i60 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 15, i32 49
  %280 = ptrtoint ptr %one_entry_only.i60 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %one_entry_only.i60, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool62.not.i = icmp eq i8 %281, 0
  br i1 %tobool62.not.i, label %if.then25.i.if.end93.i_crit_edge, label %if.then63.i

if.then25.i.if.end93.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i

if.then63.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %282 = ptrtoint ptr %rssi_val_min.i58 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %rssi_val_min.i58, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %283, i8 %.465.i)
  %cmp68.i = icmp ult i8 %283, %.465.i
  %284 = call i8 @llvm.umin.i8(i8 %283, i8 50) #8
  %dig_min_0.0.i = select i1 %cmp68.i, i8 %.465.i, i8 %284
  %conv88.i = zext i8 %dig_min_0.0.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.80, i32 noundef %conv88.i) #8
  br label %if.end93.i

if.else91.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool13.i = icmp ne i8 %274, 0
  %hw_type.i61 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 10, i32 10
  %285 = ptrtoint ptr %hw_type.i61 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %hw_type.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %286)
  %cmp18.not.i62 = icmp eq i16 %286, 13
  %..i = select i1 %cmp18.not.i62, i8 28, i8 30
  %rx_gain_max92.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 24
  %287 = ptrtoint ptr %rx_gain_max92.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 90, ptr %rx_gain_max92.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.81) #8
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else91.i, %if.then63.i, %if.then25.i.if.end93.i_crit_edge
  %.468.i = phi i8 [ %.465.i, %if.then63.i ], [ %..i, %if.else91.i ], [ %.465.i, %if.then25.i.if.end93.i_crit_edge ]
  %288 = phi i1 [ false, %if.then63.i ], [ %tobool13.i, %if.else91.i ], [ false, %if.then25.i.if.end93.i_crit_edge ]
  %289 = phi i1 [ %tobool7.not.i, %if.then63.i ], [ false, %if.else91.i ], [ %tobool7.not.i, %if.then25.i.if.end93.i_crit_edge ]
  %dig_min_0.1.i = phi i8 [ %dig_min_0.0.i, %if.then63.i ], [ %..i, %if.else91.i ], [ %.465.i, %if.then25.i.if.end93.i_crit_edge ]
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 26, i32 8
  %290 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %291)
  %cmp94.i = icmp ugt i32 %291, 10000
  br i1 %cmp94.i, label %if.then96.i, label %if.else133.i

if.then96.i:                                      ; preds = %if.end93.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.82) #8
  %large_fa_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 36
  %292 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %293)
  %cmp98.not.i = icmp eq i8 %293, 3
  br i1 %cmp98.not.i, label %if.then96.i.if.end102.i_crit_edge, label %if.then100.i

if.then96.i.if.end102.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then100.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i63 = add i8 %293, 1
  %294 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %inc.i63, ptr %large_fa_hit.i, align 1
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then100.i, %if.then96.i.if.end102.i_crit_edge
  %forbidden_igi.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 37
  %295 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %forbidden_igi.i, align 2
  %conv103.i = zext i8 %296 to i32
  %conv104.i = and i32 %268, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv104.i, i32 %conv103.i)
  %cmp105.i = icmp ugt i32 %conv104.i, %conv103.i
  br i1 %cmp105.i, label %if.end110.thread.i, label %if.end110.i

if.end110.thread.i:                               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %297 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv.i, ptr %forbidden_igi.i, align 2
  %298 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 1, ptr %large_fa_hit.i, align 1
  br label %if.end167.i

if.end110.i:                                      ; preds = %if.end102.i
  %299 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %.pr.i = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp113.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp113.i, label %if.then115.i, label %if.end110.i.if.end167.i_crit_edge

if.end110.i.if.end167.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.i

if.then115.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_max119.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 24
  %300 = ptrtoint ptr %rx_gain_max119.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %rx_gain_max119.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %296, i8 %301)
  %cmp121.not.i = icmp ult i8 %296, %301
  %add118.i = add nuw i8 %296, 1
  %spec.select.i64 = select i1 %cmp121.not.i, i8 %add118.i, i8 %301
  %302 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 25
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %spec.select.i64, ptr %302, align 2
  %recover_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 7
  %304 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 3600, ptr %recover_cnt.i, align 4
  br label %if.end167.i

if.else133.i:                                     ; preds = %if.end93.i
  %recover_cnt134.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 7
  %305 = ptrtoint ptr %recover_cnt134.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %recover_cnt134.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp135.not.i = icmp eq i32 %306, 0
  br i1 %cmp135.not.i, label %if.else139.i, label %if.then137.i

if.then137.i:                                     ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %306, -1
  %307 = ptrtoint ptr %recover_cnt134.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %dec.i, ptr %recover_cnt134.i, align 4
  br label %if.end167.i

if.else139.i:                                     ; preds = %if.else133.i
  %large_fa_hit140.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 36
  %308 = ptrtoint ptr %large_fa_hit140.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %large_fa_hit140.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %309)
  %cmp142.i = icmp ult i8 %309, 3
  br i1 %cmp142.i, label %if.then144.i, label %if.else163.i

if.then144.i:                                     ; preds = %if.else139.i
  %forbidden_igi145.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 37
  %310 = ptrtoint ptr %forbidden_igi145.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %forbidden_igi145.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %311, i8 %dig_min_0.1.i)
  %cmp149.not.i = icmp ugt i8 %311, %dig_min_0.1.i
  br i1 %cmp149.not.i, label %if.else154.i, label %if.then151.i

if.then151.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #10
  %312 = ptrtoint ptr %forbidden_igi145.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %dig_min_0.1.i, ptr %forbidden_igi145.i, align 2
  %rx_gain_min153.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 25
  %313 = ptrtoint ptr %rx_gain_min153.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %dig_min_0.1.i, ptr %rx_gain_min153.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.83) #8
  br label %if.end167.i

if.else154.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec156.i = add i8 %311, -1
  %314 = ptrtoint ptr %forbidden_igi145.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %dec156.i, ptr %forbidden_igi145.i, align 2
  %rx_gain_min161.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 25
  %315 = ptrtoint ptr %rx_gain_min161.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %311, ptr %rx_gain_min161.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.84) #8
  br label %if.end167.i

if.else163.i:                                     ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #10
  %316 = ptrtoint ptr %large_fa_hit140.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %large_fa_hit140.i, align 1
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.else163.i, %if.else154.i, %if.then151.i, %if.then137.i, %if.then115.i, %if.end110.i.if.end167.i_crit_edge, %if.end110.thread.i
  %large_fa_hit168.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 36
  %317 = ptrtoint ptr %large_fa_hit168.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %large_fa_hit168.i, align 1
  %conv169.i = zext i8 %318 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.85, i32 noundef %conv169.i) #8
  %num_qry_beacon_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 15, i32 50, i32 4
  %319 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %320)
  %cmp172.i = icmp ult i16 %320, 10
  br i1 %cmp172.i, label %if.then174.i, label %if.end167.i.if.end176.i_crit_edge

if.end167.i.if.end176.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176.i

if.then174.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_gain_min175.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 25
  %321 = ptrtoint ptr %rx_gain_min175.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %.468.i, ptr %rx_gain_min175.i, align 2
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.then174.i, %if.end167.i.if.end176.i_crit_edge
  %rx_gain_min177.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 25
  %322 = ptrtoint ptr %rx_gain_min177.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %rx_gain_min177.i, align 2
  %rx_gain_max179.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 24
  %324 = ptrtoint ptr %rx_gain_max179.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %rx_gain_max179.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %323, i8 %325)
  %cmp181.i = icmp ugt i8 %323, %325
  br i1 %cmp181.i, label %if.then183.i, label %if.end176.i.if.end186.i_crit_edge

if.end176.i.if.end186.i_crit_edge:                ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186.i

if.then183.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #10
  %326 = ptrtoint ptr %rx_gain_min177.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %rx_gain_min177.i, align 2
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then183.i, %if.end176.i.if.end186.i_crit_edge
  %327 = ptrtoint ptr %link_state.i56 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %link_state.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %328)
  %cmp188.i = icmp ugt i32 %328, 1
  br i1 %cmp188.i, label %if.then190.i, label %if.else246.i

if.then190.i:                                     ; preds = %if.end186.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.86) #8
  br i1 %289, label %if.then192.i, label %if.else202.i

if.then192.i:                                     ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #10
  %rssi_val_min193.i = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 35, i32 27
  %329 = ptrtoint ptr %rssi_val_min193.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %rssi_val_min193.i, align 4
  %331 = call i8 @llvm.umin.i8(i8 %330, i8 50) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.87) #8
  br label %if.end286.i

if.else202.i:                                     ; preds = %if.then190.i
  %332 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %333)
  %cmp205.i = icmp ugt i32 %333, 1024
  br i1 %cmp205.i, label %if.then207.i, label %if.else211.i

if.then207.i:                                     ; preds = %if.else202.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv210.i = add i8 %conv.i, 4
  br label %if.end286.i

if.else211.i:                                     ; preds = %if.else202.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %333)
  %cmp214.i = icmp ugt i32 %333, 768
  br i1 %cmp214.i, label %if.then216.i, label %if.end231.i

if.then216.i:                                     ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv219.i = add i8 %conv.i, 2
  br label %if.end286.i

if.end231.i:                                      ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %333)
  %cmp223.i = icmp ult i32 %333, 200
  %conv228.i = add i8 %conv.i, -2
  %spec.select470.i = select i1 %cmp223.i, i8 %conv228.i, i8 %conv.i
  %334 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %335)
  %cmp236.i = icmp ult i16 %335, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %333)
  %cmp240.i = icmp ne i32 %333, 768
  %or.cond.i = select i1 %cmp236.i, i1 %cmp240.i, i1 false
  br i1 %or.cond.i, label %if.then242.i, label %if.end231.i.if.end286.i_crit_edge

if.end231.i.if.end286.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286.i

if.then242.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #10
  %336 = ptrtoint ptr %rx_gain_min177.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %rx_gain_min177.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.88) #8
  br label %if.end286.i

if.else246.i:                                     ; preds = %if.end186.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.89) #8
  br i1 %288, label %if.then248.i, label %if.else250.i

if.then248.i:                                     ; preds = %if.else246.i
  call void @__sanitizer_cov_trace_pc() #10
  %338 = ptrtoint ptr %rx_gain_min177.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %rx_gain_min177.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.90) #8
  br label %if.end286.i

if.else250.i:                                     ; preds = %if.else246.i
  %340 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %cnt_all.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %341)
  %cmp253.i = icmp ugt i32 %341, 2000
  br i1 %cmp253.i, label %if.then255.i, label %if.else259.i

if.then255.i:                                     ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv258.i = add i8 %conv.i, 4
  br label %if.end279.i

if.else259.i:                                     ; preds = %if.else250.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %341)
  %cmp262.i = icmp ugt i32 %341, 600
  br i1 %cmp262.i, label %if.then264.i, label %if.else268.i

if.then264.i:                                     ; preds = %if.else259.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv267.i = add i8 %conv.i, 2
  br label %if.end279.i

if.else268.i:                                     ; preds = %if.else259.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %341)
  %cmp271.i = icmp ult i32 %341, 300
  %conv276.i = add i8 %conv.i, -2
  %spec.select471.i = select i1 %cmp271.i, i8 %conv276.i, i8 %conv.i
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.else268.i, %if.then264.i, %if.then255.i
  %current_igi.2.i = phi i8 [ %conv258.i, %if.then255.i ], [ %conv267.i, %if.then264.i ], [ %spec.select471.i, %if.else268.i ]
  %342 = call i8 @llvm.umin.i8(i8 %current_igi.2.i, i8 62) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.91) #8
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.end279.i, %if.then248.i, %if.then242.i, %if.end231.i.if.end286.i_crit_edge, %if.then216.i, %if.then207.i, %if.then192.i
  %current_igi.4.i = phi i8 [ %331, %if.then192.i ], [ %337, %if.then242.i ], [ %spec.select470.i, %if.end231.i.if.end286.i_crit_edge ], [ %339, %if.then248.i ], [ %342, %if.end279.i ], [ %conv219.i, %if.then216.i ], [ %conv210.i, %if.then207.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.92) #8
  %343 = ptrtoint ptr %rx_gain_max179.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %rx_gain_max179.i, align 1
  %345 = call i8 @llvm.umin.i8(i8 %current_igi.4.i, i8 %344) #8
  %346 = ptrtoint ptr %rx_gain_min177.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %rx_gain_min177.i, align 2
  %348 = call i8 @llvm.umax.i8(i8 %345, i8 %347) #8
  %conv304.i = zext i8 %344 to i32
  %conv306.i = zext i8 %347 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.93, i32 noundef %conv304.i, i32 noundef %conv306.i) #8
  %349 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %cnt_all.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.94, i32 noundef %350) #8
  %conv309.i = zext i8 %348 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %266, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.95, i32 noundef %conv309.i) #8
  %351 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %priv, align 8
  %stop_dig.i.i = getelementptr inbounds %struct.rtl_priv, ptr %352, i32 0, i32 35, i32 20
  %353 = ptrtoint ptr %stop_dig.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %stop_dig.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool.not.i.i65 = icmp eq i8 %354, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i, label %if.end286.i.rtl8821ae_dm_write_dig.exit.i_crit_edge

if.end286.i.rtl8821ae_dm_write_dig.exit.i_crit_edge: ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_write_dig.exit.i

if.end.i.i:                                       ; preds = %if.end286.i
  %cur_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %352, i32 0, i32 35, i32 9
  %355 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %cur_igvalue.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %356, i32 %conv309.i)
  %cmp.not.i.i = icmp eq i32 %356, %conv309.i
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %cfg.i.i.i66 = getelementptr inbounds %struct.rtl_priv, ptr %352, i32 0, i32 32
  %357 = ptrtoint ptr %cfg.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cfg.i.i.i66, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %358, i32 0, i32 4
  %359 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %360, i32 0, i32 46
  %361 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %362(ptr noundef %hw, i32 noundef 3152, i32 noundef -1, i32 noundef %conv309.i) #8
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %352, i32 0, i32 14, i32 4
  %363 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp6.not.i.i = icmp eq i8 %364, 0
  br i1 %cmp6.not.i.i, label %if.then3.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.then3.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %365 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %priv, align 8
  %cfg.i24.i.i = getelementptr inbounds %struct.rtl_priv, ptr %366, i32 0, i32 32
  %367 = ptrtoint ptr %cfg.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cfg.i24.i.i, align 8
  %ops.i25.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %368, i32 0, i32 4
  %369 = ptrtoint ptr %ops.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ops.i25.i.i, align 4
  %set_bbreg.i26.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %370, i32 0, i32 46
  %371 = ptrtoint ptr %set_bbreg.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %set_bbreg.i26.i.i, align 4
  call void %372(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef %conv309.i) #8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.then3.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %373 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %conv309.i, ptr %cur_igvalue.i.i, align 4
  br label %rtl8821ae_dm_write_dig.exit.i

rtl8821ae_dm_write_dig.exit.i:                    ; preds = %if.end11.i.i, %if.end286.i.rtl8821ae_dm_write_dig.exit.i_crit_edge
  %374 = ptrtoint ptr %link_state.i56 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %link_state.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %375)
  %cmp311.i = icmp ugt i32 %375, 1
  %frombool315.i = zext i1 %cmp311.i to i8
  %376 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %frombool315.i, ptr %media_connect_0.i, align 1
  %377 = ptrtoint ptr %dig_min_05.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %dig_min_0.1.i, ptr %dig_min_05.i, align 4
  br label %rtl8821ae_dm_dig.exit

rtl8821ae_dm_dig.exit:                            ; preds = %rtl8821ae_dm_write_dig.exit.i, %if.then.i55
  %378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %priv, align 8
  %link_state.i68 = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 9, i32 10
  %380 = ptrtoint ptr %link_state.i68 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %link_state.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %381)
  %cmp.i69 = icmp ugt i32 %381, 1
  br i1 %cmp.i69, label %if.then.i71, label %rtl8821ae_dm_dig.exit.if.end29.sink.split.i_crit_edge

rtl8821ae_dm_dig.exit.if.end29.sink.split.i_crit_edge: ; preds = %rtl8821ae_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.then.i71:                                      ; preds = %rtl8821ae_dm_dig.exit
  %rssi_val_min.i70 = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 35, i32 27
  %382 = ptrtoint ptr %rssi_val_min.i70 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %rssi_val_min.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %383)
  %cmp2.i = icmp ugt i8 %383, 25
  br i1 %cmp2.i, label %if.then.i71.if.end29.i_crit_edge, label %land.lhs.true.i72

if.then.i71.if.end29.i_crit_edge:                 ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

land.lhs.true.i72:                                ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %383)
  %cmp11.i = icmp ugt i8 %383, 10
  br i1 %cmp11.i, label %land.lhs.true.i72.if.end29.i_crit_edge, label %land.lhs.true.i72.if.end29.sink.split.i_crit_edge

land.lhs.true.i72.if.end29.sink.split.i_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

land.lhs.true.i72.if.end29.i_crit_edge:           ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.end29.sink.split.i:                            ; preds = %land.lhs.true.i72.if.end29.sink.split.i_crit_edge, %rtl8821ae_dm_dig.exit.if.end29.sink.split.i_crit_edge
  %cnt_cck_fail23.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 26, i32 7
  %384 = ptrtoint ptr %cnt_cck_fail23.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %cnt_cck_fail23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %385)
  %cmp24.i = icmp ugt i32 %385, 1000
  %.54.i = select i1 %cmp24.i, i8 -125, i8 64
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %land.lhs.true.i72.if.end29.i_crit_edge, %if.then.i71.if.end29.i_crit_edge
  %cur_cck_cca_thresh.0.i = phi i8 [ -51, %if.then.i71.if.end29.i_crit_edge ], [ -125, %land.lhs.true.i72.if.end29.i_crit_edge ], [ %.54.i, %if.end29.sink.split.i ]
  %cur_cck_cca_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 35, i32 29
  %386 = ptrtoint ptr %cur_cck_cca_thres.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %cur_cck_cca_thres.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %387, i8 %cur_cck_cca_thresh.0.i)
  %cmp32.not.i = icmp eq i8 %387, %cur_cck_cca_thresh.0.i
  br i1 %cmp32.not.i, label %if.end29.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge, label %if.then34.i

if.end29.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_cck_packet_detection_thresh.exit

if.then34.i:                                      ; preds = %if.end29.i
  %write8_async.i.i73 = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 13, i32 5
  %388 = ptrtoint ptr %write8_async.i.i73 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %write8_async.i.i73, align 4
  call void %389(ptr noundef %379, i32 noundef 2570, i8 noundef zeroext %cur_cck_cca_thresh.0.i) #8
  %cfg.i.i74 = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 32
  %390 = ptrtoint ptr %cfg.i.i74 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %cfg.i.i74, align 8
  %write_readback.i.i75 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %write_readback.i.i75 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %write_readback.i.i75, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool.not.i.i76 = icmp eq i8 %393, 0
  br i1 %tobool.not.i.i76, label %if.then34.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge, label %if.then.i.i79

if.then34.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_cck_packet_detection_thresh.exit

if.then.i.i79:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i77 = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 13, i32 9
  %394 = ptrtoint ptr %read8_sync.i.i77 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %read8_sync.i.i77, align 4
  %call.i.i78 = call zeroext i8 %395(ptr noundef %379, i32 noundef 2570) #8
  br label %rtl8821ae_dm_cck_packet_detection_thresh.exit

rtl8821ae_dm_cck_packet_detection_thresh.exit:    ; preds = %if.then.i.i79, %if.then34.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge, %if.end29.i.rtl8821ae_dm_cck_packet_detection_thresh.exit_crit_edge
  %conv31.i = zext i8 %cur_cck_cca_thresh.0.i to i32
  %396 = ptrtoint ptr %cur_cck_cca_thres.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %cur_cck_cca_thres.i, align 2
  %pre_cck_cca_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 35, i32 28
  %398 = ptrtoint ptr %pre_cck_cca_thres.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %397, ptr %pre_cck_cca_thres.i, align 1
  store i8 %cur_cck_cca_thresh.0.i, ptr %cur_cck_cca_thres.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %379, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.96, i32 noundef %conv31.i) #8
  %399 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %priv, align 8
  %low2high_rssi_thresh_for_ra40m.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 5
  %401 = ptrtoint ptr %low2high_rssi_thresh_for_ra40m.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %low2high_rssi_thresh_for_ra40m.i, align 4
  %conv.i81 = zext i8 %402 to i32
  %high_rssi_thresh_for_ra.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 3
  %403 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %high_rssi_thresh_for_ra.i, align 4
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 10, i32 14
  %405 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %cmp.i.i = icmp eq i8 %406, 0
  br i1 %cmp.i.i, label %if.then.i82, label %if.end.i85

if.then.i82:                                      ; preds = %rtl8821ae_dm_cck_packet_detection_thresh.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %400, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.97) #8
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

if.end.i85:                                       ; preds = %rtl8821ae_dm_cck_packet_detection_thresh.exit
  %useramask.i83 = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 15, i32 14
  %407 = ptrtoint ptr %useramask.i83 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %useramask.i83, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool.not.i84 = icmp eq i8 %408, 0
  br i1 %tobool.not.i84, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %400, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.98) #8
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

if.end5.i:                                        ; preds = %if.end.i85
  %link_state.i86 = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 9, i32 10
  %409 = ptrtoint ptr %link_state.i86 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %link_state.i86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %410)
  %cmp.i87 = icmp eq i32 %410, 2
  br i1 %cmp.i87, label %land.lhs.true.i89, label %if.end5.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge

if.end5.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

land.lhs.true.i89:                                ; preds = %if.end5.i
  %opmode.i88 = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 9, i32 8
  %411 = ptrtoint ptr %opmode.i88 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %opmode.i88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %412)
  %cmp7.i = icmp eq i32 %412, 2
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true.i89.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge

land.lhs.true.i89.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

if.then9.i:                                       ; preds = %land.lhs.true.i89
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 21
  %413 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %pre_ratr_state.i, align 4
  %415 = zext i8 %414 to i64
  call void @__sanitizer_cov_trace_switch(i64 %415, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %414, label %if.then9.i.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb12.i
  ]

if.then9.i.sw.epilog.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i90 = add i32 %404, 5
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add14.i = add i32 %404, 5
  %add16.i = add nuw nsw i32 %conv.i81, 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb12.i, %sw.bb.i, %if.then9.i.sw.epilog.i_crit_edge
  %low_rssithresh_for_ra.0.i = phi i32 [ %conv.i81, %if.then9.i.sw.epilog.i_crit_edge ], [ %add16.i, %sw.bb12.i ], [ %conv.i81, %sw.bb.i ]
  %high_rssithresh_for_ra.0.i = phi i32 [ %404, %if.then9.i.sw.epilog.i_crit_edge ], [ %add14.i, %sw.bb12.i ], [ %add.i90, %sw.bb.i ]
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 15, i32 2
  %416 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %417, i32 %high_rssithresh_for_ra.0.i)
  %cmp18.i = icmp sgt i32 %417, %high_rssithresh_for_ra.0.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 1
  %418 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 1, ptr %ratr_state.i, align 1
  br label %if.end30.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %417, i32 %low_rssithresh_for_ra.0.i)
  %cmp23.i = icmp sgt i32 %417, %low_rssithresh_for_ra.0.i
  %ratr_state26.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 1
  br i1 %cmp23.i, label %if.then25.i91, label %if.else27.i

if.then25.i91:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %419 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 2, ptr %ratr_state26.i, align 1
  br label %if.end30.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %420 = ptrtoint ptr %ratr_state26.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 3, ptr %ratr_state26.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else27.i, %if.then25.i91, %if.then20.i
  %421 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %pre_ratr_state.i, align 4
  %ratr_state33.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 22, i32 1
  %423 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %ratr_state33.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %422, i8 %424)
  %cmp35.not.i = icmp eq i8 %422, %424
  br i1 %cmp35.not.i, label %if.end30.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge, label %if.then37.i93

if.end30.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

if.then37.i93:                                    ; preds = %if.end30.i
  %425 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %400, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.99, i32 noundef %426) #8
  %427 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %ratr_state33.i, align 1
  %conv41.i = zext i8 %428 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %400, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.100, i32 noundef %conv41.i) #8
  %429 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %pre_ratr_state.i, align 4
  %conv43.i = zext i8 %430 to i32
  %431 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %ratr_state33.i, align 1
  %conv45.i = zext i8 %432 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %400, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.101, i32 noundef %conv43.i, i32 noundef %conv45.i) #8
  %433 = call i32 @llvm.read_register.i32(metadata !314) #8
  %and.i.i.i.i.i.i = and i32 %433, -16384
  %434 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %434, i32 0, i32 1
  %435 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %436, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !325
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i92 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i92, label %if.then37.i93.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then37.i93.rcu_read_lock.exit.i_crit_edge:     ; preds = %if.then37.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then37.i93
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i94 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i94, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i95

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i95:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.102, i32 noundef 696, ptr noundef nonnull @.str.103) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i95, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then37.i93.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 9, i32 34
  %437 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %priv, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %438, i32 0, i32 9, i32 7
  %439 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %vif.i.i, align 4
  %call.i97.i = call ptr @ieee80211_find_sta(ptr noundef %440, ptr noundef %bssid.i) #8
  %tobool47.not.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool47.not.i, label %rcu_read_lock.exit.i.if.end50.i_crit_edge, label %if.then48.i

rcu_read_lock.exit.i.if.end50.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then48.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %400, i32 0, i32 32
  %441 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %442, i32 0, i32 4
  %443 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ops.i, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %444, i32 0, i32 21
  %445 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %update_rate_tbl.i, align 4
  %447 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %ratr_state33.i, align 1
  call void %446(ptr noundef %hw, ptr noundef nonnull %call.i97.i, i8 noundef zeroext %448, i1 noundef zeroext true) #8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %rcu_read_lock.exit.i.if.end50.i_crit_edge
  %call.i98.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i98.i, label %if.end50.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i101.i

if.end50.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i101.i:                             ; preds = %if.end50.i
  %call1.i99.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call1.i99.i, 0
  br i1 %tobool.not.i100.i, label %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i103.i

land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i103.i:                            ; preds = %land.lhs.true.i101.i
  %.b4.i102.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102.i, label %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i104.i

land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i104.i:                                   ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.102, i32 noundef 724, ptr noundef nonnull @.str.104) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i104.i, %land.lhs.true2.i103.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i101.i.rcu_read_unlock.exit.i_crit_edge, %if.end50.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !326
  %449 = call i32 @llvm.read_register.i32(metadata !314) #8
  %and.i.i.i.i.i105.i = and i32 %449, -16384
  %450 = inttoptr i32 %and.i.i.i.i.i105.i to ptr
  %preempt_count.i.i.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %450, i32 0, i32 1
  %451 = ptrtoint ptr %preempt_count.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load volatile i32, ptr %preempt_count.i.i.i.i106.i, align 4
  %sub.i.i.i.i = add i32 %452, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i106.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %453 = ptrtoint ptr %ratr_state33.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %ratr_state33.i, align 1
  %455 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %454, ptr %pre_ratr_state.i, align 4
  br label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit

rtl8821ae_dm_refresh_rate_adaptive_mask.exit:     ; preds = %rcu_read_unlock.exit.i, %if.end30.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge, %land.lhs.true.i89.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.end5.i.rtl8821ae_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.then4.i, %if.then.i82
  %456 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %basic_rate.i) #8
  %link_state.i97 = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 9, i32 10
  %458 = ptrtoint ptr %link_state.i97 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %link_state.i97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %459)
  %cmp.i98 = icmp ult i32 %459, 2
  br i1 %cmp.i98, label %rtl8821ae_dm_refresh_rate_adaptive_mask.exit.if.end13.i_crit_edge, label %if.else.i101

rtl8821ae_dm_refresh_rate_adaptive_mask.exit.if.end13.i_crit_edge: ; preds = %rtl8821ae_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.else.i101:                                     ; preds = %rtl8821ae_dm_refresh_rate_adaptive_mask.exit
  %rssi_val_min.i99 = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 35, i32 27
  %460 = ptrtoint ptr %rssi_val_min.i99 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %rssi_val_min.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %461)
  %cmp2.i100 = icmp ult i8 %461, 25
  br i1 %cmp2.i100, label %if.end13.thread.i, label %if.else5.i

if.else5.i:                                       ; preds = %if.else.i101
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %461)
  %cmp8.i = icmp ugt i8 %461, 30
  %.55.i = select i1 %cmp8.i, i8 3, i8 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else5.i, %rtl8821ae_dm_refresh_rate_adaptive_mask.exit.if.end13.i_crit_edge
  %cmp28.i = phi i1 [ false, %rtl8821ae_dm_refresh_rate_adaptive_mask.exit.if.end13.i_crit_edge ], [ %cmp8.i, %if.else5.i ]
  %cur_stage.0.i = phi i8 [ 0, %rtl8821ae_dm_refresh_rate_adaptive_mask.exit.if.end13.i_crit_edge ], [ %.55.i, %if.else5.i ]
  %462 = load i8, ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cur_stage.0.i, i8 %462)
  %cmp16.not.i102 = icmp eq i8 %cur_stage.0.i, %462
  br i1 %cmp16.not.i102, label %if.end13.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge, label %if.else26.i

if.end13.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_basic_rate_mask.exit

if.end13.thread.i:                                ; preds = %if.else.i101
  %463 = load i8, ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %463)
  %cmp16.not59.i = icmp eq i8 %463, 1
  br i1 %cmp16.not59.i, label %if.end13.thread.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge, label %if.then22.i

if.end13.thread.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge: ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_basic_rate_mask.exit

if.then22.i:                                      ; preds = %if.end13.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %basic_rates.i = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 9, i32 37
  %464 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %basic_rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %465)
  %tobool.not.i103 = icmp eq i32 %465, 31
  %lnot.ext.i = zext i1 %tobool.not.i103 to i16
  %466 = ptrtoint ptr %basic_rate.i to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 %lnot.ext.i, ptr %basic_rate.i, align 2
  %cfg.i104 = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 32
  %467 = ptrtoint ptr %cfg.i104 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i104, align 8
  %ops.i105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 4
  %469 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %ops.i105, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %470, i32 0, i32 20
  %471 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %set_hw_reg.i, align 4
  call void %472(ptr noundef %hw, i8 noundef zeroext 2, ptr noundef nonnull %basic_rate.i) #8
  br label %rtl8821ae_dm_refresh_basic_rate_mask.exit

if.else26.i:                                      ; preds = %if.end13.i
  %.off.i = add i8 %462, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %or.cond.i106 = select i1 %cmp28.i, i1 %switch.i, i1 false
  br i1 %or.cond.i106, label %if.then36.i, label %if.else26.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge

if.else26.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge: ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_refresh_basic_rate_mask.exit

if.then36.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg37.i = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 32
  %473 = ptrtoint ptr %cfg37.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %cfg37.i, align 8
  %ops38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %474, i32 0, i32 4
  %475 = ptrtoint ptr %ops38.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %ops38.i, align 4
  %set_hw_reg39.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %476, i32 0, i32 20
  %477 = ptrtoint ptr %set_hw_reg39.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %set_hw_reg39.i, align 4
  %basic_rates40.i = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 9, i32 37
  call void %478(ptr noundef %hw, i8 noundef zeroext 2, ptr noundef %basic_rates40.i) #8
  br label %rtl8821ae_dm_refresh_basic_rate_mask.exit

rtl8821ae_dm_refresh_basic_rate_mask.exit:        ; preds = %if.then36.i, %if.else26.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge, %if.then22.i, %if.end13.thread.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge, %if.end13.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge
  %cur_stage.063.i = phi i8 [ 1, %if.end13.thread.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge ], [ 1, %if.then22.i ], [ %cur_stage.0.i, %if.then36.i ], [ %cur_stage.0.i, %if.else26.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge ], [ %cur_stage.0.i, %if.end13.i.rtl8821ae_dm_refresh_basic_rate_mask.exit_crit_edge ]
  store i8 %cur_stage.063.i, ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %basic_rate.i) #8
  %479 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %priv, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.rtl8821ae_dm_check_edca_turbo) #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 13, i32 11
  %481 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i108 = call i32 %482(ptr noundef %480, i32 noundef 1288) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %call.i.i108) #8
  %num_non_be_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 50, i32 5
  %483 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_load2_noabort(i32 %483)
  %484 = load i16, ptr %num_non_be_pkt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %484)
  %cmp.i109 = icmp ugt i16 %484, 256
  br i1 %cmp.i109, label %if.then.i110, label %rtl8821ae_dm_refresh_basic_rate_mask.exit.if.end.i115_crit_edge

rtl8821ae_dm_refresh_basic_rate_mask.exit.if.end.i115_crit_edge: ; preds = %rtl8821ae_dm_refresh_basic_rate_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i115

if.then.i110:                                     ; preds = %rtl8821ae_dm_refresh_basic_rate_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 8
  %485 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 1, ptr %is_any_nonbepkts.i, align 1
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i110, %rtl8821ae_dm_refresh_basic_rate_mask.exit.if.end.i115_crit_edge
  %486 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 0, ptr %num_non_be_pkt.i, align 2
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 9
  %stats.i111 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 24
  %487 = ptrtoint ptr %stats.i111 to i32
  call void @__asan_load8_noabort(i32 %487)
  %488 = load i64, ptr %stats.i111, align 8
  %last_tx_ok_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 82
  %489 = ptrtoint ptr %last_tx_ok_cnt.i to i32
  call void @__asan_load8_noabort(i32 %489)
  %490 = load i64, ptr %last_tx_ok_cnt.i, align 8
  %sub.i112 = sub i64 %488, %490
  %rxbytesunicast.i113 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 24, i32 3
  %491 = ptrtoint ptr %rxbytesunicast.i113 to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %rxbytesunicast.i113, align 8
  %last_rx_ok_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 83
  %493 = ptrtoint ptr %last_rx_ok_cnt.i to i32
  call void @__asan_load8_noabort(i32 %493)
  %494 = load i64, ptr %last_rx_ok_cnt.i, align 8
  %sub11.i = sub i64 %492, %494
  store i64 %488, ptr %last_tx_ok_cnt.i, align 8
  store i64 %492, ptr %last_rx_ok_cnt.i, align 8
  %vendor.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 9, i32 35
  %495 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %vendor.i, align 8
  %is_any_nonbepkts21.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 8
  %497 = ptrtoint ptr %is_any_nonbepkts21.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %is_any_nonbepkts21.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %498)
  %tobool.not.i114 = icmp eq i8 %498, 0
  br i1 %tobool.not.i114, label %land.rhs.i, label %if.end.i115.land.end.i_crit_edge

if.end.i115.land.end.i_crit_edge:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 11
  %499 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %disable_framebursting.i, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %500)
  %tobool23.not.i = icmp eq i8 %500, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i115.land.end.i_crit_edge
  %501 = phi i1 [ false, %if.end.i115.land.end.i_crit_edge ], [ %tobool23.not.i, %land.rhs.i ]
  %hw_type.i116 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 10, i32 10
  %502 = ptrtoint ptr %hw_type.i116 to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %hw_type.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %503)
  %cmp26.not.i = icmp ne i16 %503, 14
  %conv29.i = and i32 %496, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv29.i)
  %cmp30.i = icmp eq i32 %conv29.i, 6
  %or.cond.i117 = select i1 %cmp26.not.i, i1 %cmp30.i, i1 false
  br i1 %or.cond.i117, label %land.lhs.true.i120, label %land.end.i.if.end39.i_crit_edge

land.end.i.if.end39.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

land.lhs.true.i120:                               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mode.i118 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 9, i32 42
  %504 = ptrtoint ptr %mode.i118 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %mode.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %505)
  %cmp33.i = icmp eq i16 %505, 16
  %spec.select.i119 = select i1 %cmp33.i, i32 4105264, i32 6202411
  %spec.select132.i = select i1 %cmp33.i, i32 6202928, i32 6202411
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true.i120, %land.end.i.if.end39.i_crit_edge
  %edca_be_ul.0.i = phi i32 [ 6202411, %land.end.i.if.end39.i_crit_edge ], [ %spec.select.i119, %land.lhs.true.i120 ]
  %edca_be_dl.0.i = phi i32 [ 6202411, %land.end.i.if.end39.i_crit_edge ], [ %spec.select132.i, %land.lhs.true.i120 ]
  %506 = zext i8 %498 to i32
  %disable_framebursting45.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 11
  %507 = ptrtoint ptr %disable_framebursting45.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %disable_framebursting45.i, align 2, !range !324
  %509 = zext i8 %508 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef %506, i32 noundef %509) #8
  %conv49.i = zext i1 %501 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.108, i32 noundef %conv49.i, i32 noundef 0) #8
  br i1 %501, label %if.then53.i, label %if.else61.i

if.then53.i:                                      ; preds = %if.end39.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.109, i64 noundef %sub.i112) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.110, i64 noundef %sub11.i) #8
  %510 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %priv, align 8
  %mul3.i.i = shl i64 %sub.i112, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %mul3.i.i, i64 %sub11.i)
  %cmp4.i.i = icmp ult i64 %mul3.i.i, %sub11.i
  %..i.i = zext i1 %cmp4.i.i to i8
  %.str.115..str.114.i.i = select i1 %cmp4.i.i, ptr @.str.115, ptr @.str.114
  %512 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 %..i.i, ptr %is_cur_rdlstate.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %511, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull %.str.115..str.114.i.i) #8
  %513 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %is_cur_rdlstate.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %tobool57.not.i = icmp eq i8 %514, 0
  %cond59.i = select i1 %tobool57.not.i, i32 %edca_be_ul.0.i, i32 %edca_be_dl.0.i
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 13, i32 7
  %515 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %write32_async.i.i, align 4
  call void %516(ptr noundef %480, i32 noundef 1288, i32 noundef %cond59.i) #8
  %cfg.i.i121 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 32
  %517 = ptrtoint ptr %cfg.i.i121 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cfg.i.i121, align 8
  %write_readback.i.i122 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %518, i32 0, i32 1
  %519 = ptrtoint ptr %write_readback.i.i122 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %write_readback.i.i122, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %520)
  %tobool.not.i.i123 = icmp eq i8 %520, 0
  br i1 %tobool.not.i.i123, label %if.then53.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i124

if.then53.i.rtl_write_dword.exit.i_crit_edge:     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i.i124:                                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  %521 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i134.i = call i32 %522(ptr noundef %480, i32 noundef 1288) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i124, %if.then53.i.rtl_write_dword.exit.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.111, i32 noundef %cond59.i) #8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 7
  %523 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 1, ptr %current_turbo_edca.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %480, i64 noundef 2097152, i32 noundef 4, ptr noundef nonnull @.str.112, i32 noundef %edca_be_dl.0.i, i32 noundef %edca_be_ul.0.i, i32 noundef %cond59.i) #8
  br label %rtl8821ae_dm_check_edca_turbo.exit

if.else61.i:                                      ; preds = %if.end39.i
  %current_turbo_edca63.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 15, i32 7
  %524 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %current_turbo_edca63.i, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool64.not.i = icmp eq i8 %525, 0
  br i1 %tobool64.not.i, label %if.else61.i.if.end66.i_crit_edge, label %if.then65.i

if.else61.i.if.end66.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %526 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i125 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 32
  %527 = ptrtoint ptr %cfg.i125 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %cfg.i125, align 8
  %ops.i126 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %528, i32 0, i32 4
  %529 = ptrtoint ptr %ops.i126 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %ops.i126, align 4
  %set_hw_reg.i127 = getelementptr inbounds %struct.rtl_hal_ops, ptr %530, i32 0, i32 20
  %531 = ptrtoint ptr %set_hw_reg.i127 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %set_hw_reg.i127, align 4
  call void %532(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.else61.i.if.end66.i_crit_edge
  %533 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 0, ptr %current_turbo_edca63.i, align 2
  br label %rtl8821ae_dm_check_edca_turbo.exit

rtl8821ae_dm_check_edca_turbo.exit:               ; preds = %if.end66.i, %rtl_write_dword.exit.i
  %534 = ptrtoint ptr %is_any_nonbepkts21.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 0, ptr %is_any_nonbepkts21.i, align 1
  %535 = ptrtoint ptr %stats.i111 to i32
  call void @__asan_load8_noabort(i32 %535)
  %536 = load i64, ptr %stats.i111, align 8
  %537 = ptrtoint ptr %last_tx_ok_cnt.i to i32
  call void @__asan_store8_noabort(i32 %537)
  store i64 %536, ptr %last_tx_ok_cnt.i, align 8
  %538 = ptrtoint ptr %rxbytesunicast.i113 to i32
  call void @__asan_load8_noabort(i32 %538)
  %539 = load i64, ptr %rxbytesunicast.i113, align 8
  %540 = ptrtoint ptr %last_rx_ok_cnt.i to i32
  call void @__asan_store8_noabort(i32 %540)
  store i64 %539, ptr %last_rx_ok_cnt.i, align 8
  %541 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %priv, align 8
  %link_state.i129 = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 9, i32 10
  %543 = ptrtoint ptr %link_state.i129 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %link_state.i129, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %544)
  %cmp.i130 = icmp ult i32 %544, 2
  br i1 %cmp.i130, label %if.then.i132, label %if.else36.i

if.then.i132:                                     ; preds = %rtl8821ae_dm_check_edca_turbo.exit
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 51
  %545 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %atc_status.i, align 8, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %546)
  %cmp2.i131 = icmp eq i8 %546, 0
  br i1 %cmp2.i131, label %if.then4.i136, label %if.then.i132.if.end.i137_crit_edge

if.then.i132.if.end.i137_crit_edge:               ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i137

if.then4.i136:                                    ; preds = %if.then.i132
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i.i133 = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 32
  %547 = ptrtoint ptr %cfg.i.i133 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %cfg.i.i133, align 8
  %ops.i.i134 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %548, i32 0, i32 4
  %549 = ptrtoint ptr %ops.i.i134 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %ops.i.i134, align 4
  %set_bbreg.i.i135 = getelementptr inbounds %struct.rtl_hal_ops, ptr %550, i32 0, i32 46
  %551 = ptrtoint ptr %set_bbreg.i.i135 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %set_bbreg.i.i135, align 4
  call void %552(ptr noundef %hw, i32 noundef 2144, i32 noundef 16384, i32 noundef 1) #8
  %553 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 1, ptr %atc_status.i, align 8
  br label %if.end.i137

if.end.i137:                                      ; preds = %if.then4.i136, %if.then.i132.if.end.i137_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.116) #8
  %554 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %atc_status.i, align 8, !range !324
  %556 = zext i8 %555 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.117, i32 noundef %556) #8
  %crystal_cap9.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 56
  %557 = ptrtoint ptr %crystal_cap9.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %crystal_cap9.i, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 17, i32 58
  %559 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %crystalcap.i, align 2
  %conv10.i = zext i8 %560 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %558, i32 %conv10.i)
  %cmp11.not.i = icmp eq i32 %558, %conv10.i
  br i1 %cmp11.not.i, label %if.end.i137.if.end34.i_crit_edge, label %if.then13.i

if.end.i137.if.end34.i_crit_edge:                 ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then13.i:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #10
  %561 = ptrtoint ptr %crystal_cap9.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %conv10.i, ptr %crystal_cap9.i, align 8
  %562 = and i8 %560, 63
  %hw_type.i138 = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 10, i32 10
  %563 = ptrtoint ptr %hw_type.i138 to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %hw_type.i138, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %564)
  %cmp24.i139 = icmp eq i16 %564, 14
  %conv27.i = zext i8 %562 to i32
  %or.i140 = mul nuw nsw i32 %conv27.i, 65
  %565 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %priv, align 8
  %cfg.i267.i = getelementptr inbounds %struct.rtl_priv, ptr %566, i32 0, i32 32
  %567 = ptrtoint ptr %cfg.i267.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %cfg.i267.i, align 8
  %ops.i268.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %568, i32 0, i32 4
  %569 = ptrtoint ptr %ops.i268.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %ops.i268.i, align 4
  %set_bbreg.i269.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %570, i32 0, i32 46
  %571 = ptrtoint ptr %set_bbreg.i269.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %set_bbreg.i269.i, align 4
  %..i141 = select i1 %cmp24.i139, i32 2146959360, i32 16773120
  call void %572(ptr noundef %hw, i32 noundef 44, i32 noundef %..i141, i32 noundef %or.i140) #8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then13.i, %if.end.i137.if.end34.i_crit_edge
  %573 = ptrtoint ptr %crystal_cap9.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %crystal_cap9.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.118, i32 noundef %574) #8
  br label %rtl8821ae_dm_dynamic_atc_switch.exit

if.else36.i:                                      ; preds = %rtl8821ae_dm_check_edca_turbo.exit
  %packet_count41.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 58
  %575 = ptrtoint ptr %packet_count41.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %packet_count41.i, align 8
  %packet_count_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 59
  %577 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %packet_count_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %576, i32 %578)
  %cmp42.i = icmp eq i32 %576, %578
  br i1 %cmp42.i, label %if.then44.i, label %if.end45.i

if.then44.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.119) #8
  br label %rtl8821ae_dm_dynamic_atc_switch.exit

if.end45.i:                                       ; preds = %if.else36.i
  %arrayidx38.i = getelementptr %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 54, i32 1
  %579 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %arrayidx38.i, align 4
  %mul39.i = mul i32 %580, 3125
  %div40.i = sdiv i32 %mul39.i, 1280
  %cfo_tail.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 54
  %581 = ptrtoint ptr %cfo_tail.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %cfo_tail.i, align 4
  %mul.i142 = mul i32 %582, 3125
  %div.i = sdiv i32 %mul.i142, 1280
  %583 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %576, ptr %packet_count_pre.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.120, i32 noundef %576) #8
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 14, i32 4
  %584 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %cmp49.i = icmp eq i8 %585, 0
  %add.i143 = add nsw i32 %div.i, %div40.i
  %shr.i = ashr i32 %add.i143, 1
  %cfo_ave.0.i = select i1 %cmp49.i, i32 %div.i, i32 %shr.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.121, i32 noundef %div.i, i32 noundef %div40.i, i32 noundef %cfo_ave.0.i) #8
  %cfo_ave_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 55
  %586 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %cfo_ave_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %587, i32 %cfo_ave.0.i)
  %cmp54.not.i = icmp slt i32 %587, %cfo_ave.0.i
  %sub.i144 = sub i32 %587, %cfo_ave.0.i
  %sub58.i = sub i32 %cfo_ave.0.i, %587
  %cond.i = select i1 %cmp54.not.i, i32 %sub58.i, i32 %sub.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond.i)
  %cmp59.i = icmp sgt i32 %cond.i, 20
  br i1 %cmp59.i, label %land.lhs.true.i145, label %if.end45.i.if.else64.i_crit_edge

if.end45.i.if.else64.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64.i

land.lhs.true.i145:                               ; preds = %if.end45.i
  %large_cfo_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 52
  %588 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %large_cfo_hit.i, align 1, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %589)
  %tobool61.not.i = icmp eq i8 %589, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %land.lhs.true.i145.if.else64.i_crit_edge

land.lhs.true.i145.if.else64.i_crit_edge:         ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64.i

if.then62.i:                                      ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.122) #8
  %590 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 1, ptr %large_cfo_hit.i, align 1
  br label %rtl8821ae_dm_dynamic_atc_switch.exit

if.else64.i:                                      ; preds = %land.lhs.true.i145.if.else64.i_crit_edge, %if.end45.i.if.else64.i_crit_edge
  %large_cfo_hit65.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 52
  %591 = ptrtoint ptr %large_cfo_hit65.i to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 0, ptr %large_cfo_hit65.i, align 1
  %592 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 %cfo_ave.0.i, ptr %cfo_ave_pre.i, align 4
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 57
  %593 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %cfo_threshold.i, align 4
  %conv68.i = zext i8 %594 to i32
  %sub69.i = sub nsw i32 0, %conv68.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub69.i)
  %cmp70.not.i = icmp slt i32 %cfo_ave.0.i, %sub69.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv68.i)
  %cmp75.not.i = icmp sgt i32 %cfo_ave.0.i, %conv68.i
  %or.cond.i146 = or i1 %cmp70.not.i, %cmp75.not.i
  br i1 %or.cond.i146, label %if.else64.i.if.end93.i147_crit_edge, label %land.lhs.true77.i

if.else64.i.if.end93.i147_crit_edge:              ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i147

land.lhs.true77.i:                                ; preds = %if.else64.i
  %is_freeze.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 53
  %595 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %is_freeze.i, align 2, !range !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %596)
  %cmp80.i = icmp eq i8 %596, 0
  br i1 %cmp80.i, label %if.then82.i, label %land.lhs.true77.i.if.end93.i147_crit_edge

land.lhs.true77.i.if.end93.i147_crit_edge:        ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i147

if.then82.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %594)
  %cmp85.i = icmp eq i8 %594, 10
  br i1 %cmp85.i, label %if.then87.i, label %if.else90.i

if.then87.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #10
  %597 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 20, ptr %cfo_threshold.i, align 4
  %598 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 1, ptr %is_freeze.i, align 2
  br label %if.end93.i147

if.else90.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #10
  %599 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 10, ptr %cfo_threshold.i, align 4
  br label %if.end93.i147

if.end93.i147:                                    ; preds = %if.else90.i, %if.then87.i, %land.lhs.true77.i.if.end93.i147_crit_edge, %if.else64.i.if.end93.i147_crit_edge
  %600 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %cfo_threshold.i, align 4
  %conv95.i = zext i8 %601 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.123, i32 noundef %conv95.i) #8
  %602 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %cfo_threshold.i, align 4
  %conv97.i = zext i8 %603 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv97.i)
  %cmp98.i = icmp sgt i32 %cfo_ave.0.i, %conv97.i
  br i1 %cmp98.i, label %land.lhs.true100.i, label %if.end93.i147.if.else108.i_crit_edge

if.end93.i147.if.else108.i_crit_edge:             ; preds = %if.end93.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else108.i

land.lhs.true100.i:                               ; preds = %if.end93.i147
  %crystal_cap101.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 56
  %604 = ptrtoint ptr %crystal_cap101.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %crystal_cap101.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %605)
  %cmp102.i = icmp slt i32 %605, 63
  br i1 %cmp102.i, label %if.then104.i, label %land.lhs.true100.i.if.else108.i_crit_edge

land.lhs.true100.i.if.else108.i_crit_edge:        ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else108.i

if.then104.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub105.i = add nsw i32 %cfo_ave.0.i, -10
  %shr106.i = ashr i32 %sub105.i, 2
  %add107.i = add nsw i32 %shr106.i, 1
  br label %if.end125.i

if.else108.i:                                     ; preds = %land.lhs.true100.i.if.else108.i_crit_edge, %if.end93.i147.if.else108.i_crit_edge
  %sub112.i = sub nsw i32 0, %conv97.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub112.i)
  %cmp113.i148 = icmp slt i32 %cfo_ave.0.i, %sub112.i
  br i1 %cmp113.i148, label %land.lhs.true115.i, label %if.else108.i.if.end125.i_crit_edge

if.else108.i.if.end125.i_crit_edge:               ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

land.lhs.true115.i:                               ; preds = %if.else108.i
  %crystal_cap117.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 56
  %606 = ptrtoint ptr %crystal_cap117.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %crystal_cap117.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %607)
  %cmp118.i = icmp sgt i32 %607, 0
  br i1 %cmp118.i, label %if.then120.i, label %land.lhs.true115.i.if.end125.i_crit_edge

land.lhs.true115.i.if.end125.i_crit_edge:         ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then120.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #10
  %add121.i = add nsw i32 %cfo_ave.0.i, 10
  %shr122.i = ashr i32 %add121.i, 2
  %sub123.i = add nsw i32 %shr122.i, -1
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then120.i, %land.lhs.true115.i.if.end125.i_crit_edge, %if.else108.i.if.end125.i_crit_edge, %if.then104.i
  %adjust_xtal.0.i = phi i32 [ %add107.i, %if.then104.i ], [ %sub123.i, %if.then120.i ], [ 0, %land.lhs.true115.i.if.end125.i_crit_edge ], [ 0, %if.else108.i.if.end125.i_crit_edge ]
  %crystal_cap126.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 56
  %608 = ptrtoint ptr %crystal_cap126.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %crystal_cap126.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.124, i32 noundef %609, i32 noundef %adjust_xtal.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adjust_xtal.0.i)
  %cmp127.not.i = icmp eq i32 %adjust_xtal.0.i, 0
  br i1 %cmp127.not.i, label %if.end125.i.rtl8821ae_dm_dynamic_atc_switch.exit_crit_edge, label %if.then129.i

if.end125.i.rtl8821ae_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8821ae_dm_dynamic_atc_switch.exit

if.then129.i:                                     ; preds = %if.end125.i
  %is_freeze130.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 15, i32 53
  %610 = ptrtoint ptr %is_freeze130.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 0, ptr %is_freeze130.i, align 2
  %611 = ptrtoint ptr %crystal_cap126.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %crystal_cap126.i, align 8
  %add132.i = add i32 %612, %adjust_xtal.0.i
  store i32 %add132.i, ptr %crystal_cap126.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add132.i)
  %cmp134.i = icmp sgt i32 %add132.i, 63
  br i1 %cmp134.i, label %if.then129.i.if.end145.sink.split.i_crit_edge, label %if.else138.i

if.then129.i.if.end145.sink.split.i_crit_edge:    ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.sink.split.i

if.else138.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add132.i)
  %cmp140.i = icmp slt i32 %add132.i, 0
  br i1 %cmp140.i, label %if.else138.i.if.end145.sink.split.i_crit_edge, label %if.else138.i.if.end145.i_crit_edge

if.else138.i.if.end145.i_crit_edge:               ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.i

if.else138.i.if.end145.sink.split.i_crit_edge:    ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.sink.split.i

if.end145.sink.split.i:                           ; preds = %if.else138.i.if.end145.sink.split.i_crit_edge, %if.then129.i.if.end145.sink.split.i_crit_edge
  %.sink282.i = phi i32 [ 63, %if.then129.i.if.end145.sink.split.i_crit_edge ], [ 0, %if.else138.i.if.end145.sink.split.i_crit_edge ]
  %613 = ptrtoint ptr %crystal_cap126.i to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 %.sink282.i, ptr %crystal_cap126.i, align 8
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end145.sink.split.i, %if.else138.i.if.end145.i_crit_edge
  %614 = ptrtoint ptr %crystal_cap126.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %crystal_cap126.i, align 8
  %conv151.i = and i32 %615, 63
  %hw_type153.i = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 10, i32 10
  %616 = ptrtoint ptr %hw_type153.i to i32
  call void @__asan_load2_noabort(i32 %616)
  %617 = load i16, ptr %hw_type153.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %617)
  %cmp155.i = icmp eq i16 %617, 14
  %.288.i = select i1 %cmp155.i, i32 2146959360, i32 16773120
  %or166.i = mul nuw nsw i32 %conv151.i, 65
  %618 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %priv, align 8
  %cfg.i279.i = getelementptr inbounds %struct.rtl_priv, ptr %619, i32 0, i32 32
  %620 = ptrtoint ptr %cfg.i279.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %cfg.i279.i, align 8
  %ops.i280.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %621, i32 0, i32 4
  %622 = ptrtoint ptr %ops.i280.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %ops.i280.i, align 4
  %set_bbreg.i281.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %623, i32 0, i32 46
  %624 = ptrtoint ptr %set_bbreg.i281.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %set_bbreg.i281.i, align 4
  call void %625(ptr noundef %hw, i32 noundef 44, i32 noundef %.288.i, i32 noundef %or166.i) #8
  %626 = ptrtoint ptr %crystal_cap126.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %crystal_cap126.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %542, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef %627) #8
  br label %rtl8821ae_dm_dynamic_atc_switch.exit

rtl8821ae_dm_dynamic_atc_switch.exit:             ; preds = %if.end145.i, %if.end125.i.rtl8821ae_dm_dynamic_atc_switch.exit_crit_edge, %if.then62.i, %if.then44.i, %if.end34.i
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %628 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %628)
  %629 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %629)
  %cmp13 = icmp eq i16 %629, 14
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %rtl8821ae_dm_dynamic_atc_switch.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rtl8812ae_dm_check_txpower_tracking_thermalmeter(ptr noundef %hw)
  br label %if.end16

if.else:                                          ; preds = %rtl8821ae_dm_dynamic_atc_switch.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtl8821ae_dm_check_txpower_tracking_thermalmeter(ptr noundef %hw)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %630 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %priv, align 8
  %link_state.i150 = getelementptr inbounds %struct.rtl_priv, ptr %631, i32 0, i32 9, i32 10
  %632 = ptrtoint ptr %link_state.i150 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %link_state.i150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %633)
  %cmp.i151 = icmp ugt i32 %633, 1
  %linked_interval.i = getelementptr inbounds %struct.rtl_priv, ptr %631, i32 0, i32 15, i32 81
  br i1 %cmp.i151, label %if.then.i152, label %if.else19.i

if.then.i152:                                     ; preds = %if.end16
  %634 = ptrtoint ptr %linked_interval.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %linked_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %635)
  %cmp4.i = icmp ult i8 %635, 3
  br i1 %cmp4.i, label %if.end.i154, label %if.then.i152.if.end17_crit_edge

if.then.i152.if.end17_crit_edge:                  ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end.i154:                                      ; preds = %if.then.i152
  %inc.i153 = add nuw nsw i8 %635, 1
  %636 = ptrtoint ptr %linked_interval.i to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %inc.i153, ptr %linked_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc.i153)
  %cmp10.i = icmp eq i8 %inc.i153, 2
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i154.if.end17_crit_edge

if.end.i154.if.end17_crit_edge:                   ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12.i:                                      ; preds = %if.end.i154
  %hw_type.i155 = getelementptr inbounds %struct.rtl_priv, ptr %631, i32 0, i32 10, i32 10
  %637 = ptrtoint ptr %hw_type.i155 to i32
  call void @__asan_load2_noabort(i32 %637)
  %638 = load i16, ptr %hw_type.i155, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %638)
  %cmp14.i = icmp eq i16 %638, 14
  br i1 %cmp14.i, label %if.then16.i156, label %if.else.i157

if.then16.i156:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtl8812ae_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  br label %if.end17

if.else.i157:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rtl8821ae_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  br label %if.end17

if.else19.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %639 = ptrtoint ptr %linked_interval.i to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 0, ptr %linked_interval.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else19.i, %if.else.i157, %if.then16.i156, %if.end.i154.if.end17_crit_edge, %if.then.i152.if.end17_crit_edge, %land.lhs.true10.if.end17_crit_edge, %land.lhs.true8.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  %num_qry_beacon_pkt = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 50, i32 4
  %640 = ptrtoint ptr %num_qry_beacon_pkt to i32
  call void @__asan_store2_noabort(i32 %640)
  store i16 0, ptr %num_qry_beacon_pkt, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 3, ptr noundef nonnull @.str.63) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8812ae_dm_check_txpower_tracking_thermalmeter(ptr noundef %hw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tm_trigger = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 27
  %2 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tm_trigger, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %9(ptr noundef %hw, i32 noundef 0, i32 noundef 66, i32 noundef 196608, i32 noundef 3) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.126) #8
  %10 = ptrtoint ptr %tm_trigger to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tm_trigger, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.127) #8
  tail call void @rtl8812ae_dm_txpower_tracking_callback_thermalmeter(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_dm_set_tx_ant_by_tx_info(ptr nocapture noundef readonly %hw, ptr nocapture noundef %pdesc, i32 noundef %mac_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %2 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %3)
  %cmp.not = icmp eq i16 %3, 14
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %antenna_div_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %4 = ptrtoint ptr %antenna_div_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %antenna_div_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  br i1 %cmp6, label %set_tx_desc_tx_ant.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

set_tx_desc_tx_ant.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i32, ptr %pdesc, i32 5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 72, i32 9, i32 %mac_id
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %and.i.i = and i32 %7, -16
  %10 = and i8 %9, 15
  %11 = zext i8 %10 to i32
  %or.i.i = or i32 %and.i.i, %11
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_tx_desc_tx_ant.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_tx_swing_8812A(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8821ae_dm_find_minimum_rssi(ptr nocapture noundef readonly %hw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %dm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %min_undec_pwdb_for_dm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 26
  %6 = ptrtoint ptr %min_undec_pwdb_for_dm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %min_undec_pwdb_for_dm, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8821ae_dm_find_minimum_rssi.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8821ae_dm_find_minimum_rssi, %if.then4)) #8
          to label %if.end5 [label %if.then4], !srcloc !327

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8821ae_dm_find_minimum_rssi.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.73) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %7 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp ugt i32 %8, 1
  br i1 %cmp7, label %if.then8, label %if.else24

if.then8:                                         ; preds = %if.end5
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %9 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opmode, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %10, label %if.else [
    i32 3, label %if.then8.if.then12_crit_edge
    i32 1, label %if.then8.if.then12_crit_edge54
  ]

if.then8.if.then12_crit_edge54:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then8.if.then12_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.then8.if.then12_crit_edge, %if.then8.if.then12_crit_edge54
  %dm13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %dm13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dm13, align 8
  %conv = trunc i32 %13 to i8
  %min_undec_pwdb_for_dm15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 26
  %14 = ptrtoint ptr %min_undec_pwdb_for_dm15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %min_undec_pwdb_for_dm15, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %13) #8
  br label %if.end31

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %15 = ptrtoint ptr %undec_sm_pwdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %undec_sm_pwdb, align 8
  %conv19 = trunc i32 %16 to i8
  %min_undec_pwdb_for_dm20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 26
  %17 = ptrtoint ptr %min_undec_pwdb_for_dm20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19, ptr %min_undec_pwdb_for_dm20, align 1
  %conv22 = and i32 %16, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef %conv22) #8
  br label %if.end31

if.else24:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dm25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %dm25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dm25, align 8
  %conv27 = trunc i32 %19 to i8
  %min_undec_pwdb_for_dm28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 26
  %20 = ptrtoint ptr %min_undec_pwdb_for_dm28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv27, ptr %min_undec_pwdb_for_dm28, align 1
  %conv30 = and i32 %19, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %conv30) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.else, %if.then12
  %min_undec_pwdb_for_dm32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 26
  %21 = ptrtoint ptr %min_undec_pwdb_for_dm32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %min_undec_pwdb_for_dm32, align 1
  %conv33 = zext i8 %22 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.77, i32 noundef %conv33) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8812ae_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !260, !261, !263, !265, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312}
!llvm.named.register.sp = !{!314}
!llvm.module.flags = !{!315, !316, !317, !318, !319, !320, !321, !322}
!llvm.ident = !{!323}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 983, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1147, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1189, i32 2}
!6 = !{ptr @__func__.rtl8812ae_dm_txpwr_track_set_pwr, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1261, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1278, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1294, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1303, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1335, i32 5}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1354, i32 5}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1361, i32 5}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1374, i32 6}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1397, i32 5}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1414, i32 5}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1421, i32 5}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1435, i32 6}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1476, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1485, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1496, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1516, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1535, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1543, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1566, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1578, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1582, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1594, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1598, i32 4}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1610, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1614, i32 4}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1627, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1633, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1649, i32 4}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1668, i32 4}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1673, i32 4}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1687, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1694, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1704, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1708, i32 3}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1729, i32 4}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1736, i32 4}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1743, i32 4}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1750, i32 4}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1759, i32 4}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1763, i32 4}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1769, i32 4}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1785, i32 3}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1796, i32 2}
!93 = !{ptr @__func__.rtl8812ae_dm_txpower_tracking_callback_thermalmeter, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__func__.rtl8821ae_dm_txpwr_track_set_pwr, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1867, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1932, i32 3}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1963, i32 5}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 1989, i32 5}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2003, i32 6}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2044, i32 2}
!106 = !{ptr @__func__.rtl8821ae_dm_txpower_tracking_callback_thermalmeter, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2165, i32 4}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2181, i32 4}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2219, i32 3}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2226, i32 3}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2235, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2240, i32 3}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2261, i32 4}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2281, i32 4}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2291, i32 4}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2302, i32 3}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2334, i32 3}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2339, i32 3}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2783, i32 2}
!133 = !{ptr @rtl8821ae_txscaling_table, !134, !"rtl8821ae_txscaling_table", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 56, i32 18}
!135 = !{ptr @txscaling_tbl, !136, !"txscaling_tbl", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 16, i32 18}
!137 = !{ptr @rtl8812ae_delta_swing_table_idx_24gccka_p, !138, !"rtl8812ae_delta_swing_table_idx_24gccka_p", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 154, i32 17}
!139 = !{ptr @rtl8812ae_delta_swing_table_idx_24gccka_n, !140, !"rtl8812ae_delta_swing_table_idx_24gccka_n", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 150, i32 17}
!141 = !{ptr @rtl8812ae_delta_swing_table_idx_24gcckb_p, !142, !"rtl8812ae_delta_swing_table_idx_24gcckb_p", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 146, i32 17}
!143 = !{ptr @rtl8812ae_delta_swing_table_idx_24gcckb_n, !144, !"rtl8812ae_delta_swing_table_idx_24gcckb_n", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 142, i32 17}
!145 = !{ptr @rtl8812ae_delta_swing_table_idx_24ga_p, !146, !"rtl8812ae_delta_swing_table_idx_24ga_p", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 138, i32 17}
!147 = !{ptr @rtl8812ae_delta_swing_table_idx_24ga_n, !148, !"rtl8812ae_delta_swing_table_idx_24ga_n", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 134, i32 17}
!149 = !{ptr @rtl8812ae_delta_swing_table_idx_24gb_p, !150, !"rtl8812ae_delta_swing_table_idx_24gb_p", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 130, i32 17}
!151 = !{ptr @rtl8812ae_delta_swing_table_idx_24gb_n, !152, !"rtl8812ae_delta_swing_table_idx_24gb_n", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 126, i32 17}
!153 = !{ptr @rtl8812ae_delta_swing_table_idx_5ga_p, !154, !"rtl8812ae_delta_swing_table_idx_5ga_p", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 185, i32 17}
!155 = !{ptr @rtl8812ae_delta_swing_table_idx_5ga_n, !156, !"rtl8812ae_delta_swing_table_idx_5ga_n", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 176, i32 17}
!157 = !{ptr @rtl8812ae_delta_swing_table_idx_5gb_p, !158, !"rtl8812ae_delta_swing_table_idx_5gb_p", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 167, i32 17}
!159 = !{ptr @rtl8812ae_delta_swing_table_idx_5gb_n, !160, !"rtl8812ae_delta_swing_table_idx_5gb_n", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 158, i32 17}
!161 = !{ptr @rtl8818e_delta_swing_table_idx_24gb_p, !162, !"rtl8818e_delta_swing_table_idx_24gb_p", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 118, i32 17}
!163 = !{ptr @rtl8818e_delta_swing_table_idx_24gb_n, !164, !"rtl8818e_delta_swing_table_idx_24gb_n", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 122, i32 17}
!165 = !{ptr @rtl8821ae_delta_swing_table_idx_24gccka_p, !166, !"rtl8821ae_delta_swing_table_idx_24gccka_p", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 206, i32 17}
!167 = !{ptr @rtl8821ae_delta_swing_table_idx_24gccka_n, !168, !"rtl8821ae_delta_swing_table_idx_24gccka_n", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 202, i32 17}
!169 = !{ptr @rtl8821ae_delta_swing_table_idx_24ga_p, !170, !"rtl8821ae_delta_swing_table_idx_24ga_p", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 198, i32 17}
!171 = !{ptr @rtl8821ae_delta_swing_table_idx_24ga_n, !172, !"rtl8821ae_delta_swing_table_idx_24ga_n", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 194, i32 17}
!173 = !{ptr @rtl8821ae_delta_swing_table_idx_5ga_p, !174, !"rtl8821ae_delta_swing_table_idx_5ga_p", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 219, i32 17}
!175 = !{ptr @rtl8821ae_delta_swing_table_idx_5ga_n, !176, !"rtl8821ae_delta_swing_table_idx_5ga_n", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 210, i32 17}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 882, i32 2}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 884, i32 2}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 886, i32 2}
!183 = distinct !{null, !184, !"last_txokcnt", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 507, i32 13}
!185 = !{ptr @rtl8821ae_dm_check_rssi_monitor.last_rxokcnt, !186, !"last_rxokcnt", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 507, i32 31}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 538, i32 4}
!189 = !{ptr @.str.68, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 548, i32 4}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 433, i32 3}
!193 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rtl8821ae_dm_find_minimum_rssi.__UNIQUE_ID_ddebug356, !192, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!197 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 440, i32 4}
!200 = !{ptr @.str.75, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 446, i32 4}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 453, i32 3}
!204 = !{ptr @.str.77, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 457, i32 2}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 632, i32 3}
!208 = !{ptr @.str.79, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 669, i32 3}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 685, i32 4}
!212 = !{ptr @.str.81, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 694, i32 3}
!214 = !{ptr @.str.82, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 698, i32 3}
!216 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 730, i32 6}
!218 = !{ptr @.str.84, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 736, i32 6}
!220 = !{ptr @.str.85, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 744, i32 2}
!222 = !{ptr @.str.86, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 756, i32 3}
!224 = !{ptr @.str.87, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 763, i32 4}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 776, i32 5}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 781, i32 3}
!230 = !{ptr @.str.90, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 785, i32 4}
!232 = !{ptr @.str.91, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 801, i32 4}
!234 = !{ptr @.str.92, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 804, i32 2}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 813, i32 2}
!238 = !{ptr @.str.94, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 816, i32 2}
!240 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 818, i32 2}
!242 = !{ptr @.str.96, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2608, i32 2}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2359, i32 3}
!246 = !{ptr @.str.98, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2365, i32 3}
!248 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2394, i32 4}
!250 = !{ptr @.str.100, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2397, i32 4}
!252 = !{ptr @.str.101, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2399, i32 4}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!256 = !{ptr @.str.102, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!258 = distinct !{null, !259, !"__warned", i1 false, i1 false}
!259 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!260 = !{ptr @.str.104, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @rtl8821ae_dm_refresh_basic_rate_mask.stage, !262, !"stage", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2420, i32 12}
!263 = !{ptr @.str.105, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2494, i32 2}
!265 = !{ptr @__func__.rtl8821ae_dm_check_edca_turbo, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.106, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2496, i32 2}
!268 = !{ptr @.str.107, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2530, i32 2}
!270 = !{ptr @.str.108, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2535, i32 2}
!272 = !{ptr @.str.109, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2540, i32 3}
!274 = !{ptr @.str.110, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2542, i32 3}
!276 = !{ptr @.str.111, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2555, i32 3}
!278 = !{ptr @.str.112, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2560, i32 3}
!280 = distinct !{null, !281, !"edca_setting_dl", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 96, i32 18}
!282 = distinct !{null, !283, !"edca_setting_ul", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 107, i32 18}
!284 = distinct !{null, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2456, i32 4}
!286 = !{ptr @.str.114, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2460, i32 4}
!288 = !{ptr @.str.115, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2466, i32 4}
!290 = !{ptr @.str.116, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2628, i32 3}
!292 = !{ptr @.str.117, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2629, i32 3}
!294 = !{ptr @.str.118, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2645, i32 3}
!296 = !{ptr @.str.119, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2655, i32 4}
!298 = !{ptr @.str.120, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2661, i32 3}
!300 = !{ptr @.str.121, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2671, i32 3}
!302 = !{ptr @.str.122, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2681, i32 4}
!304 = !{ptr @.str.123, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2703, i32 3}
!306 = !{ptr @.str.124, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2713, i32 3}
!308 = !{ptr @.str.125, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 2737, i32 4}
!310 = !{ptr @.str.126, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 898, i32 3}
!312 = !{ptr @.str.127, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/dm.c", i32 903, i32 2}
!314 = !{!"sp"}
!315 = !{i32 1, !"wchar_size", i32 2}
!316 = !{i32 1, !"min_enum_size", i32 4}
!317 = !{i32 8, !"branch-target-enforcement", i32 0}
!318 = !{i32 8, !"sign-return-address", i32 0}
!319 = !{i32 8, !"sign-return-address-all", i32 0}
!320 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!321 = !{i32 7, !"uwtable", i32 1}
!322 = !{i32 7, !"frame-pointer", i32 2}
!323 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!324 = !{i8 0, i8 2}
!325 = !{i64 2149408717}
!326 = !{i64 2149408983}
!327 = !{i64 2148394596, i64 2148394601, i64 2148394614, i64 2148394658, i64 2148394692, i64 2148394713}
