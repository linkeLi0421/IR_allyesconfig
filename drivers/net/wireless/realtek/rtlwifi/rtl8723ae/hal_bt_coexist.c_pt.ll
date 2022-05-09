; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[DM][BT], RSSI_1 state switch to High\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[DM][BT], RSSI_1 state stay at Low\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[DM][BT], RSSI_1 state switch to Low\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[DM][BT], RSSI_1 state stay at High\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[DM][BT], RSSI_1 thresh error!!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[DM][BT], RSSI_1 state switch to Medium\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[DM][BT], RSSI_1 state stay at Medium\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[DM][BT], RSSI state switch to High\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[DM][BT], RSSI state stay at Low\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[DM][BT], RSSI state switch to Low\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[DM][BT], RSSI state stay at High\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[DM][BT], RSSI thresh error!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[DM][BT], RSSI state switch to Medium\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[DM][BT], RSSI state stay at Medium\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s = %ld\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.rtl8723e_dm_bt_get_rx_ss = private unnamed_addr constant [25 x i8] c"rtl8723e_dm_bt_get_rx_ss\00", align 1
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[DM][BT], Balance=[%s:%dms:%dms], write 0xc=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[BT]AGCTable Off!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[BT]AGCTable On!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BT]BBBackOffLevel Off!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BT]BBBackOffLevel On!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtl8723e_dm_bt_fw_coex_all_off()\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rtl8723e_dm_bt_fw_coex_all_off(), real Do\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.rtl8723e_dm_bt_sw_coex_all_off = private unnamed_addr constant [31 x i8] c"rtl8723e_dm_bt_sw_coex_all_off\00", align 1
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, real Do\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.rtl8723e_dm_bt_hw_coex_all_off = private unnamed_addr constant [31 x i8] c"rtl8723e_dm_bt_hw_coex_all_off\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 105, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 109, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 119, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 123, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 129, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 147, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 181, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 233, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 237, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 247, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 251, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 257, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 274, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 308, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 345, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 370, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 384, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 403, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 431, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 435, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 445, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 451, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 461, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [67 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 467, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723e_dm_bt_reject_ap_aggregated_packet(ptr nocapture noundef %hw, i1 noundef zeroext %b_reject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @_rtl8723_dm_bt_check_wifi_state(ptr nocapture noundef readonly %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %busytraffic = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 6
  %2 = ptrtoint ptr %busytraffic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busytraffic, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cstate22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %4 = ptrtoint ptr %cstate22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cstate22, align 4
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %5, -769
  %tx_busy_traffic = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 7
  %6 = ptrtoint ptr %tx_busy_traffic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_busy_traffic, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %and8 = and i32 %5, -769
  %or = or i32 %and, 512
  %storemerge = select i1 %tobool2.not, i32 %and8, i32 %or
  %rx_busy_traffic = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 8
  %8 = ptrtoint ptr %rx_busy_traffic to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_busy_traffic, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or14 = or i32 %storemerge, 1024
  br label %if.end30

if.else15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and18 = and i32 %storemerge, -1281
  br label %if.end30

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or23 = and i32 %5, -1793
  %and26 = or i32 %or23, 256
  br label %if.end30

if.end30:                                         ; preds = %if.else20, %if.else15, %if.then11
  %or14.sink = phi i32 [ %or14, %if.then11 ], [ %and18, %if.else15 ], [ %and26, %if.else20 ]
  %10 = ptrtoint ptr %cstate22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or14.sink, ptr %cstate22, align 4
  %mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.else47 [
    i16 4, label %if.end30.if.then37_crit_edge
    i16 2, label %if.end30.if.then37_crit_edge103
  ]

if.end30.if.then37_crit_edge103:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

if.then37:                                        ; preds = %if.end30.if.then37_crit_edge, %if.end30.if.then37_crit_edge103
  %cstate39 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %14 = ptrtoint ptr %cstate39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cstate39, align 4
  %or40 = and i32 %15, -15
  %and43 = or i32 %or40, 8
  store i32 %and43, ptr %cstate39, align 4
  br label %if.else75

if.else47:                                        ; preds = %if.end30
  %cstate49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %16 = ptrtoint ptr %cstate49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cstate49, align 4
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %18 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %current_chan_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp52 = icmp eq i8 %19, 1
  %or57 = and i32 %17, -15
  br i1 %cmp52, label %if.then54, label %if.else61

if.then54:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  %and60 = or i32 %or57, 4
  %20 = ptrtoint ptr %cstate49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and60, ptr %cstate49, align 4
  br label %if.else75

if.else61:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  %and67 = or i32 %or57, 2
  %21 = ptrtoint ptr %cstate49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and67, ptr %cstate49, align 4
  br label %if.else75

if.else75:                                        ; preds = %if.else61, %if.then54, %if.then37
  %cstate77 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %22 = ptrtoint ptr %cstate77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cstate77, align 4
  %and78 = and i32 %23, -2
  store i32 %and78, ptr %cstate77, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state1(ptr nocapture noundef readonly %hw, i8 noundef zeroext %level_num, i8 noundef zeroext %rssi_thresh, i8 noundef zeroext %rssi_thresh1) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.i = icmp eq i32 %5, 1
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %cond.in.i = select i1 %cmp2.i, ptr %dm.i, ptr %undec_sm_pwdb.i
  br label %rtl8723e_dm_bt_get_rx_ss.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dm4.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  br label %rtl8723e_dm_bt_get_rx_ss.exit

rtl8723e_dm_bt_get_rx_ss.exit:                    ; preds = %if.else.i, %if.then.i
  %undecoratedsmoothed_pwdb.0.in.i = phi ptr [ %cond.in.i, %if.then.i ], [ %dm4.i, %if.else.i ]
  %6 = ptrtoint ptr %undecoratedsmoothed_pwdb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %undecoratedsmoothed_pwdb.0.i = load i32, ptr %undecoratedsmoothed_pwdb.0.in.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rtl8723e_dm_bt_get_rx_ss, i32 noundef %undecoratedsmoothed_pwdb.0.i) #6
  %7 = zext i8 %level_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %level_num, label %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge [
    i8 2, label %if.then
    i8 3, label %if.then39
  ]

rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge: ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then:                                          ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  %cstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %8 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cstate, align 4
  %and = and i32 %9, -33554433
  store i32 %and, ptr %cstate, align 4
  %bt_pre_rssi_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %10 = ptrtoint ptr %bt_pre_rssi_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_pre_rssi_state, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %11, label %if.else21 [
    i8 2, label %if.then.if.then11_crit_edge
    i8 5, label %if.then.if.then11_crit_edge194
  ]

if.then.if.then11_crit_edge194:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.then.if.then11_crit_edge, %if.then.if.then11_crit_edge194
  %conv12 = zext i8 %rssi_thresh to i32
  %add = add nuw nsw i32 %conv12, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add)
  %cmp13.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add
  br i1 %cmp13.not, label %if.then11.if.end139.sink.split_crit_edge, label %if.then11.if.end139.sink.split.sink.split_crit_edge

if.then11.if.end139.sink.split.sink.split_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split

if.then11.if.end139.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else21:                                        ; preds = %if.then
  %conv22 = zext i8 %rssi_thresh to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv22)
  %cmp23 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv22
  br i1 %cmp23, label %if.else21.if.end139.sink.split.sink.split_crit_edge, label %if.else21.if.end139.sink.split_crit_edge

if.else21.if.end139.sink.split_crit_edge:         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else21.if.end139.sink.split.sink.split_crit_edge: ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split

if.then39:                                        ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  %conv40 = zext i8 %rssi_thresh to i32
  %conv41 = zext i8 %rssi_thresh1 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %rssi_thresh, i8 %rssi_thresh1)
  %cmp42 = icmp ugt i8 %rssi_thresh, %rssi_thresh1
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.4) #6
  %bt_pre_rssi_state46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %13 = ptrtoint ptr %bt_pre_rssi_state46 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_pre_rssi_state46, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  %bt_pre_rssi_state49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %15 = ptrtoint ptr %bt_pre_rssi_state49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bt_pre_rssi_state49, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %16, label %if.else120 [
    i8 2, label %if.end47.if.then59_crit_edge
    i8 5, label %if.end47.if.then59_crit_edge195
    i8 1, label %if.end47.if.then88_crit_edge
    i8 4, label %if.end47.if.then88_crit_edge196
  ]

if.end47.if.then88_crit_edge196:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end47.if.then88_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end47.if.then59_crit_edge195:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.end47.if.then59_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.then59:                                        ; preds = %if.end47.if.then59_crit_edge, %if.end47.if.then59_crit_edge195
  %add61 = add nuw nsw i32 %conv40, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add61)
  %cmp62.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add61
  br i1 %cmp62.not, label %if.then59.if.end139.sink.split_crit_edge, label %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge

if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.then59.if.end139.sink.split_crit_edge:         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.then88:                                        ; preds = %if.end47.if.then88_crit_edge, %if.end47.if.then88_crit_edge196
  %add90 = add nuw nsw i32 %conv41, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add90)
  %cmp91.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add90
  br i1 %cmp91.not, label %if.else103, label %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge

if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.else103:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv40)
  %cmp105 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv40
  br i1 %cmp105, label %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge, label %if.else103.if.end139.sink.split_crit_edge

if.else103.if.end139.sink.split_crit_edge:        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.else120:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv41)
  %cmp122 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv41
  br i1 %cmp122, label %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge, label %if.else120.if.end139.sink.split_crit_edge

if.else120.if.end139.sink.split_crit_edge:        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.end139.sink.split.sink.split.sink.split:       ; preds = %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge
  %.sink.ph = phi i32 [ 33554432, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 67108864, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 16777216, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 33554432, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %.str.2.sink.ph.ph = phi ptr [ @.str.5, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str.2, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str.5, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %bt_rssi_state.0.ph.ph.ph = phi i8 [ 1, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 0, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 2, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 1, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %cstate66 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %18 = ptrtoint ptr %cstate66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cstate66, align 4
  br label %if.end139.sink.split.sink.split

if.end139.sink.split.sink.split:                  ; preds = %if.end139.sink.split.sink.split.sink.split, %if.else21.if.end139.sink.split.sink.split_crit_edge, %if.then11.if.end139.sink.split.sink.split_crit_edge
  %.sink193 = phi i32 [ %9, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ %9, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %19, %if.end139.sink.split.sink.split.sink.split ]
  %.sink = phi i32 [ 67108864, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ 16777216, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %.sink.ph, %if.end139.sink.split.sink.split.sink.split ]
  %cstate.sink = phi ptr [ %cstate, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ %cstate, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %cstate66, %if.end139.sink.split.sink.split.sink.split ]
  %.str.2.sink.ph = phi ptr [ @.str, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ @.str.2, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %.str.2.sink.ph.ph, %if.end139.sink.split.sink.split.sink.split ]
  %bt_rssi_state.0.ph.ph = phi i8 [ 0, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ 2, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %bt_rssi_state.0.ph.ph.ph, %if.end139.sink.split.sink.split.sink.split ]
  %or28 = and i32 %.sink193, -117440513
  %and31 = or i32 %or28, %.sink
  %20 = ptrtoint ptr %cstate.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and31, ptr %cstate.sink, align 4
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.end139.sink.split.sink.split, %if.else120.if.end139.sink.split_crit_edge, %if.else103.if.end139.sink.split_crit_edge, %if.then59.if.end139.sink.split_crit_edge, %if.else21.if.end139.sink.split_crit_edge, %if.then11.if.end139.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.1, %if.then11.if.end139.sink.split_crit_edge ], [ @.str.3, %if.else21.if.end139.sink.split_crit_edge ], [ @.str.1, %if.then59.if.end139.sink.split_crit_edge ], [ @.str.6, %if.else103.if.end139.sink.split_crit_edge ], [ @.str.3, %if.else120.if.end139.sink.split_crit_edge ], [ %.str.2.sink.ph, %if.end139.sink.split.sink.split ]
  %bt_rssi_state.0.ph = phi i8 [ 5, %if.then11.if.end139.sink.split_crit_edge ], [ 3, %if.else21.if.end139.sink.split_crit_edge ], [ 5, %if.then59.if.end139.sink.split_crit_edge ], [ 4, %if.else103.if.end139.sink.split_crit_edge ], [ 3, %if.else120.if.end139.sink.split_crit_edge ], [ %bt_rssi_state.0.ph.ph, %if.end139.sink.split.sink.split ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.2.sink) #6
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge
  %bt_rssi_state.0 = phi i8 [ 0, %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge ], [ %bt_rssi_state.0.ph, %if.end139.sink.split ]
  %bt_pre_rssi_state1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 37
  %21 = ptrtoint ptr %bt_pre_rssi_state1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bt_rssi_state.0, ptr %bt_pre_rssi_state1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.then44
  %retval.0 = phi i8 [ %bt_rssi_state.0, %if.end139 ], [ %14, %if.then44 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723e_dm_bt_get_rx_ss(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %dm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %undec_sm_pwdb = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %cond.in = select i1 %cmp2, ptr %dm, ptr %undec_sm_pwdb
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dm4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %undecoratedsmoothed_pwdb.0.in = phi ptr [ %cond.in, %if.then ], [ %dm4, %if.else ]
  %6 = ptrtoint ptr %undecoratedsmoothed_pwdb.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %undecoratedsmoothed_pwdb.0 = load i32, ptr %undecoratedsmoothed_pwdb.0.in, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rtl8723e_dm_bt_get_rx_ss, i32 noundef %undecoratedsmoothed_pwdb.0) #6
  ret i32 %undecoratedsmoothed_pwdb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8723e_dm_bt_check_coex_rssi_state(ptr nocapture noundef readonly %hw, i8 noundef zeroext %level_num, i8 noundef zeroext %rssi_thresh, i8 noundef zeroext %rssi_thresh1) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.i = icmp eq i32 %5, 1
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %cond.in.i = select i1 %cmp2.i, ptr %dm.i, ptr %undec_sm_pwdb.i
  br label %rtl8723e_dm_bt_get_rx_ss.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dm4.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15
  br label %rtl8723e_dm_bt_get_rx_ss.exit

rtl8723e_dm_bt_get_rx_ss.exit:                    ; preds = %if.else.i, %if.then.i
  %undecoratedsmoothed_pwdb.0.in.i = phi ptr [ %cond.in.i, %if.then.i ], [ %dm4.i, %if.else.i ]
  %6 = ptrtoint ptr %undecoratedsmoothed_pwdb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %undecoratedsmoothed_pwdb.0.i = load i32, ptr %undecoratedsmoothed_pwdb.0.in.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rtl8723e_dm_bt_get_rx_ss, i32 noundef %undecoratedsmoothed_pwdb.0.i) #6
  %7 = zext i8 %level_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %level_num, label %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge [
    i8 2, label %if.then
    i8 3, label %if.then39
  ]

rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge: ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then:                                          ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  %cstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %8 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cstate, align 4
  %and = and i32 %9, -33
  store i32 %and, ptr %cstate, align 4
  %bt_pre_rssi_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %10 = ptrtoint ptr %bt_pre_rssi_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_pre_rssi_state, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %11, label %if.else21 [
    i8 2, label %if.then.if.then11_crit_edge
    i8 5, label %if.then.if.then11_crit_edge195
  ]

if.then.if.then11_crit_edge195:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.then.if.then11_crit_edge, %if.then.if.then11_crit_edge195
  %conv12 = zext i8 %rssi_thresh to i32
  %add = add nuw nsw i32 %conv12, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add)
  %cmp13.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add
  br i1 %cmp13.not, label %if.then11.if.end139.sink.split_crit_edge, label %if.then11.if.end139.sink.split.sink.split_crit_edge

if.then11.if.end139.sink.split.sink.split_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split

if.then11.if.end139.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else21:                                        ; preds = %if.then
  %conv22 = zext i8 %rssi_thresh to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv22)
  %cmp23 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv22
  br i1 %cmp23, label %if.else21.if.end139.sink.split.sink.split_crit_edge, label %if.else21.if.end139.sink.split_crit_edge

if.else21.if.end139.sink.split_crit_edge:         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else21.if.end139.sink.split.sink.split_crit_edge: ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split

if.then39:                                        ; preds = %rtl8723e_dm_bt_get_rx_ss.exit
  %conv40 = zext i8 %rssi_thresh to i32
  %conv41 = zext i8 %rssi_thresh1 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %rssi_thresh, i8 %rssi_thresh1)
  %cmp42 = icmp ugt i8 %rssi_thresh, %rssi_thresh1
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.11) #6
  %bt_pre_rssi_state46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %13 = ptrtoint ptr %bt_pre_rssi_state46 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_pre_rssi_state46, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  %bt_pre_rssi_state49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %15 = ptrtoint ptr %bt_pre_rssi_state49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bt_pre_rssi_state49, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %16, label %if.else120 [
    i8 2, label %if.end47.if.then59_crit_edge
    i8 5, label %if.end47.if.then59_crit_edge196
    i8 1, label %if.end47.if.then88_crit_edge
    i8 4, label %if.end47.if.then88_crit_edge197
  ]

if.end47.if.then88_crit_edge197:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end47.if.then88_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end47.if.then59_crit_edge196:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.end47.if.then59_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.then59:                                        ; preds = %if.end47.if.then59_crit_edge, %if.end47.if.then59_crit_edge196
  %add61 = add nuw nsw i32 %conv40, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add61)
  %cmp62.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add61
  br i1 %cmp62.not, label %if.then59.if.end139.sink.split_crit_edge, label %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge

if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.then59.if.end139.sink.split_crit_edge:         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.then88:                                        ; preds = %if.end47.if.then88_crit_edge, %if.end47.if.then88_crit_edge197
  %add90 = add nuw nsw i32 %conv41, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %add90)
  %cmp91.not = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %add90
  br i1 %cmp91.not, label %if.else103, label %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge

if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.else103:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv40)
  %cmp105 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv40
  br i1 %cmp105, label %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge, label %if.else103.if.end139.sink.split_crit_edge

if.else103.if.end139.sink.split_crit_edge:        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.else120:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %undecoratedsmoothed_pwdb.0.i, i32 %conv41)
  %cmp122 = icmp slt i32 %undecoratedsmoothed_pwdb.0.i, %conv41
  br i1 %cmp122, label %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge, label %if.else120.if.end139.sink.split_crit_edge

if.else120.if.end139.sink.split_crit_edge:        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split

if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.sink.split.sink.split.sink.split

if.end139.sink.split.sink.split.sink.split:       ; preds = %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge
  %.sink.ph = phi i32 [ 32, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 64, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 16, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 32, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %.str.9.sink.ph.ph = phi ptr [ @.str.12, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str.7, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str.9, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ @.str.12, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %bt_rssi_state.0.ph.ph.ph = phi i8 [ 1, %if.then59.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 0, %if.then88.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 2, %if.else103.if.end139.sink.split.sink.split.sink.split_crit_edge ], [ 1, %if.else120.if.end139.sink.split.sink.split.sink.split_crit_edge ]
  %cstate66 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %18 = ptrtoint ptr %cstate66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cstate66, align 4
  br label %if.end139.sink.split.sink.split

if.end139.sink.split.sink.split:                  ; preds = %if.end139.sink.split.sink.split.sink.split, %if.else21.if.end139.sink.split.sink.split_crit_edge, %if.then11.if.end139.sink.split.sink.split_crit_edge
  %.sink194 = phi i32 [ %9, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ %9, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %19, %if.end139.sink.split.sink.split.sink.split ]
  %.sink = phi i32 [ 64, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ 16, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %.sink.ph, %if.end139.sink.split.sink.split.sink.split ]
  %cstate.sink = phi ptr [ %cstate, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ %cstate, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %cstate66, %if.end139.sink.split.sink.split.sink.split ]
  %.str.9.sink.ph = phi ptr [ @.str.7, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ @.str.9, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %.str.9.sink.ph.ph, %if.end139.sink.split.sink.split.sink.split ]
  %bt_rssi_state.0.ph.ph = phi i8 [ 0, %if.then11.if.end139.sink.split.sink.split_crit_edge ], [ 2, %if.else21.if.end139.sink.split.sink.split_crit_edge ], [ %bt_rssi_state.0.ph.ph.ph, %if.end139.sink.split.sink.split.sink.split ]
  %or28 = and i32 %.sink194, -113
  %and31 = or i32 %or28, %.sink
  %20 = ptrtoint ptr %cstate.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and31, ptr %cstate.sink, align 4
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.end139.sink.split.sink.split, %if.else120.if.end139.sink.split_crit_edge, %if.else103.if.end139.sink.split_crit_edge, %if.then59.if.end139.sink.split_crit_edge, %if.else21.if.end139.sink.split_crit_edge, %if.then11.if.end139.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.8, %if.then11.if.end139.sink.split_crit_edge ], [ @.str.10, %if.else21.if.end139.sink.split_crit_edge ], [ @.str.8, %if.then59.if.end139.sink.split_crit_edge ], [ @.str.13, %if.else103.if.end139.sink.split_crit_edge ], [ @.str.10, %if.else120.if.end139.sink.split_crit_edge ], [ %.str.9.sink.ph, %if.end139.sink.split.sink.split ]
  %bt_rssi_state.0.ph = phi i8 [ 5, %if.then11.if.end139.sink.split_crit_edge ], [ 3, %if.else21.if.end139.sink.split_crit_edge ], [ 5, %if.then59.if.end139.sink.split_crit_edge ], [ 4, %if.else103.if.end139.sink.split_crit_edge ], [ 3, %if.else120.if.end139.sink.split_crit_edge ], [ %bt_rssi_state.0.ph.ph, %if.end139.sink.split.sink.split ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.9.sink) #6
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge
  %bt_rssi_state.0 = phi i8 [ 0, %rtl8723e_dm_bt_get_rx_ss.exit.if.end139_crit_edge ], [ %bt_rssi_state.0.ph, %if.end139.sink.split ]
  %bt_pre_rssi_state141 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 36
  %21 = ptrtoint ptr %bt_pre_rssi_state141 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bt_rssi_state.0, ptr %bt_pre_rssi_state141, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.then44
  %retval.0 = phi i8 [ %bt_rssi_state.0, %if.end139 ], [ %14, %if.then44 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_balance(ptr noundef %hw, i1 noundef zeroext %balance_on, i8 noundef zeroext %ms0, i8 noundef zeroext %ms1) local_unnamed_addr #3 align 64 {
entry:
  %h2c_parameter = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %h2c_parameter) #6
  %2 = call ptr @memset(ptr %h2c_parameter, i32 0, i32 3)
  br i1 %balance_on, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %ms1, ptr %arrayidx1, align 1
  %5 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ms0, ptr %h2c_parameter, align 1
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %6 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fw_coexist_all_off, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi ptr [ @.str.16, %if.then ], [ @.str.17, %entry.if.end_crit_edge ]
  %frombool = zext i1 %balance_on to i8
  %balance_on8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 40
  %7 = ptrtoint ptr %balance_on8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %balance_on8, align 8
  %conv = zext i8 %ms0 to i32
  %conv11 = zext i8 %ms1 to i32
  %8 = ptrtoint ptr %h2c_parameter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_parameter, align 1
  %conv13 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv13, 16
  %arrayidx14 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or = or i32 %shl16, %shl
  %arrayidx17 = getelementptr inbounds [3 x i8], ptr %h2c_parameter, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %or19 = or i32 %or, %conv18
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv11, i32 noundef %or19) #6
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 12, i32 noundef 3, ptr noundef nonnull %h2c_parameter) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %h2c_parameter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_agc_table(ptr noundef %hw, i8 noundef zeroext %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %type, label %entry.if.end6_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.18) #6
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %3 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write32_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 3192, i32 noundef 1679556609) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_dword.exit_crit_edge, label %if.then.i

if.then.rtl_write_dword.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.then.rtl_write_dword.exit_crit_edge
  %11 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32_async.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef 3192, i32 noundef 1662844929) #6
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %write_readback.i32 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i32, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i33 = icmp eq i8 %16, 0
  br i1 %tobool.not.i33, label %rtl_write_dword.exit.rtl_write_dword.exit37_crit_edge, label %if.then.i36

rtl_write_dword.exit.rtl_write_dword.exit37_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit37

if.then.i36:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %17 = ptrtoint ptr %read32_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32_sync.i34, align 4
  %call.i35 = tail call i32 %18(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit37

rtl_write_dword.exit37:                           ; preds = %if.then.i36, %rtl_write_dword.exit.rtl_write_dword.exit37_crit_edge
  %19 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32_async.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 3192, i32 noundef 1646133249) #6
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i, align 8
  %write_readback.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i40, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i41 = icmp eq i8 %24, 0
  br i1 %tobool.not.i41, label %rtl_write_dword.exit37.rtl_write_dword.exit45_crit_edge, label %if.then.i44

rtl_write_dword.exit37.rtl_write_dword.exit45_crit_edge: ; preds = %rtl_write_dword.exit37
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit45

if.then.i44:                                      ; preds = %rtl_write_dword.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %25 = ptrtoint ptr %read32_sync.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32_sync.i42, align 4
  %call.i43 = tail call i32 %26(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit45

rtl_write_dword.exit45:                           ; preds = %if.then.i44, %rtl_write_dword.exit37.rtl_write_dword.exit45_crit_edge
  %27 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 3192, i32 noundef 1629421569) #6
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i48 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i48 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i48, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i49 = icmp eq i8 %32, 0
  br i1 %tobool.not.i49, label %rtl_write_dword.exit45.rtl_write_dword.exit53_crit_edge, label %if.then.i52

rtl_write_dword.exit45.rtl_write_dword.exit53_crit_edge: ; preds = %rtl_write_dword.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit53

if.then.i52:                                      ; preds = %rtl_write_dword.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %33 = ptrtoint ptr %read32_sync.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32_sync.i50, align 4
  %call.i51 = tail call i32 %34(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit53

rtl_write_dword.exit53:                           ; preds = %if.then.i52, %rtl_write_dword.exit45.rtl_write_dword.exit53_crit_edge
  %35 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32_async.i, align 4
  tail call void %36(ptr noundef %1, i32 noundef 3192, i32 noundef 1612709889) #6
  %37 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i, align 8
  %write_readback.i56 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i56 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i56, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i57 = icmp eq i8 %40, 0
  br i1 %tobool.not.i57, label %rtl_write_dword.exit53.rtl_write_dword.exit61_crit_edge, label %if.then.i60

rtl_write_dword.exit53.rtl_write_dword.exit61_crit_edge: ; preds = %rtl_write_dword.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit61

if.then.i60:                                      ; preds = %rtl_write_dword.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i58 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %read32_sync.i58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32_sync.i58, align 4
  %call.i59 = tail call i32 %42(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit61

rtl_write_dword.exit61:                           ; preds = %if.then.i60, %rtl_write_dword.exit53.rtl_write_dword.exit61_crit_edge
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 204800) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 462848) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 720896) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 1032192) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef 1048575, i32 noundef 197461) #6
  br label %if.end6

if.then5:                                         ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.19) #6
  %write32_async.i62 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %43 = ptrtoint ptr %write32_async.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32_async.i62, align 4
  tail call void %44(ptr noundef %1, i32 noundef 3192, i32 noundef 1310457857) #6
  %cfg.i63 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %45 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i63, align 8
  %write_readback.i64 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i64 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i64, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i65 = icmp eq i8 %48, 0
  br i1 %tobool.not.i65, label %if.then5.rtl_write_dword.exit69_crit_edge, label %if.then.i68

if.then5.rtl_write_dword.exit69_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit69

if.then.i68:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i66 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %49 = ptrtoint ptr %read32_sync.i66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32_sync.i66, align 4
  %call.i67 = tail call i32 %50(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit69

rtl_write_dword.exit69:                           ; preds = %if.then.i68, %if.then5.rtl_write_dword.exit69_crit_edge
  %51 = ptrtoint ptr %write32_async.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32_async.i62, align 4
  tail call void %52(ptr noundef %1, i32 noundef 3192, i32 noundef 1293746177) #6
  %53 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i63, align 8
  %write_readback.i72 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i72 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i72, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i73 = icmp eq i8 %56, 0
  br i1 %tobool.not.i73, label %rtl_write_dword.exit69.rtl_write_dword.exit77_crit_edge, label %if.then.i76

rtl_write_dword.exit69.rtl_write_dword.exit77_crit_edge: ; preds = %rtl_write_dword.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit77

if.then.i76:                                      ; preds = %rtl_write_dword.exit69
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i74 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %57 = ptrtoint ptr %read32_sync.i74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32_sync.i74, align 4
  %call.i75 = tail call i32 %58(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit77

rtl_write_dword.exit77:                           ; preds = %if.then.i76, %rtl_write_dword.exit69.rtl_write_dword.exit77_crit_edge
  %59 = ptrtoint ptr %write32_async.i62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32_async.i62, align 4
  tail call void %60(ptr noundef %1, i32 noundef 3192, i32 noundef 1277034497) #6
  %61 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i63, align 8
  %write_readback.i80 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_readback.i80 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %write_readback.i80, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i81 = icmp eq i8 %64, 0
  br i1 %tobool.not.i81, label %rtl_write_dword.exit77.rtl_write_dword.exit85_crit_edge, label %if.then.i84

rtl_write_dword.exit77.rtl_write_dword.exit85_crit_edge: ; preds = %rtl_write_dword.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit85

if.then.i84:                                      ; preds = %rtl_write_dword.exit77
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i82 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %65 = ptrtoint ptr %read32_sync.i82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32_sync.i82, align 4
  %call.i83 = tail call i32 %66(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit85

rtl_write_dword.exit85:                           ; preds = %if.then.i84, %rtl_write_dword.exit77.rtl_write_dword.exit85_crit_edge
  %67 = ptrtoint ptr %write32_async.i62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32_async.i62, align 4
  tail call void %68(ptr noundef %1, i32 noundef 3192, i32 noundef 1260322817) #6
  %69 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i63, align 8
  %write_readback.i88 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %write_readback.i88 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %write_readback.i88, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i89 = icmp eq i8 %72, 0
  br i1 %tobool.not.i89, label %rtl_write_dword.exit85.rtl_write_dword.exit93_crit_edge, label %if.then.i92

rtl_write_dword.exit85.rtl_write_dword.exit93_crit_edge: ; preds = %rtl_write_dword.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit93

if.then.i92:                                      ; preds = %rtl_write_dword.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i90 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %73 = ptrtoint ptr %read32_sync.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32_sync.i90, align 4
  %call.i91 = tail call i32 %74(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit93

rtl_write_dword.exit93:                           ; preds = %if.then.i92, %rtl_write_dword.exit85.rtl_write_dword.exit93_crit_edge
  %75 = ptrtoint ptr %write32_async.i62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32_async.i62, align 4
  tail call void %76(ptr noundef %1, i32 noundef 3192, i32 noundef 1243611137) #6
  %77 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i63, align 8
  %write_readback.i96 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i96 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i96, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i97 = icmp eq i8 %80, 0
  br i1 %tobool.not.i97, label %rtl_write_dword.exit93.rtl_write_dword.exit101_crit_edge, label %if.then.i100

rtl_write_dword.exit93.rtl_write_dword.exit101_crit_edge: ; preds = %rtl_write_dword.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit101

if.then.i100:                                     ; preds = %rtl_write_dword.exit93
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i98 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %81 = ptrtoint ptr %read32_sync.i98 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32_sync.i98, align 4
  %call.i99 = tail call i32 %82(ptr noundef %1, i32 noundef 3192) #6
  br label %rtl_write_dword.exit101

rtl_write_dword.exit101:                          ; preds = %if.then.i100, %rtl_write_dword.exit93.rtl_write_dword.exit101_crit_edge
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 901120) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 589824) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 331776) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 18, i32 noundef 1048575, i32 noundef 73728) #6
  tail call void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef 1048575, i32 noundef 853) #6
  %sw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 30
  %83 = ptrtoint ptr %sw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %sw_coexist_all_off, align 1
  br label %if.end6

if.end6:                                          ; preds = %rtl_write_dword.exit101, %rtl_write_dword.exit61, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_bb_back_off_level(ptr nocapture noundef readonly %hw, i8 noundef zeroext %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %type, label %entry.if.end6_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.20) #6
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %3 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write32_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 3076, i32 noundef 60839441) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %if.then.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 3076) #6
  br label %if.end6

if.then5:                                         ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.21) #6
  %write32_async.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %11 = ptrtoint ptr %write32_async.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32_async.i12, align 4
  tail call void %12(ptr noundef %1, i32 noundef 3076, i32 noundef 60847633) #6
  %cfg.i13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i13, align 8
  %write_readback.i14 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i14, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i15 = icmp eq i8 %16, 0
  br i1 %tobool.not.i15, label %if.then5.rtl_write_dword.exit19_crit_edge, label %if.then.i18

if.then5.rtl_write_dword.exit19_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit19

if.then.i18:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %17 = ptrtoint ptr %read32_sync.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32_sync.i16, align 4
  %call.i17 = tail call i32 %18(ptr noundef %1, i32 noundef 3076) #6
  br label %rtl_write_dword.exit19

rtl_write_dword.exit19:                           ; preds = %if.then.i18, %if.then5.rtl_write_dword.exit19_crit_edge
  %sw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 30
  %19 = ptrtoint ptr %sw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %sw_coexist_all_off, align 1
  br label %if.end6

if.end6:                                          ; preds = %rtl_write_dword.exit19, %if.then.i, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_fw_coex_all_off(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.22) #6
  %fw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %2 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_coexist_all_off, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.23) #6
  tail call void @rtl8723e_dm_bt_fw_coex_all_off_8723a(ptr noundef %hw) #6
  %4 = ptrtoint ptr %fw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fw_coexist_all_off, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_fw_coex_all_off_8723a(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_sw_coex_all_off(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rtl8723e_dm_bt_sw_coex_all_off) #6
  %sw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 30
  %2 = ptrtoint ptr %sw_coexist_all_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sw_coexist_all_off, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rtl8723e_dm_bt_sw_coex_all_off) #6
  tail call void @rtl8723e_dm_bt_sw_coex_all_off_8723a(ptr noundef %hw) #6
  %4 = ptrtoint ptr %sw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sw_coexist_all_off, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_sw_coex_all_off_8723a(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_hw_coex_all_off(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rtl8723e_dm_bt_hw_coex_all_off) #6
  %hw_coexist_all_off = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 31
  %2 = ptrtoint ptr %hw_coexist_all_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_coexist_all_off, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rtl8723e_dm_bt_hw_coex_all_off) #6
  tail call void @rtl8723e_dm_bt_hw_coex_all_off_8723a(ptr noundef %hw) #6
  %4 = ptrtoint ptr %hw_coexist_all_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hw_coexist_all_off, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_hw_coex_all_off_8723a(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_btdm_coex_all_off(ptr noundef %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.22) #6
  %fw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 29
  %2 = ptrtoint ptr %fw_coexist_all_off.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_coexist_all_off.i, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtl8723e_dm_bt_fw_coex_all_off.exit_crit_edge

entry.rtl8723e_dm_bt_fw_coex_all_off.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_fw_coex_all_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.23) #6
  tail call void @rtl8723e_dm_bt_fw_coex_all_off_8723a(ptr noundef %hw) #6
  %4 = ptrtoint ptr %fw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %fw_coexist_all_off.i, align 8
  br label %rtl8723e_dm_bt_fw_coex_all_off.exit

rtl8723e_dm_bt_fw_coex_all_off.exit:              ; preds = %if.end.i, %entry.rtl8723e_dm_bt_fw_coex_all_off.exit_crit_edge
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rtl8723e_dm_bt_sw_coex_all_off) #6
  %sw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 49, i32 30
  %7 = ptrtoint ptr %sw_coexist_all_off.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sw_coexist_all_off.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i4 = icmp eq i8 %8, 0
  br i1 %tobool.not.i4, label %if.end.i5, label %rtl8723e_dm_bt_fw_coex_all_off.exit.rtl8723e_dm_bt_sw_coex_all_off.exit_crit_edge

rtl8723e_dm_bt_fw_coex_all_off.exit.rtl8723e_dm_bt_sw_coex_all_off.exit_crit_edge: ; preds = %rtl8723e_dm_bt_fw_coex_all_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_sw_coex_all_off.exit

if.end.i5:                                        ; preds = %rtl8723e_dm_bt_fw_coex_all_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rtl8723e_dm_bt_sw_coex_all_off) #6
  tail call void @rtl8723e_dm_bt_sw_coex_all_off_8723a(ptr noundef %hw) #6
  %9 = ptrtoint ptr %sw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %sw_coexist_all_off.i, align 1
  br label %rtl8723e_dm_bt_sw_coex_all_off.exit

rtl8723e_dm_bt_sw_coex_all_off.exit:              ; preds = %if.end.i5, %rtl8723e_dm_bt_fw_coex_all_off.exit.rtl8723e_dm_bt_sw_coex_all_off.exit_crit_edge
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rtl8723e_dm_bt_hw_coex_all_off) #6
  %hw_coexist_all_off.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 49, i32 31
  %12 = ptrtoint ptr %hw_coexist_all_off.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hw_coexist_all_off.i, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i7 = icmp eq i8 %13, 0
  br i1 %tobool.not.i7, label %if.end.i8, label %rtl8723e_dm_bt_sw_coex_all_off.exit.rtl8723e_dm_bt_hw_coex_all_off.exit_crit_edge

rtl8723e_dm_bt_sw_coex_all_off.exit.rtl8723e_dm_bt_hw_coex_all_off.exit_crit_edge: ; preds = %rtl8723e_dm_bt_sw_coex_all_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_dm_bt_hw_coex_all_off.exit

if.end.i8:                                        ; preds = %rtl8723e_dm_bt_sw_coex_all_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.rtl8723e_dm_bt_hw_coex_all_off) #6
  tail call void @rtl8723e_dm_bt_hw_coex_all_off_8723a(ptr noundef %hw) #6
  %14 = ptrtoint ptr %hw_coexist_all_off.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hw_coexist_all_off.i, align 2
  br label %rtl8723e_dm_bt_hw_coex_all_off.exit

rtl8723e_dm_bt_hw_coex_all_off.exit:              ; preds = %if.end.i8, %rtl8723e_dm_bt_sw_coex_all_off.exit.rtl8723e_dm_bt_hw_coex_all_off.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl8723e_dm_bt_is_coexist_state_changed(ptr nocapture noundef readonly %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %previous_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 33
  %2 = ptrtoint ptr %previous_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %previous_state, align 8
  %cstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 32
  %4 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %previous_state_h = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 35
  %6 = ptrtoint ptr %previous_state_h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %previous_state_h, align 8
  %cstate_h = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 34
  %8 = ptrtoint ptr %cstate_h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cstate_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp eq i32 %7, %9
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl8723e_dm_bt_is_wifi_up_link(ptr nocapture noundef readonly %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_busy_traffic = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 7
  %2 = ptrtoint ptr %tx_busy_traffic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_busy_traffic, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 105, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 109, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 119, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 123, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 129, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 147, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 181, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 233, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 237, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 247, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 251, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 257, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 274, i32 5}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 308, i32 5}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 345, i32 2}
!30 = !{ptr @__func__.rtl8723e_dm_bt_get_rx_ss, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 370, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 384, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 403, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 431, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 435, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 445, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 451, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 461, i32 2}
!49 = !{ptr @__func__.rtl8723e_dm_bt_sw_coex_all_off, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 467, i32 2}
!52 = !{ptr @__func__.rtl8723e_dm_bt_hw_coex_all_off, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 477, i32 2}
!54 = distinct !{null, !55, !"bt_operation_on", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hal_bt_coexist.c", i32 12, i32 13}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
