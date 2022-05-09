; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[BT][DM], Before enter IPS, turn off all Coexist DM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], FW write 0x19=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@hal_coex_8723 = internal global { %struct.bt_coexist_8723, [40 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], the same coexist setting, return!!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], UPDATE TO NEW COEX SETTING!!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], original/new bAllOff=0x%x/ 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], original/new agc_table_en=0x%x/ 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], original/new adc_back_off_on=0x%x/ 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], original/new b2_ant_hid_en=0x%x/ 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], original/new bLowPenaltyRateAdaptive=0x%x/ 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], original/new bRfRxLpfShrink=0x%x/ 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], original/new bRejectAggrePkt=0x%x/ 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], original/new tdma_on=0x%x/ 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], original/new tdmaAnt=0x%x/ 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], original/new tdmaNav=0x%x/ 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], original/new tdma_dac_swing=0x%x/ 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], original/new fw_dac_swing_lvl=0x%x/ 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], original/new bTraTdmaOn=0x%x/ 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], original/new traTdmaAnt=0x%x/ 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], original/new traTdmaNav=0x%x/ 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new bPsTdmaOn=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], original/new psTdmaByte[i]=0x%x/ 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], original/new bIgnoreWlanAct=0x%x/ 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], original/new bPtaOn=0x%x/ 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new val_0x6c0=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new val_0x6c8=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new val_0x6cc=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], original/new sw_dac_swing_on=0x%x/ 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], original/new sw_dac_swing_lvl=0x%x/ 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new wlanActHi=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], original/new wlanActLo=0x%x/ 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], original/new btRetryIndex=0x%x/ 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], set to ignore wlanAct for BT OP!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], disable all coexist mechanism !!\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], 2 Ant mechanism\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], 1 Ant mechanism\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], Coexist State[bitMap] change from 0x%x%8x to 0x%x%8x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&&&&&&: REG_C2HEVT_MSG_NORMAL is 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cmd_id: %d, cmd_len: %d, cmd_seq: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"malloc cmd buf failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BT info Byte[0] (ID) is 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BT info Byte[1] (Seq) is 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BT info Byte[2] (Data)= 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT Ignore Wlan_Act !!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT don't ignore Wlan_Act !!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, write 0x25=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Tx rate adaptive, set low penalty!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tx rate adaptive, set normal!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Shrink RF Rx LPF corner!!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Resume RF Rx LPF corner!!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], Set BT Retry Index=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], write 0x23=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Set Dac Swing Level=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], write 0x29=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], Set WLAN_ACT Hi:Lo=0x%x/0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], write 0x22=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], write 0x11=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set coex table, set 0x6c0=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set coex table, set 0x6c8=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set coex table, set 0x6cc=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PTA mode on\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PTA mode off\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], not 8723B cut, don't set Traditional TDMA!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], turn TTDMA mode ON!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], TTDMA_1ANT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[BTCoex], TTDMA_2ANT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], Unknown Ant\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], TTDMA_NAV_OFF\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BTCoex], TTDMA_NAV_ON\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], turn TTDMA mode OFF!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[BTCoex], FW Traditional TDMA, write 0x33=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[BTCoex], set BT PTA update manager to trigger update!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], turn TDMA mode ON!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], TDMA_1ANT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[BTCoex], TDMA_2ANT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BTCoex], TDMA_NAV_OFF\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], TDMA_NAV_ON\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], TDMA_DAC_SWING_OFF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], TDMA_DAC_SWING_ON\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], set BT PTA update manager to no update!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], turn TDMA mode OFF!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], FW2AntTDMA, write 0x26=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], FW2AntTDMA, write 0x14=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], FW write 0x3a(4bytes)=0x%x%8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], Set BT HID information=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], write 0x24=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], turn 2-Ant+HID mode %s, DACSwing:%s, write 0x15=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ON!!\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OFF!!\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], SwDacSwing = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], SwDacSwing Off!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], decrease Bt Power : %s, write 0x21=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Yes!!\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"No!!\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Query Bt information, write 0x38=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"High Priority Tx/Rx (reg 0x%x)=%x(%d)/%x(%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Low Priority Tx/Rx (reg 0x%x)=%x(%d)/%x(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"8723A BT is enabled !!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"8723A bt all counters=0, %d times!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"8723A BT is disabled !!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"8723A BT is from %s to %s!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex] Get bt info by fw!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex] c2h for bt_info not rcvd yet!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Action 2-Ant common.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], BTInfo: bHid|bSCOBusy|bSCOeSCO\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BTInfo: bFTP|bA2DP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], BTInfo: undefined case!!!!\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.110 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[BTCoex], BT Inquiry/page is started at time : 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[BTCoex], BT Inquiry/page started time : 0x%x, cur_time : 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT Inquiry/page >= 10sec!!!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Wifi idle + Bt idle, bt coex mechanism always off!!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wifi non-idle + Bt disabled/idle!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bt non-idle!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wifi connection exist\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No Wifi connection!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Need to decrease bt power\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], BT TxRx Counters = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HT40\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], BT TxRx Counters >= 1400\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], BT TxRx Counters >= 1200 && < 1400\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], BT TxRx Counters < 1200\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HT20 or Legacy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Wifi rssi high\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Wifi rssi low\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wifi rssi-1 high\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT TxRx Counters>= 1200 && < 1400\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wifi rssi-1 low\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[BTCoex], BT btInqPageStartTime = 0x%x, btTxRxCntLvl = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], Set BT inquiry / page scan 0x3a setting\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT TxRx Counters at level 3\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT TxRx Counters at level 2\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT TxRx Counters at level 1\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[BTCoex], BT TxRx Counters at level 0\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[DM][BT], Coexist state do not change!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[DM][BT], Coexist state changed!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%2x]\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%2x, \00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BT info bt_info (Data)= 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTC2H], BTInfo: bConnect=true\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTC2H], BTInfo: bConnect=false\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 60138, i64 65535]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 23, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 71, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"hal_coex_8723\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 12, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 650, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 654, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 656, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 659, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 662, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 666, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 669, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 673, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 677, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 681, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 684, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 687, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 690, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 693, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 698, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 701, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 704, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 707, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 711, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 716, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 722, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 725, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 728, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 731, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 734, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 738, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 742, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 745, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 748, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 760, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 767, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1624, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1628, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1634, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1701, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1706, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1718, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1737, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1740, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1743, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 490, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 495, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 499, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 208, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 213, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 185, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 192, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 601, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 603, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 567, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 569, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 618, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 621, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 623, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 150, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 154, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 158, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 168, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 173, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 517, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 523, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 527, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 531, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 534, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 539, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 542, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 549, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 553, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 428, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 432, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 436, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 440, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 448, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 451, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 457, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 460, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 466, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 468, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 472, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 477, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 102, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 586, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 588, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 408, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 363, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 369, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 388, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1517, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1552, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1555, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1588, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1592, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1597, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1603, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1410, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1416, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1430, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1442, i32 5 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1453, i32 5 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1463, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1370, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1375, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1383, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 283, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 289, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 311, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 314, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 318, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 115, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 983, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 987, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1001, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1009, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1017, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1026, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1041, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1047, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1058, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1072, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1089, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1124, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1129, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 941, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 947, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 953, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 959, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 134, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 138, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1662, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1665, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1669, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1681, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [60 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1686, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @.str, ptr @.str.1, ptr @hal_coex_8723, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hal_coex_8723 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_turn_off_bt_coexist_before_enter_lps(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bt_coexistence = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %2 = ptrtoint ptr %bt_coexistence to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_coexistence, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %inactiveps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %4 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %inactiveps, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str) #6
  %cstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %6 = call ptr @memset(ptr %cstate, i32 0, i32 16)
  tail call void @rtl8723e_btdm_coex_all_off(ptr noundef %hw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_btdm_coex_all_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_8723e_bt_wifi_media_status_notify(ptr noundef %hw, i1 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter) #6
  %2 = getelementptr inbounds i8, ptr %h2c_parameter, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %bt_coexistence = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %4 = ptrtoint ptr %bt_coexistence to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bt_coexistence, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %. = zext i1 %mstatus to i8
  %6 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %h2c_parameter, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %7 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.end.if.then7_crit_edge, label %lor.lhs.false.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false.i:                                  ; preds = %if.end
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4.i = icmp ugt i32 %10, 1
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then7_crit_edge, label %lor.lhs.false.i.if.end9_crit_edge

lor.lhs.false.i.if.end9_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

lor.lhs.false.i.if.then7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %11 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_channel, align 1
  %arrayidx8 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false.i.if.end9_crit_edge
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %14 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_chan_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp11 = icmp eq i8 %15, 1
  %spec.select = select i1 %cmp11, i8 48, i8 32
  %16 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 1
  %shl = select i1 %mstatus, i32 65536, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl22, %shl
  %conv24 = zext i8 %spec.select to i32
  %or25 = or i32 %or, %conv24
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %or25) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 25, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_set_bt_dm(ptr noundef %hw, ptr noundef readonly %btdm) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i466 = alloca [1 x i8], align 1
  %h2c_parameter.i460 = alloca [5 x i8], align 1
  %h2c_parameter.i453 = alloca [1 x i8], align 1
  %h2c_parameter.i450 = alloca [1 x i8], align 1
  %h2c_parameter.i447 = alloca [1 x i8], align 1
  %h2c_parameter.i443 = alloca [1 x i8], align 1
  %h2c_parameter.i439 = alloca [1 x i8], align 1
  %h2c_parameter.i437 = alloca [5 x i8], align 1
  %h2c_parameter.i431 = alloca [1 x i8], align 1
  %h2c_parameter.i429 = alloca [1 x i8], align 1
  %h2c_parameter1.i = alloca [1 x i8], align 1
  %h2c_parameter_hi.i = alloca [1 x i8], align 1
  %h2c_parameter_lo.i = alloca [1 x i8], align 1
  %h2c_parameter.i416 = alloca [1 x i8], align 1
  %h2c_parameter.i414 = alloca [1 x i8], align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  %fw_current_inpsmode = alloca i8, align 1
  %fw_ps_awake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inpsmode) #6
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_ps_awake) #6
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
  call void %9(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inpsmode) #6
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops2, align 4
  %get_hw_reg3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg3, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 86, ptr noundef nonnull %fw_ps_awake) #6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(60) getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11), ptr noundef dereferenceable(60) %btdm, i32 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.3) #6
  %16 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11), align 4, !range !289
  %17 = zext i8 %16 to i32
  %18 = ptrtoint ptr %btdm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btdm, align 4, !range !289
  %20 = zext i8 %19 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %20) #6
  %21 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 1), align 1, !range !289
  %22 = zext i8 %21 to i32
  %agc_table_en9 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 1
  %23 = ptrtoint ptr %agc_table_en9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %agc_table_en9, align 1, !range !289
  %25 = zext i8 %24 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef %25) #6
  %26 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 2), align 2, !range !289
  %27 = zext i8 %26 to i32
  %adc_back_off_on14 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 2
  %28 = ptrtoint ptr %adc_back_off_on14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %adc_back_off_on14, align 2, !range !289
  %30 = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %27, i32 noundef %30) #6
  %31 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 3), align 1, !range !289
  %32 = zext i8 %31 to i32
  %b2_ant_hid_en19 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 3
  %33 = ptrtoint ptr %b2_ant_hid_en19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %b2_ant_hid_en19, align 1, !range !289
  %35 = zext i8 %34 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %32, i32 noundef %35) #6
  %36 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 4), align 4, !range !289
  %37 = zext i8 %36 to i32
  %low_penalty_rate_adaptive24 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 4
  %38 = ptrtoint ptr %low_penalty_rate_adaptive24 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %low_penalty_rate_adaptive24, align 4, !range !289
  %40 = zext i8 %39 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %37, i32 noundef %40) #6
  %41 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 5), align 1, !range !289
  %42 = zext i8 %41 to i32
  %rf_rx_lpf_shrink29 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 5
  %43 = ptrtoint ptr %rf_rx_lpf_shrink29 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rf_rx_lpf_shrink29, align 1, !range !289
  %45 = zext i8 %44 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %42, i32 noundef %45) #6
  %46 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 6), align 2, !range !289
  %47 = zext i8 %46 to i32
  %reject_aggre_pkt34 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 6
  %48 = ptrtoint ptr %reject_aggre_pkt34 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reject_aggre_pkt34, align 2, !range !289
  %50 = zext i8 %49 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.10, i32 noundef %47, i32 noundef %50) #6
  %51 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 10), align 2, !range !289
  %52 = zext i8 %51 to i32
  %tdma_on39 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 10
  %53 = ptrtoint ptr %tdma_on39 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tdma_on39, align 2, !range !289
  %55 = zext i8 %54 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef %52, i32 noundef %55) #6
  %56 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 11), align 1
  %conv42 = zext i8 %56 to i32
  %tdma_ant43 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 11
  %57 = ptrtoint ptr %tdma_ant43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tdma_ant43, align 1
  %conv44 = zext i8 %58 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %conv42, i32 noundef %conv44) #6
  %59 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 12), align 4
  %conv45 = zext i8 %59 to i32
  %tdma_nav46 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 12
  %60 = ptrtoint ptr %tdma_nav46 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tdma_nav46, align 4
  %conv47 = zext i8 %61 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %conv45, i32 noundef %conv47) #6
  %62 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 13), align 1
  %conv48 = zext i8 %62 to i32
  %tdma_dac_swing49 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 13
  %63 = ptrtoint ptr %tdma_dac_swing49 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tdma_dac_swing49, align 1
  %conv50 = zext i8 %64 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %conv48, i32 noundef %conv50) #6
  %65 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 14), align 2
  %conv51 = zext i8 %65 to i32
  %fw_dac_swing_lvl52 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 14
  %66 = ptrtoint ptr %fw_dac_swing_lvl52 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fw_dac_swing_lvl52, align 2
  %conv53 = zext i8 %67 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %conv51, i32 noundef %conv53) #6
  %68 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 7), align 1, !range !289
  %69 = zext i8 %68 to i32
  %tra_tdma_on56 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 7
  %70 = ptrtoint ptr %tra_tdma_on56 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %tra_tdma_on56, align 1, !range !289
  %72 = zext i8 %71 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef %69, i32 noundef %72) #6
  %73 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 9), align 1
  %conv59 = zext i8 %73 to i32
  %tra_tdma_ant60 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 9
  %74 = ptrtoint ptr %tra_tdma_ant60 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tra_tdma_ant60, align 1
  %conv61 = zext i8 %75 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.17, i32 noundef %conv59, i32 noundef %conv61) #6
  %76 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 8), align 4
  %conv62 = zext i8 %76 to i32
  %tra_tdma_nav63 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 8
  %77 = ptrtoint ptr %tra_tdma_nav63 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tra_tdma_nav63, align 4
  %conv64 = zext i8 %78 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %conv62, i32 noundef %conv64) #6
  %79 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 15), align 1, !range !289
  %80 = zext i8 %79 to i32
  %ps_tdma_on67 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 15
  %81 = ptrtoint ptr %ps_tdma_on67 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ps_tdma_on67, align 1, !range !289
  %83 = zext i8 %82 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %80, i32 noundef %83) #6
  %84 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 16, i32 0), align 4
  %conv73 = zext i8 %84 to i32
  %arrayidx76 = getelementptr %struct.btdm_8723, ptr %btdm, i32 0, i32 16, i32 0
  %85 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %86 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %conv73, i32 noundef %conv77) #6
  %87 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 16, i32 1), align 1
  %conv73.1 = zext i8 %87 to i32
  %arrayidx76.1 = getelementptr %struct.btdm_8723, ptr %btdm, i32 0, i32 16, i32 1
  %88 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx76.1, align 1
  %conv77.1 = zext i8 %89 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %conv73.1, i32 noundef %conv77.1) #6
  %90 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 16, i32 2), align 2
  %conv73.2 = zext i8 %90 to i32
  %arrayidx76.2 = getelementptr %struct.btdm_8723, ptr %btdm, i32 0, i32 16, i32 2
  %91 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx76.2, align 1
  %conv77.2 = zext i8 %92 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %conv73.2, i32 noundef %conv77.2) #6
  %93 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 16, i32 3), align 1
  %conv73.3 = zext i8 %93 to i32
  %arrayidx76.3 = getelementptr %struct.btdm_8723, ptr %btdm, i32 0, i32 16, i32 3
  %94 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx76.3, align 1
  %conv77.3 = zext i8 %95 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %conv73.3, i32 noundef %conv77.3) #6
  %96 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 16, i32 4), align 4
  %conv73.4 = zext i8 %96 to i32
  %arrayidx76.4 = getelementptr %struct.btdm_8723, ptr %btdm, i32 0, i32 16, i32 4
  %97 = ptrtoint ptr %arrayidx76.4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx76.4, align 1
  %conv77.4 = zext i8 %98 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %conv73.4, i32 noundef %conv77.4) #6
  %99 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 27), align 1, !range !289
  %100 = zext i8 %99 to i32
  %ignore_wlan_act80 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 27
  %101 = ptrtoint ptr %ignore_wlan_act80 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ignore_wlan_act80, align 1, !range !289
  %103 = zext i8 %102 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %100, i32 noundef %103) #6
  %104 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 17), align 1, !range !289
  %105 = zext i8 %104 to i32
  %pta_on85 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 17
  %106 = ptrtoint ptr %pta_on85 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pta_on85, align 1, !range !289
  %108 = zext i8 %107 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef %105, i32 noundef %108) #6
  %109 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 18), align 4
  %val_0x6c088 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 18
  %110 = ptrtoint ptr %val_0x6c088 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val_0x6c088, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %109, i32 noundef %111) #6
  %112 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 19), align 4
  %val_0x6c889 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 19
  %113 = ptrtoint ptr %val_0x6c889 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val_0x6c889, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %112, i32 noundef %114) #6
  %115 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 20), align 4
  %val_0x6cc90 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 20
  %116 = ptrtoint ptr %val_0x6cc90 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val_0x6cc90, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %115, i32 noundef %117) #6
  %118 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 21), align 4, !range !289
  %119 = zext i8 %118 to i32
  %sw_dac_swing_on93 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 21
  %120 = ptrtoint ptr %sw_dac_swing_on93 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %sw_dac_swing_on93, align 4, !range !289
  %122 = zext i8 %121 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.26, i32 noundef %119, i32 noundef %122) #6
  %123 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 22), align 4
  %sw_dac_swing_lvl96 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 22
  %124 = ptrtoint ptr %sw_dac_swing_lvl96 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sw_dac_swing_lvl96, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %123, i32 noundef %125) #6
  %126 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 23), align 4
  %wlan_act_hi97 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 23
  %127 = ptrtoint ptr %wlan_act_hi97 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %wlan_act_hi97, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %126, i32 noundef %128) #6
  %129 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 24), align 4
  %wlan_act_lo98 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 24
  %130 = ptrtoint ptr %wlan_act_lo98 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wlan_act_lo98, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef %129, i32 noundef %131) #6
  %132 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11, i32 25), align 4
  %bt_retry_index99 = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 25
  %133 = ptrtoint ptr %bt_retry_index99 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bt_retry_index99, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %132, i32 noundef %134) #6
  %135 = call ptr @memcpy(ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 11), ptr %btdm, i32 60)
  %hold_for_bt_operation = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 47
  %136 = ptrtoint ptr %hold_for_bt_operation to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %hold_for_bt_operation, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool100.not = icmp eq i8 %137, 0
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.31) #6
  %138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %139, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.42) #6
  %140 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %h2c_parameter.i, align 1
  %fw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %139, i32 0, i32 49, i32 29
  %141 = ptrtoint ptr %fw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %fw_coexist_all_off.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %139, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef 1) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 37, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  br label %cleanup

if.end102:                                        ; preds = %if.else
  %142 = ptrtoint ptr %btdm to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %btdm, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool104.not = icmp eq i8 %143, 0
  br i1 %tobool104.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.32) #6
  call void @rtl8723e_btdm_coex_all_off(ptr noundef %hw) #6
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  %144 = ptrtoint ptr %reject_aggre_pkt34 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %reject_aggre_pkt34, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool108 = icmp ne i8 %145, 0
  call void @rtl8723e_dm_bt_reject_ap_aggregated_packet(ptr noundef %hw, i1 noundef zeroext %tobool108) #6
  %146 = ptrtoint ptr %low_penalty_rate_adaptive24 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %low_penalty_rate_adaptive24, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool110.not = icmp eq i8 %147, 0
  %148 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv, align 8
  %read8_sync.i.i402 = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 13, i32 9
  %150 = ptrtoint ptr %read8_sync.i.i402 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read8_sync.i.i402, align 4
  %call.i.i403 = call zeroext i8 %151(ptr noundef %149, i32 noundef 1277) #6
  br i1 %tobool110.not, label %if.else112, label %if.then111

if.then111:                                       ; preds = %if.end106
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %149, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.45) #6
  %152 = and i8 %call.i.i403, -6
  %153 = or i8 %152, 1
  %sw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 49, i32 30
  %154 = ptrtoint ptr %sw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %sw_coexist_all_off.i, align 1
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i.i, align 4
  call void %156(ptr noundef %149, i32 noundef 1277, i8 noundef zeroext %153) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i.i = icmp eq i8 %160, 0
  br i1 %tobool.not.i.i, label %if.then111.if.end113_crit_edge, label %if.then111.if.end113.sink.split_crit_edge

if.then111.if.end113.sink.split_crit_edge:        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.sink.split

if.then111.if.end113_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.else112:                                       ; preds = %if.end106
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %149, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.46) #6
  %161 = or i8 %call.i.i403, 5
  %write8_async.i.i404 = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 13, i32 5
  %162 = ptrtoint ptr %write8_async.i.i404 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write8_async.i.i404, align 4
  call void %163(ptr noundef %149, i32 noundef 1277, i8 noundef zeroext %161) #6
  %cfg.i.i405 = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 32
  %164 = ptrtoint ptr %cfg.i.i405 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cfg.i.i405, align 8
  %write_readback.i.i406 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %write_readback.i.i406 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %write_readback.i.i406, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i.i407 = icmp eq i8 %167, 0
  br i1 %tobool.not.i.i407, label %if.else112.if.end113_crit_edge, label %if.else112.if.end113.sink.split_crit_edge

if.else112.if.end113.sink.split_crit_edge:        ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.sink.split

if.else112.if.end113_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.end113.sink.split:                             ; preds = %if.else112.if.end113.sink.split_crit_edge, %if.then111.if.end113.sink.split_crit_edge
  %168 = ptrtoint ptr %read8_sync.i.i402 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read8_sync.i.i402, align 4
  %call.i23.i408 = call zeroext i8 %169(ptr noundef %149, i32 noundef 1277) #6
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %if.else112.if.end113_crit_edge, %if.then111.if.end113_crit_edge
  %170 = ptrtoint ptr %rf_rx_lpf_shrink29 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %rf_rx_lpf_shrink29, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool115.not = icmp eq i8 %171, 0
  %172 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %priv, align 8
  br i1 %tobool115.not, label %if.else117, label %if.then116

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %173, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.47) #6
  call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef 1048575, i32 noundef 987127) #6
  %sw_coexist_all_off.i412 = getelementptr inbounds %struct.rtl_priv, ptr %173, i32 0, i32 49, i32 30
  %174 = ptrtoint ptr %sw_coexist_all_off.i412 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %sw_coexist_all_off.i412, align 1
  br label %if.end118

if.else117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %173, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.48) #6
  %bt_rfreg_origin_1e.i = getelementptr inbounds %struct.rtl_priv, ptr %173, i32 0, i32 49, i32 18
  %175 = ptrtoint ptr %bt_rfreg_origin_1e.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %bt_rfreg_origin_1e.i, align 2
  %conv7.i = zext i8 %176 to i32
  call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef 1048575, i32 noundef %conv7.i) #6
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then116
  %177 = ptrtoint ptr %agc_table_en9 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %agc_table_en9, align 1, !range !289
  call void @rtl8723e_dm_bt_agc_table(ptr noundef %hw, i8 noundef zeroext %178) #6
  %179 = ptrtoint ptr %adc_back_off_on14 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %adc_back_off_on14, align 2, !range !289
  call void @rtl8723e_dm_bt_bb_back_off_level(ptr noundef %hw, i8 noundef zeroext %180) #6
  %181 = ptrtoint ptr %bt_retry_index99 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bt_retry_index99, align 4
  %conv130 = trunc i32 %182 to i8
  %183 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i414) #6
  %185 = ptrtoint ptr %h2c_parameter.i414 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv130, ptr %h2c_parameter.i414, align 1
  %conv.i = and i32 %182, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef %conv.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.50, i32 noundef %conv.i) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 35, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i414) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i414) #6
  %186 = ptrtoint ptr %fw_dac_swing_lvl52 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %fw_dac_swing_lvl52, align 2
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i416) #6
  %190 = ptrtoint ptr %h2c_parameter.i416 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %187, ptr %h2c_parameter.i416, align 1
  %conv.i418 = zext i8 %187 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %189, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef %conv.i418) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %189, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.52, i32 noundef %conv.i418) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 41, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i416) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i416) #6
  %191 = ptrtoint ptr %wlan_act_hi97 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %wlan_act_hi97, align 4
  %conv133 = trunc i32 %192 to i8
  %193 = ptrtoint ptr %wlan_act_lo98 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %wlan_act_lo98, align 4
  %conv135 = trunc i32 %194 to i8
  %195 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter_hi.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter_lo.i) #6
  %197 = ptrtoint ptr %h2c_parameter_hi.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv133, ptr %h2c_parameter_hi.i, align 1
  %198 = ptrtoint ptr %h2c_parameter_lo.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv135, ptr %h2c_parameter_lo.i, align 1
  %conv.i420 = and i32 %192, 255
  %conv2.i = and i32 %194, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.53, i32 noundef %conv.i420, i32 noundef %conv2.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.54, i32 noundef %conv.i420) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.55, i32 noundef %conv2.i) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 34, i32 noundef 1, ptr noundef nonnull %h2c_parameter_hi.i) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %h2c_parameter_lo.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter_lo.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter_hi.i) #6
  %199 = ptrtoint ptr %val_0x6c088 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %val_0x6c088, align 4
  %201 = ptrtoint ptr %val_0x6c889 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %val_0x6c889, align 4
  %203 = ptrtoint ptr %val_0x6cc90 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %val_0x6cc90, align 4
  call fastcc void @rtl8723e_dm_bt_set_coex_table(ptr noundef %hw, i32 noundef %200, i32 noundef %202, i32 noundef %204)
  %205 = ptrtoint ptr %pta_on85 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pta_on85, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool140.not = icmp eq i8 %206, 0
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 8
  br i1 %tobool140.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end118
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %208, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.59) #6
  %write8_async.i.i422 = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 5
  %209 = ptrtoint ptr %write8_async.i.i422 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write8_async.i.i422, align 4
  call void %210(ptr noundef %208, i32 noundef 64, i8 noundef zeroext 32) #6
  %cfg.i.i423 = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 32
  %211 = ptrtoint ptr %cfg.i.i423 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cfg.i.i423, align 8
  %write_readback.i.i424 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %write_readback.i.i424 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %write_readback.i.i424, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i.i425 = icmp eq i8 %214, 0
  br i1 %tobool.not.i.i425, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i428

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i

if.then.i.i428:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i426 = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 9
  %215 = ptrtoint ptr %read8_sync.i.i426 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read8_sync.i.i426, align 4
  %call.i.i427 = call zeroext i8 %216(ptr noundef %208, i32 noundef 64) #6
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i428, %if.then.i.rtl_write_byte.exit.i_crit_edge
  %hw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 49, i32 31
  %217 = ptrtoint ptr %hw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %hw_coexist_all_off.i, align 2
  br label %rtl8723e_dm_bt_set_hw_pta_mode.exit

if.else.i:                                        ; preds = %if.end118
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %208, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.60) #6
  %write8_async.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 5
  %218 = ptrtoint ptr %write8_async.i6.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write8_async.i6.i, align 4
  call void %219(ptr noundef %208, i32 noundef 64, i8 noundef zeroext 0) #6
  %cfg.i7.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 32
  %220 = ptrtoint ptr %cfg.i7.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cfg.i7.i, align 8
  %write_readback.i8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %write_readback.i8.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %write_readback.i8.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i9.i = icmp eq i8 %223, 0
  br i1 %tobool.not.i9.i, label %if.else.i.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge, label %if.then.i12.i

if.else.i.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_set_hw_pta_mode.exit

if.then.i12.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 13, i32 9
  %224 = ptrtoint ptr %read8_sync.i10.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read8_sync.i10.i, align 4
  %call.i11.i = call zeroext i8 %225(ptr noundef %208, i32 noundef 64) #6
  br label %rtl8723e_dm_bt_set_hw_pta_mode.exit

rtl8723e_dm_bt_set_hw_pta_mode.exit:              ; preds = %if.then.i12.i, %if.else.i.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge, %rtl_write_byte.exit.i
  %226 = ptrtoint ptr %b2_ant_hid_en19 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %b2_ant_hid_en19, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool142.not = icmp eq i8 %227, 0
  br i1 %tobool142.not, label %if.else153, label %if.then143

if.then143:                                       ; preds = %rtl8723e_dm_bt_set_hw_pta_mode.exit
  %228 = ptrtoint ptr %tra_tdma_on56 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %tra_tdma_on56, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool145 = icmp ne i8 %229, 0
  %230 = ptrtoint ptr %tra_tdma_ant60 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %tra_tdma_ant60, align 1
  %232 = ptrtoint ptr %tra_tdma_nav63 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %tra_tdma_nav63, align 4
  call fastcc void @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext %tobool145, i8 noundef zeroext %231, i8 noundef zeroext %233)
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i429) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter1.i) #6
  %236 = ptrtoint ptr %h2c_parameter.i429 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %h2c_parameter.i429, align 1
  %237 = ptrtoint ptr %h2c_parameter1.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %h2c_parameter1.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %235, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.78) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %235, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.79) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %235, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.80, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 38, i32 noundef 1, ptr noundef nonnull %h2c_parameter1.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %235, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i429) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i429) #6
  %238 = ptrtoint ptr %ignore_wlan_act80 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ignore_wlan_act80, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool152.not = icmp eq i8 %239, 0
  %240 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i431) #6
  %242 = ptrtoint ptr %h2c_parameter.i431 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %h2c_parameter.i431, align 1
  br i1 %tobool152.not, label %if.else.i435, label %if.then.i434

if.then.i434:                                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %241, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.42) #6
  %243 = ptrtoint ptr %h2c_parameter.i431 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %h2c_parameter.i431, align 1
  %245 = or i8 %244, 1
  store i8 %245, ptr %h2c_parameter.i431, align 1
  %fw_coexist_all_off.i433 = getelementptr inbounds %struct.rtl_priv, ptr %241, i32 0, i32 49, i32 29
  %246 = ptrtoint ptr %fw_coexist_all_off.i433 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %fw_coexist_all_off.i433, align 8
  br label %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit

if.else.i435:                                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %241, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.43) #6
  br label %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit

rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit:       ; preds = %if.else.i435, %if.then.i434
  %247 = ptrtoint ptr %h2c_parameter.i431 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %h2c_parameter.i431, align 1
  %conv3.i436 = zext i8 %248 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %241, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef %conv3.i436) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 37, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i431) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i431) #6
  %249 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i437) #6
  %251 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i437, i32 0, i32 1
  %252 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i437, i32 0, i32 2
  %253 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i437, i32 0, i32 3
  %254 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i437, i32 0, i32 4
  %255 = ptrtoint ptr %h2c_parameter.i437 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %h2c_parameter.i437, align 1
  %256 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %251, align 1
  %257 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %252, align 1
  %258 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 8, ptr %253, align 1
  %259 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %254, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %250, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 2048) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 58, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i437) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i437) #6
  %260 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i439) #6
  %262 = ptrtoint ptr %h2c_parameter.i439 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %h2c_parameter.i439, align 1
  %fw_coexist_all_off.i441 = getelementptr inbounds %struct.rtl_priv, ptr %261, i32 0, i32 49, i32 29
  %263 = ptrtoint ptr %fw_coexist_all_off.i441 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %fw_coexist_all_off.i441, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %261, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.83, i32 noundef 1) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %261, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.84, i32 noundef 1) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 36, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i439) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i439) #6
  %264 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i443) #6
  %fw_coexist_all_off.i445 = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 49, i32 29
  %266 = ptrtoint ptr %fw_coexist_all_off.i445 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %fw_coexist_all_off.i445, align 8
  %267 = ptrtoint ptr %h2c_parameter.i443 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 3, ptr %h2c_parameter.i443, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %265, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.88, i32 noundef 3) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 21, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i443) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i443) #6
  br label %if.end201

if.else153:                                       ; preds = %rtl8723e_dm_bt_set_hw_pta_mode.exit
  %268 = ptrtoint ptr %tdma_on39 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %tdma_on39, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool155.not = icmp eq i8 %269, 0
  br i1 %tobool155.not, label %if.else166, label %if.then156

if.then156:                                       ; preds = %if.else153
  %270 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i447) #6
  %272 = ptrtoint ptr %h2c_parameter.i447 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %h2c_parameter.i447, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %271, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.83, i32 noundef 0) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %271, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.84, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 36, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i447) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i447) #6
  %273 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i450) #6
  %275 = ptrtoint ptr %h2c_parameter.i450 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 0, ptr %h2c_parameter.i450, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %274, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 21, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i450) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i450) #6
  %276 = ptrtoint ptr %ignore_wlan_act80 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %ignore_wlan_act80, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool158.not = icmp eq i8 %277, 0
  %278 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i453) #6
  %280 = ptrtoint ptr %h2c_parameter.i453 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %h2c_parameter.i453, align 1
  br i1 %tobool158.not, label %if.else.i457, label %if.then.i456

if.then.i456:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %279, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.42) #6
  %281 = ptrtoint ptr %h2c_parameter.i453 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %h2c_parameter.i453, align 1
  %283 = or i8 %282, 1
  store i8 %283, ptr %h2c_parameter.i453, align 1
  %fw_coexist_all_off.i455 = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 49, i32 29
  %284 = ptrtoint ptr %fw_coexist_all_off.i455 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 0, ptr %fw_coexist_all_off.i455, align 8
  br label %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit459

if.else.i457:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %279, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.43) #6
  br label %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit459

rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit459:    ; preds = %if.else.i457, %if.then.i456
  %285 = ptrtoint ptr %h2c_parameter.i453 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %h2c_parameter.i453, align 1
  %conv3.i458 = zext i8 %286 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %279, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef %conv3.i458) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 37, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i453) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i453) #6
  %287 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i460) #6
  %289 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i460, i32 0, i32 1
  %290 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i460, i32 0, i32 2
  %291 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i460, i32 0, i32 3
  %292 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i460, i32 0, i32 4
  %293 = ptrtoint ptr %h2c_parameter.i460 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %h2c_parameter.i460, align 1
  %294 = ptrtoint ptr %289 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %289, align 1
  %295 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 0, ptr %290, align 1
  %296 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 8, ptr %291, align 1
  %297 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 0, ptr %292, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %288, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 2048) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 58, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i460) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i460) #6
  %298 = ptrtoint ptr %tra_tdma_on56 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %tra_tdma_on56, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool160 = icmp ne i8 %299, 0
  %300 = ptrtoint ptr %tra_tdma_ant60 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %tra_tdma_ant60, align 1
  %302 = ptrtoint ptr %tra_tdma_nav63 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %tra_tdma_nav63, align 4
  call fastcc void @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext %tobool160, i8 noundef zeroext %301, i8 noundef zeroext %303)
  %304 = ptrtoint ptr %tdma_ant43 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %tdma_ant43, align 1
  %306 = ptrtoint ptr %tdma_nav46 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %tdma_nav46, align 4
  %308 = ptrtoint ptr %tdma_dac_swing49 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %tdma_dac_swing49, align 1
  call fastcc void @rtl8723e_dm_bt_set_fw_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext %305, i8 noundef zeroext %307, i8 noundef zeroext %309)
  br label %if.end201

if.else166:                                       ; preds = %if.else153
  %310 = ptrtoint ptr %ps_tdma_on67 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %ps_tdma_on67, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool168.not = icmp eq i8 %311, 0
  call fastcc void @rtl8723e_dm_bt_set_fw_bt_hid_info(ptr noundef %hw, i1 noundef zeroext false)
  call fastcc void @rtl8723e_dm_bt_set_fw_2_ant_hid(ptr noundef %hw, i1 noundef zeroext false, i1 noundef zeroext false)
  %312 = ptrtoint ptr %tra_tdma_on56 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %tra_tdma_on56, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool191 = icmp ne i8 %313, 0
  %314 = ptrtoint ptr %tra_tdma_ant60 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %tra_tdma_ant60, align 1
  %316 = ptrtoint ptr %tra_tdma_nav63 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %tra_tdma_nav63, align 4
  call fastcc void @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext %tobool191, i8 noundef zeroext %315, i8 noundef zeroext %317)
  %318 = ptrtoint ptr %tdma_ant43 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %tdma_ant43, align 1
  %320 = ptrtoint ptr %tdma_nav46 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %tdma_nav46, align 4
  %322 = ptrtoint ptr %tdma_dac_swing49 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %tdma_dac_swing49, align 1
  call fastcc void @rtl8723e_dm_bt_set_fw_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext %319, i8 noundef zeroext %321, i8 noundef zeroext %323)
  %324 = ptrtoint ptr %ignore_wlan_act80 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %ignore_wlan_act80, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool198 = icmp ne i8 %325, 0
  call fastcc void @rtl8723e_dm_bt_set_fw_ignore_wlan_act(ptr noundef %hw, i1 noundef zeroext %tobool198)
  br i1 %tobool168.not, label %if.else189, label %if.then169

if.then169:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx76, align 4
  %328 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx76.1, align 1
  %330 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx76.2, align 2
  %332 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx76.3, align 1
  %334 = ptrtoint ptr %arrayidx76.4 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx76.4, align 4
  call fastcc void @rtl8723e_dm_bt_set_fw_3a(ptr noundef %hw, i8 noundef zeroext %327, i8 noundef zeroext %329, i8 noundef zeroext %331, i8 noundef zeroext %333, i8 noundef zeroext %335)
  br label %if.end201

if.else189:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtl8723e_dm_bt_set_fw_3a(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0)
  br label %if.end201

if.end201:                                        ; preds = %if.else189, %if.then169, %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit459, %rtl8723e_dm_bt_set_fw_ignore_wlan_act.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %336(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %337(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %338 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %338(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %339(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %340(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %341(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %342 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %342(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %343 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %343(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %344 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %344(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %345 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %345(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %346 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %346(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %347(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %348 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %348(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %349 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %349(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %350 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %350(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %351 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %351(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %352(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %353(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %354(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %355 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %355(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %356 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %356(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %357 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %357(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %358 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %358(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %359(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %360 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %360(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %361 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %361(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %362(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %363 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %363(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %364(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %365(i32 noundef 214748000) #6
  %366 = ptrtoint ptr %sw_dac_swing_on93 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %sw_dac_swing_on93, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool204.not = icmp eq i8 %367, 0
  %368 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %priv, align 8
  br i1 %tobool204.not, label %if.else.i465, label %if.then.i464

if.then.i464:                                     ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  %370 = ptrtoint ptr %sw_dac_swing_lvl96 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %sw_dac_swing_lvl96, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %369, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.90, i32 noundef %371) #6
  call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2176, i32 noundef -16777216, i32 noundef %371) #6
  %sw_coexist_all_off.i463 = getelementptr inbounds %struct.rtl_priv, ptr %369, i32 0, i32 49, i32 30
  %372 = ptrtoint ptr %sw_coexist_all_off.i463 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %sw_coexist_all_off.i463, align 1
  br label %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit

if.else.i465:                                     ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %369, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.91) #6
  call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2176, i32 noundef -16777216, i32 noundef 192) #6
  br label %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit

rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit:   ; preds = %if.else.i465, %if.then.i464
  %dec_bt_pwr = getelementptr inbounds %struct.btdm_8723, ptr %btdm, i32 0, i32 26
  %373 = ptrtoint ptr %dec_bt_pwr to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %dec_bt_pwr, align 4, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool206.not = icmp eq i8 %374, 0
  %375 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i466) #6
  %377 = ptrtoint ptr %h2c_parameter.i466 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 0, ptr %h2c_parameter.i466, align 1
  br i1 %tobool206.not, label %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit.rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit_crit_edge, label %if.then.i469

rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit.rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit_crit_edge: ; preds = %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit

if.then.i469:                                     ; preds = %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit
  call void @__sanitizer_cov_trace_pc() #8
  %378 = ptrtoint ptr %h2c_parameter.i466 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 2, ptr %h2c_parameter.i466, align 1
  %fw_coexist_all_off.i468 = getelementptr inbounds %struct.rtl_priv, ptr %376, i32 0, i32 49, i32 29
  %379 = ptrtoint ptr %fw_coexist_all_off.i468 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 0, ptr %fw_coexist_all_off.i468, align 8
  br label %rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit

rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit:            ; preds = %if.then.i469, %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit.rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit_crit_edge
  %cond.i = phi ptr [ @.str.93, %if.then.i469 ], [ @.str.94, %rtl8723e_dm_bt_set_sw_full_time_dac_swing.exit.rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit_crit_edge ]
  %380 = ptrtoint ptr %h2c_parameter.i466 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %h2c_parameter.i466, align 1
  %conv6.i470 = zext i8 %381 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %376, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.92, ptr noundef nonnull %cond.i, i32 noundef %conv6.i470) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 33, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i466) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i466) #6
  br label %cleanup

cleanup:                                          ; preds = %rtl8723e_dm_bt_set_fw_dec_bt_pwr.exit, %if.then105, %if.then101, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_ignore_wlan_act(ptr noundef %hw, i1 noundef zeroext %b_enable) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter) #6
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h2c_parameter, align 1
  br i1 %b_enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.42) #6
  %3 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %h2c_parameter, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %h2c_parameter, align 1
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %6 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.43) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %h2c_parameter, align 1
  %conv3 = zext i8 %8 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef %conv3) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 37, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_reject_ap_aggregated_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_agc_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_bb_back_off_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_coex_table(ptr nocapture noundef readonly %hw, i32 noundef %val_0x6c0, i32 noundef %val_0x6c8, i32 noundef %val_0x6cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.56, i32 noundef %val_0x6c0) #6
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1728, i32 noundef %val_0x6c0) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 1728) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.57, i32 noundef %val_0x6c8) #6
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1736, i32 noundef %val_0x6c8) #6
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i11, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i12 = icmp eq i8 %15, 0
  br i1 %tobool.not.i12, label %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge, label %if.then.i15

rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit16

if.then.i15:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i13, align 4
  %call.i14 = tail call i32 %17(ptr noundef %1, i32 noundef 1736) #6
  br label %rtl_write_dword.exit16

rtl_write_dword.exit16:                           ; preds = %if.then.i15, %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.58, i32 noundef %val_0x6cc) #6
  %conv = trunc i32 %val_0x6cc to i8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1740, i8 noundef zeroext %conv) #6
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i18, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i19 = icmp eq i8 %23, 0
  br i1 %tobool.not.i19, label %rtl_write_dword.exit16.rtl_write_byte.exit_crit_edge, label %if.then.i21

rtl_write_dword.exit16.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i21:                                      ; preds = %rtl_write_dword.exit16
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i20 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 1740) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i21, %rtl_write_dword.exit16.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_tra_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext %b_enable, i8 noundef zeroext %ant_num, i8 noundef zeroext %nav_en) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter) #6
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %h2c_parameter, align 2
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  %5 = and i32 %4, 61447
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.61) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %b_enable, label %if.then10, label %if.else42

if.then10:                                        ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.62) #6
  %7 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %h2c_parameter, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %h2c_parameter, align 2
  %10 = zext i8 %ant_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %ant_num, label %if.else24 [
    i8 1, label %if.then15
    i8 0, label %if.then23
  ]

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.63) #6
  %11 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h2c_parameter, align 2
  %13 = or i8 %12, 2
  store i8 %13, ptr %h2c_parameter, align 2
  br label %if.end26

if.then23:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.64) #6
  br label %if.end26

if.else24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.65) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23, %if.then15
  %14 = zext i8 %nav_en to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %nav_en, label %if.end26.if.end41_crit_edge [
    i8 0, label %if.then30
    i8 1, label %if.then35
  ]

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.66) #6
  br label %if.end41

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.67) #6
  %arrayidx36 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx36, align 1
  %17 = or i8 %16, 1
  store i8 %17, ptr %arrayidx36, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then30, %if.end26.if.end41_crit_edge
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %18 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end43

if.else42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.68) #6
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  %19 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h2c_parameter, align 2
  %conv45 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv45, 8
  %arrayidx46 = getelementptr inbounds [2 x i8], ptr %h2c_parameter, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %22 to i32
  %or48 = or i32 %shl, %conv47
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.69, i32 noundef %or48) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 51, i32 noundef 2, ptr noundef nonnull %h2c_parameter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_tdma_ctrl(ptr noundef %hw, i1 noundef zeroext %b_enable, i8 noundef zeroext %ant_num, i8 noundef zeroext %nav_en, i8 noundef zeroext %dac_swing_en) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [1 x i8], align 1
  %h2c_parameter1 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter1) #6
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h2c_parameter, align 1
  %3 = ptrtoint ptr %h2c_parameter1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %h2c_parameter1, align 1
  br i1 %b_enable, label %if.then, label %if.else51

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.70) #6
  %4 = ptrtoint ptr %h2c_parameter1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %h2c_parameter1, align 1
  %6 = or i8 %5, 1
  store i8 %6, ptr %h2c_parameter1, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.71) #6
  %7 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %h2c_parameter, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %h2c_parameter, align 1
  %10 = zext i8 %ant_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %ant_num, label %if.else19 [
    i8 1, label %if.then10
    i8 0, label %if.then18
  ]

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.72) #6
  %11 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h2c_parameter, align 1
  %13 = or i8 %12, 2
  store i8 %13, ptr %h2c_parameter, align 1
  br label %if.end20

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.73) #6
  br label %if.end20

if.else19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.65) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18, %if.then10
  %14 = zext i8 %nav_en to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %nav_en, label %if.end20.if.end35_crit_edge [
    i8 0, label %if.then24
    i8 1, label %if.then29
  ]

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.74) #6
  br label %if.end35

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.75) #6
  %15 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h2c_parameter, align 1
  %17 = or i8 %16, 4
  store i8 %17, ptr %h2c_parameter, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then24, %if.end20.if.end35_crit_edge
  %18 = zext i8 %dac_swing_en to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %dac_swing_en, label %if.end35.if.end50_crit_edge [
    i8 0, label %if.then39
    i8 1, label %if.then44
  ]

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.76) #6
  br label %if.end50

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.77) #6
  %19 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h2c_parameter, align 1
  %21 = or i8 %20, 16
  store i8 %21, ptr %h2c_parameter, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.then39, %if.end35.if.end50_crit_edge
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %22 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end52

if.else51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.78) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.79) #6
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.end50
  %23 = ptrtoint ptr %h2c_parameter1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %h2c_parameter1, align 1
  %conv54 = zext i8 %24 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.80, i32 noundef %conv54) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 38, i32 noundef 1, ptr noundef nonnull %h2c_parameter1) #6
  %25 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %h2c_parameter, align 1
  %conv56 = zext i8 %26 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef %conv56) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_3a(ptr noundef %hw, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter) #6
  %2 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %h2c_parameter, i32 0, i32 4
  %6 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %byte1, ptr %h2c_parameter, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %byte2, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %byte3, ptr %3, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %byte4, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %byte5, ptr %5, align 1
  %conv = zext i8 %byte1 to i32
  %conv7 = zext i8 %byte2 to i32
  %shl = shl nuw i32 %conv7, 24
  %conv9 = zext i8 %byte3 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or = or i32 %shl10, %shl
  %conv12 = zext i8 %byte4 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or, %shl13
  %conv16 = zext i8 %byte5 to i32
  %or17 = or i32 %or14, %conv16
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.82, i32 noundef %conv, i32 noundef %or17) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 58, i32 noundef 5, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_bt_hid_info(ptr noundef %hw, i1 noundef zeroext %b_enable) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter) #6
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h2c_parameter, align 1
  br i1 %b_enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %h2c_parameter, align 1
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %4 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %b_enable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.83, i32 noundef %conv4) #6
  %5 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %h2c_parameter, align 1
  %conv6 = zext i8 %6 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.84, i32 noundef %conv6) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 36, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_set_fw_2_ant_hid(ptr noundef %hw, i1 noundef zeroext %b_enable, i1 noundef zeroext %b_dac_swing_on) unnamed_addr #0 align 64 {
entry:
  %h2c_parameter = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter) #6
  %2 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h2c_parameter, align 1
  br i1 %b_enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %h2c_parameter, align 1
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %4 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %b_dac_swing_on, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %h2c_parameter, align 1
  %7 = or i8 %6, 2
  store i8 %7, ptr %h2c_parameter, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %cond14 = phi ptr [ @.str.88, %if.then4 ], [ @.str.89, %if.end.if.end9_crit_edge ]
  %cond = select i1 %b_enable, ptr @.str.86, ptr @.str.87
  %8 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_parameter, align 1
  %conv16 = zext i8 %9 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.85, ptr noundef nonnull %cond, ptr noundef nonnull %cond14, i32 noundef %conv16) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 21, i32 noundef 1, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_hw_coex_all_off_8723a(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtl8723e_dm_bt_set_coex_table(ptr noundef %hw, i32 noundef 1515891370, i32 noundef 204, i32 noundef 3)
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.59) #6
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 64, i8 noundef zeroext 32) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %entry.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge, label %if.then.i.i

entry.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_set_hw_pta_mode.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 64) #6
  br label %rtl8723e_dm_bt_set_hw_pta_mode.exit

rtl8723e_dm_bt_set_hw_pta_mode.exit:              ; preds = %if.then.i.i, %entry.rtl8723e_dm_bt_set_hw_pta_mode.exit_crit_edge
  %hw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 31
  %10 = ptrtoint ptr %hw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hw_coexist_all_off.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_fw_coex_all_off_8723a(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %h2c_parameter.i26 = alloca [1 x i8], align 1
  %h2c_parameter_hi.i = alloca [1 x i8], align 1
  %h2c_parameter_lo.i = alloca [1 x i8], align 1
  %h2c_parameter.i23 = alloca [1 x i8], align 1
  %h2c_parameter.i20 = alloca [1 x i8], align 1
  %h2c_parameter.i18 = alloca [1 x i8], align 1
  %h2c_parameter.i16 = alloca [1 x i8], align 1
  %h2c_parameter1.i = alloca [1 x i8], align 1
  %h2c_parameter.i14 = alloca [2 x i8], align 2
  %h2c_parameter.i12 = alloca [1 x i8], align 1
  %h2c_parameter.i10 = alloca [5 x i8], align 1
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  %2 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.43) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 37, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %h2c_parameter.i10) #6
  %5 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i10, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i10, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i10, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i8], ptr %h2c_parameter.i10, i32 0, i32 4
  %9 = ptrtoint ptr %h2c_parameter.i10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %h2c_parameter.i10, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %5, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %6, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %7, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %8, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 2048) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 58, i32 noundef 5, ptr noundef nonnull %h2c_parameter.i10) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %h2c_parameter.i10) #6
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i12) #6
  %16 = ptrtoint ptr %h2c_parameter.i12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %h2c_parameter.i12, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 21, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i12) #6
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h2c_parameter.i14) #6
  %19 = ptrtoint ptr %h2c_parameter.i14 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %h2c_parameter.i14, align 2
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 10, i32 13
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version.i, align 4
  %22 = and i32 %21, 61447
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.61) #6
  br label %rtl8723e_dm_bt_set_fw_tra_tdma_ctrl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.68) #6
  %24 = ptrtoint ptr %h2c_parameter.i14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %h2c_parameter.i14, align 2
  %conv45.i = zext i8 %25 to i32
  %shl.i = shl nuw nsw i32 %conv45.i, 8
  %arrayidx46.i = getelementptr inbounds [2 x i8], ptr %h2c_parameter.i14, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %27 to i32
  %or48.i = or i32 %shl.i, %conv47.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.69, i32 noundef %or48.i) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 51, i32 noundef 2, ptr noundef nonnull %h2c_parameter.i14) #6
  br label %rtl8723e_dm_bt_set_fw_tra_tdma_ctrl.exit

rtl8723e_dm_bt_set_fw_tra_tdma_ctrl.exit:         ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h2c_parameter.i14) #6
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i16) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter1.i) #6
  %30 = ptrtoint ptr %h2c_parameter.i16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %h2c_parameter.i16, align 1
  %31 = ptrtoint ptr %h2c_parameter1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %h2c_parameter1.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.78) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.79) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.80, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 38, i32 noundef 1, ptr noundef nonnull %h2c_parameter1.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %29, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i16) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i16) #6
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i18) #6
  %34 = ptrtoint ptr %h2c_parameter.i18 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %h2c_parameter.i18, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef 0) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %33, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.52, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 41, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i18) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i18) #6
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i20) #6
  %37 = ptrtoint ptr %h2c_parameter.i20 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %h2c_parameter.i20, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.83, i32 noundef 0) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.84, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 36, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i20) #6
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i23) #6
  %40 = ptrtoint ptr %h2c_parameter.i23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %h2c_parameter.i23, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef 2) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.50, i32 noundef 2) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 35, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i23) #6
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter_hi.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter_lo.i) #6
  %43 = ptrtoint ptr %h2c_parameter_hi.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %h2c_parameter_hi.i, align 1
  %44 = ptrtoint ptr %h2c_parameter_lo.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %h2c_parameter_lo.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %42, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.53, i32 noundef 16, i32 noundef 16) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %42, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.54, i32 noundef 16) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %42, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.55, i32 noundef 16) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 34, i32 noundef 1, ptr noundef nonnull %h2c_parameter_hi.i) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %h2c_parameter_lo.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter_lo.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter_hi.i) #6
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i26) #6
  %47 = ptrtoint ptr %h2c_parameter.i26 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %h2c_parameter.i26, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %46, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.94, i32 noundef 0) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 33, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i26) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_sw_coex_all_off_8723a(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl8723e_dm_bt_agc_table(ptr noundef %hw, i8 noundef zeroext 0) #6
  tail call void @rtl8723e_dm_bt_bb_back_off_level(ptr noundef %hw, i8 noundef zeroext 0) #6
  tail call void @rtl8723e_dm_bt_reject_ap_aggregated_packet(ptr noundef %hw, i1 noundef zeroext false) #6
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1277) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.46) #6
  %4 = or i8 %call.i.i, 5
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1277, i8 noundef zeroext %4) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %entry.dm_bt_set_sw_penalty_tx_rate_adapt.exit_crit_edge, label %if.then.i.i

entry.dm_bt_set_sw_penalty_tx_rate_adapt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dm_bt_set_sw_penalty_tx_rate_adapt.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 1277) #6
  br label %dm_bt_set_sw_penalty_tx_rate_adapt.exit

dm_bt_set_sw_penalty_tx_rate_adapt.exit:          ; preds = %if.then.i.i, %entry.dm_bt_set_sw_penalty_tx_rate_adapt.exit_crit_edge
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.48) #6
  %bt_rfreg_origin_1e.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 49, i32 18
  %15 = ptrtoint ptr %bt_rfreg_origin_1e.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bt_rfreg_origin_1e.i, align 2
  %conv7.i = zext i8 %16 to i32
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef 1048575, i32 noundef %conv7.i) #6
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %18, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.91) #6
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2176, i32 noundef -16777216, i32 noundef 192) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_coexist_8723(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %btdm8723.i81.i = alloca %struct.btdm_8723, align 4
  %btdm8723.i.i = alloca %struct.btdm_8723, align 4
  %h2c_parameter.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  store i8 1, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 5), align 1
  %2 = ptrtoint ptr %h2c_parameter.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %h2c_parameter.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.95, i32 noundef 1) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 56, i32 noundef 1, ptr noundef nonnull %h2c_parameter.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %h2c_parameter.i) #6
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 13, i32 11
  %5 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef %4, i32 noundef 1904) #6
  %and.i = and i32 %call.i.i, 65535
  %shr.i = lshr i32 %call.i.i, 16
  %7 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i51.i = call i32 %8(ptr noundef %4, i32 noundef 1908) #6
  %and3.i = and i32 %call.i51.i, 65535
  %shr5.i = lshr i32 %call.i51.i, 16
  %lps_counter.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 49, i32 48
  %9 = ptrtoint ptr %lps_counter.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lps_counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp ugt i8 %10, 1
  br i1 %cmp.i, label %if.then.i, label %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge

entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_hw_counters_monitor.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rem.lhs.trunc.i = trunc i32 %call.i.i to i16
  %rem.rhs.trunc.i = zext i8 %10 to i16
  %rem52.i = urem i16 %rem.lhs.trunc.i, %rem.rhs.trunc.i
  %rem.zext.i = zext i16 %rem52.i to i32
  %rem13.lhs.trunc.i = trunc i32 %shr.i to i16
  %rem1353.i = urem i16 %rem13.lhs.trunc.i, %rem.rhs.trunc.i
  %rem13.zext.i = zext i16 %rem1353.i to i32
  %rem17.lhs.trunc.i = trunc i32 %call.i51.i to i16
  %rem1754.i = urem i16 %rem17.lhs.trunc.i, %rem.rhs.trunc.i
  %rem17.zext.i = zext i16 %rem1754.i to i32
  %rem21.lhs.trunc.i = trunc i32 %shr5.i to i16
  %rem2155.i = urem i16 %rem21.lhs.trunc.i, %rem.rhs.trunc.i
  %rem21.zext.i = zext i16 %rem2155.i to i32
  br label %rtl8723e_dm_bt_bt_hw_counters_monitor.exit

rtl8723e_dm_bt_bt_hw_counters_monitor.exit:       ; preds = %if.then.i, %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge
  %reg_hp_tx.0.i = phi i32 [ %rem.zext.i, %if.then.i ], [ %and.i, %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge ]
  %reg_hp_rx.0.i = phi i32 [ %rem13.zext.i, %if.then.i ], [ %shr.i, %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge ]
  %reg_lp_tx.0.i = phi i32 [ %rem17.zext.i, %if.then.i ], [ %and3.i, %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge ]
  %reg_lp_rx.0.i = phi i32 [ %rem21.zext.i, %if.then.i ], [ %shr5.i, %entry.rtl8723e_dm_bt_bt_hw_counters_monitor.exit_crit_edge ]
  store i32 %reg_hp_tx.0.i, ptr @hal_coex_8723, align 4
  store i32 %reg_hp_rx.0.i, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  store i32 %reg_lp_tx.0.i, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  store i32 %reg_lp_rx.0.i, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.96, i32 noundef 1904, i32 noundef %reg_hp_tx.0.i, i32 noundef %reg_hp_tx.0.i, i32 noundef %reg_hp_rx.0.i, i32 noundef %reg_hp_rx.0.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.97, i32 noundef 1908, i32 noundef %reg_lp_tx.0.i, i32 noundef %reg_lp_tx.0.i, i32 noundef %reg_lp_rx.0.i, i32 noundef %reg_lp_rx.0.i) #6
  %11 = ptrtoint ptr %lps_counter.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %lps_counter.i, align 8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %14 = load i32, ptr @hal_coex_8723, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %14, label %rtl8723e_dm_bt_bt_hw_counters_monitor.exit.if.then24.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 60138, label %land.lhs.true7.i
    i32 65535, label %land.lhs.true16.i
  ]

rtl8723e_dm_bt_bt_hw_counters_monitor.exit.if.then24.i_crit_edge: ; preds = %rtl8723e_dm_bt_bt_hw_counters_monitor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true.i:                                  ; preds = %rtl8723e_dm_bt_bt_hw_counters_monitor.exit
  %16 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i = icmp eq i32 %16, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.then24.i_crit_edge

land.lhs.true.i.if.then24.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %17 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i = icmp eq i32 %17, 0
  br i1 %cmp3.i, label %if.end.thread.i, label %land.lhs.true2.i.if.then24.i_crit_edge

land.lhs.true2.i.if.then24.i_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.end.thread.i:                                  ; preds = %land.lhs.true2.i
  %18 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.not.i = icmp eq i32 %18, 0
  br i1 %cmp5.not.i, label %if.end.thread.i.if.else.i_crit_edge, label %if.end.thread.i.if.then24.i_crit_edge

if.end.thread.i.if.then24.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.end.thread.i.if.else.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %rtl8723e_dm_bt_bt_hw_counters_monitor.exit
  %19 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60138, i32 %19)
  %cmp8.i = icmp eq i32 %19, 60138
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true7.i.if.then24.i_crit_edge

land.lhs.true7.i.if.then24.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %20 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60138, i32 %20)
  %cmp10.i = icmp eq i32 %20, 60138
  br i1 %cmp10.i, label %if.end23.i, label %land.lhs.true9.i.if.then24.i_crit_edge

land.lhs.true9.i.if.then24.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true16.i:                                ; preds = %rtl8723e_dm_bt_bt_hw_counters_monitor.exit
  %21 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp17.i = icmp eq i32 %21, 65535
  br i1 %cmp17.i, label %land.lhs.true18.i, label %land.lhs.true16.i.if.then24.i_crit_edge

land.lhs.true16.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true18.i:                                ; preds = %land.lhs.true16.i
  %22 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %22)
  %cmp19.i = icmp eq i32 %22, 65535
  br i1 %cmp19.i, label %land.lhs.true20.i, label %land.lhs.true18.i.if.then24.i_crit_edge

land.lhs.true18.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true20.i:                                ; preds = %land.lhs.true18.i
  %23 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp21.not.i = icmp eq i32 %23, 65535
  br i1 %cmp21.not.i, label %land.lhs.true20.i.if.else.i_crit_edge, label %land.lhs.true20.i.if.then24.i_crit_edge

land.lhs.true20.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

land.lhs.true20.i.if.else.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end23.i:                                       ; preds = %land.lhs.true9.i
  %24 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60138, i32 %24)
  %cmp12.not.i = icmp eq i32 %24, 60138
  br i1 %cmp12.not.i, label %if.end23.i.if.else.i_crit_edge, label %if.end23.i.if.then24.i_crit_edge

if.end23.i.if.then24.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.end23.i.if.else.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then24.i:                                      ; preds = %if.end23.i.if.then24.i_crit_edge, %land.lhs.true20.i.if.then24.i_crit_edge, %land.lhs.true18.i.if.then24.i_crit_edge, %land.lhs.true16.i.if.then24.i_crit_edge, %land.lhs.true9.i.if.then24.i_crit_edge, %land.lhs.true7.i.if.then24.i_crit_edge, %if.end.thread.i.if.then24.i_crit_edge, %land.lhs.true2.i.if.then24.i_crit_edge, %land.lhs.true.i.if.then24.i_crit_edge, %rtl8723e_dm_bt_bt_hw_counters_monitor.exit.if.then24.i_crit_edge
  %bt_active_zero_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 49, i32 41
  %25 = ptrtoint ptr %bt_active_zero_cnt.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bt_active_zero_cnt.i, align 1
  br label %if.end39.sink.split.i

if.else.i:                                        ; preds = %if.end23.i.if.else.i_crit_edge, %land.lhs.true20.i.if.else.i_crit_edge, %if.end.thread.i.if.else.i_crit_edge
  %bt_active_zero_cnt27.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 49, i32 41
  %26 = ptrtoint ptr %bt_active_zero_cnt27.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_active_zero_cnt27.i, align 1
  %inc.i = add i8 %27, 1
  store i8 %inc.i, ptr %bt_active_zero_cnt27.i, align 1
  %conv.i = zext i8 %inc.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.99, i32 noundef %conv.i) #6
  %28 = ptrtoint ptr %bt_active_zero_cnt27.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bt_active_zero_cnt27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp33.i = icmp ugt i8 %29, 1
  br i1 %cmp33.i, label %if.else.i.if.end39.sink.split.i_crit_edge, label %if.else.i.if.end39.i_crit_edge

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.else.i.if.end39.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.else.i.if.end39.sink.split.i_crit_edge, %if.then24.i
  %.sink.i = phi i8 [ 0, %if.then24.i ], [ 1, %if.else.i.if.end39.sink.split.i_crit_edge ]
  %.str.100.sink.i = phi ptr [ @.str.98, %if.then24.i ], [ @.str.100, %if.else.i.if.end39.sink.split.i_crit_edge ]
  %cur_bt_disabled37.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 49, i32 42
  %30 = ptrtoint ptr %cur_bt_disabled37.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %cur_bt_disabled37.i, align 2
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.100.sink.i) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39.sink.split.i, %if.else.i.if.end39.i_crit_edge
  %pre_bt_disabled.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 49, i32 43
  %31 = ptrtoint ptr %pre_bt_disabled.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pre_bt_disabled.i, align 1, !range !289
  %cur_bt_disabled44.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 49, i32 42
  %33 = ptrtoint ptr %cur_bt_disabled44.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cur_bt_disabled44.i, align 2, !range !289
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp47.not.i = icmp eq i8 %32, %34
  br i1 %cmp47.not.i, label %if.end39.i.rtl8723e_dm_bt_bt_enable_disable_check.exit_crit_edge, label %if.then49.i

if.end39.i.rtl8723e_dm_bt_bt_enable_disable_check.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_enable_disable_check.exit

if.then49.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool45.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool41.not.i = icmp eq i8 %32, 0
  %cond.i = select i1 %tobool41.not.i, ptr @.str.103, ptr @.str.102
  %cond58.i = select i1 %tobool45.not.i, ptr @.str.103, ptr @.str.102
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond58.i) #6
  %35 = ptrtoint ptr %cur_bt_disabled44.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cur_bt_disabled44.i, align 2, !range !289
  %37 = ptrtoint ptr %pre_bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %pre_bt_disabled.i, align 1
  br label %rtl8723e_dm_bt_bt_enable_disable_check.exit

rtl8723e_dm_bt_bt_enable_disable_check.exit:      ; preds = %if.then49.i, %if.end39.i.rtl8723e_dm_bt_bt_enable_disable_check.exit_crit_edge
  %bt_ant_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 10
  %38 = ptrtoint ptr %bt_ant_num to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bt_ant_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp = icmp eq i8 %39, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %rtl8723e_dm_bt_bt_enable_disable_check.exit
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.33) #6
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.104) #6
  call void @_rtl8723_dm_bt_check_wifi_state(ptr noundef %hw) #6
  %42 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 5), align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i36

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i36:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.105) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i36, %if.then.if.end.i_crit_edge
  %43 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 9), align 1
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 6), align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end2.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end2.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %48 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 0
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.then.i.i.if.end2.i.i_crit_edge

if.then.i.i.if.end2.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 49, i32 32
  %49 = ptrtoint ptr %cstate.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cstate.i.i, align 4
  %or.i.i = or i32 %50, 2048
  store i32 %or.i.i, ptr %cstate.i.i, align 4
  store i32 %46, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.110, i32 noundef %46) #6
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.then.i.i.if.end2.i.i_crit_edge, %if.end.i.if.end2.i.i_crit_edge
  %51 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.111, i32 noundef %51, i32 noundef %46) #6
  %52 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i.i = icmp ne i32 %52, 0
  %sub.i.i = sub i32 %46, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %sub.i.i)
  %cmp5.i.i = icmp sgt i32 %sub.i.i, 999
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.end2.i.i.rtl8723e_dm_bt_inq_page_monitor.exit.i_crit_edge

if.end2.i.i.rtl8723e_dm_bt_inq_page_monitor.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_inq_page_monitor.exit.i

if.then6.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %45, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.112) #6
  store i32 0, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  %cstate8.i.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 49, i32 32
  %53 = ptrtoint ptr %cstate8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cstate8.i.i, align 4
  %and.i.i = and i32 %54, -2049
  store i32 %and.i.i, ptr %cstate8.i.i, align 4
  br label %rtl8723e_dm_bt_inq_page_monitor.exit.i

rtl8723e_dm_bt_inq_page_monitor.exit.i:           ; preds = %if.then6.i.i, %if.end2.i.i.rtl8723e_dm_bt_inq_page_monitor.exit.i_crit_edge
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %cstate.i74.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 49, i32 32
  %57 = ptrtoint ptr %cstate.i74.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cstate.i74.i, align 4
  %and3.i.i = and i32 %58, 521142271
  store i32 %and3.i.i, ptr %cstate.i74.i, align 4
  %59 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %btdm8723.i.i) #6
  %60 = getelementptr inbounds i8, ptr %btdm8723.i.i, i32 20
  %61 = call ptr @memset(ptr %60, i32 255, i32 40)
  %tdma_on.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 10
  %fw_dac_swing_lvl.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 14
  %62 = call ptr @memset(ptr %btdm8723.i.i, i32 0, i32 7)
  %63 = ptrtoint ptr %tdma_on.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 0, ptr %tdma_on.i.i.i, align 2
  %64 = ptrtoint ptr %fw_dac_swing_lvl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 32, ptr %fw_dac_swing_lvl.i.i.i, align 2
  %tra_tdma_on.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %tra_tdma_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %tra_tdma_on.i.i.i, align 1
  %tra_tdma_ant.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 9
  %66 = ptrtoint ptr %tra_tdma_ant.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %tra_tdma_ant.i.i.i, align 1
  %tra_tdma_nav.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %tra_tdma_nav.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %tra_tdma_nav.i.i.i, align 4
  %ignore_wlan_act.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 27
  %68 = ptrtoint ptr %ignore_wlan_act.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %ignore_wlan_act.i.i.i, align 1
  %ps_tdma_on.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 15
  %arrayidx6.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 16, i32 3
  %69 = ptrtoint ptr %ps_tdma_on.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 0, ptr %ps_tdma_on.i.i.i, align 1
  %70 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %arrayidx6.i.i.i, align 1
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %60, align 4
  %pta_on.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 17
  %72 = ptrtoint ptr %pta_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %pta_on.i.i.i, align 1
  %val_0x6c0.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 18
  %73 = ptrtoint ptr %val_0x6c0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1515891370, ptr %val_0x6c0.i.i.i, align 4
  %val_0x6c8.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 19
  %74 = ptrtoint ptr %val_0x6c8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 204, ptr %val_0x6c8.i.i.i, align 4
  %val_0x6cc.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 20
  %75 = ptrtoint ptr %val_0x6cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %val_0x6cc.i.i.i, align 4
  %sw_dac_swing_on.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 21
  %76 = ptrtoint ptr %sw_dac_swing_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %sw_dac_swing_on.i.i.i, align 4
  %sw_dac_swing_lvl.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 22
  %77 = ptrtoint ptr %sw_dac_swing_lvl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 192, ptr %sw_dac_swing_lvl.i.i.i, align 4
  %wlan_act_hi.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 23
  %78 = ptrtoint ptr %wlan_act_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 32, ptr %wlan_act_hi.i.i.i, align 4
  %wlan_act_lo.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 24
  %79 = ptrtoint ptr %wlan_act_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16, ptr %wlan_act_lo.i.i.i, align 4
  %bt_retry_index.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 25
  %80 = ptrtoint ptr %bt_retry_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %bt_retry_index.i.i.i, align 4
  %dec_bt_pwr.i.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 26
  %81 = ptrtoint ptr %dec_bt_pwr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %dec_bt_pwr.i.i.i, align 4
  %busytraffic.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 25, i32 6
  %82 = ptrtoint ptr %busytraffic.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %busytraffic.i.i.i, align 8, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rtl8723e_dm_bt_inq_page_monitor.exit.i.land.lhs.true2.i.i_crit_edge

rtl8723e_dm_bt_inq_page_monitor.exit.i.land.lhs.true2.i.i_crit_edge: ; preds = %rtl8723e_dm_bt_inq_page_monitor.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true2.i.i

lor.lhs.false.i.i.i:                              ; preds = %rtl8723e_dm_bt_inq_page_monitor.exit.i
  %rx_busy_traffic.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 25, i32 8
  %84 = ptrtoint ptr %rx_busy_traffic.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %rx_busy_traffic.i.i.i, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool2.not.i.i.i = icmp eq i8 %85, 0
  br i1 %tobool2.not.i.i.i, label %rtl8723e_dm_bt_is_wifi_busy.exit.i.i, label %lor.lhs.false.i.i.i.land.lhs.true2.i.i_crit_edge

lor.lhs.false.i.i.i.land.lhs.true2.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true2.i.i

rtl8723e_dm_bt_is_wifi_busy.exit.i.i:             ; preds = %lor.lhs.false.i.i.i
  %tx_busy_traffic.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 25, i32 7
  %86 = ptrtoint ptr %tx_busy_traffic.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tx_busy_traffic.i.i.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool5.not.i.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool5.not.i.not.i.i, label %land.lhs.true.i.i, label %rtl8723e_dm_bt_is_wifi_busy.exit.i.i.land.lhs.true2.i.i_crit_edge

rtl8723e_dm_bt_is_wifi_busy.exit.i.i.land.lhs.true2.i.i_crit_edge: ; preds = %rtl8723e_dm_bt_is_wifi_busy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true2.i.i

land.lhs.true.i.i:                                ; preds = %rtl8723e_dm_bt_is_wifi_busy.exit.i.i
  %bt_busy.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 49, i32 46
  %88 = ptrtoint ptr %bt_busy.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bt_busy.i.i, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i76.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i76.i, label %if.then.i77.i, label %land.lhs.true.i.i.if.else7.i.i_crit_edge

land.lhs.true.i.i.if.else7.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else7.i.i

if.then.i77.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.113) #6
  %90 = call ptr @memset(ptr %btdm8723.i.i, i32 0, i32 7)
  %91 = ptrtoint ptr %tdma_on.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 0, ptr %tdma_on.i.i.i, align 2
  %92 = ptrtoint ptr %fw_dac_swing_lvl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 32, ptr %fw_dac_swing_lvl.i.i.i, align 2
  %93 = ptrtoint ptr %tra_tdma_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %tra_tdma_on.i.i.i, align 1
  %94 = ptrtoint ptr %tra_tdma_ant.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %tra_tdma_ant.i.i.i, align 1
  %95 = ptrtoint ptr %tra_tdma_nav.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %tra_tdma_nav.i.i.i, align 4
  %96 = ptrtoint ptr %ignore_wlan_act.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %ignore_wlan_act.i.i.i, align 1
  %97 = ptrtoint ptr %ps_tdma_on.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 0, ptr %ps_tdma_on.i.i.i, align 1
  %98 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 8, ptr %arrayidx6.i.i.i, align 1
  %99 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %60, align 4
  %100 = ptrtoint ptr %val_0x6c0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1515891370, ptr %val_0x6c0.i.i.i, align 4
  %101 = ptrtoint ptr %val_0x6c8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 204, ptr %val_0x6c8.i.i.i, align 4
  %102 = ptrtoint ptr %val_0x6cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %val_0x6cc.i.i.i, align 4
  %103 = ptrtoint ptr %sw_dac_swing_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %sw_dac_swing_on.i.i.i, align 4
  %104 = ptrtoint ptr %sw_dac_swing_lvl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 192, ptr %sw_dac_swing_lvl.i.i.i, align 4
  %105 = ptrtoint ptr %wlan_act_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 16, ptr %wlan_act_lo.i.i.i, align 4
  %106 = ptrtoint ptr %bt_retry_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %bt_retry_index.i.i.i, align 4
  %107 = ptrtoint ptr %dec_bt_pwr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %dec_bt_pwr.i.i.i, align 4
  %108 = ptrtoint ptr %btdm8723.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %btdm8723.i.i, align 4
  %109 = ptrtoint ptr %pta_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %pta_on.i.i.i, align 1
  %110 = ptrtoint ptr %wlan_act_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 16, ptr %wlan_act_hi.i.i.i, align 4
  br label %if.end30.i.i

land.lhs.true2.i.i:                               ; preds = %rtl8723e_dm_bt_is_wifi_busy.exit.i.i.land.lhs.true2.i.i_crit_edge, %lor.lhs.false.i.i.i.land.lhs.true2.i.i_crit_edge, %rtl8723e_dm_bt_inq_page_monitor.exit.i.land.lhs.true2.i.i_crit_edge
  %bt_busy4.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 49, i32 46
  %111 = ptrtoint ptr %bt_busy4.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bt_busy4.i.i, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool5.not.i.i = icmp eq i8 %112, 0
  br i1 %tobool5.not.i.i, label %if.then6.i78.i, label %land.lhs.true2.i.i.if.else7.i.i_crit_edge

land.lhs.true2.i.i.if.else7.i.i_crit_edge:        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else7.i.i

if.then6.i78.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.114) #6
  %low_penalty_rate_adaptive.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %low_penalty_rate_adaptive.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %low_penalty_rate_adaptive.i.i, align 4
  %rf_rx_lpf_shrink.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 5
  %114 = ptrtoint ptr %rf_rx_lpf_shrink.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %rf_rx_lpf_shrink.i.i, align 1
  %reject_aggre_pkt.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 6
  %115 = ptrtoint ptr %reject_aggre_pkt.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %reject_aggre_pkt.i.i, align 2
  %agc_table_en.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %agc_table_en.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %agc_table_en.i.i, align 1
  %adc_back_off_on.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %adc_back_off_on.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %adc_back_off_on.i.i, align 2
  %118 = ptrtoint ptr %sw_dac_swing_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %sw_dac_swing_on.i.i.i, align 4
  %119 = ptrtoint ptr %pta_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %pta_on.i.i.i, align 1
  %120 = ptrtoint ptr %val_0x6c0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1515891370, ptr %val_0x6c0.i.i.i, align 4
  %121 = ptrtoint ptr %val_0x6c8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 52428, ptr %val_0x6c8.i.i.i, align 4
  %122 = ptrtoint ptr %val_0x6cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 3, ptr %val_0x6cc.i.i.i, align 4
  %123 = ptrtoint ptr %tdma_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %tdma_on.i.i.i, align 2
  %tdma_dac_swing.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 13
  %124 = ptrtoint ptr %tdma_dac_swing.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %tdma_dac_swing.i.i, align 1
  %b2_ant_hid_en.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 3
  %125 = ptrtoint ptr %b2_ant_hid_en.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %b2_ant_hid_en.i.i, align 1
  br label %if.end30.i.i

if.else7.i.i:                                     ; preds = %land.lhs.true2.i.i.if.else7.i.i_crit_edge, %land.lhs.true.i.i.if.else7.i.i_crit_edge
  %bt_busy9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 49, i32 46
  %126 = ptrtoint ptr %bt_busy9.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bt_busy9.i.i, align 2, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool10.not.i.i = icmp eq i8 %127, 0
  br i1 %tobool10.not.i.i, label %if.else7.i.i.if.end30.i.i_crit_edge, label %if.then11.i.i

if.else7.i.i.if.end30.i.i_crit_edge:              ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i.i

if.then11.i.i:                                    ; preds = %if.else7.i.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.115) #6
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv, align 8
  %opmode.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 9, i32 8
  %130 = ptrtoint ptr %opmode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %opmode.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp.i.i.i = icmp eq i32 %131, 1
  br i1 %cmp.i.i.i, label %if.then11.i.i.if.then13.i.i_crit_edge, label %lor.lhs.false.i74.i.i

if.then11.i.i.if.then13.i.i_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i.i

lor.lhs.false.i74.i.i:                            ; preds = %if.then11.i.i
  %link_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %129, i32 0, i32 9, i32 10
  %132 = ptrtoint ptr %link_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %link_state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp4.i.i.i = icmp ugt i32 %133, 1
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i74.i.i.if.then13.i.i_crit_edge, label %if.else14.i.i

lor.lhs.false.i74.i.i.if.then13.i.i_crit_edge:    ; preds = %lor.lhs.false.i74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %lor.lhs.false.i74.i.i.if.then13.i.i_crit_edge, %if.then11.i.i.if.then13.i.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.116) #6
  br label %if.end30.i.i

if.else14.i.i:                                    ; preds = %lor.lhs.false.i74.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %59, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.117) #6
  %rf_rx_lpf_shrink15.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 5
  %134 = ptrtoint ptr %rf_rx_lpf_shrink15.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %rf_rx_lpf_shrink15.i.i, align 1
  %low_penalty_rate_adaptive16.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %low_penalty_rate_adaptive16.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %low_penalty_rate_adaptive16.i.i, align 4
  %reject_aggre_pkt17.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 6
  %136 = ptrtoint ptr %reject_aggre_pkt17.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %reject_aggre_pkt17.i.i, align 2
  %agc_table_en18.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %agc_table_en18.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %agc_table_en18.i.i, align 1
  %adc_back_off_on19.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 2
  %138 = ptrtoint ptr %adc_back_off_on19.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %adc_back_off_on19.i.i, align 2
  %139 = ptrtoint ptr %sw_dac_swing_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %sw_dac_swing_on.i.i.i, align 4
  %140 = ptrtoint ptr %pta_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %pta_on.i.i.i, align 1
  %141 = ptrtoint ptr %val_0x6c0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1431655765, ptr %val_0x6c0.i.i.i, align 4
  %142 = ptrtoint ptr %val_0x6c8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 65535, ptr %val_0x6c8.i.i.i, align 4
  %143 = ptrtoint ptr %val_0x6cc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3, ptr %val_0x6cc.i.i.i, align 4
  %144 = ptrtoint ptr %tdma_on.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %tdma_on.i.i.i, align 2
  %tdma_dac_swing26.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 13
  %145 = ptrtoint ptr %tdma_dac_swing26.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %tdma_dac_swing26.i.i, align 1
  %b2_ant_hid_en27.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %b2_ant_hid_en27.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %b2_ant_hid_en27.i.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else14.i.i, %if.then13.i.i, %if.else7.i.i.if.end30.i.i_crit_edge, %if.then6.i78.i, %if.then.i77.i
  %b_common.0.off0.i.i = phi i1 [ false, %if.then13.i.i ], [ true, %if.else14.i.i ], [ false, %if.else7.i.i.if.end30.i.i_crit_edge ], [ true, %if.then6.i78.i ], [ true, %if.then.i77.i ]
  %147 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %priv, align 8
  %opmode.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 9, i32 8
  %149 = ptrtoint ptr %opmode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %opmode.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp.i.i.i.i = icmp eq i32 %150, 1
  br i1 %cmp.i.i.i.i, label %if.end30.i.i.if.then32.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end30.i.i.if.then32.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end30.i.i
  %link_state.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 9, i32 10
  %151 = ptrtoint ptr %link_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %link_state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp4.i.i.i.i = icmp ugt i32 %152, 1
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then32.i.i_crit_edge, label %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i.i

lor.lhs.false.i.i.i.i.if.then32.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i.i:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cstate2.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 49, i32 32
  %153 = ptrtoint ptr %cstate2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cstate2.i.i.i, align 4
  %and.i.i.i = and i32 %154, -129
  store i32 %and.i.i.i, ptr %cstate2.i.i.i, align 4
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %lor.lhs.false.i.i.i.i.if.then32.i.i_crit_edge, %if.end30.i.i.if.then32.i.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.118) #6
  %cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 49, i32 32
  %155 = ptrtoint ptr %cstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cstate.i.i.i, align 4
  %or.i.i.i = or i32 %156, 128
  store i32 %or.i.i.i, ptr %cstate.i.i.i, align 4
  %157 = ptrtoint ptr %dec_bt_pwr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %dec_bt_pwr.i.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then32.i.i, %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i.i
  br i1 %b_common.0.off0.i.i, label %if.then35.i.i, label %if.else.i38

if.then35.i.i:                                    ; preds = %if.end33.i.i
  %cstate.i79.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 49, i32 32
  %158 = ptrtoint ptr %cstate.i79.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cstate.i79.i, align 4
  %or.i80.i = or i32 %159, 1073741824
  store i32 %or.i80.i, ptr %cstate.i79.i, align 4
  %call40.i.i = call zeroext i1 @rtl8723e_dm_bt_is_coexist_state_changed(ptr noundef %hw) #6
  br i1 %call40.i.i, label %if.then41.i.i, label %if.then35.i.i.if.then1.i_crit_edge

if.then35.i.i.if.then1.i_crit_edge:               ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1.i

if.then41.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723e_dm_bt_set_bt_dm(ptr noundef %hw, ptr noundef nonnull %btdm8723.i.i) #6
  br label %if.then1.i

if.then1.i:                                       ; preds = %if.then41.i.i, %if.then35.i.i.if.then1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %btdm8723.i.i) #6
  %bt_profile_case.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 44
  %160 = ptrtoint ptr %bt_profile_case.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 10, ptr %bt_profile_case.i, align 4
  %bt_profile_action.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 45
  %161 = ptrtoint ptr %bt_profile_action.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 10, ptr %bt_profile_action.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.106) #6
  br label %if.end

if.else.i38:                                      ; preds = %if.end33.i.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %btdm8723.i.i) #6
  %conv.i37 = zext i8 %43 to i32
  %162 = and i32 %conv.i37, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %if.else17.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i38
  call void @__sanitizer_cov_trace_pc() #8
  %cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 32
  %164 = ptrtoint ptr %cstate.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cstate.i, align 4
  %or.i = or i32 %165, -2147483648
  store i32 %or.i, ptr %cstate.i, align 4
  %bt_profile_case14.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 44
  %166 = ptrtoint ptr %bt_profile_case14.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 8, ptr %bt_profile_case14.i, align 4
  %bt_profile_action16.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 45
  %167 = ptrtoint ptr %bt_profile_action16.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 8, ptr %bt_profile_action16.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.107) #6
  call fastcc void @rtl8723e_dm_bt_2_ant_hid_sco_esco(ptr noundef %hw) #6
  br label %if.end

if.else17.i:                                      ; preds = %if.else.i38
  %168 = and i32 %conv.i37, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %169 = icmp eq i32 %168, 0
  %cstate35.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 32
  %170 = ptrtoint ptr %cstate35.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cstate35.i, align 4
  br i1 %169, label %if.else33.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else17.i
  %or28.i = or i32 %171, 536870912
  %172 = ptrtoint ptr %cstate35.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or28.i, ptr %cstate35.i, align 4
  %bt_profile_case30.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 44
  %173 = ptrtoint ptr %bt_profile_case30.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 9, ptr %bt_profile_case30.i, align 4
  %bt_profile_action32.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 45
  %174 = ptrtoint ptr %bt_profile_action32.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 9, ptr %bt_profile_action32.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.108) #6
  %175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %btdm8723.i81.i) #6
  %177 = getelementptr inbounds i8, ptr %btdm8723.i81.i, i32 20
  %178 = call ptr @memset(ptr %177, i32 255, i32 40)
  %tdma_on.i.i83.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 10
  %fw_dac_swing_lvl.i.i84.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 14
  %179 = ptrtoint ptr %btdm8723.i81.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %btdm8723.i81.i, align 4
  %180 = ptrtoint ptr %tdma_on.i.i83.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 0, ptr %tdma_on.i.i83.i, align 2
  %181 = ptrtoint ptr %fw_dac_swing_lvl.i.i84.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 32, ptr %fw_dac_swing_lvl.i.i84.i, align 2
  %tra_tdma_on.i.i85.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 7
  %182 = ptrtoint ptr %tra_tdma_on.i.i85.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %tra_tdma_on.i.i85.i, align 1
  %tra_tdma_ant.i.i86.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 9
  %183 = ptrtoint ptr %tra_tdma_ant.i.i86.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %tra_tdma_ant.i.i86.i, align 1
  %tra_tdma_nav.i.i87.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 8
  %184 = ptrtoint ptr %tra_tdma_nav.i.i87.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %tra_tdma_nav.i.i87.i, align 4
  %ignore_wlan_act.i.i88.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 27
  %185 = ptrtoint ptr %ignore_wlan_act.i.i88.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %ignore_wlan_act.i.i88.i, align 1
  %ps_tdma_on.i.i89.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 15
  %arrayidx6.i.i90.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 16, i32 3
  %186 = ptrtoint ptr %ps_tdma_on.i.i89.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 0, ptr %ps_tdma_on.i.i89.i, align 1
  %187 = ptrtoint ptr %arrayidx6.i.i90.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 8, ptr %arrayidx6.i.i90.i, align 1
  %188 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %177, align 4
  %pta_on.i.i92.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 17
  %189 = ptrtoint ptr %pta_on.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %pta_on.i.i92.i, align 1
  %val_0x6c0.i.i93.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 18
  %val_0x6c8.i.i94.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 19
  %val_0x6cc.i.i95.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 20
  %sw_dac_swing_on.i.i96.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 21
  %sw_dac_swing_lvl.i.i97.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 22
  %190 = ptrtoint ptr %sw_dac_swing_lvl.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 192, ptr %sw_dac_swing_lvl.i.i97.i, align 4
  %wlan_act_hi.i.i98.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 23
  %191 = ptrtoint ptr %wlan_act_hi.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 32, ptr %wlan_act_hi.i.i98.i, align 4
  %wlan_act_lo.i.i99.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 24
  %192 = ptrtoint ptr %wlan_act_lo.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 16, ptr %wlan_act_lo.i.i99.i, align 4
  %bt_retry_index.i.i100.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 25
  %193 = ptrtoint ptr %bt_retry_index.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %bt_retry_index.i.i100.i, align 4
  %dec_bt_pwr.i.i101.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 26
  %194 = ptrtoint ptr %dec_bt_pwr.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %dec_bt_pwr.i.i101.i, align 4
  %rf_rx_lpf_shrink.i102.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 5
  %195 = ptrtoint ptr %rf_rx_lpf_shrink.i102.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %rf_rx_lpf_shrink.i102.i, align 1
  %low_penalty_rate_adaptive.i103.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 4
  %196 = ptrtoint ptr %low_penalty_rate_adaptive.i103.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %low_penalty_rate_adaptive.i103.i, align 4
  %reject_aggre_pkt.i104.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 6
  %197 = ptrtoint ptr %reject_aggre_pkt.i104.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %reject_aggre_pkt.i104.i, align 2
  %198 = load i32, ptr @hal_coex_8723, align 4
  %199 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  %200 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  %201 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  %add.i35.i.i.i = add i32 %199, %198
  %add.i.i.i.i = add i32 %add.i35.i.i.i, %200
  %add.i.i.i = add i32 %add.i.i.i.i, %201
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.119, i32 noundef %add.i.i.i) #6
  %cstate_h.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 49, i32 34
  %202 = ptrtoint ptr %cstate_h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cstate_h.i.i.i, align 4
  %and.i.i105.i = and i32 %203, -8
  store i32 %and.i.i105.i, ptr %cstate_h.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add.i.i.i)
  %cmp.i.i106.i = icmp ugt i32 %add.i.i.i, 2999
  br i1 %cmp.i.i106.i, label %if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge, label %if.else.i.i.i

if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1399, i32 %add.i.i.i)
  %cmp4.i.i107.i = icmp ugt i32 %add.i.i.i, 1399
  br i1 %cmp4.i.i107.i, label %if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge, label %if.else9.i.i.i

if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i

if.else9.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %add.i.i.i)
  %cmp10.i.i.i = icmp ugt i32 %add.i.i.i, 1199
  %.str.134..str.135.i.i.i = select i1 %cmp10.i.i.i, ptr @.str.134, ptr @.str.135
  %..i.i.i = select i1 %cmp10.i.i.i, i32 2, i32 1
  %.37.i.i.i = zext i1 %cmp10.i.i.i to i8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i

rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i:   ; preds = %if.else9.i.i.i, %if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge, %if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge
  %.str.133.sink.i.i.i = phi ptr [ @.str.132, %if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ @.str.133, %if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ %.str.134..str.135.i.i.i, %if.else9.i.i.i ]
  %.sink36.i.i.i = phi i32 [ 8, %if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ 4, %if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ %..i.i.i, %if.else9.i.i.i ]
  %bt_tx_rx_cnt_lvl.0.i.i.i = phi i8 [ 3, %if.then25.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ 2, %if.else.i.i.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i_crit_edge ], [ %.37.i.i.i, %if.else9.i.i.i ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.133.sink.i.i.i) #6
  %204 = ptrtoint ptr %cstate_h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cstate_h.i.i.i, align 4
  %or8.i.i.i = or i32 %205, %.sink36.i.i.i
  store i32 %or8.i.i.i, ptr %cstate_h.i.i.i, align 4
  %conv.i.i = zext i8 %bt_tx_rx_cnt_lvl.0.i.i.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.119, i32 noundef %conv.i.i) #6
  %current_chan_bw.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 14, i32 5
  %206 = ptrtoint ptr %current_chan_bw.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %current_chan_bw.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %207)
  %cmp.i108.i = icmp eq i8 %207, 1
  br i1 %cmp.i108.i, label %if.then.i111.i, label %if.else89.i.i

if.then.i111.i:                                   ; preds = %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.120) #6
  %call3.i.i = call zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext 37, i8 noundef zeroext 0) #6
  %208 = ptrtoint ptr %val_0x6c0.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1431655765, ptr %val_0x6c0.i.i93.i, align 4
  %209 = ptrtoint ptr %val_0x6c8.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 65535, ptr %val_0x6c8.i.i94.i, align 4
  %210 = ptrtoint ptr %val_0x6cc.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 3, ptr %val_0x6cc.i.i95.i, align 4
  %agc_table_en.i109.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 1
  %211 = ptrtoint ptr %agc_table_en.i109.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %agc_table_en.i109.i, align 1
  %adc_back_off_on.i110.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 2
  %212 = ptrtoint ptr %adc_back_off_on.i110.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %adc_back_off_on.i110.i, align 2
  %213 = ptrtoint ptr %sw_dac_swing_on.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %sw_dac_swing_on.i.i96.i, align 4
  %214 = ptrtoint ptr %ps_tdma_on.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %ps_tdma_on.i.i89.i, align 1
  %215 = zext i8 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %call3.i.i, label %if.else47.i.i [
    i8 0, label %if.then.i111.i.if.then10.i.i_crit_edge
    i8 3, label %if.then.i111.i.if.then10.i.i_crit_edge46
  ]

if.then.i111.i.if.then10.i.i_crit_edge46:         ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

if.then.i111.i.if.then10.i.i_crit_edge:           ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.then.i111.i.if.then10.i.i_crit_edge, %if.then.i111.i.if.then10.i.i_crit_edge46
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.125) #6
  %trunc276.i.i = trunc i8 %bt_tx_rx_cnt_lvl.0.i.i.i to i2
  %216 = zext i2 %trunc276.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.149)
  switch i2 %trunc276.i.i, label %if.else35.i.i [
    i2 -2, label %if.then10.i.i.if.end202.i.i_crit_edge
    i2 1, label %if.then24.i.i
  ]

if.then10.i.i.if.end202.i.i_crit_edge:            ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.then24.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else35.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else47.i.i:                                    ; preds = %if.then.i111.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.126) #6
  %trunc277.i.i = trunc i8 %bt_tx_rx_cnt_lvl.0.i.i.i to i2
  %217 = zext i2 %trunc277.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.150)
  switch i2 %trunc277.i.i, label %if.else75.i.i [
    i2 -2, label %if.else47.i.i.if.end202.i.i_crit_edge
    i2 1, label %if.then64.i.i
  ]

if.else47.i.i.if.end202.i.i_crit_edge:            ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.then64.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else75.i.i:                                    ; preds = %if.else47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else89.i.i:                                    ; preds = %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit.i.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.124) #6
  %call90.i.i = call zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext 47, i8 noundef zeroext 0) #6
  %call91.i.i = call zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state1(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext 27, i8 noundef zeroext 0) #6
  %218 = ptrtoint ptr %val_0x6c0.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1431655765, ptr %val_0x6c0.i.i93.i, align 4
  %219 = ptrtoint ptr %val_0x6c8.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 65535, ptr %val_0x6c8.i.i94.i, align 4
  %220 = ptrtoint ptr %val_0x6cc.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 3, ptr %val_0x6cc.i.i95.i, align 4
  %221 = zext i8 %call90.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %call90.i.i, label %if.else106.i.i [
    i8 0, label %if.else89.i.i.if.end110.i.i_crit_edge
    i8 3, label %if.else89.i.i.if.end110.i.i_crit_edge47
  ]

if.else89.i.i.if.end110.i.i_crit_edge47:          ; preds = %if.else89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i.i

if.else89.i.i.if.end110.i.i_crit_edge:            ; preds = %if.else89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i.i

if.else106.i.i:                                   ; preds = %if.else89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.else106.i.i, %if.else89.i.i.if.end110.i.i_crit_edge, %if.else89.i.i.if.end110.i.i_crit_edge47
  %.str.126.sink.i.i = phi ptr [ @.str.126, %if.else106.i.i ], [ @.str.125, %if.else89.i.i.if.end110.i.i_crit_edge ], [ @.str.125, %if.else89.i.i.if.end110.i.i_crit_edge47 ]
  %.sink278.i.i = phi i8 [ 0, %if.else106.i.i ], [ 1, %if.else89.i.i.if.end110.i.i_crit_edge ], [ 1, %if.else89.i.i.if.end110.i.i_crit_edge47 ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.126.sink.i.i) #6
  %agc_table_en107.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 1
  %222 = ptrtoint ptr %agc_table_en107.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %.sink278.i.i, ptr %agc_table_en107.i.i, align 1
  %adc_back_off_on108.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 2
  %223 = ptrtoint ptr %adc_back_off_on108.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %.sink278.i.i, ptr %adc_back_off_on108.i.i, align 2
  %224 = ptrtoint ptr %sw_dac_swing_on.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %sw_dac_swing_on.i.i96.i, align 4
  %225 = ptrtoint ptr %ps_tdma_on.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %ps_tdma_on.i.i89.i, align 1
  %226 = zext i8 %call91.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %call91.i.i, label %if.else160.i.i [
    i8 0, label %if.end110.i.i.if.then119.i.i_crit_edge
    i8 3, label %if.end110.i.i.if.then119.i.i_crit_edge48
  ]

if.end110.i.i.if.then119.i.i_crit_edge48:         ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then119.i.i

if.end110.i.i.if.then119.i.i_crit_edge:           ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then119.i.i

if.then119.i.i:                                   ; preds = %if.end110.i.i.if.then119.i.i_crit_edge, %if.end110.i.i.if.then119.i.i_crit_edge48
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.127) #6
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 13, i32 5
  %227 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %228(ptr noundef %176, i32 noundef 2179, i8 noundef zeroext 64) #6
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 32
  %229 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %write_readback.i.i.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i.i112.i = icmp eq i8 %232, 0
  br i1 %tobool.not.i.i112.i, label %if.then119.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then119.i.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 13, i32 9
  %233 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %234(ptr noundef %176, i32 noundef 2179) #6
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then119.i.i.rtl_write_byte.exit.i.i_crit_edge
  %trunc.i.i = trunc i8 %bt_tx_rx_cnt_lvl.0.i.i.i to i2
  %235 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.153)
  switch i2 %trunc.i.i, label %if.else147.i.i [
    i2 -2, label %rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge
    i2 1, label %if.then136.i.i
  ]

rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge:  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.then136.i.i:                                   ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else147.i.i:                                   ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else160.i.i:                                   ; preds = %if.end110.i.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.129) #6
  %trunc275.i.i = trunc i8 %bt_tx_rx_cnt_lvl.0.i.i.i to i2
  %236 = zext i2 %trunc275.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.154)
  switch i2 %trunc275.i.i, label %if.else188.i.i [
    i2 -2, label %if.else160.i.i.if.end202.i.i_crit_edge
    i2 1, label %if.then177.i.i
  ]

if.else160.i.i.if.end202.i.i_crit_edge:           ; preds = %if.else160.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.then177.i.i:                                   ; preds = %if.else160.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.else188.i.i:                                   ; preds = %if.else160.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i.i

if.end202.i.i:                                    ; preds = %if.else188.i.i, %if.then177.i.i, %if.else160.i.i.if.end202.i.i_crit_edge, %if.else147.i.i, %if.then136.i.i, %rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge, %if.else75.i.i, %if.then64.i.i, %if.else47.i.i.if.end202.i.i_crit_edge, %if.else35.i.i, %if.then24.i.i, %if.then10.i.i.if.end202.i.i_crit_edge
  %.str.122.sink.i.i = phi ptr [ @.str.122, %if.then136.i.i ], [ @.str.123, %if.else147.i.i ], [ @.str.122, %if.then177.i.i ], [ @.str.123, %if.else188.i.i ], [ @.str.122, %if.then24.i.i ], [ @.str.123, %if.else35.i.i ], [ @.str.122, %if.then64.i.i ], [ @.str.123, %if.else75.i.i ], [ @.str.121, %if.then10.i.i.if.end202.i.i_crit_edge ], [ @.str.121, %if.else47.i.i.if.end202.i.i_crit_edge ], [ @.str.121, %rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge ], [ @.str.121, %if.else160.i.i.if.end202.i.i_crit_edge ]
  %.sink281.i.i = phi i8 [ 10, %if.then136.i.i ], [ 15, %if.else147.i.i ], [ 10, %if.then177.i.i ], [ 15, %if.else188.i.i ], [ 10, %if.then24.i.i ], [ 15, %if.else35.i.i ], [ 10, %if.then64.i.i ], [ 15, %if.else75.i.i ], [ 5, %if.then10.i.i.if.end202.i.i_crit_edge ], [ 5, %if.else47.i.i.if.end202.i.i_crit_edge ], [ 5, %rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge ], [ 5, %if.else160.i.i.if.end202.i.i_crit_edge ]
  %.sink279.i.i = phi i8 [ -127, %if.then136.i.i ], [ -127, %if.else147.i.i ], [ 0, %if.then177.i.i ], [ 0, %if.else188.i.i ], [ -127, %if.then24.i.i ], [ -127, %if.else35.i.i ], [ 0, %if.then64.i.i ], [ 0, %if.else75.i.i ], [ -127, %if.then10.i.i.if.end202.i.i_crit_edge ], [ 0, %if.else47.i.i.if.end202.i.i_crit_edge ], [ -127, %rtl_write_byte.exit.i.i.if.end202.i.i_crit_edge ], [ 0, %if.else160.i.i.if.end202.i.i_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.122.sink.i.i) #6
  %ps_tdma_byte137.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 16
  %237 = ptrtoint ptr %ps_tdma_byte137.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -93, ptr %ps_tdma_byte137.i.i, align 4
  %arrayidx140.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 16, i32 1
  %238 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %.sink281.i.i, ptr %arrayidx140.i.i, align 1
  %arrayidx142.i.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723.i81.i, i32 0, i32 16, i32 2
  %239 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %.sink281.i.i, ptr %arrayidx142.i.i, align 2
  %240 = ptrtoint ptr %arrayidx6.i.i90.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %.sink279.i.i, ptr %arrayidx6.i.i90.i, align 1
  %241 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -128, ptr %177, align 4
  %242 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %priv, align 8
  %opmode.i.i.i113.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 9, i32 8
  %244 = ptrtoint ptr %opmode.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %opmode.i.i.i113.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp.i.i.i114.i = icmp eq i32 %245, 1
  br i1 %cmp.i.i.i114.i, label %if.end202.i.i.if.then204.i.i_crit_edge, label %lor.lhs.false.i.i.i117.i

if.end202.i.i.if.then204.i.i_crit_edge:           ; preds = %if.end202.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204.i.i

lor.lhs.false.i.i.i117.i:                         ; preds = %if.end202.i.i
  %link_state.i.i.i115.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 9, i32 10
  %246 = ptrtoint ptr %link_state.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %link_state.i.i.i115.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp4.i.i.i116.i = icmp ugt i32 %247, 1
  br i1 %cmp4.i.i.i116.i, label %lor.lhs.false.i.i.i117.i.if.then204.i.i_crit_edge, label %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i119.i

lor.lhs.false.i.i.i117.i.if.then204.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then204.i.i

rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i119.i:    ; preds = %lor.lhs.false.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #8
  %cstate2.i.i118.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 49, i32 32
  %248 = ptrtoint ptr %cstate2.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %cstate2.i.i118.i, align 4
  %and.i273.i.i = and i32 %249, -129
  store i32 %and.i273.i.i, ptr %cstate2.i.i118.i, align 4
  br label %if.end205.i.i

if.then204.i.i:                                   ; preds = %lor.lhs.false.i.i.i117.i.if.then204.i.i_crit_edge, %if.end202.i.i.if.then204.i.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %243, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.118) #6
  %cstate.i.i120.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 49, i32 32
  %250 = ptrtoint ptr %cstate.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %cstate.i.i120.i, align 4
  %or.i.i121.i = or i32 %251, 128
  store i32 %or.i.i121.i, ptr %cstate.i.i120.i, align 4
  %252 = ptrtoint ptr %dec_bt_pwr.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %dec_bt_pwr.i.i101.i, align 4
  br label %if.end205.i.i

if.end205.i.i:                                    ; preds = %if.then204.i.i, %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit.i119.i
  %253 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.130, i32 noundef %253, i32 noundef %conv.i.i) #6
  %254 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.not.i122.i = icmp ne i32 %254, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bt_tx_rx_cnt_lvl.0.i.i.i)
  %cmp207.i.i = icmp eq i8 %bt_tx_rx_cnt_lvl.0.i.i.i, 3
  %or.cond.i123.i = or i1 %cmp207.i.i, %tobool.not.i122.i
  br i1 %or.cond.i123.i, label %if.then209.i.i, label %if.end205.i.i.if.end221.i.i_crit_edge

if.end205.i.i.if.end221.i.i_crit_edge:            ; preds = %if.end205.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end221.i.i

if.then209.i.i:                                   ; preds = %if.end205.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.131) #6
  %255 = ptrtoint ptr %ps_tdma_on.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %ps_tdma_on.i.i89.i, align 1
  %256 = ptrtoint ptr %ps_tdma_byte137.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 -93, ptr %ps_tdma_byte137.i.i, align 4
  %257 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 5, ptr %arrayidx140.i.i, align 1
  %258 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 5, ptr %arrayidx142.i.i, align 2
  %259 = ptrtoint ptr %arrayidx6.i.i90.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -125, ptr %arrayidx6.i.i90.i, align 1
  %260 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 -128, ptr %177, align 4
  br label %if.end221.i.i

if.end221.i.i:                                    ; preds = %if.then209.i.i, %if.end205.i.i.if.end221.i.i_crit_edge
  %call222.i.i = call zeroext i1 @rtl8723e_dm_bt_is_coexist_state_changed(ptr noundef %hw) #6
  br i1 %call222.i.i, label %if.then223.i.i, label %if.end221.i.i.rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i_crit_edge

if.end221.i.i.rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i_crit_edge: ; preds = %if.end221.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i

if.then223.i.i:                                   ; preds = %if.end221.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723e_dm_bt_set_bt_dm(ptr noundef %hw, ptr noundef nonnull %btdm8723.i81.i) #6
  br label %rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i

rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i:             ; preds = %if.then223.i.i, %if.end221.i.i.rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %btdm8723.i81.i) #6
  br label %if.end

if.else33.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  %or36.i = or i32 %171, -2147483648
  %261 = ptrtoint ptr %cstate35.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %or36.i, ptr %cstate35.i, align 4
  %bt_profile_case38.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 44
  %262 = ptrtoint ptr %bt_profile_case38.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %bt_profile_case38.i, align 4
  %bt_profile_action40.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 49, i32 45
  %263 = ptrtoint ptr %bt_profile_action40.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %bt_profile_action40.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %41, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.109) #6
  call fastcc void @rtl8723e_dm_bt_2_ant_hid_sco_esco(ptr noundef %hw) #6
  br label %if.end

if.else:                                          ; preds = %rtl8723e_dm_bt_bt_enable_disable_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.34) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.else33.i, %rtl8723e_dm_bt_2_ant_ftp_a2dp.exit.i, %if.then11.i, %if.then1.i
  %264 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %priv, align 8
  %previous_state.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 49, i32 33
  %266 = ptrtoint ptr %previous_state.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %previous_state.i, align 8
  %cstate.i40 = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 49, i32 32
  %268 = ptrtoint ptr %cstate.i40 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %cstate.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %269)
  %cmp.i41 = icmp eq i32 %267, %269
  br i1 %cmp.i41, label %land.lhs.true.i42, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

land.lhs.true.i42:                                ; preds = %if.end
  %previous_state_h.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 49, i32 35
  %270 = ptrtoint ptr %previous_state_h.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %previous_state_h.i, align 8
  %cstate_h.i = getelementptr inbounds %struct.rtl_priv, ptr %265, i32 0, i32 49, i32 34
  %272 = ptrtoint ptr %cstate_h.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %cstate_h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %273)
  %cmp4.i = icmp eq i32 %271, %273
  br i1 %cmp4.i, label %rtl8723e_dm_bt_is_same_coexist_state.exit.thread, label %land.lhs.true.i42.if.then2_crit_edge

land.lhs.true.i42.if.then2_crit_edge:             ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

rtl8723e_dm_bt_is_same_coexist_state.exit.thread: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %265, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.136) #6
  br label %if.end15

if.then2:                                         ; preds = %land.lhs.true.i42.if.then2_crit_edge, %if.end.if.then2_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %265, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.137) #6
  %previous_state_h = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 35
  %274 = ptrtoint ptr %previous_state_h to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %previous_state_h, align 8
  %previous_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 33
  %276 = ptrtoint ptr %previous_state to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %previous_state, align 8
  %cstate_h = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 34
  %278 = ptrtoint ptr %cstate_h to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cstate_h, align 4
  %cstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %280 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cstate, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.35, i32 noundef %275, i32 noundef %277, i32 noundef %279, i32 noundef %281) #6
  %282 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %cstate, align 4
  %284 = ptrtoint ptr %previous_state to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %previous_state, align 8
  %285 = ptrtoint ptr %cstate_h to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %cstate_h, align 4
  %287 = ptrtoint ptr %previous_state_h to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %previous_state_h, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then2, %rtl8723e_dm_bt_is_same_coexist_state.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_8723e_c2h_command_handle(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 416) #6
  %conv = zext i8 %call.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.36, i32 noundef %conv) #6
  %and = and i8 %call.i, 15
  %4 = lshr i8 %call.i, 4
  %5 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read8_sync.i, align 4
  %call.i89 = tail call zeroext i8 %6(ptr noundef %1, i32 noundef 417) #6
  %conv8 = zext i8 %and to i32
  %conv10 = zext i8 %4 to i32
  %conv12 = zext i8 %call.i89 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.37, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #6
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i91 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 431) #6
  %9 = zext i8 %call.i91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %call.i91, label %if.then19 [
    i8 0, label %entry.cleanup_crit_edge
    i8 -1, label %if.end8.i.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %10 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 431, i8 noundef zeroext 0) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then19.cleanup_crit_edge, label %if.then.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i, align 4
  %call.i93 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 431) #6
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv10, i32 noundef 3520) #10
  %cmp24 = icmp eq ptr %call9.i.i, null
  br i1 %cmp24, label %if.then26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call.i)
  %cmp31105.not = icmp ult i8 %call.i, 16
  br i1 %cmp31105.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i8 @llvm.umax.i8(i8 %4, i8 1)
  %wide.trip.count = zext i8 %umax to i32
  br label %for.body

if.then26:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.38) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %indvars.iv, 418
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i95 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef %add) #6
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call.i95, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cmp31105.not113 = phi i1 [ true, %for.cond.preheader.for.end_crit_edge ], [ %cmp31105.not, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %and)
  %cond = icmp eq i8 %and, 12
  br i1 %cond, label %sw.bb, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.39, i32 noundef 12) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.40, i32 noundef %conv12) #6
  %21 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call9.i.i, align 128
  %conv42 = zext i8 %22 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.41, i32 noundef %conv42) #6
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  store i8 0, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 8), align 4
  br i1 %cmp31105.not113, label %sw.bb.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %arrayidx11.i = getelementptr i8, ptr %call9.i.i, i32 1
  %sub.i = add nsw i32 %conv10, -1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end12.i.for.body.i_crit_edge ]
  %25 = trunc i32 %indvars.iv.i to i8
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %25, label %for.body.i.if.end12.i_crit_edge [
    i8 0, label %if.then.i96
    i8 1, label %if.then9.i
  ]

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i96:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call9.i.i, align 128
  store i8 %28, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 9), align 1
  br label %if.end12.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx11.i, align 1
  store i8 %30, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 8), align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then.i96, %for.body.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %indvars.iv.i)
  %cmp15.i = icmp eq i32 %sub.i, %indvars.iv.i
  %arrayidx19.sink.i = getelementptr i8, ptr %call9.i.i, i32 %indvars.iv.i
  %.str.138.sink.i = select i1 %cmp15.i, ptr @.str.138, ptr @.str.139
  %31 = ptrtoint ptr %arrayidx19.sink.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx19.sink.i, align 1
  %conv20.i = zext i8 %32 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.138.sink.i, i32 noundef %conv20.i) #6
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv10
  br i1 %exitcond.not.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end12.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %33 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 9), align 1
  %conv26.i = zext i8 %33 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.140, i32 noundef %conv26.i) #6
  %34 = load i8, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 9), align 1
  %and.i = lshr i8 %34, 2
  %and.lobit.i = and i8 %and.i, 1
  store i8 %and.lobit.i, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 6), align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not.i = icmp eq i8 %35, 0
  br i1 %tobool33.not.i, label %if.else37.i, label %if.then34.i

if.then34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.141) #6
  %bt_busy.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 46
  %36 = ptrtoint ptr %bt_busy.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %bt_busy.i, align 2
  %cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 32
  %37 = ptrtoint ptr %cstate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cstate.i, align 4
  %and36.i = and i32 %38, -4097
  store i32 %and36.i, ptr %cstate.i, align 4
  br label %rtl8723e_dm_bt_parse_bt_info.exit

if.else37.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.142) #6
  %bt_busy39.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 46
  %39 = ptrtoint ptr %bt_busy39.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %bt_busy39.i, align 2
  %cstate41.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 49, i32 32
  %40 = ptrtoint ptr %cstate41.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cstate41.i, align 4
  %or.i = or i32 %41, 4096
  store i32 %or.i, ptr %cstate41.i, align 4
  br label %rtl8723e_dm_bt_parse_bt_info.exit

rtl8723e_dm_bt_parse_bt_info.exit:                ; preds = %if.else37.i, %if.then34.i
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 66
  %46 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_btc_status, align 4
  %call44 = tail call zeroext i1 %47() #6
  br i1 %call44, label %if.then45, label %rtl8723e_dm_bt_parse_bt_info.exit.sw.epilog_crit_edge

rtl8723e_dm_bt_parse_bt_info.exit.sw.epilog_crit_edge: ; preds = %rtl8723e_dm_bt_parse_bt_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then45:                                        ; preds = %rtl8723e_dm_bt_parse_bt_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %48 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btcoexist, align 8
  %btc_periodical = getelementptr inbounds %struct.rtl_btc_ops, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %btc_periodical to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %btc_periodical, align 4
  tail call void %51(ptr noundef %1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then45, %rtl8723e_dm_bt_parse_bt_info.exit.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  %write8_async.i97 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %52 = ptrtoint ptr %write8_async.i97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8_async.i97, align 4
  tail call void %53(ptr noundef %1, i32 noundef 431, i8 noundef zeroext 0) #6
  %cfg.i98 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %54 = ptrtoint ptr %cfg.i98 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i98, align 8
  %write_readback.i99 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i99 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i99, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i100 = icmp eq i8 %57, 0
  br i1 %tobool.not.i100, label %sw.epilog.cleanup_crit_edge, label %if.then.i103

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i103:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8_sync.i, align 4
  %call.i102 = tail call zeroext i8 %59(ptr noundef %1, i32 noundef 431) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i103, %sw.epilog.cleanup_crit_edge, %if.then26, %if.then.i, %if.then19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl8723_dm_bt_check_wifi_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723e_dm_bt_2_ant_hid_sco_esco(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %btdm8723 = alloca %struct.btdm_8723, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %btdm8723) #6
  %2 = getelementptr inbounds i8, ptr %btdm8723, i32 20
  %3 = call ptr @memset(ptr %2, i32 255, i32 40)
  %tdma_on.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 10
  %fw_dac_swing_lvl.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 14
  %4 = ptrtoint ptr %btdm8723 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %btdm8723, align 4
  %5 = ptrtoint ptr %tdma_on.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %tdma_on.i, align 2
  %6 = ptrtoint ptr %fw_dac_swing_lvl.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %fw_dac_swing_lvl.i, align 2
  %tra_tdma_on.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 7
  %7 = ptrtoint ptr %tra_tdma_on.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tra_tdma_on.i, align 1
  %tra_tdma_ant.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 9
  %8 = ptrtoint ptr %tra_tdma_ant.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tra_tdma_ant.i, align 1
  %tra_tdma_nav.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 8
  %9 = ptrtoint ptr %tra_tdma_nav.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tra_tdma_nav.i, align 4
  %ignore_wlan_act.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 27
  %10 = ptrtoint ptr %ignore_wlan_act.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ignore_wlan_act.i, align 1
  %ps_tdma_on.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 15
  %arrayidx6.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 3
  %11 = ptrtoint ptr %ps_tdma_on.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %ps_tdma_on.i, align 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 4
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx8.i, align 4
  %pta_on.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 17
  %14 = ptrtoint ptr %pta_on.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pta_on.i, align 1
  %val_0x6c0.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 18
  %val_0x6c8.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 19
  %val_0x6cc.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 20
  %sw_dac_swing_on.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 21
  %sw_dac_swing_lvl.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 22
  %15 = ptrtoint ptr %sw_dac_swing_lvl.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 192, ptr %sw_dac_swing_lvl.i, align 4
  %wlan_act_hi.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 23
  %16 = ptrtoint ptr %wlan_act_hi.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %wlan_act_hi.i, align 4
  %wlan_act_lo.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 24
  %17 = ptrtoint ptr %wlan_act_lo.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %wlan_act_lo.i, align 4
  %bt_retry_index.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 25
  %18 = ptrtoint ptr %bt_retry_index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %bt_retry_index.i, align 4
  %dec_bt_pwr.i = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 26
  %19 = ptrtoint ptr %dec_bt_pwr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %dec_bt_pwr.i, align 4
  %rf_rx_lpf_shrink = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 5
  %20 = ptrtoint ptr %rf_rx_lpf_shrink to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %rf_rx_lpf_shrink, align 1
  %low_penalty_rate_adaptive = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 4
  %21 = ptrtoint ptr %low_penalty_rate_adaptive to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %low_penalty_rate_adaptive, align 4
  %reject_aggre_pkt = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 6
  %22 = ptrtoint ptr %reject_aggre_pkt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reject_aggre_pkt, align 2
  %23 = load i32, ptr @hal_coex_8723, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 1), align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 2), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 3), align 4
  %add.i35.i = add i32 %24, %23
  %add.i.i = add i32 %add.i35.i, %25
  %add.i = add i32 %add.i.i, %26
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.119, i32 noundef %add.i) #6
  %cstate_h.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 34
  %27 = ptrtoint ptr %cstate_h.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cstate_h.i, align 4
  %and.i = and i32 %28, -8
  store i32 %and.i, ptr %cstate_h.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 2999
  br i1 %cmp.i, label %entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge, label %if.else.i

entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1399, i32 %add.i)
  %cmp4.i = icmp ugt i32 %add.i, 1399
  br i1 %cmp4.i, label %if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge, label %if.else9.i

if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199, i32 %add.i)
  %cmp10.i = icmp ugt i32 %add.i, 1199
  %.str.134..str.135.i = select i1 %cmp10.i, ptr @.str.134, ptr @.str.135
  %..i = select i1 %cmp10.i, i32 2, i32 1
  %.37.i = zext i1 %cmp10.i to i8
  br label %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit

rtl8723e_dm_bt_bt_tx_rx_counter_level.exit:       ; preds = %if.else9.i, %if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge, %entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge
  %.str.133.sink.i = phi ptr [ @.str.132, %entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ @.str.133, %if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ %.str.134..str.135.i, %if.else9.i ]
  %.sink36.i = phi i32 [ 8, %entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ 4, %if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ %..i, %if.else9.i ]
  %bt_tx_rx_cnt_lvl.0.i = phi i8 [ 3, %entry.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ 2, %if.else.i.rtl8723e_dm_bt_bt_tx_rx_counter_level.exit_crit_edge ], [ %.37.i, %if.else9.i ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.133.sink.i) #6
  %29 = ptrtoint ptr %cstate_h.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cstate_h.i, align 4
  %or8.i = or i32 %30, %.sink36.i
  store i32 %or8.i, ptr %cstate_h.i, align 4
  %conv = zext i8 %bt_tx_rx_cnt_lvl.0.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.119, i32 noundef %conv) #6
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %31 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %current_chan_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp = icmp eq i8 %32, 1
  br i1 %cmp, label %if.then, label %if.else41

if.then:                                          ; preds = %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.120) #6
  %33 = ptrtoint ptr %val_0x6c0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1431655765, ptr %val_0x6c0.i, align 4
  %34 = ptrtoint ptr %val_0x6c8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %val_0x6c8.i, align 4
  %35 = ptrtoint ptr %val_0x6cc.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %val_0x6cc.i, align 4
  %agc_table_en = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 1
  %36 = ptrtoint ptr %agc_table_en to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %agc_table_en, align 1
  %adc_back_off_on = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 2
  %37 = ptrtoint ptr %adc_back_off_on to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %adc_back_off_on, align 2
  %38 = ptrtoint ptr %sw_dac_swing_on.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %sw_dac_swing_on.i, align 4
  %39 = ptrtoint ptr %ps_tdma_on.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %ps_tdma_on.i, align 1
  %trunc223 = trunc i8 %bt_tx_rx_cnt_lvl.0.i to i2
  %40 = zext i2 %trunc223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.157)
  switch i2 %trunc223, label %if.else29 [
    i2 -2, label %if.then.if.end157_crit_edge
    i2 1, label %if.then18
  ]

if.then.if.end157_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else29:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else41:                                        ; preds = %rtl8723e_dm_bt_bt_tx_rx_counter_level.exit
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.124) #6
  %call42 = tail call zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext 47, i8 noundef zeroext 0) #6
  %call43 = tail call zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state1(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext 27, i8 noundef zeroext 0) #6
  %41 = ptrtoint ptr %val_0x6c0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1431655765, ptr %val_0x6c0.i, align 4
  %42 = ptrtoint ptr %val_0x6c8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65535, ptr %val_0x6c8.i, align 4
  %43 = ptrtoint ptr %val_0x6cc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %val_0x6cc.i, align 4
  %44 = zext i8 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %call42, label %if.else57 [
    i8 0, label %if.else41.if.end61_crit_edge
    i8 3, label %if.else41.if.end61_crit_edge228
  ]

if.else41.if.end61_crit_edge228:                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.else41.if.end61_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.else57:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.else41.if.end61_crit_edge, %if.else41.if.end61_crit_edge228
  %.str.126.sink = phi ptr [ @.str.126, %if.else57 ], [ @.str.125, %if.else41.if.end61_crit_edge ], [ @.str.125, %if.else41.if.end61_crit_edge228 ]
  %.sink224 = phi i8 [ 0, %if.else57 ], [ 1, %if.else41.if.end61_crit_edge ], [ 1, %if.else41.if.end61_crit_edge228 ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.126.sink) #6
  %agc_table_en58 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 1
  %45 = ptrtoint ptr %agc_table_en58 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink224, ptr %agc_table_en58, align 1
  %adc_back_off_on59 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 2
  %46 = ptrtoint ptr %adc_back_off_on59 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink224, ptr %adc_back_off_on59, align 2
  %47 = ptrtoint ptr %sw_dac_swing_on.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %sw_dac_swing_on.i, align 4
  %48 = ptrtoint ptr %ps_tdma_on.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %ps_tdma_on.i, align 1
  %49 = zext i8 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %call43, label %if.else113 [
    i8 0, label %if.end61.if.then70_crit_edge
    i8 3, label %if.end61.if.then70_crit_edge229
  ]

if.end61.if.then70_crit_edge229:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

if.end61.if.then70_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

if.then70:                                        ; preds = %if.end61.if.then70_crit_edge, %if.end61.if.then70_crit_edge229
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.127) #6
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %50 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write8_async.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef 2179, i8 noundef zeroext 64) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %52 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %write_readback.i, align 1, !range !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.then70.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then70.rtl_write_byte.exit_crit_edge:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %56 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %57(ptr noundef %1, i32 noundef 2179) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then70.rtl_write_byte.exit_crit_edge
  %trunc = trunc i8 %bt_tx_rx_cnt_lvl.0.i to i2
  %58 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.160)
  switch i2 %trunc, label %if.else100 [
    i2 -2, label %rtl_write_byte.exit.if.end157_crit_edge
    i2 1, label %if.then89
  ]

rtl_write_byte.exit.if.end157_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then89:                                        ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else100:                                       ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else113:                                       ; preds = %if.end61
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.129) #6
  %trunc222 = trunc i8 %bt_tx_rx_cnt_lvl.0.i to i2
  %59 = zext i2 %trunc222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.161)
  switch i2 %trunc222, label %if.else143 [
    i2 -2, label %if.else113.if.end157_crit_edge
    i2 1, label %if.then132
  ]

if.else113.if.end157_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then132:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.else143:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.end157:                                        ; preds = %if.else143, %if.then132, %if.else113.if.end157_crit_edge, %if.else100, %if.then89, %rtl_write_byte.exit.if.end157_crit_edge, %if.else29, %if.then18, %if.then.if.end157_crit_edge
  %.str.128.sink = phi ptr [ @.str.128, %if.then89 ], [ @.str.123, %if.else100 ], [ @.str.122, %if.then132 ], [ @.str.123, %if.else143 ], [ @.str.123, %if.else29 ], [ @.str.122, %if.then18 ], [ @.str.121, %if.then.if.end157_crit_edge ], [ @.str.121, %rtl_write_byte.exit.if.end157_crit_edge ], [ @.str.121, %if.else113.if.end157_crit_edge ]
  %.sink227 = phi i8 [ 10, %if.then89 ], [ 15, %if.else100 ], [ 10, %if.then132 ], [ 15, %if.else143 ], [ 15, %if.else29 ], [ 10, %if.then18 ], [ 5, %if.then.if.end157_crit_edge ], [ 5, %rtl_write_byte.exit.if.end157_crit_edge ], [ 5, %if.else113.if.end157_crit_edge ]
  %.sink225 = phi i8 [ -125, %if.then89 ], [ -125, %if.else100 ], [ 2, %if.then132 ], [ 2, %if.else143 ], [ 2, %if.else29 ], [ 2, %if.then18 ], [ 2, %if.then.if.end157_crit_edge ], [ -125, %rtl_write_byte.exit.if.end157_crit_edge ], [ 2, %if.else113.if.end157_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull %.str.128.sink) #6
  %ps_tdma_byte90 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16
  %60 = ptrtoint ptr %ps_tdma_byte90 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -93, ptr %ps_tdma_byte90, align 4
  %arrayidx93 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 1
  %61 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink227, ptr %arrayidx93, align 1
  %arrayidx95 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 2
  %62 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink227, ptr %arrayidx95, align 2
  %63 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink225, ptr %arrayidx6.i, align 1
  %64 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -128, ptr %arrayidx8.i, align 4
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 9, i32 8
  %67 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %opmode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i.i = icmp eq i32 %68, 1
  br i1 %cmp.i.i, label %if.end157.if.then159_crit_edge, label %lor.lhs.false.i.i

if.end157.if.then159_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then159

lor.lhs.false.i.i:                                ; preds = %if.end157
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 9, i32 10
  %69 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp4.i.i = icmp ugt i32 %70, 1
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.if.then159_crit_edge, label %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit

lor.lhs.false.i.i.if.then159_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then159

rtl8723e_dm_bt_need_to_dec_bt_pwr.exit:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cstate2.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 49, i32 32
  %71 = ptrtoint ptr %cstate2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cstate2.i, align 4
  %and.i220 = and i32 %72, -129
  store i32 %and.i220, ptr %cstate2.i, align 4
  br label %if.end160

if.then159:                                       ; preds = %lor.lhs.false.i.i.if.then159_crit_edge, %if.end157.if.then159_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.118) #6
  %cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 49, i32 32
  %73 = ptrtoint ptr %cstate.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cstate.i, align 4
  %or.i = or i32 %74, 128
  store i32 %or.i, ptr %cstate.i, align 4
  %75 = ptrtoint ptr %dec_bt_pwr.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %dec_bt_pwr.i, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %rtl8723e_dm_bt_need_to_dec_bt_pwr.exit
  %76 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.130, i32 noundef %76, i32 noundef %conv) #6
  %77 = load i32, ptr getelementptr inbounds (%struct.bt_coexist_8723, ptr @hal_coex_8723, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not = icmp ne i32 %77, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bt_tx_rx_cnt_lvl.0.i)
  %cmp164 = icmp eq i8 %bt_tx_rx_cnt_lvl.0.i, 3
  %or.cond = or i1 %cmp164, %tobool.not
  br i1 %or.cond, label %if.then166, label %if.end160.if.end178_crit_edge

if.end160.if.end178_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

if.then166:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.131) #6
  %78 = ptrtoint ptr %ps_tdma_on.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ps_tdma_on.i, align 1
  %ps_tdma_byte168 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16
  %79 = ptrtoint ptr %ps_tdma_byte168 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -93, ptr %ps_tdma_byte168, align 4
  %arrayidx171 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 1
  %80 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 5, ptr %arrayidx171, align 1
  %arrayidx173 = getelementptr inbounds %struct.btdm_8723, ptr %btdm8723, i32 0, i32 16, i32 2
  %81 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 5, ptr %arrayidx173, align 2
  %82 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 2, ptr %arrayidx6.i, align 1
  %83 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -128, ptr %arrayidx8.i, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then166, %if.end160.if.end178_crit_edge
  %call179 = tail call zeroext i1 @rtl8723e_dm_bt_is_coexist_state_changed(ptr noundef %hw) #6
  br i1 %call179, label %if.then180, label %if.end178.if.end181_crit_edge

if.end178.if.end181_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then180:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723e_dm_bt_set_bt_dm(ptr noundef %hw, ptr noundef nonnull %btdm8723)
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %if.end178.if.end181_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %btdm8723) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_dm_bt_is_coexist_state_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state1(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !178, !180, !182, !184, !185, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 23, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 71, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 650, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 654, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 656, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 659, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 662, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 666, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 669, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 673, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 677, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 681, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 684, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 687, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 690, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 693, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 698, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 701, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 704, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 707, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 711, i32 4}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 716, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 722, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 725, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 728, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 731, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 734, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 738, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 742, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 745, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 748, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 760, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 767, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1624, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1628, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1634, i32 3}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1701, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1706, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1718, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1737, i32 3}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1740, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1743, i32 3}
!84 = !{ptr @hal_coex_8723, !85, !"hal_coex_8723", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 12, i32 31}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 490, i32 3}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 495, i32 3}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 499, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 208, i32 3}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 213, i32 3}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 185, i32 3}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 192, i32 3}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 601, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 603, i32 2}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 567, i32 2}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 569, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 618, i32 2}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 621, i32 2}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 623, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 150, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 154, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 158, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 168, i32 3}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 173, i32 3}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 517, i32 3}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 523, i32 3}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 527, i32 4}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 531, i32 4}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 534, i32 4}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 539, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 542, i32 4}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 549, i32 3}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 553, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 428, i32 3}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 432, i32 3}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 436, i32 4}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 440, i32 4}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 448, i32 4}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 451, i32 4}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 457, i32 4}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 460, i32 4}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 466, i32 3}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 468, i32 3}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 472, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 477, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 102, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 586, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 588, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 408, i32 2}
!174 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 363, i32 3}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 369, i32 3}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 388, i32 2}
!184 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1517, i32 2}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1552, i32 2}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1555, i32 2}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1588, i32 3}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1592, i32 3}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1597, i32 4}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1603, i32 3}
!200 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1410, i32 2}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1416, i32 3}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1430, i32 3}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1442, i32 5}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1453, i32 5}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1463, i32 5}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1370, i32 4}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1375, i32 2}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1383, i32 4}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 283, i32 3}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 289, i32 3}
!224 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 311, i32 3}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 314, i32 4}
!228 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 318, i32 4}
!230 = !{ptr @.str.118, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 115, i32 3}
!232 = !{ptr @.str.119, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 983, i32 2}
!234 = !{ptr @.str.120, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 987, i32 3}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1001, i32 4}
!238 = !{ptr @.str.122, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1009, i32 4}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1017, i32 4}
!242 = !{ptr @.str.124, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1026, i32 3}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1041, i32 4}
!246 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1047, i32 4}
!248 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1058, i32 4}
!250 = !{ptr @.str.128, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1072, i32 5}
!252 = !{ptr @.str.129, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1089, i32 4}
!254 = !{ptr @.str.130, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1124, i32 2}
!256 = !{ptr @.str.131, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1129, i32 3}
!258 = !{ptr @.str.132, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 941, i32 3}
!260 = !{ptr @.str.133, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 947, i32 3}
!262 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 953, i32 3}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 959, i32 3}
!266 = !{ptr @.str.136, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 134, i32 3}
!268 = !{ptr @.str.137, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 138, i32 3}
!270 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1662, i32 4}
!272 = !{ptr @.str.139, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1665, i32 4}
!274 = !{ptr @.str.140, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1669, i32 2}
!276 = !{ptr @.str.141, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1681, i32 3}
!278 = !{ptr @.str.142, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_btc.c", i32 1686, i32 3}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{i8 0, i8 2}
