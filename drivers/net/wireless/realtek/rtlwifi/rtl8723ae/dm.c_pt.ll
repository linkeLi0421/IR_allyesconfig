; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8723e_dm_rf_saving.initialize = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rtl8723e_dm_rf_saving.reg_874 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8723e_dm_rf_saving.reg_c70 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8723e_dm_rf_saving.reg_85c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8723e_dm_rf_saving.reg_a74 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[DM]{BT], BT not exist!!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[DM][BT], %s\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.rtl8723e_dm_bt_coexist = private unnamed_addr constant [23 x i8] c"rtl8723e_dm_bt_coexist\00", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[DM][BT], 0x40 is 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[DM][BT], bt_dm_coexist start\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pMgntInfo->txpower_tracking = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"presta_cstate = %x, cursta_cstate = %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rssi_val_min = %x back_val %x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl8723e_dm_initial_gain_multi_sta.binitialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"curmultista_cstate = %x dig_ext_port_stage %x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCKPDStage=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" driver is going to unload\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" driver does not control rate adaptive mask\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSSI = %ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSSI_LEVEL = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PreState = %d, CurState = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtl8723e_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl8723e_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl8723e_dm_check_edca_turbo.last_bt_edca_ul = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8723e_dm_check_edca_turbo.last_bt_edca_dl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 422, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [33 x i8] c"rtl8723e_dm_rf_saving.initialize\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"reg_874\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 642, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"reg_c70\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 642, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"reg_85c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 642, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"reg_a74\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 642, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 823, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 829, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 835, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 837, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 524, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 215, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 153, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [48 x i8] c"rtl8723e_dm_initial_gain_multi_sta.binitialized\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 204, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 299, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 85, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 91, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 719, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 727, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 733, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 741, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 391, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 398, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 403, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 408, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 564, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 570, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 615, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 618, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 620, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 695, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 723, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 446, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 447, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"last_bt_edca_ul\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 448, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"last_bt_edca_dl\00", align 1
@___asan_gen_.137 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 449, i32 13 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @rtl8723e_dm_rf_saving.initialize, ptr @rtl8723e_dm_rf_saving.reg_874, ptr @rtl8723e_dm_rf_saving.reg_c70, ptr @rtl8723e_dm_rf_saving.reg_85c, ptr @rtl8723e_dm_rf_saving.reg_a74, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rtl8723e_dm_initial_gain_multi_sta.binitialized, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @rtl8723e_dm_check_edca_turbo.last_txok_cnt, ptr @rtl8723e_dm_check_edca_turbo.last_rxok_cnt, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_ul, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_dl], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_rf_saving.initialize to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_rf_saving.reg_874 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_rf_saving.reg_c70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_rf_saving.reg_85c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_rf_saving.reg_a74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_initial_gain_multi_sta.binitialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_ul to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_dl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_write_dig(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 9
  %2 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_igvalue, align 4
  %pre_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 8
  %4 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pre_igvalue, align 4
  %back_val = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 21
  %6 = ptrtoint ptr %back_val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %back_val, align 2
  %conv = sext i8 %7 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #8
  %8 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pre_igvalue, align 4
  %10 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_igvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %19(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %11) #8
  %20 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_igvalue, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %cfg.i21 = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i21, align 8
  %ops.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i22, align 4
  %set_bbreg.i23 = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %set_bbreg.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_bbreg.i23, align 4
  tail call void %29(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %21) #8
  %30 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_igvalue, align 4
  %32 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pre_igvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723e_dm_check_txpower_tracking(ptr nocapture %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723e_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
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
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dm_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %spec.select = zext i1 %cmp to i8
  %6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_rf_saving(ptr noundef %hw, i8 noundef zeroext %bforce_in_normal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %.b = load i1, ptr @rtl8723e_dm_rf_saving.initialize, align 1
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 2164, i32 noundef -1) #8
  %and = lshr i32 %call.i, 14
  %shr = and i32 %and, 115
  store i32 %shr, ptr @rtl8723e_dm_rf_saving.reg_874, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %cfg.i92 = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i92 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i92, align 8
  %ops.i93 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i93 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i93, align 4
  %get_bbreg.i94 = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 45
  %14 = ptrtoint ptr %get_bbreg.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_bbreg.i94, align 4
  %call.i95 = tail call i32 %15(ptr noundef %hw, i32 noundef 3184, i32 noundef -1) #8
  %and4 = lshr i32 %call.i95, 3
  %shr5 = and i32 %and4, 1
  store i32 %shr5, ptr @rtl8723e_dm_rf_saving.reg_c70, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %cfg.i97 = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i97, align 8
  %ops.i98 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i98, align 4
  %get_bbreg.i99 = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %get_bbreg.i99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_bbreg.i99, align 4
  %call.i100 = tail call i32 %23(ptr noundef %hw, i32 noundef 2140, i32 noundef -1) #8
  %shr8 = lshr i32 %call.i100, 24
  store i32 %shr8, ptr @rtl8723e_dm_rf_saving.reg_85c, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %cfg.i102 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i102 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i102, align 8
  %ops.i103 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i103, align 4
  %get_bbreg.i104 = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 45
  %30 = ptrtoint ptr %get_bbreg.i104 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_bbreg.i104, align 4
  %call.i105 = tail call i32 %31(ptr noundef %hw, i32 noundef 2676, i32 noundef -1) #8
  %and10 = lshr i32 %call.i105, 12
  %shr11 = and i32 %and10, 15
  store i32 %shr11, ptr @rtl8723e_dm_rf_saving.reg_a74, align 4
  store i1 true, ptr @rtl8723e_dm_rf_saving.initialize, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bforce_in_normal)
  %tobool.not = icmp eq i8 %bforce_in_normal, 0
  br i1 %tobool.not, label %if.then12, label %if.else39

if.then12:                                        ; preds = %if.end
  %rssi_val_min = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 5
  %32 = ptrtoint ptr %rssi_val_min to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rssi_val_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp13.not = icmp eq i32 %33, 0
  br i1 %cmp13.not, label %if.else36, label %if.then15

if.then15:                                        ; preds = %if.then12
  %pre_rfstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 2
  %34 = ptrtoint ptr %pre_rfstate to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pre_rfstate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp17 = icmp eq i8 %35, 1
  br i1 %cmp17, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %33)
  %cmp21 = icmp sgt i32 %33, 29
  %cur_rfstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 3
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %cur_rfstate to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %cur_rfstate, align 1
  br label %if.end41

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %cur_rfstate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %cur_rfstate, align 1
  br label %if.end41

if.else26:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %33)
  %cmp28 = icmp slt i32 %33, 26
  %cur_rfstate31 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 3
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %cur_rfstate31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cur_rfstate31, align 1
  br label %if.end41

if.else32:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cur_rfstate31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %cur_rfstate31, align 1
  br label %if.end41

if.else36:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %cur_rfstate37 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 3
  %40 = ptrtoint ptr %cur_rfstate37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %cur_rfstate37, align 1
  br label %if.end41

if.else39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cur_rfstate40 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 3
  %41 = ptrtoint ptr %cur_rfstate40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %cur_rfstate40, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.else36, %if.else32, %if.then30, %if.else, %if.then23
  %pre_rfstate42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 2
  %42 = ptrtoint ptr %pre_rfstate42 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pre_rfstate42, align 2
  %cur_rfstate44 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 36, i32 3
  %44 = ptrtoint ptr %cur_rfstate44 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cur_rfstate44, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp46.not = icmp eq i8 %43, %45
  br i1 %cmp46.not, label %if.end41.if.end58_crit_edge, label %if.then48

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp51 = icmp eq i8 %45, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i107 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i107, align 8
  %ops.i108 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i108, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 2164, i32 noundef 32, i32 noundef 1) #8
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i110 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i110, align 8
  %ops.i111 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i111, align 4
  %set_bbreg.i112 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %set_bbreg.i112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bbreg.i112, align 4
  tail call void %61(ptr noundef %hw, i32 noundef 2164, i32 noundef 1835008, i32 noundef 2) #8
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i114 = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i114, align 8
  %ops.i115 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i115, align 4
  %set_bbreg.i116 = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i116 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i116, align 4
  tail call void %69(ptr noundef %hw, i32 noundef 3184, i32 noundef 8, i32 noundef 0) #8
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i118 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i118, align 8
  %ops.i119 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i119, align 4
  %set_bbreg.i120 = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i120, align 4
  tail call void %77(ptr noundef %hw, i32 noundef 2140, i32 noundef -16777216, i32 noundef 99) #8
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %cfg.i122 = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i122, align 8
  %ops.i123 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i123 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i123, align 4
  %set_bbreg.i124 = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %set_bbreg.i124 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_bbreg.i124, align 4
  tail call void %85(ptr noundef %hw, i32 noundef 2164, i32 noundef 49152, i32 noundef 2) #8
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %cfg.i126 = getelementptr inbounds %struct.rtl_priv, ptr %87, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i126 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i126, align 8
  %ops.i127 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ops.i127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i127, align 4
  %set_bbreg.i128 = getelementptr inbounds %struct.rtl_hal_ops, ptr %91, i32 0, i32 46
  %92 = ptrtoint ptr %set_bbreg.i128 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_bbreg.i128, align 4
  tail call void %93(ptr noundef %hw, i32 noundef 2676, i32 noundef 61440, i32 noundef 3) #8
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %cfg.i130 = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i130, align 8
  %ops.i131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %ops.i131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i131, align 4
  %set_bbreg.i132 = getelementptr inbounds %struct.rtl_hal_ops, ptr %99, i32 0, i32 46
  %100 = ptrtoint ptr %set_bbreg.i132 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_bbreg.i132, align 4
  tail call void %101(ptr noundef %hw, i32 noundef 2072, i32 noundef 268435456, i32 noundef 0) #8
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %cfg.i134 = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 32
  %104 = ptrtoint ptr %cfg.i134 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i134, align 8
  %ops.i135 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ops.i135 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i135, align 4
  %set_bbreg.i136 = getelementptr inbounds %struct.rtl_hal_ops, ptr %107, i32 0, i32 46
  %108 = ptrtoint ptr %set_bbreg.i136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_bbreg.i136, align 4
  tail call void %109(ptr noundef %hw, i32 noundef 2072, i32 noundef 268435456, i32 noundef 1) #8
  br label %if.end55

if.else54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %110 = load i32, ptr @rtl8723e_dm_rf_saving.reg_874, align 4
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 8
  %cfg.i138 = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 32
  %113 = ptrtoint ptr %cfg.i138 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i138, align 8
  %ops.i139 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ops.i139 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i139, align 4
  %set_bbreg.i140 = getelementptr inbounds %struct.rtl_hal_ops, ptr %116, i32 0, i32 46
  %117 = ptrtoint ptr %set_bbreg.i140 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_bbreg.i140, align 4
  tail call void %118(ptr noundef %hw, i32 noundef 2164, i32 noundef 1884160, i32 noundef %110) #8
  %119 = load i32, ptr @rtl8723e_dm_rf_saving.reg_c70, align 4
  %120 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv, align 8
  %cfg.i142 = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 32
  %122 = ptrtoint ptr %cfg.i142 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i142, align 8
  %ops.i143 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ops.i143 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i143, align 4
  %set_bbreg.i144 = getelementptr inbounds %struct.rtl_hal_ops, ptr %125, i32 0, i32 46
  %126 = ptrtoint ptr %set_bbreg.i144 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %set_bbreg.i144, align 4
  tail call void %127(ptr noundef %hw, i32 noundef 3184, i32 noundef 8, i32 noundef %119) #8
  %128 = load i32, ptr @rtl8723e_dm_rf_saving.reg_85c, align 4
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 8
  %cfg.i146 = getelementptr inbounds %struct.rtl_priv, ptr %130, i32 0, i32 32
  %131 = ptrtoint ptr %cfg.i146 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i146, align 8
  %ops.i147 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i147, align 4
  %set_bbreg.i148 = getelementptr inbounds %struct.rtl_hal_ops, ptr %134, i32 0, i32 46
  %135 = ptrtoint ptr %set_bbreg.i148 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %set_bbreg.i148, align 4
  tail call void %136(ptr noundef %hw, i32 noundef 2140, i32 noundef -16777216, i32 noundef %128) #8
  %137 = load i32, ptr @rtl8723e_dm_rf_saving.reg_a74, align 4
  %138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv, align 8
  %cfg.i150 = getelementptr inbounds %struct.rtl_priv, ptr %139, i32 0, i32 32
  %140 = ptrtoint ptr %cfg.i150 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i150, align 8
  %ops.i151 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %ops.i151 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i151, align 4
  %set_bbreg.i152 = getelementptr inbounds %struct.rtl_hal_ops, ptr %143, i32 0, i32 46
  %144 = ptrtoint ptr %set_bbreg.i152 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %set_bbreg.i152, align 4
  tail call void %145(ptr noundef %hw, i32 noundef 2676, i32 noundef 61440, i32 noundef %137) #8
  %146 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %priv, align 8
  %cfg.i154 = getelementptr inbounds %struct.rtl_priv, ptr %147, i32 0, i32 32
  %148 = ptrtoint ptr %cfg.i154 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i154, align 8
  %ops.i155 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %ops.i155 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i155, align 4
  %set_bbreg.i156 = getelementptr inbounds %struct.rtl_hal_ops, ptr %151, i32 0, i32 46
  %152 = ptrtoint ptr %set_bbreg.i156 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %set_bbreg.i156, align 4
  tail call void %153(ptr noundef %hw, i32 noundef 2072, i32 noundef 268435456, i32 noundef 0) #8
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 8
  %cfg.i158 = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 32
  %156 = ptrtoint ptr %cfg.i158 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i158, align 8
  %ops.i159 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %ops.i159 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ops.i159, align 4
  %set_bbreg.i160 = getelementptr inbounds %struct.rtl_hal_ops, ptr %159, i32 0, i32 46
  %160 = ptrtoint ptr %set_bbreg.i160 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %set_bbreg.i160, align 4
  tail call void %161(ptr noundef %hw, i32 noundef 2164, i32 noundef 32, i32 noundef 0) #8
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  %162 = ptrtoint ptr %cur_rfstate44 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %cur_rfstate44, align 1
  %164 = ptrtoint ptr %pre_rfstate42 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %pre_rfstate42, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end41.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %2 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dm_type, align 2
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef 32) #8
  tail call void @rtl8723_dm_init_dynamic_txpower(ptr noundef %hw) #8
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #8
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 22, i32 21
  %6 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 32
  %7 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp eq i8 %8, 1
  %spec.select.i = zext i1 %cmp.i to i8
  %9 = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select.i, ptr %9, align 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %txpower_tracking.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 15, i32 13
  %13 = ptrtoint ptr %txpower_tracking.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %txpower_tracking.i.i, align 4
  %txpower_trackinginit.i.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %txpower_trackinginit.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %txpower_trackinginit.i.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %12, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  tail call void @rtl8723_dm_init_dynamic_bb_powersaving(ptr noundef %hw) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_dynamic_txpower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_dynamic_bb_powersaving(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_watchdog(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
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
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops3, align 4
  %get_hw_reg4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg4, align 4
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
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ps_awake, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfchange_inprogress, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %dm_initialgain_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 5
  %29 = ptrtoint ptr %dm_initialgain_enable.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dm_initialgain_enable.i, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then10.rtl8723e_dm_dig.exit_crit_edge, label %if.end.i

if.then10.rtl8723e_dm_dig.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_dig.exit

if.end.i:                                         ; preds = %if.then10
  %dig_enable_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 11
  %31 = ptrtoint ptr %dig_enable_flag.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dig_enable_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool2.not.i = icmp eq i8 %32, 0
  br i1 %tobool2.not.i, label %if.end.i.rtl8723e_dm_dig.exit_crit_edge, label %if.end4.i

if.end.i.rtl8723e_dm_dig.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_dig.exit

if.end4.i:                                        ; preds = %if.end.i
  %act_scanning.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 20
  %33 = ptrtoint ptr %act_scanning.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %act_scanning.i.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.i.rtl8723e_dm_dig.exit_crit_edge

if.end4.i.rtl8723e_dm_dig.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_dig.exit

if.end.i.i:                                       ; preds = %if.end4.i
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 10
  %35 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i.i = icmp ugt i32 %36, 1
  %spec.select.i.i = zext i1 %cmp.i.i to i8
  %37 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 17
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select.i.i, ptr %37, align 2
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %presta_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 18
  %41 = ptrtoint ptr %presta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %presta_cstate.i.i.i, align 1
  %conv.i.i.i = zext i8 %42 to i32
  %cursta_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 17
  %43 = ptrtoint ptr %cursta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cursta_cstate.i.i.i, align 2
  %conv2.i.i.i = zext i8 %44 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i.i, i32 noundef %conv2.i.i.i) #8
  %45 = ptrtoint ptr %presta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %presta_cstate.i.i.i, align 1
  %47 = ptrtoint ptr %cursta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cursta_cstate.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %48)
  %cmp.i.i.i = icmp eq i8 %46, %48
  %49 = freeze i1 %cmp.i.i.i
  %.off.i.i.i = add i8 %48, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i.i)
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  %or.cond.i.i.i = select i1 %49, i1 true, i1 %switch.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp19.not.i.i.i = icmp eq i8 %48, 0
  br i1 %cmp19.not.i.i.i, label %if.then.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge, label %if.then21.i.i.i

if.then.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_initial_gain_sta.exit.i.i

if.then21.i.i.i:                                  ; preds = %if.then.i.i.i
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %link_state.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 9, i32 10
  %52 = ptrtoint ptr %link_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i.i.i.i = icmp eq i32 %53, 2
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then21.i.i.i.if.end.i.i.i.i_crit_edge

if.then21.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then21.i.i.i
  %opmode.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 9, i32 8
  %54 = ptrtoint ptr %opmode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opmode.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp2.i.i.i.i = icmp eq i32 %55, 2
  br i1 %cmp2.i.i.i.i, label %land.lhs.true3.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %link_info.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 25
  %56 = ptrtoint ptr %link_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %link_info.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp4.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp4.i.i.i.i, label %land.lhs.true3.i.i.i.i.rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true3.i.i.i.i.rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true3.i.i.i.i.if.end.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then21.i.i.i.if.end.i.i.i.i_crit_edge
  %curmultista_cstate.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 35, i32 19
  %58 = ptrtoint ptr %curmultista_cstate.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %curmultista_cstate.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %59)
  %cmp5.i.i.i.i = icmp eq i8 %59, 4
  %cursta_cstate.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 35, i32 17
  %60 = ptrtoint ptr %cursta_cstate.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cursta_cstate.i.i.i.i, align 2
  br i1 %cmp5.i.i.i.i, label %land.lhs.true7.i.i.i.i, label %if.else27.thread.i.i.i.i

land.lhs.true7.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp9.i.i.i.i = icmp eq i8 %61, 1
  br i1 %cmp9.i.i.i.i, label %if.then11.i.i.i.i, label %if.else27.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %land.lhs.true7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 15
  %62 = ptrtoint ptr %dm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dm.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp12.not.i.i.i.i = icmp eq i32 %63, 0
  %undec_sm_pwdb25.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 15, i32 2
  %64 = ptrtoint ptr %undec_sm_pwdb25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %undec_sm_pwdb25.i.i.i.i, align 8
  %66 = call i32 @llvm.smin.i32(i32 %63, i32 %65) #8
  %spec.select.i.i.i.i = select i1 %cmp12.not.i.i.i.i, i32 %65, i32 %66
  br label %if.end49.i.i.i.i

if.else27.i.i.i.i:                                ; preds = %land.lhs.true7.i.i.i.i
  %.off.i.i.i.i = add i8 %61, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i8 %.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.else27.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %if.then44.i.i.i.i

if.else27.i.i.i.i.if.then36.i.i.i.i_crit_edge:    ; preds = %if.else27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i.i.i

if.else27.thread.i.i.i.i:                         ; preds = %if.end.i.i.i.i
  %.off71.i.i.i.i = add i8 %61, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off71.i.i.i.i)
  %switch72.i.i.i.i = icmp ult i8 %.off71.i.i.i.i, 2
  br i1 %switch72.i.i.i.i, label %if.else27.thread.i.i.i.i.if.then36.i.i.i.i_crit_edge, label %if.else27.thread.i.i.i.i.if.end49.i.i.i.i_crit_edge

if.else27.thread.i.i.i.i.if.end49.i.i.i.i_crit_edge: ; preds = %if.else27.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i.i.i

if.else27.thread.i.i.i.i.if.then36.i.i.i.i_crit_edge: ; preds = %if.else27.thread.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i.i.i.i

if.then36.i.i.i.i:                                ; preds = %if.else27.thread.i.i.i.i.if.then36.i.i.i.i_crit_edge, %if.else27.i.i.i.i.if.then36.i.i.i.i_crit_edge
  %undec_sm_pwdb38.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 15, i32 2
  br label %if.end49.sink.split.i.i.i.i

if.then44.i.i.i.i:                                ; preds = %if.else27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm45.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 15
  br label %if.end49.sink.split.i.i.i.i

if.end49.sink.split.i.i.i.i:                      ; preds = %if.then44.i.i.i.i, %if.then36.i.i.i.i
  %undec_sm_pwdb38.sink.i.i.i.i = phi ptr [ %undec_sm_pwdb38.i.i.i.i, %if.then36.i.i.i.i ], [ %dm45.i.i.i.i, %if.then44.i.i.i.i ]
  %67 = ptrtoint ptr %undec_sm_pwdb38.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %undec_sm_pwdb38.sink.i.i.i.i, align 8
  br label %if.end49.i.i.i.i

if.end49.i.i.i.i:                                 ; preds = %if.end49.sink.split.i.i.i.i, %if.else27.thread.i.i.i.i.if.end49.i.i.i.i_crit_edge, %if.then11.i.i.i.i
  %rssi_val_min.0.i.i.i.i = phi i32 [ 0, %if.else27.thread.i.i.i.i.if.end49.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.then11.i.i.i.i ], [ %68, %if.end49.sink.split.i.i.i.i ]
  %conv50.i.i.i.i = trunc i32 %rssi_val_min.0.i.i.i.i to i8
  br label %rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i

rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i:     ; preds = %if.end49.i.i.i.i, %land.lhs.true3.i.i.i.i.rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i8 [ %conv50.i.i.i.i, %if.end49.i.i.i.i ], [ 0, %land.lhs.true3.i.i.i.i.rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i_crit_edge ]
  %rssi_val_min.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 27
  %69 = ptrtoint ptr %rssi_val_min.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %retval.0.i.i.i.i, ptr %rssi_val_min.i.i.i, align 4
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cnt_all.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 26, i32 8
  %72 = ptrtoint ptr %cnt_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cnt_all.i.i.i.i, align 8
  %fa_highthresh.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 3
  %74 = ptrtoint ptr %fa_highthresh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fa_highthresh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.i42.i.i.i = icmp ugt i32 %73, %75
  br i1 %cmp.i42.i.i.i, label %if.then.i.i.i.i, label %if.else12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i
  %back_val.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 21
  %76 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %back_val.i.i.i.i, align 2
  %conv.i.i.i.i = sext i8 %77 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -2
  %back_range_min.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 23
  %78 = ptrtoint ptr %back_range_min.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %back_range_min.i.i.i.i, align 4
  %conv2.i.i.i.i = sext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %conv2.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %sub.i.i.i.i, %conv2.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i.i.i, label %if.else.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %back_val.i.i.i.i, align 2
  br label %if.end33.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.i.i.i.i = trunc i32 %sub.i.i.i.i to i8
  %81 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv11.i.i.i.i, ptr %back_val.i.i.i.i, align 2
  br label %if.end33.i.i.i.i

if.else12.i.i.i.i:                                ; preds = %rtl8723e_dm_initial_gain_min_pwdb.exit.i.i.i
  %fa_lowthresh.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 2
  %82 = ptrtoint ptr %fa_lowthresh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fa_lowthresh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %83)
  %cmp15.i.i.i.i = icmp ult i32 %73, %83
  br i1 %cmp15.i.i.i.i, label %if.then17.i.i.i.i, label %if.else12.i.i.i.i.if.end33.i.i.i.i_crit_edge

if.else12.i.i.i.i.if.end33.i.i.i.i_crit_edge:     ; preds = %if.else12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i.i.i

if.then17.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  %back_val18.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 21
  %84 = ptrtoint ptr %back_val18.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %back_val18.i.i.i.i, align 2
  %conv19.i.i.i.i = sext i8 %85 to i32
  %add.i.i.i.i = add nsw i32 %conv19.i.i.i.i, 2
  %back_range_max.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 22
  %86 = ptrtoint ptr %back_range_max.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %back_range_max.i.i.i.i, align 1
  %conv20.i.i.i.i = sext i8 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %conv20.i.i.i.i)
  %cmp21.i.i.i.i = icmp sgt i32 %add.i.i.i.i, %conv20.i.i.i.i
  br i1 %cmp21.i.i.i.i, label %if.then23.i.i.i.i, label %if.else26.i.i.i.i

if.then23.i.i.i.i:                                ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %back_val18.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %back_val18.i.i.i.i, align 2
  br label %if.end33.i.i.i.i

if.else26.i.i.i.i:                                ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i.i.i.i = trunc i32 %add.i.i.i.i to i8
  %89 = ptrtoint ptr %back_val18.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv30.i.i.i.i, ptr %back_val18.i.i.i.i, align 2
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.else26.i.i.i.i, %if.then23.i.i.i.i, %if.else12.i.i.i.i.if.end33.i.i.i.i_crit_edge, %if.else.i.i.i.i, %if.then5.i.i.i.i
  %rssi_val_min.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 27
  %90 = ptrtoint ptr %rssi_val_min.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rssi_val_min.i.i.i.i, align 4
  %conv34.i.i.i.i = zext i8 %91 to i32
  %add35.i.i.i.i = add nuw nsw i32 %conv34.i.i.i.i, 10
  %back_val36.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 21
  %92 = ptrtoint ptr %back_val36.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %back_val36.i.i.i.i, align 2
  %conv37.i.i.i.i = sext i8 %93 to i32
  %sub38.i.i.i.i = sub nsw i32 %add35.i.i.i.i, %conv37.i.i.i.i
  %rx_gain_max.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 24
  %94 = ptrtoint ptr %rx_gain_max.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_gain_max.i.i.i.i, align 1
  %conv39.i.i.i.i = zext i8 %95 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i.i.i.i, i32 %conv39.i.i.i.i)
  %cmp40.i.i.i.i = icmp sgt i32 %sub38.i.i.i.i, %conv39.i.i.i.i
  br i1 %cmp40.i.i.i.i, label %if.then42.i.i.i.i, label %if.else45.i.i.i.i

if.then42.i.i.i.i:                                ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cur_igvalue.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 9
  %96 = ptrtoint ptr %cur_igvalue.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv39.i.i.i.i, ptr %cur_igvalue.i.i.i.i, align 4
  br label %if.end68.i.i.i.i

if.else45.i.i.i.i:                                ; preds = %if.end33.i.i.i.i
  %rx_gain_min.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 25
  %97 = ptrtoint ptr %rx_gain_min.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rx_gain_min.i.i.i.i, align 2
  %conv52.i.i.i.i = zext i8 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i.i.i.i, i32 %conv52.i.i.i.i)
  %cmp53.i.i.i.i = icmp slt i32 %sub38.i.i.i.i, %conv52.i.i.i.i
  %cur_igvalue58.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 35, i32 9
  br i1 %cmp53.i.i.i.i, label %if.then55.i.i.i.i, label %if.else59.i.i.i.i

if.then55.i.i.i.i:                                ; preds = %if.else45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %cur_igvalue58.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv52.i.i.i.i, ptr %cur_igvalue58.i.i.i.i, align 4
  br label %if.end68.i.i.i.i

if.else59.i.i.i.i:                                ; preds = %if.else45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %cur_igvalue58.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub38.i.i.i.i, ptr %cur_igvalue58.i.i.i.i, align 4
  br label %if.end68.i.i.i.i

if.end68.i.i.i.i:                                 ; preds = %if.else59.i.i.i.i, %if.then55.i.i.i.i, %if.then42.i.i.i.i
  %101 = ptrtoint ptr %rssi_val_min.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rssi_val_min.i.i.i.i, align 4
  %conv70.i.i.i.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %back_val36.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %back_val36.i.i.i.i, align 2
  %conv72.i.i.i.i = sext i8 %104 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %71, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.7, i32 noundef %conv70.i.i.i.i, i32 noundef %conv72.i.i.i.i) #8
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %cur_igvalue.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 35, i32 9
  %107 = ptrtoint ptr %cur_igvalue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur_igvalue.i.i.i.i.i, align 4
  %pre_igvalue.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 35, i32 8
  %109 = ptrtoint ptr %pre_igvalue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pre_igvalue.i.i.i.i.i, align 4
  %back_val.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 35, i32 21
  %111 = ptrtoint ptr %back_val.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %back_val.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = sext i8 %112 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %106, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %108, i32 noundef %110, i32 noundef %conv.i.i.i.i.i) #8
  %113 = ptrtoint ptr %pre_igvalue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pre_igvalue.i.i.i.i.i, align 4
  %115 = ptrtoint ptr %cur_igvalue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cur_igvalue.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp.not.i.i.i.i.i = icmp eq i32 %114, %116
  br i1 %cmp.not.i.i.i.i.i, label %if.end68.i.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge, label %if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge

if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge: ; preds = %if.end68.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i.i.i

if.end68.i.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge: ; preds = %if.end68.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_initial_gain_sta.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %rssi_val_min22.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 27
  %117 = ptrtoint ptr %rssi_val_min22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %rssi_val_min22.i.i.i, align 4
  %dig_ext_port_stage.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 12
  %118 = ptrtoint ptr %dig_ext_port_stage.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %dig_ext_port_stage.i.i.i, align 1
  %back_val.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 21
  %119 = ptrtoint ptr %back_val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 10, ptr %back_val.i.i.i, align 2
  %cur_igvalue.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 9
  %120 = ptrtoint ptr %cur_igvalue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 32, ptr %cur_igvalue.i.i.i, align 4
  %pre_igvalue.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 35, i32 8
  %121 = ptrtoint ptr %pre_igvalue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %pre_igvalue.i.i.i, align 4
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 8
  %cur_igvalue.i44.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %123, i32 0, i32 35, i32 9
  %124 = ptrtoint ptr %cur_igvalue.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cur_igvalue.i44.i.i.i, align 4
  %pre_igvalue.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %123, i32 0, i32 35, i32 8
  %126 = ptrtoint ptr %pre_igvalue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pre_igvalue.i.i.i.i, align 4
  %back_val.i45.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %123, i32 0, i32 35, i32 21
  %128 = ptrtoint ptr %back_val.i45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %back_val.i45.i.i.i, align 2
  %conv.i46.i.i.i = sext i8 %129 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %123, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %125, i32 noundef %127, i32 noundef %conv.i46.i.i.i) #8
  %130 = ptrtoint ptr %pre_igvalue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pre_igvalue.i.i.i.i, align 4
  %132 = ptrtoint ptr %cur_igvalue.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cur_igvalue.i44.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp.not.i.i.i.i = icmp eq i32 %131, %133
  br i1 %cmp.not.i.i.i.i, label %if.else.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge, label %if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge

if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i.i.i

if.else.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_initial_gain_sta.exit.i.i

if.end23.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge, %if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ %116, %if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge ], [ %133, %if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge ]
  %cur_igvalue.i44.sink53.i.i.i = phi ptr [ %cur_igvalue.i.i.i.i.i, %if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge ], [ %cur_igvalue.i44.i.i.i, %if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge ]
  %pre_igvalue.i.sink.i.i.i = phi ptr [ %pre_igvalue.i.i.i.i.i, %if.end68.i.i.i.i.if.end23.sink.split.i.i.i_crit_edge ], [ %pre_igvalue.i.i.i.i, %if.else.i.i.i.if.end23.sink.split.i.i.i_crit_edge ]
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv, align 8
  %cfg.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %135, i32 0, i32 32
  %136 = ptrtoint ptr %cfg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg.i.i.i.i.i, align 8
  %ops.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %set_bbreg.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %139, i32 0, i32 46
  %140 = ptrtoint ptr %set_bbreg.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %set_bbreg.i.i.i.i.i, align 4
  call void %141(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %.sink.i.i.i) #8
  %142 = ptrtoint ptr %cur_igvalue.i44.sink53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cur_igvalue.i44.sink53.i.i.i, align 4
  %144 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %priv, align 8
  %cfg.i21.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %145, i32 0, i32 32
  %146 = ptrtoint ptr %cfg.i21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cfg.i21.i.i.i.i, align 8
  %ops.i22.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %ops.i22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops.i22.i.i.i.i, align 4
  %set_bbreg.i23.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %149, i32 0, i32 46
  %150 = ptrtoint ptr %set_bbreg.i23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %set_bbreg.i23.i.i.i.i, align 4
  call void %151(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %143) #8
  %152 = ptrtoint ptr %cur_igvalue.i44.sink53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cur_igvalue.i44.sink53.i.i.i, align 4
  %154 = ptrtoint ptr %pre_igvalue.i.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %pre_igvalue.i.sink.i.i.i, align 4
  br label %rtl8723e_dm_initial_gain_sta.exit.i.i

rtl8723e_dm_initial_gain_sta.exit.i.i:            ; preds = %if.end23.sink.split.i.i.i, %if.else.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge, %if.end68.i.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge, %if.then.i.i.i.rtl8723e_dm_initial_gain_sta.exit.i.i_crit_edge
  %155 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv, align 8
  %dm_digtable2.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35
  %dm.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 15
  %157 = ptrtoint ptr %dm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dm.i.i.i, align 8
  %opmode.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 9, i32 8
  %159 = ptrtoint ptr %opmode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %opmode.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp.i18.i.i = icmp eq i32 %160, 1
  br i1 %cmp.i18.i.i, label %lor.lhs.false.i.i.i, label %rtl8723e_dm_initial_gain_sta.exit.i.i.if.then5.i.i.i_crit_edge

rtl8723e_dm_initial_gain_sta.exit.i.i.if.then5.i.i.i_crit_edge: ; preds = %rtl8723e_dm_initial_gain_sta.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rtl8723e_dm_initial_gain_sta.exit.i.i
  %cursta_cstate.i19.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 17
  %161 = ptrtoint ptr %cursta_cstate.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %cursta_cstate.i19.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %cmp3.not.i.i.i = icmp eq i8 %162, 0
  br i1 %cmp3.not.i.i.i, label %if.else.i21.i.i, label %lor.lhs.false.i.i.i.if.then5.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then5.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.if.then5.i.i.i_crit_edge, %rtl8723e_dm_initial_gain_sta.exit.i.i.if.then5.i.i.i_crit_edge
  store i1 false, ptr @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 1
  %dig_ext_port_stage.i20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %163 = ptrtoint ptr %dig_ext_port_stage.i20.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 4, ptr %dig_ext_port_stage.i20.i.i, align 1
  br label %rtl8723e_dm_initial_gain_multi_sta.exit.i.i

if.else.i21.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  %.b.i.i.i = load i1, ptr @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 1
  br i1 %.b.i.i.i, label %if.else.i21.i.i.if.end10.i.i.i_crit_edge, label %if.then7.i.i.i

if.else.i21.i.i.if.end10.i.i.i_crit_edge:         ; preds = %if.else.i21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i21.i.i
  store i1 true, ptr @rtl8723e_dm_initial_gain_multi_sta.binitialized, align 1
  %dig_ext_port_stage8.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %164 = ptrtoint ptr %dig_ext_port_stage8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %dig_ext_port_stage8.i.i.i, align 1
  %cur_igvalue.i22.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 9
  %165 = ptrtoint ptr %cur_igvalue.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 32, ptr %cur_igvalue.i22.i.i, align 4
  %166 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %priv, align 8
  %cur_igvalue.i.i23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %167, i32 0, i32 35, i32 9
  %168 = ptrtoint ptr %cur_igvalue.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cur_igvalue.i.i23.i.i, align 4
  %pre_igvalue.i.i24.i.i = getelementptr inbounds %struct.rtl_priv, ptr %167, i32 0, i32 35, i32 8
  %170 = ptrtoint ptr %pre_igvalue.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pre_igvalue.i.i24.i.i, align 4
  %back_val.i.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %167, i32 0, i32 35, i32 21
  %172 = ptrtoint ptr %back_val.i.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %back_val.i.i25.i.i, align 2
  %conv.i.i26.i.i = sext i8 %173 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %167, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %169, i32 noundef %171, i32 noundef %conv.i.i26.i.i) #8
  %174 = ptrtoint ptr %pre_igvalue.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pre_igvalue.i.i24.i.i, align 4
  %176 = ptrtoint ptr %cur_igvalue.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cur_igvalue.i.i23.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %177)
  %cmp.not.i.i27.i.i = icmp eq i32 %175, %177
  br i1 %cmp.not.i.i27.i.i, label %if.then7.i.i.i.if.end10.i.i.i_crit_edge, label %if.then.i.i34.i.i

if.then7.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then.i.i34.i.i:                                ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv, align 8
  %cfg.i.i.i28.i.i = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 32
  %180 = ptrtoint ptr %cfg.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i.i.i28.i.i, align 8
  %ops.i.i.i29.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %ops.i.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i.i.i29.i.i, align 4
  %set_bbreg.i.i.i30.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %183, i32 0, i32 46
  %184 = ptrtoint ptr %set_bbreg.i.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %set_bbreg.i.i.i30.i.i, align 4
  call void %185(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %177) #8
  %186 = ptrtoint ptr %cur_igvalue.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cur_igvalue.i.i23.i.i, align 4
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  %cfg.i21.i.i31.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 32
  %190 = ptrtoint ptr %cfg.i21.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cfg.i21.i.i31.i.i, align 8
  %ops.i22.i.i32.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %ops.i22.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i22.i.i32.i.i, align 4
  %set_bbreg.i23.i.i33.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %193, i32 0, i32 46
  %194 = ptrtoint ptr %set_bbreg.i23.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %set_bbreg.i23.i.i33.i.i, align 4
  call void %195(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %187) #8
  %196 = ptrtoint ptr %cur_igvalue.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cur_igvalue.i.i23.i.i, align 4
  %198 = ptrtoint ptr %pre_igvalue.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %pre_igvalue.i.i24.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then.i.i34.i.i, %if.then7.i.i.i.if.end10.i.i.i_crit_edge, %if.else.i21.i.i.if.end10.i.i.i_crit_edge
  %curmultista_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 19
  %199 = ptrtoint ptr %curmultista_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %curmultista_cstate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %200)
  %cmp12.i.i.i = icmp eq i8 %200, 4
  br i1 %cmp12.i.i.i, label %if.then14.i.i.i, label %if.else37.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end10.i.i.i
  %201 = ptrtoint ptr %dm_digtable2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dm_digtable2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %202)
  %cmp15.i.i.i = icmp ult i32 %158, %202
  br i1 %cmp15.i.i.i, label %land.lhs.true.i.i.i, label %if.then14.i.i.i.if.else30.i.i.i_crit_edge

if.then14.i.i.i.if.else30.i.i.i_crit_edge:        ; preds = %if.then14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then14.i.i.i
  %dig_ext_port_stage17.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %203 = ptrtoint ptr %dig_ext_port_stage17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %dig_ext_port_stage17.i.i.i, align 1
  %205 = zext i8 %204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values)
  switch i8 %204, label %land.lhs.true.i.i.i.if.end28.i.i.i_crit_edge [
    i8 1, label %land.lhs.true.i.i.i.if.else30.i.i.i_crit_edge
    i8 2, label %if.then26.i.i.i
  ]

land.lhs.true.i.i.i.if.else30.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30.i.i.i

land.lhs.true.i.i.i.if.end28.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i

if.then26.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %cur_igvalue27.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 9
  %206 = ptrtoint ptr %cur_igvalue27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 32, ptr %cur_igvalue27.i.i.i, align 4
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 8
  %cur_igvalue.i73.i.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 35, i32 9
  %209 = ptrtoint ptr %cur_igvalue.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cur_igvalue.i73.i.i, align 4
  %pre_igvalue.i74.i.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 35, i32 8
  %211 = ptrtoint ptr %pre_igvalue.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pre_igvalue.i74.i.i, align 4
  %back_val.i75.i.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 35, i32 21
  %213 = ptrtoint ptr %back_val.i75.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %back_val.i75.i.i, align 2
  %conv.i76.i.i = sext i8 %214 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %208, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %210, i32 noundef %212, i32 noundef %conv.i76.i.i) #8
  %215 = ptrtoint ptr %pre_igvalue.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pre_igvalue.i74.i.i, align 4
  %217 = ptrtoint ptr %cur_igvalue.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cur_igvalue.i73.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp.not.i.i.i = icmp eq i32 %216, %218
  br i1 %cmp.not.i.i.i, label %if.then26.i.i.i.if.end28.i.i.i_crit_edge, label %if.then.i77.i.i

if.then26.i.i.i.if.end28.i.i.i_crit_edge:         ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i

if.then.i77.i.i:                                  ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %priv, align 8
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %220, i32 0, i32 32
  %221 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cfg.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bbreg.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %224, i32 0, i32 46
  %225 = ptrtoint ptr %set_bbreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %set_bbreg.i.i.i.i, align 4
  call void %226(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %218) #8
  %227 = ptrtoint ptr %cur_igvalue.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cur_igvalue.i73.i.i, align 4
  %229 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %priv, align 8
  %cfg.i21.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %230, i32 0, i32 32
  %231 = ptrtoint ptr %cfg.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cfg.i21.i.i.i, align 8
  %ops.i22.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %ops.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ops.i22.i.i.i, align 4
  %set_bbreg.i23.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %234, i32 0, i32 46
  %235 = ptrtoint ptr %set_bbreg.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %set_bbreg.i23.i.i.i, align 4
  call void %236(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %228) #8
  %237 = ptrtoint ptr %cur_igvalue.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %cur_igvalue.i73.i.i, align 4
  %239 = ptrtoint ptr %pre_igvalue.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %pre_igvalue.i74.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then.i77.i.i, %if.then26.i.i.i.if.end28.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end28.i.i.i_crit_edge
  %240 = ptrtoint ptr %dig_ext_port_stage17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %dig_ext_port_stage17.i.i.i, align 1
  br label %if.end46.i.i.i

if.else30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else30.i.i.i_crit_edge, %if.then14.i.i.i.if.else30.i.i.i_crit_edge
  %rssi_highthresh.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 1
  %241 = ptrtoint ptr %rssi_highthresh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rssi_highthresh.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %242)
  %cmp31.i.i.i = icmp ugt i32 %158, %242
  br i1 %cmp31.i.i.i, label %if.then33.i.i.i, label %if.else30.i.i.i.if.end46.i.i.i_crit_edge

if.else30.i.i.i.if.end46.i.i.i_crit_edge:         ; preds = %if.else30.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i.i

if.then33.i.i.i:                                  ; preds = %if.else30.i.i.i
  %dig_ext_port_stage34.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %243 = ptrtoint ptr %dig_ext_port_stage34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 2, ptr %dig_ext_port_stage34.i.i.i, align 1
  %244 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %priv, align 8
  %cur_igvalue.i80.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %245, i32 0, i32 35, i32 9
  %246 = ptrtoint ptr %cur_igvalue.i80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %cur_igvalue.i80.i.i.i, align 4
  %conv.i81.i.i.i = trunc i32 %247 to i8
  %cnt_all.i.i35.i.i = getelementptr inbounds %struct.rtl_priv, ptr %245, i32 0, i32 26, i32 8
  %248 = ptrtoint ptr %cnt_all.i.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %cnt_all.i.i35.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %249)
  %cmp.i.i36.i.i = icmp ult i32 %249, 32
  br i1 %cmp.i.i36.i.i, label %if.then.i82.i.i.i, label %if.else.i.i38.i.i

if.then.i82.i.i.i:                                ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i.i.i = add i8 %conv.i81.i.i.i, -1
  br label %if.end27.i.i.i.i

if.else.i.i38.i.i:                                ; preds = %if.then33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %249)
  %cmp5.i.i37.i.i = icmp ult i32 %249, 256
  br i1 %cmp5.i.i37.i.i, label %if.else.i.i38.i.i.if.end27.i.i.i.i_crit_edge, label %if.else10.i.i.i.i

if.else.i.i38.i.i.if.end27.i.i.i.i_crit_edge:     ; preds = %if.else.i.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i.i.i

if.else10.i.i.i.i:                                ; preds = %if.else.i.i38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %249)
  %cmp13.i.i.i.i = icmp ult i32 %249, 512
  br i1 %cmp13.i.i.i.i, label %if.then15.i.i.i.i, label %if.then21.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i.i.i = add i8 %conv.i81.i.i.i, 1
  br label %if.end27.i.i.i.i

if.then21.i.i.i.i:                                ; preds = %if.else10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i.i.i = add i8 %conv.i81.i.i.i, 2
  br label %if.end27.i.i.i.i

if.end27.i.i.i.i:                                 ; preds = %if.then21.i.i.i.i, %if.then15.i.i.i.i, %if.else.i.i38.i.i.if.end27.i.i.i.i_crit_edge, %if.then.i82.i.i.i
  %value_igi.0.i.i.i.i = phi i8 [ %dec.i.i.i.i, %if.then.i82.i.i.i ], [ %inc.i.i.i.i, %if.then15.i.i.i.i ], [ %conv24.i.i.i.i, %if.then21.i.i.i.i ], [ %conv.i81.i.i.i, %if.else.i.i38.i.i.if.end27.i.i.i.i_crit_edge ]
  %250 = call i8 @llvm.umax.i8(i8 %value_igi.0.i.i.i.i, i8 32) #8
  %251 = call i8 @llvm.umin.i8(i8 %250, i8 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %249)
  %cmp41.i.i.i.i = icmp ugt i32 %249, 10000
  %252 = zext i8 %251 to i32
  %conv45.i.i.i.i = select i1 %cmp41.i.i.i.i, i32 50, i32 %252
  %253 = ptrtoint ptr %cur_igvalue.i80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %conv45.i.i.i.i, ptr %cur_igvalue.i80.i.i.i, align 4
  %254 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %priv, align 8
  %cur_igvalue.i.i.i39.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 35, i32 9
  %256 = ptrtoint ptr %cur_igvalue.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %cur_igvalue.i.i.i39.i.i, align 4
  %pre_igvalue.i.i.i40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 35, i32 8
  %258 = ptrtoint ptr %pre_igvalue.i.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %pre_igvalue.i.i.i40.i.i, align 4
  %back_val.i.i.i41.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 35, i32 21
  %260 = ptrtoint ptr %back_val.i.i.i41.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %back_val.i.i.i41.i.i, align 2
  %conv.i.i.i42.i.i = sext i8 %261 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %255, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %257, i32 noundef %259, i32 noundef %conv.i.i.i42.i.i) #8
  %262 = ptrtoint ptr %pre_igvalue.i.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pre_igvalue.i.i.i40.i.i, align 4
  %264 = ptrtoint ptr %cur_igvalue.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cur_igvalue.i.i.i39.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %265)
  %cmp.not.i.i.i43.i.i = icmp eq i32 %263, %265
  br i1 %cmp.not.i.i.i43.i.i, label %if.end27.i.i.i.i.if.end46.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.end27.i.i.i.i.if.end46.i.i.i_crit_edge:        ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %266 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %priv, align 8
  %cfg.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %267, i32 0, i32 32
  %268 = ptrtoint ptr %cfg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cfg.i.i.i.i.i.i, align 8
  %ops.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %269, i32 0, i32 4
  %270 = ptrtoint ptr %ops.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ops.i.i.i.i.i.i, align 4
  %set_bbreg.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %271, i32 0, i32 46
  %272 = ptrtoint ptr %set_bbreg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %set_bbreg.i.i.i.i.i.i, align 4
  call void %273(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %265) #8
  %274 = ptrtoint ptr %cur_igvalue.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %cur_igvalue.i.i.i39.i.i, align 4
  %276 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %priv, align 8
  %cfg.i21.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %277, i32 0, i32 32
  %278 = ptrtoint ptr %cfg.i21.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cfg.i21.i.i.i.i.i, align 8
  %ops.i22.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %ops.i22.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ops.i22.i.i.i.i.i, align 4
  %set_bbreg.i23.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %281, i32 0, i32 46
  %282 = ptrtoint ptr %set_bbreg.i23.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %set_bbreg.i23.i.i.i.i.i, align 4
  call void %283(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %275) #8
  %284 = ptrtoint ptr %cur_igvalue.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %cur_igvalue.i.i.i39.i.i, align 4
  %286 = ptrtoint ptr %pre_igvalue.i.i.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %pre_igvalue.i.i.i40.i.i, align 4
  br label %if.end46.i.i.i

if.else37.i.i.i:                                  ; preds = %if.end10.i.i.i
  %dig_ext_port_stage38.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %287 = ptrtoint ptr %dig_ext_port_stage38.i.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %dig_ext_port_stage38.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %cmp40.not.i.i.i = icmp eq i8 %288, 0
  br i1 %cmp40.not.i.i.i, label %if.else37.i.i.i.if.end46.i.i.i_crit_edge, label %if.then42.i.i.i

if.else37.i.i.i.if.end46.i.i.i_crit_edge:         ; preds = %if.else37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i.i

if.then42.i.i.i:                                  ; preds = %if.else37.i.i.i
  %289 = ptrtoint ptr %dig_ext_port_stage38.i.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %dig_ext_port_stage38.i.i.i, align 1
  %cur_igvalue44.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 9
  %290 = ptrtoint ptr %cur_igvalue44.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 32, ptr %cur_igvalue44.i.i.i, align 4
  %291 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %priv, align 8
  %cur_igvalue.i84.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %292, i32 0, i32 35, i32 9
  %293 = ptrtoint ptr %cur_igvalue.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %cur_igvalue.i84.i.i.i, align 4
  %pre_igvalue.i85.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %292, i32 0, i32 35, i32 8
  %295 = ptrtoint ptr %pre_igvalue.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %pre_igvalue.i85.i.i.i, align 4
  %back_val.i86.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %292, i32 0, i32 35, i32 21
  %297 = ptrtoint ptr %back_val.i86.i.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %back_val.i86.i.i.i, align 2
  %conv.i87.i.i.i = sext i8 %298 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %292, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %294, i32 noundef %296, i32 noundef %conv.i87.i.i.i) #8
  %299 = ptrtoint ptr %pre_igvalue.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %pre_igvalue.i85.i.i.i, align 4
  %301 = ptrtoint ptr %cur_igvalue.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %cur_igvalue.i84.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %302)
  %cmp.not.i88.i.i.i = icmp eq i32 %300, %302
  br i1 %cmp.not.i88.i.i.i, label %if.then42.i.i.i.if.end46.i.i.i_crit_edge, label %if.then.i95.i.i.i

if.then42.i.i.i.if.end46.i.i.i_crit_edge:         ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i.i.i

if.then.i95.i.i.i:                                ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %303 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %priv, align 8
  %cfg.i.i89.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %304, i32 0, i32 32
  %305 = ptrtoint ptr %cfg.i.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cfg.i.i89.i.i.i, align 8
  %ops.i.i90.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %306, i32 0, i32 4
  %307 = ptrtoint ptr %ops.i.i90.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ops.i.i90.i.i.i, align 4
  %set_bbreg.i.i91.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %308, i32 0, i32 46
  %309 = ptrtoint ptr %set_bbreg.i.i91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %set_bbreg.i.i91.i.i.i, align 4
  call void %310(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %302) #8
  %311 = ptrtoint ptr %cur_igvalue.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %cur_igvalue.i84.i.i.i, align 4
  %313 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %priv, align 8
  %cfg.i21.i92.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %314, i32 0, i32 32
  %315 = ptrtoint ptr %cfg.i21.i92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cfg.i21.i92.i.i.i, align 8
  %ops.i22.i93.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %316, i32 0, i32 4
  %317 = ptrtoint ptr %ops.i22.i93.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ops.i22.i93.i.i.i, align 4
  %set_bbreg.i23.i94.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %318, i32 0, i32 46
  %319 = ptrtoint ptr %set_bbreg.i23.i94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %set_bbreg.i23.i94.i.i.i, align 4
  call void %320(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %312) #8
  %321 = ptrtoint ptr %cur_igvalue.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %cur_igvalue.i84.i.i.i, align 4
  %323 = ptrtoint ptr %pre_igvalue.i85.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %pre_igvalue.i85.i.i.i, align 4
  br label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.then.i95.i.i.i, %if.then42.i.i.i.if.end46.i.i.i_crit_edge, %if.else37.i.i.i.if.end46.i.i.i_crit_edge, %if.then.i.i.i.i.i, %if.end27.i.i.i.i.if.end46.i.i.i_crit_edge, %if.else30.i.i.i.if.end46.i.i.i_crit_edge, %if.end28.i.i.i
  %324 = ptrtoint ptr %curmultista_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %curmultista_cstate.i.i.i, align 4
  %conv48.i.i.i = zext i8 %325 to i32
  %dig_ext_port_stage49.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %156, i32 0, i32 35, i32 12
  %326 = ptrtoint ptr %dig_ext_port_stage49.i.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %dig_ext_port_stage49.i.i.i, align 1
  %conv50.i.i.i = zext i8 %327 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %156, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.8, i32 noundef %conv48.i.i.i, i32 noundef %conv50.i.i.i) #8
  br label %rtl8723e_dm_initial_gain_multi_sta.exit.i.i

rtl8723e_dm_initial_gain_multi_sta.exit.i.i:      ; preds = %if.end46.i.i.i, %if.then5.i.i.i
  %328 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %priv, align 8
  %cursta_cstate.i45.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 17
  %330 = ptrtoint ptr %cursta_cstate.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %cursta_cstate.i45.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %331)
  %cmp.i46.i.i = icmp eq i8 %331, 1
  br i1 %cmp.i46.i.i, label %if.then.i49.i.i, label %if.end26.i.thread.i.i

if.then.i49.i.i:                                  ; preds = %rtl8723e_dm_initial_gain_multi_sta.exit.i.i
  %link_state.i.i47.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 9, i32 10
  %332 = ptrtoint ptr %link_state.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %link_state.i.i47.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %333)
  %cmp.i.i48.i.i = icmp eq i32 %333, 2
  br i1 %cmp.i.i48.i.i, label %land.lhs.true.i.i52.i.i, label %if.then.i49.i.i.if.end.i.i58.i.i_crit_edge

if.then.i49.i.i.if.end.i.i58.i.i_crit_edge:       ; preds = %if.then.i49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i.i

land.lhs.true.i.i52.i.i:                          ; preds = %if.then.i49.i.i
  %opmode.i.i50.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 9, i32 8
  %334 = ptrtoint ptr %opmode.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %opmode.i.i50.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %335)
  %cmp2.i.i51.i.i = icmp eq i32 %335, 2
  br i1 %cmp2.i.i51.i.i, label %land.lhs.true3.i.i55.i.i, label %land.lhs.true.i.i52.i.i.if.end.i.i58.i.i_crit_edge

land.lhs.true.i.i52.i.i.if.end.i.i58.i.i_crit_edge: ; preds = %land.lhs.true.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i.i

land.lhs.true3.i.i55.i.i:                         ; preds = %land.lhs.true.i.i52.i.i
  %link_info.i.i53.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 25
  %336 = ptrtoint ptr %link_info.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %link_info.i.i53.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp4.i.i54.i.i = icmp eq i32 %337, 0
  br i1 %cmp4.i.i54.i.i, label %if.end26.i.thread94.i.i, label %land.lhs.true3.i.i55.i.i.if.end.i.i58.i.i_crit_edge

land.lhs.true3.i.i55.i.i.if.end.i.i58.i.i_crit_edge: ; preds = %land.lhs.true3.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i58.i.i

if.end.i.i58.i.i:                                 ; preds = %land.lhs.true3.i.i55.i.i.if.end.i.i58.i.i_crit_edge, %land.lhs.true.i.i52.i.i.if.end.i.i58.i.i_crit_edge, %if.then.i49.i.i.if.end.i.i58.i.i_crit_edge
  %curmultista_cstate.i.i56.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 19
  %338 = ptrtoint ptr %curmultista_cstate.i.i56.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %curmultista_cstate.i.i56.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %339)
  %cmp5.i.i57.i.i = icmp eq i8 %339, 4
  br i1 %cmp5.i.i57.i.i, label %if.then11.i.i63.i.i, label %if.end49.sink.split.i.i65.i.i

if.then11.i.i63.i.i:                              ; preds = %if.end.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm.i.i59.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 15
  %340 = ptrtoint ptr %dm.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %dm.i.i59.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %cmp12.not.i.i60.i.i = icmp eq i32 %341, 0
  %undec_sm_pwdb25.i.i61.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 15, i32 2
  %342 = ptrtoint ptr %undec_sm_pwdb25.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %undec_sm_pwdb25.i.i61.i.i, align 8
  %344 = call i32 @llvm.smin.i32(i32 %341, i32 %343) #8
  %spec.select.i.i62.i.i = select i1 %cmp12.not.i.i60.i.i, i32 %343, i32 %344
  br label %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i

if.end49.sink.split.i.i65.i.i:                    ; preds = %if.end.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb38.i.i64.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 15, i32 2
  %345 = ptrtoint ptr %undec_sm_pwdb38.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %undec_sm_pwdb38.i.i64.i.i, align 8
  br label %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i

rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i:   ; preds = %if.end49.sink.split.i.i65.i.i, %if.then11.i.i63.i.i
  %rssi_val_min.0.i.i66.i.i = phi i32 [ %spec.select.i.i62.i.i, %if.then11.i.i63.i.i ], [ %346, %if.end49.sink.split.i.i65.i.i ]
  %conv50.i.i67.i.i = trunc i32 %rssi_val_min.0.i.i66.i.i to i8
  %rssi_val_min.i68.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 27
  %347 = ptrtoint ptr %rssi_val_min.i68.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %conv50.i.i67.i.i, ptr %rssi_val_min.i68.i.i, align 4
  %pre_cck_pd_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 30
  %348 = ptrtoint ptr %pre_cck_pd_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %pre_cck_pd_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %cmp4.i.i.i = icmp eq i8 %349, 0
  %..i.i = select i1 %cmp4.i.i.i, i8 25, i8 20
  call void @__sanitizer_cov_trace_cmp1(i8 %..i.i, i8 %conv50.i.i67.i.i)
  %cmp16.i.i.i = icmp ult i8 %..i.i, %conv50.i.i67.i.i
  %.sink.i70.i.i = zext i1 %cmp16.i.i.i to i8
  %cur_cck_pd_state12.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 31
  %350 = ptrtoint ptr %cur_cck_pd_state12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %.sink.i70.i.i, ptr %cur_cck_pd_state12.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %349, i8 %.sink.i70.i.i)
  %cmp31.not.i.i.i = icmp eq i8 %349, %.sink.i70.i.i
  br i1 %cmp31.not.i.i.i, label %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge, label %if.then33.i71.i.i

rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge: ; preds = %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_cck_packet_detection_thresh.exit.i.i

if.end26.i.thread94.i.i:                          ; preds = %land.lhs.true3.i.i55.i.i
  %rssi_val_min120.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 27
  %351 = ptrtoint ptr %rssi_val_min120.i.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %rssi_val_min120.i.i.i, align 4
  %cur_cck_pd_state12.i97.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 31
  %352 = ptrtoint ptr %cur_cck_pd_state12.i97.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %cur_cck_pd_state12.i97.i.i, align 4
  %pre_cck_pd_state27.i98.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 30
  %353 = ptrtoint ptr %pre_cck_pd_state27.i98.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %pre_cck_pd_state27.i98.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %cmp31.not.i99.i.i = icmp eq i8 %354, 0
  br i1 %cmp31.not.i99.i.i, label %if.end26.i.thread94.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge, label %if.end26.i.thread94.i.i.if.then38.i.i.i_crit_edge

if.end26.i.thread94.i.i.if.then38.i.i.i_crit_edge: ; preds = %if.end26.i.thread94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i.i.i

if.end26.i.thread94.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge: ; preds = %if.end26.i.thread94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_cck_packet_detection_thresh.exit.i.i

if.end26.i.thread.i.i:                            ; preds = %rtl8723e_dm_initial_gain_multi_sta.exit.i.i
  %cur_cck_pd_state12.i79.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 31
  %355 = ptrtoint ptr %cur_cck_pd_state12.i79.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 4, ptr %cur_cck_pd_state12.i79.i.i, align 4
  %pre_cck_pd_state27.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 30
  %356 = ptrtoint ptr %pre_cck_pd_state27.i80.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %pre_cck_pd_state27.i80.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %357)
  %cmp31.not.i81.i.i = icmp eq i8 %357, 4
  br i1 %cmp31.not.i81.i.i, label %if.end26.i.thread.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge, label %if.end26.i.thread.i.i.if.else61.i.i.i_crit_edge

if.end26.i.thread.i.i.if.else61.i.i.i_crit_edge:  ; preds = %if.end26.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i.i.i

if.end26.i.thread.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge: ; preds = %if.end26.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_cck_packet_detection_thresh.exit.i.i

if.then33.i71.i.i:                                ; preds = %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i
  br i1 %cmp16.i.i.i, label %if.then33.i71.i.i.if.else61.i.i.i_crit_edge, label %if.then33.i71.i.i.if.then38.i.i.i_crit_edge

if.then33.i71.i.i.if.then38.i.i.i_crit_edge:      ; preds = %if.then33.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i.i.i

if.then33.i71.i.i.if.else61.i.i.i_crit_edge:      ; preds = %if.then33.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i.i.i

if.then38.i.i.i:                                  ; preds = %if.then33.i71.i.i.if.then38.i.i.i_crit_edge, %if.end26.i.thread94.i.i.if.then38.i.i.i_crit_edge
  %cur_cck_pd_state12.i101107.i.i = phi ptr [ %cur_cck_pd_state12.i.i.i, %if.then33.i71.i.i.if.then38.i.i.i_crit_edge ], [ %cur_cck_pd_state12.i97.i.i, %if.end26.i.thread94.i.i.if.then38.i.i.i_crit_edge ]
  %pre_cck_pd_state27.i102106.i.i = phi ptr [ %pre_cck_pd_state.i.i.i, %if.then33.i71.i.i.if.then38.i.i.i_crit_edge ], [ %pre_cck_pd_state27.i98.i.i, %if.end26.i.thread94.i.i.if.then38.i.i.i_crit_edge ]
  %cnt_cck_fail.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 26, i32 7
  %358 = ptrtoint ptr %cnt_cck_fail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %cnt_cck_fail.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %359)
  %cmp39.i.i.i = icmp ugt i32 %359, 800
  %360 = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 33
  br i1 %cmp39.i.i.i, label %if.end44.i.i.i, label %if.end44.thread.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then38.i.i.i
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 3, ptr %360, align 2
  %pre_cck_fa_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 32
  %362 = ptrtoint ptr %pre_cck_fa_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %pre_cck_fa_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %363)
  %cmp48.not.i.i.i = icmp eq i8 %363, 3
  br i1 %cmp48.not.i.i.i, label %if.end44.i.i.i.if.end60.i.i.i_crit_edge, label %if.end44.i.i.i.if.end57.i.i.i_crit_edge

if.end44.i.i.i.if.end57.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i.i

if.end44.i.i.i.if.end60.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i.i.i

if.end44.thread.i.i.i:                            ; preds = %if.then38.i.i.i
  %364 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 2, ptr %360, align 2
  %pre_cck_fa_state130.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 32
  %365 = ptrtoint ptr %pre_cck_fa_state130.i.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %pre_cck_fa_state130.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %366)
  %cmp48.not131.i.i.i = icmp eq i8 %366, 2
  br i1 %cmp48.not131.i.i.i, label %if.end44.thread.i.i.i.if.end60.i.i.i_crit_edge, label %if.end44.thread.i.i.i.if.end57.i.i.i_crit_edge

if.end44.thread.i.i.i.if.end57.i.i.i_crit_edge:   ; preds = %if.end44.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i.i

if.end44.thread.i.i.i.if.end60.i.i.i_crit_edge:   ; preds = %if.end44.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i.i.i

if.end57.i.i.i:                                   ; preds = %if.end44.thread.i.i.i.if.end57.i.i.i_crit_edge, %if.end44.i.i.i.if.end57.i.i.i_crit_edge
  %.sink136.i.i.i = phi i32 [ 131, %if.end44.thread.i.i.i.if.end57.i.i.i_crit_edge ], [ 205, %if.end44.i.i.i.if.end57.i.i.i_crit_edge ]
  %pre_cck_fa_state132134.i.i.i = phi ptr [ %pre_cck_fa_state130.i.i.i, %if.end44.thread.i.i.i.if.end57.i.i.i_crit_edge ], [ %pre_cck_fa_state.i.i.i, %if.end44.i.i.i.if.end57.i.i.i_crit_edge ]
  %367 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %priv, align 8
  %cfg.i104.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %368, i32 0, i32 32
  %369 = ptrtoint ptr %cfg.i104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %cfg.i104.i.i.i, align 8
  %ops.i105.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %370, i32 0, i32 4
  %371 = ptrtoint ptr %ops.i105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %ops.i105.i.i.i, align 4
  %set_bbreg.i106.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %372, i32 0, i32 46
  %373 = ptrtoint ptr %set_bbreg.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %set_bbreg.i106.i.i.i, align 4
  call void %374(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef %.sink136.i.i.i) #8
  %375 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %360, align 2
  %377 = ptrtoint ptr %pre_cck_fa_state132134.i.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %376, ptr %pre_cck_fa_state132134.i.i.i, align 1
  br label %if.end60.i.i.i

if.end60.i.i.i:                                   ; preds = %if.end57.i.i.i, %if.end44.thread.i.i.i.if.end60.i.i.i_crit_edge, %if.end44.i.i.i.if.end60.i.i.i_crit_edge
  %378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %priv, align 8
  %cfg.i108.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 32
  %380 = ptrtoint ptr %cfg.i108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i108.i.i.i, align 8
  %ops.i109.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 4
  %382 = ptrtoint ptr %ops.i109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ops.i109.i.i.i, align 4
  %set_bbreg.i110.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %383, i32 0, i32 46
  %384 = ptrtoint ptr %set_bbreg.i110.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %set_bbreg.i110.i.i.i, align 4
  call void %385(ptr noundef %hw, i32 noundef 2560, i32 noundef 65280, i32 noundef 64) #8
  br label %if.end64.i.i.i

if.else61.i.i.i:                                  ; preds = %if.then33.i71.i.i.if.else61.i.i.i_crit_edge, %if.end26.i.thread.i.i.if.else61.i.i.i_crit_edge
  %cur_cck_pd_state12.i8393.i.i = phi ptr [ %cur_cck_pd_state12.i.i.i, %if.then33.i71.i.i.if.else61.i.i.i_crit_edge ], [ %cur_cck_pd_state12.i79.i.i, %if.end26.i.thread.i.i.if.else61.i.i.i_crit_edge ]
  %pre_cck_pd_state27.i8591.i.i = phi ptr [ %pre_cck_pd_state.i.i.i, %if.then33.i71.i.i.if.else61.i.i.i_crit_edge ], [ %pre_cck_pd_state27.i80.i.i, %if.end26.i.thread.i.i.if.else61.i.i.i_crit_edge ]
  %386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %priv, align 8
  %cfg.i112.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 32
  %388 = ptrtoint ptr %cfg.i112.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i112.i.i.i, align 8
  %ops.i113.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %ops.i113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops.i113.i.i.i, align 4
  %set_bbreg.i114.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %391, i32 0, i32 46
  %392 = ptrtoint ptr %set_bbreg.i114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %set_bbreg.i114.i.i.i, align 4
  call void %393(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 205) #8
  %394 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %priv, align 8
  %cfg.i116.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %395, i32 0, i32 32
  %396 = ptrtoint ptr %cfg.i116.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i116.i.i.i, align 8
  %ops.i117.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %ops.i117.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %ops.i117.i.i.i, align 4
  %set_bbreg.i118.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %399, i32 0, i32 46
  %400 = ptrtoint ptr %set_bbreg.i118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %set_bbreg.i118.i.i.i, align 4
  call void %401(ptr noundef %hw, i32 noundef 2560, i32 noundef 65280, i32 noundef 71) #8
  %pre_cck_fa_state62.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 32
  %402 = ptrtoint ptr %pre_cck_fa_state62.i.i.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 0, ptr %pre_cck_fa_state62.i.i.i, align 1
  %cur_cck_fa_state63.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %329, i32 0, i32 35, i32 33
  %403 = ptrtoint ptr %cur_cck_fa_state63.i.i.i to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 0, ptr %cur_cck_fa_state63.i.i.i, align 2
  br label %if.end64.i.i.i

if.end64.i.i.i:                                   ; preds = %if.else61.i.i.i, %if.end60.i.i.i
  %cur_cck_pd_state12.i8392.i.i = phi ptr [ %cur_cck_pd_state12.i8393.i.i, %if.else61.i.i.i ], [ %cur_cck_pd_state12.i101107.i.i, %if.end60.i.i.i ]
  %pre_cck_pd_state27.i8590.i.i = phi ptr [ %pre_cck_pd_state27.i8591.i.i, %if.else61.i.i.i ], [ %pre_cck_pd_state27.i102106.i.i, %if.end60.i.i.i ]
  %404 = ptrtoint ptr %cur_cck_pd_state12.i8392.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %cur_cck_pd_state12.i8392.i.i, align 4
  %406 = ptrtoint ptr %pre_cck_pd_state27.i8590.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %405, ptr %pre_cck_pd_state27.i8590.i.i, align 1
  br label %rtl8723e_dm_cck_packet_detection_thresh.exit.i.i

rtl8723e_dm_cck_packet_detection_thresh.exit.i.i: ; preds = %if.end64.i.i.i, %if.end26.i.thread.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge, %if.end26.i.thread94.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge, %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge
  %cur_cck_pd_state12.i84.i.i = phi ptr [ %cur_cck_pd_state12.i79.i.i, %if.end26.i.thread.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge ], [ %cur_cck_pd_state12.i.i.i, %rtl8723e_dm_initial_gain_min_pwdb.exit.i69.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge ], [ %cur_cck_pd_state12.i8392.i.i, %if.end64.i.i.i ], [ %cur_cck_pd_state12.i97.i.i, %if.end26.i.thread94.i.i.rtl8723e_dm_cck_packet_detection_thresh.exit.i.i_crit_edge ]
  %407 = ptrtoint ptr %cur_cck_pd_state12.i84.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %cur_cck_pd_state12.i84.i.i, align 4
  %conv69.i.i.i = zext i8 %408 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %329, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv69.i.i.i) #8
  %409 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %37, align 2
  %presta_cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 18
  %411 = ptrtoint ptr %presta_cstate.i.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %410, ptr %presta_cstate.i.i, align 1
  br label %rtl8723e_dm_dig.exit

rtl8723e_dm_dig.exit:                             ; preds = %rtl8723e_dm_cck_packet_detection_thresh.exit.i.i, %if.end4.i.rtl8723e_dm_dig.exit_crit_edge, %if.end.i.rtl8723e_dm_dig.exit_crit_edge, %if.then10.rtl8723e_dm_dig.exit_crit_edge
  %412 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %priv, align 8
  %falsealm_cnt1.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 32
  %414 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %415, i32 0, i32 4
  %416 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %417, i32 0, i32 45
  %418 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %419(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #8
  %shr.i = lshr i32 %call.i.i, 16
  %420 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %shr.i, ptr %falsealm_cnt1.i, align 4
  %421 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %priv, align 8
  %cfg.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %422, i32 0, i32 32
  %423 = ptrtoint ptr %cfg.i76.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cfg.i76.i, align 8
  %ops.i77.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %424, i32 0, i32 4
  %425 = ptrtoint ptr %ops.i77.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ops.i77.i, align 4
  %get_bbreg.i78.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %426, i32 0, i32 45
  %427 = ptrtoint ptr %get_bbreg.i78.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %get_bbreg.i78.i, align 4
  %call.i79.i = call i32 %428(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #8
  %and3.i = and i32 %call.i79.i, 65535
  %cnt_rate_illegal.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 1
  %429 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %and3.i, ptr %cnt_rate_illegal.i, align 4
  %shr5.i = lshr i32 %call.i79.i, 16
  %cnt_crc8_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 2
  %430 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %shr5.i, ptr %cnt_crc8_fail.i, align 4
  %431 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %priv, align 8
  %cfg.i81.i = getelementptr inbounds %struct.rtl_priv, ptr %432, i32 0, i32 32
  %433 = ptrtoint ptr %cfg.i81.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cfg.i81.i, align 8
  %ops.i82.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %434, i32 0, i32 4
  %435 = ptrtoint ptr %ops.i82.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i82.i, align 4
  %get_bbreg.i83.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %436, i32 0, i32 45
  %437 = ptrtoint ptr %get_bbreg.i83.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %get_bbreg.i83.i, align 4
  %call.i84.i = call i32 %438(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #8
  %and7.i = and i32 %call.i84.i, 65535
  %cnt_mcs_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 3
  %439 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %and7.i, ptr %cnt_mcs_fail.i, align 4
  %440 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %falsealm_cnt1.i, align 4
  %442 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %cnt_rate_illegal.i, align 4
  %444 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %cnt_crc8_fail.i, align 4
  %add.i = add i32 %441, %and7.i
  %add11.i = add i32 %add.i, %443
  %add13.i = add i32 %add11.i, %445
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 6
  %446 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %add13.i, ptr %cnt_ofdm_fail.i, align 4
  %447 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %priv, align 8
  %cfg.i86.i = getelementptr inbounds %struct.rtl_priv, ptr %448, i32 0, i32 32
  %449 = ptrtoint ptr %cfg.i86.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cfg.i86.i, align 8
  %ops.i87.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %450, i32 0, i32 4
  %451 = ptrtoint ptr %ops.i87.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %ops.i87.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %452, i32 0, i32 46
  %453 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %454(ptr noundef %hw, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #8
  %455 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %priv, align 8
  %cfg.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %456, i32 0, i32 32
  %457 = ptrtoint ptr %cfg.i89.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cfg.i89.i, align 8
  %ops.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %458, i32 0, i32 4
  %459 = ptrtoint ptr %ops.i90.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %ops.i90.i, align 4
  %get_bbreg.i91.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %460, i32 0, i32 45
  %461 = ptrtoint ptr %get_bbreg.i91.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %get_bbreg.i91.i, align 4
  %call.i92.i = call i32 %462(ptr noundef %hw, i32 noundef 2652, i32 noundef 255) #8
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 7
  %463 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %call.i92.i, ptr %cnt_cck_fail.i, align 4
  %464 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %priv, align 8
  %cfg.i94.i = getelementptr inbounds %struct.rtl_priv, ptr %465, i32 0, i32 32
  %466 = ptrtoint ptr %cfg.i94.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %cfg.i94.i, align 8
  %ops.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %467, i32 0, i32 4
  %468 = ptrtoint ptr %ops.i95.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ops.i95.i, align 4
  %get_bbreg.i96.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %469, i32 0, i32 45
  %470 = ptrtoint ptr %get_bbreg.i96.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %get_bbreg.i96.i, align 4
  %call.i97.i = call i32 %471(ptr noundef %hw, i32 noundef 2648, i32 noundef -16777216) #8
  %and16.i = shl i32 %call.i97.i, 8
  %shl.i = and i32 %and16.i, 65280
  %472 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %cnt_cck_fail.i, align 4
  %add18.i = add i32 %shl.i, %473
  store i32 %add18.i, ptr %cnt_cck_fail.i, align 4
  %474 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %falsealm_cnt1.i, align 4
  %476 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %cnt_rate_illegal.i, align 4
  %478 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %cnt_crc8_fail.i, align 4
  %480 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %cnt_mcs_fail.i, align 4
  %add21.i = add i32 %add18.i, %475
  %add23.i = add i32 %add21.i, %477
  %add25.i = add i32 %add23.i, %479
  %add27.i = add i32 %add25.i, %481
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 26, i32 8
  %482 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %add27.i, ptr %cnt_all.i, align 4
  %483 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %priv, align 8
  %cfg.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %484, i32 0, i32 32
  %485 = ptrtoint ptr %cfg.i99.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %cfg.i99.i, align 8
  %ops.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %486, i32 0, i32 4
  %487 = ptrtoint ptr %ops.i100.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %ops.i100.i, align 4
  %set_bbreg.i101.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %488, i32 0, i32 46
  %489 = ptrtoint ptr %set_bbreg.i101.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %set_bbreg.i101.i, align 4
  call void %490(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 1) #8
  %491 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %priv, align 8
  %cfg.i103.i = getelementptr inbounds %struct.rtl_priv, ptr %492, i32 0, i32 32
  %493 = ptrtoint ptr %cfg.i103.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cfg.i103.i, align 8
  %ops.i104.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %494, i32 0, i32 4
  %495 = ptrtoint ptr %ops.i104.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %ops.i104.i, align 4
  %set_bbreg.i105.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %496, i32 0, i32 46
  %497 = ptrtoint ptr %set_bbreg.i105.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %set_bbreg.i105.i, align 4
  call void %498(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 0) #8
  %499 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %priv, align 8
  %cfg.i107.i = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 0, i32 32
  %501 = ptrtoint ptr %cfg.i107.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %cfg.i107.i, align 8
  %ops.i108.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %502, i32 0, i32 4
  %503 = ptrtoint ptr %ops.i108.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %ops.i108.i, align 4
  %set_bbreg.i109.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %504, i32 0, i32 46
  %505 = ptrtoint ptr %set_bbreg.i109.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %set_bbreg.i109.i, align 4
  call void %506(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 0) #8
  %507 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %priv, align 8
  %cfg.i111.i = getelementptr inbounds %struct.rtl_priv, ptr %508, i32 0, i32 32
  %509 = ptrtoint ptr %cfg.i111.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %cfg.i111.i, align 8
  %ops.i112.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %510, i32 0, i32 4
  %511 = ptrtoint ptr %ops.i112.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %ops.i112.i, align 4
  %set_bbreg.i113.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %512, i32 0, i32 46
  %513 = ptrtoint ptr %set_bbreg.i113.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %set_bbreg.i113.i, align 4
  call void %514(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 2) #8
  %515 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %falsealm_cnt1.i, align 4
  %517 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %cnt_rate_illegal.i, align 4
  %519 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %cnt_crc8_fail.i, align 4
  %521 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %cnt_mcs_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %413, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %516, i32 noundef %518, i32 noundef %520, i32 noundef %522) #8
  %523 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %cnt_ofdm_fail.i, align 4
  %525 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %cnt_cck_fail.i, align 4
  %527 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %cnt_all.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %413, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.11, i32 noundef %524, i32 noundef %526, i32 noundef %528) #8
  %529 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %priv, align 8
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 9, i32 10
  %531 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %532)
  %cmp.i = icmp eq i32 %532, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %rtl8723e_dm_dig.exit.if.end.i38_crit_edge

rtl8723e_dm_dig.exit.if.end.i38_crit_edge:        ; preds = %rtl8723e_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i38

land.lhs.true.i:                                  ; preds = %rtl8723e_dm_dig.exit
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 15
  %533 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %dm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %534)
  %cmp3.i = icmp eq i32 %534, 0
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.endthread-pre-split.i_crit_edge

land.lhs.true.i.if.endthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.endthread-pre-split.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 36, i32 5
  %535 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 0, ptr %rssi_val_min.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %530, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.12) #8
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %if.then.i, %land.lhs.true.i.if.endthread-pre-split.i_crit_edge
  %536 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %.pr.i = load i32, ptr %link_state.i, align 8
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.endthread-pre-split.i, %rtl8723e_dm_dig.exit.if.end.i38_crit_edge
  %537 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %532, %rtl8723e_dm_dig.exit.if.end.i38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %537)
  %cmp5.i = icmp eq i32 %537, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.else17.i

if.then6.i:                                       ; preds = %if.end.i38
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 9, i32 8
  %538 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %539)
  %cmp7.i = icmp eq i32 %539, 1
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %dm9.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 15
  %540 = ptrtoint ptr %dm9.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %dm9.i, align 8
  %rssi_val_min11.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 36, i32 5
  %542 = ptrtoint ptr %rssi_val_min11.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 %541, ptr %rssi_val_min11.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %530, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %541) #8
  br label %rtl8723e_dm_dynamic_bb_powersaving.exit

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 15, i32 2
  %543 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %undec_sm_pwdb.i, align 8
  %rssi_val_min14.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 36, i32 5
  %545 = ptrtoint ptr %rssi_val_min14.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %544, ptr %rssi_val_min14.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %530, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %544) #8
  br label %rtl8723e_dm_dynamic_bb_powersaving.exit

if.else17.i:                                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  %dm18.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 15
  %546 = ptrtoint ptr %dm18.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %dm18.i, align 8
  %rssi_val_min20.i = getelementptr inbounds %struct.rtl_priv, ptr %530, i32 0, i32 36, i32 5
  %548 = ptrtoint ptr %rssi_val_min20.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %rssi_val_min20.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %530, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %547) #8
  br label %rtl8723e_dm_dynamic_bb_powersaving.exit

rtl8723e_dm_dynamic_bb_powersaving.exit:          ; preds = %if.else17.i, %if.else.i, %if.then8.i
  call void @rtl8723e_dm_rf_saving(ptr noundef %hw, i8 noundef zeroext 0) #8
  %549 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %priv, align 8
  %dm.i40 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 6
  %551 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %dynamic_txpower_enable.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %552)
  %tobool.not.i41 = icmp eq i8 %552, 0
  br i1 %tobool.not.i41, label %rtl8723e_dm_dynamic_bb_powersaving.exit.rtl8723e_dm_dynamic_txpower.exit_crit_edge, label %if.end.i42

rtl8723e_dm_dynamic_bb_powersaving.exit.rtl8723e_dm_dynamic_txpower.exit_crit_edge: ; preds = %rtl8723e_dm_dynamic_bb_powersaving.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_dynamic_txpower.exit

if.end.i42:                                       ; preds = %rtl8723e_dm_dynamic_bb_powersaving.exit
  %dm_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 30
  %553 = ptrtoint ptr %dm_flag.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %dm_flag.i, align 4
  %555 = and i8 %554, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %555)
  %tobool3.not.i = icmp eq i8 %555, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 29
  %556 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  br label %rtl8723e_dm_dynamic_txpower.exit

if.end6.i:                                        ; preds = %if.end.i42
  %link_state.i43 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 9, i32 10
  %557 = ptrtoint ptr %link_state.i43 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %link_state.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %558)
  %cmp.i44 = icmp ult i32 %558, 2
  br i1 %cmp.i44, label %land.lhs.true.i45, label %if.then19.i

land.lhs.true.i45:                                ; preds = %if.end6.i
  %559 = ptrtoint ptr %dm.i40 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %dm.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %cmp9.i = icmp eq i32 %560, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else28.i

if.then11.i:                                      ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.12) #8
  %dynamic_txhighpower_lvl13.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 29
  %561 = ptrtoint ptr %dynamic_txhighpower_lvl13.i to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 0, ptr %dynamic_txhighpower_lvl13.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 24
  %562 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  br label %rtl8723e_dm_dynamic_txpower.exit

if.then19.i:                                      ; preds = %if.end6.i
  %opmode.i46 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 9, i32 8
  %563 = ptrtoint ptr %opmode.i46 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %opmode.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %564)
  %cmp20.i = icmp eq i32 %564, 1
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i47

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %565 = ptrtoint ptr %dm.i40 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %dm.i40, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %566) #8
  br label %if.end31.i

if.else.i47:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %undec_sm_pwdb26.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 2
  %567 = ptrtoint ptr %undec_sm_pwdb26.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %undec_sm_pwdb26.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %568) #8
  br label %if.end31.i

if.else28.i:                                      ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %560) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.else.i47, %if.then22.i
  %undec_sm_pwdb.0.i = phi i32 [ %566, %if.then22.i ], [ %568, %if.else.i47 ], [ %560, %if.else28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %undec_sm_pwdb.0.i)
  %cmp32.i = icmp sgt i32 %undec_sm_pwdb.0.i, 73
  br i1 %cmp32.i, label %if.end31.i.if.end54.sink.split.i_crit_edge, label %if.else37.i

if.end31.i.if.end54.sink.split.i_crit_edge:       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.else37.i:                                      ; preds = %if.end31.i
  %569 = add i32 %undec_sm_pwdb.0.i, -67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %569)
  %570 = icmp ult i32 %569, 4
  br i1 %570, label %if.else37.i.if.end54.sink.split.i_crit_edge, label %if.else46.i

if.else37.i.if.end54.sink.split.i_crit_edge:      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.else46.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %undec_sm_pwdb.0.i)
  %cmp47.i = icmp slt i32 %undec_sm_pwdb.0.i, 62
  br i1 %cmp47.i, label %if.else46.i.if.end54.sink.split.i_crit_edge, label %if.else46.i.if.end54.i_crit_edge

if.else46.i.if.end54.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.else46.i.if.end54.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.sink.split.i

if.end54.sink.split.i:                            ; preds = %if.else46.i.if.end54.sink.split.i_crit_edge, %if.else37.i.if.end54.sink.split.i_crit_edge, %if.end31.i.if.end54.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end31.i.if.end54.sink.split.i_crit_edge ], [ 1, %if.else37.i.if.end54.sink.split.i_crit_edge ], [ 0, %if.else46.i.if.end54.sink.split.i_crit_edge ]
  %.str.17.sink.i = phi ptr [ @.str.16, %if.end31.i.if.end54.sink.split.i_crit_edge ], [ @.str.17, %if.else37.i.if.end54.sink.split.i_crit_edge ], [ @.str.18, %if.else46.i.if.end54.sink.split.i_crit_edge ]
  %dynamic_txhighpower_lvl45.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 29
  %571 = ptrtoint ptr %dynamic_txhighpower_lvl45.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %.sink.i, ptr %dynamic_txhighpower_lvl45.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull %.str.17.sink.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.sink.split.i, %if.else46.i.if.end54.i_crit_edge
  %dynamic_txhighpower_lvl56.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 29
  %572 = ptrtoint ptr %dynamic_txhighpower_lvl56.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %dynamic_txhighpower_lvl56.i, align 1
  %last_dtp_lvl59.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 15, i32 24
  %574 = ptrtoint ptr %last_dtp_lvl59.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %last_dtp_lvl59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %573, i8 %575)
  %cmp61.not.i = icmp eq i8 %573, %575
  br i1 %cmp61.not.i, label %if.end54.i.if.end66.i_crit_edge, label %if.then63.i

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then63.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 14, i32 10
  %576 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %current_channel.i, align 1
  %conv64.i = zext i8 %577 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %550, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv64.i) #8
  %578 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %current_channel.i, align 1
  call void @rtl8723e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %579) #8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then63.i, %if.end54.i.if.end66.i_crit_edge
  %580 = ptrtoint ptr %dynamic_txhighpower_lvl56.i to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %dynamic_txhighpower_lvl56.i, align 1
  %582 = ptrtoint ptr %last_dtp_lvl59.i to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 %581, ptr %last_dtp_lvl59.i, align 1
  br label %rtl8723e_dm_dynamic_txpower.exit

rtl8723e_dm_dynamic_txpower.exit:                 ; preds = %if.end66.i, %if.then11.i, %if.then4.i, %rtl8723e_dm_dynamic_bb_powersaving.exit.rtl8723e_dm_dynamic_txpower.exit_crit_edge
  %583 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %priv, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 10, i32 14
  %585 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %586)
  %cmp.i.i49 = icmp eq i8 %586, 0
  br i1 %cmp.i.i49, label %if.then.i50, label %if.end.i52

if.then.i50:                                      ; preds = %rtl8723e_dm_dynamic_txpower.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %584, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.20) #8
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

if.end.i52:                                       ; preds = %rtl8723e_dm_dynamic_txpower.exit
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 15, i32 14
  %587 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %useramask.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool.not.i51 = icmp eq i8 %588, 0
  br i1 %tobool.not.i51, label %if.then4.i53, label %if.end5.i

if.then4.i53:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %584, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.21) #8
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

if.end5.i:                                        ; preds = %if.end.i52
  %link_state.i54 = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 9, i32 10
  %589 = ptrtoint ptr %link_state.i54 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %link_state.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %590)
  %cmp.i55 = icmp eq i32 %590, 2
  br i1 %cmp.i55, label %land.lhs.true.i57, label %if.end5.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge

if.end5.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

land.lhs.true.i57:                                ; preds = %if.end5.i
  %opmode.i56 = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 9, i32 8
  %591 = ptrtoint ptr %opmode.i56 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %opmode.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %592)
  %cmp6.i = icmp eq i32 %592, 2
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true.i57.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge

land.lhs.true.i57.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

if.then7.i:                                       ; preds = %land.lhs.true.i57
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 22, i32 21
  %593 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %pre_ratr_state.i, align 4
  %595 = zext i8 %594 to i64
  call void @__sanitizer_cov_trace_switch(i64 %595, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %594, label %if.then7.i.sw.epilog.i_crit_edge [
    i8 3, label %sw.bb9.i
    i8 2, label %sw.bb8.i
  ]

if.then7.i.sw.epilog.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb8.i, %if.then7.i.sw.epilog.i_crit_edge
  %low_rssithresh_for_ra.0.i = phi i32 [ 25, %sw.bb9.i ], [ 20, %sw.bb8.i ], [ 20, %if.then7.i.sw.epilog.i_crit_edge ]
  %high_rssithresh_for_ra.0.i = phi i32 [ 60, %sw.bb9.i ], [ 55, %sw.bb8.i ], [ 50, %if.then7.i.sw.epilog.i_crit_edge ]
  %link_info.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 25
  %596 = ptrtoint ptr %link_info.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %link_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %597)
  %cmp10.i = icmp eq i32 %597, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i59

if.then12.i:                                      ; preds = %sw.epilog.i
  %598 = and i8 %594, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %598)
  %switch.i = icmp eq i8 %598, 2
  %ratr_state18.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 22, i32 1
  br i1 %switch.i, label %sw.bb17.i, label %sw.default16.i

sw.default16.i:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %599 = ptrtoint ptr %ratr_state18.i to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 2, ptr %ratr_state18.i, align 1
  br label %if.end36.i

sw.bb17.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  %600 = ptrtoint ptr %ratr_state18.i to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 3, ptr %ratr_state18.i, align 1
  br label %if.end36.i

if.else.i59:                                      ; preds = %sw.epilog.i
  %undec_sm_pwdb.i58 = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 15, i32 2
  %601 = ptrtoint ptr %undec_sm_pwdb.i58 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %undec_sm_pwdb.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %602, i32 %high_rssithresh_for_ra.0.i)
  %cmp21.i = icmp ugt i32 %602, %high_rssithresh_for_ra.0.i
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #10
  %ratr_state24.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 22, i32 1
  %603 = ptrtoint ptr %ratr_state24.i to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 1, ptr %ratr_state24.i, align 1
  br label %if.end36.i

if.else25.i:                                      ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_cmp4(i32 %602, i32 %low_rssithresh_for_ra.0.i)
  %cmp28.i = icmp ugt i32 %602, %low_rssithresh_for_ra.0.i
  %ratr_state31.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 22, i32 1
  br i1 %cmp28.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %604 = ptrtoint ptr %ratr_state31.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 2, ptr %ratr_state31.i, align 1
  br label %if.end36.i

if.else32.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %605 = ptrtoint ptr %ratr_state31.i to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 3, ptr %ratr_state31.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else32.i, %if.then30.i, %if.then23.i, %sw.bb17.i, %sw.default16.i
  %606 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %pre_ratr_state.i, align 4
  %ratr_state39.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 22, i32 1
  %608 = ptrtoint ptr %ratr_state39.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %ratr_state39.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %607, i8 %609)
  %cmp41.not.i = icmp eq i8 %607, %609
  br i1 %cmp41.not.i, label %if.end36.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge, label %if.then43.i

if.end36.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

if.then43.i:                                      ; preds = %if.end36.i
  %undec_sm_pwdb45.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 15, i32 2
  %610 = ptrtoint ptr %undec_sm_pwdb45.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %undec_sm_pwdb45.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %584, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %611) #8
  %612 = ptrtoint ptr %ratr_state39.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %ratr_state39.i, align 1
  %conv47.i = zext i8 %613 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %584, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %conv47.i) #8
  %614 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %pre_ratr_state.i, align 4
  %conv49.i = zext i8 %615 to i32
  %616 = ptrtoint ptr %ratr_state39.i to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %ratr_state39.i, align 1
  %conv51.i = zext i8 %617 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %584, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %conv49.i, i32 noundef %conv51.i) #8
  %618 = call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i.i.i.i = and i32 %618, -16384
  %619 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i60 = add i32 %621, 1
  store volatile i32 %add.i.i.i.i60, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i61 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i61, label %if.then43.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then43.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then43.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i62 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i62, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then43.i.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 9, i32 34
  %622 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %priv, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %623, i32 0, i32 9, i32 7
  %624 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %vif.i.i, align 4
  %call.i99.i = call ptr @ieee80211_find_sta(ptr noundef %625, ptr noundef %bssid.i) #8
  %tobool53.not.i = icmp eq ptr %call.i99.i, null
  br i1 %tobool53.not.i, label %rcu_read_lock.exit.i.if.end56.i_crit_edge, label %if.then54.i

rcu_read_lock.exit.i.if.end56.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then54.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 32
  %626 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %ops.i, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %629, i32 0, i32 21
  %630 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %update_rate_tbl.i, align 4
  %632 = ptrtoint ptr %ratr_state39.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %ratr_state39.i, align 1
  call void %631(ptr noundef %hw, ptr noundef nonnull %call.i99.i, i8 noundef zeroext %633, i1 noundef zeroext true) #8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %rcu_read_lock.exit.i.if.end56.i_crit_edge
  %call.i100.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i100.i, label %if.end56.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i103.i

if.end56.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i103.i:                             ; preds = %if.end56.i
  %call1.i101.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i105.i

land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i105.i:                            ; preds = %land.lhs.true.i103.i
  %.b4.i104.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104.i, label %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i106.i

land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i106.i:                                   ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.27) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i106.i, %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, %if.end56.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !90
  %634 = call i32 @llvm.read_register.i32(metadata !78) #8
  %and.i.i.i.i.i107.i = and i32 %634, -16384
  %635 = inttoptr i32 %and.i.i.i.i.i107.i to ptr
  %preempt_count.i.i.i.i108.i = getelementptr inbounds %struct.thread_info, ptr %635, i32 0, i32 1
  %636 = ptrtoint ptr %preempt_count.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load volatile i32, ptr %preempt_count.i.i.i.i108.i, align 4
  %sub.i.i.i.i63 = add i32 %637, -1
  store volatile i32 %sub.i.i.i.i63, ptr %preempt_count.i.i.i.i108.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %638 = ptrtoint ptr %ratr_state39.i to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %ratr_state39.i, align 1
  %640 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %639, ptr %pre_ratr_state.i, align 4
  br label %rtl8723e_dm_refresh_rate_adaptive_mask.exit

rtl8723e_dm_refresh_rate_adaptive_mask.exit:      ; preds = %rcu_read_unlock.exit.i, %if.end36.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %land.lhs.true.i57.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.end5.i.rtl8723e_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.then4.i53, %if.then.i50
  call void @rtl8723e_dm_bt_coexist(ptr noundef %hw)
  %641 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %priv, align 8
  %643 = load i32, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_ul, align 4
  %bt_edca_ul.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 49, i32 23
  %644 = ptrtoint ptr %bt_edca_ul.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %bt_edca_ul.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %643, i32 %645)
  %cmp.not.i = icmp eq i32 %643, %645
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %rtl8723e_dm_refresh_rate_adaptive_mask.exit.if.then.i65_crit_edge

rtl8723e_dm_refresh_rate_adaptive_mask.exit.if.then.i65_crit_edge: ; preds = %rtl8723e_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i65

lor.lhs.false.i:                                  ; preds = %rtl8723e_dm_refresh_rate_adaptive_mask.exit
  %646 = load i32, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_dl, align 4
  %bt_edca_dl.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 49, i32 24
  %647 = ptrtoint ptr %bt_edca_dl.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %bt_edca_dl.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %646, i32 %648)
  %cmp3.not.i = icmp eq i32 %646, %648
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end.i67_crit_edge, label %lor.lhs.false.i.if.then.i65_crit_edge

lor.lhs.false.i.if.then.i65_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i65

lor.lhs.false.i.if.end.i67_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i67

if.then.i65:                                      ; preds = %lor.lhs.false.i.if.then.i65_crit_edge, %rtl8723e_dm_refresh_rate_adaptive_mask.exit.if.then.i65_crit_edge
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %649 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 0, ptr %current_turbo_edca.i, align 2
  store i32 %645, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_ul, align 4
  %bt_edca_dl7.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 49, i32 24
  %650 = ptrtoint ptr %bt_edca_dl7.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %bt_edca_dl7.i, align 8
  store i32 %651, ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_dl, align 4
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then.i65, %lor.lhs.false.i.if.end.i67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %645)
  %cmp10.not.i = icmp eq i32 %645, 0
  %spec.select.i = select i1 %cmp10.not.i, i32 6202411, i32 %645
  %bt_edca_dl16.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 49, i32 24
  %652 = ptrtoint ptr %bt_edca_dl16.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %bt_edca_dl16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %cmp17.not.i = icmp eq i32 %653, 0
  %edca_be_ul.1.i = select i1 %cmp17.not.i, i32 %spec.select.i, i32 %653
  %link_state.i66 = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 9, i32 10
  %654 = ptrtoint ptr %link_state.i66 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %link_state.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %655)
  %cmp22.not.i = icmp eq i32 %655, 2
  br i1 %cmp22.not.i, label %if.end26.i, label %if.then23.i68

if.then23.i68:                                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  %current_turbo_edca25.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %656 = ptrtoint ptr %current_turbo_edca25.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 0, ptr %current_turbo_edca25.i, align 2
  br label %if.end11

if.end26.i:                                       ; preds = %if.end.i67
  %657 = select i1 %cmp17.not.i, i1 %cmp10.not.i, i1 false
  br i1 %657, label %lor.lhs.false27.i, label %if.end26.i.if.then32.i_crit_edge

if.end26.i.if.then32.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

lor.lhs.false27.i:                                ; preds = %if.end26.i
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 8
  %658 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %is_any_nonbepkts.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %659)
  %tobool29.not.i = icmp eq i8 %659, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i69, label %lor.lhs.false27.i.if.else61.i_crit_edge

lor.lhs.false27.i.if.else61.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i

land.lhs.true.i69:                                ; preds = %lor.lhs.false27.i
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 11
  %660 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %disable_framebursting.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %661)
  %tobool31.not.i = icmp eq i8 %661, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i69.if.then32.i_crit_edge, label %land.lhs.true.i69.if.else61.i_crit_edge

land.lhs.true.i69.if.else61.i_crit_edge:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else61.i

land.lhs.true.i69.if.then32.i_crit_edge:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true.i69.if.then32.i_crit_edge, %if.end26.i.if.then32.i_crit_edge
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 24
  %662 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %662)
  %663 = load i64, ptr %stats.i, align 8
  %664 = load i64, ptr @rtl8723e_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i = sub i64 %663, %664
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 24, i32 3
  %665 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %665)
  %666 = load i64, ptr %rxbytesunicast.i, align 8
  %667 = load i64, ptr @rtl8723e_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub34.i = sub i64 %666, %667
  %mul.i = shl i64 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub34.i, i64 %mul.i)
  %cmp35.i = icmp ugt i64 %sub34.i, %mul.i
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 9
  %668 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %is_cur_rdlstate.i, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %669)
  %tobool38.not.i = icmp eq i8 %669, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.else.i73

if.then36.i:                                      ; preds = %if.then32.i
  br i1 %tobool38.not.i, label %if.then36.i.if.then43.i72_crit_edge, label %lor.lhs.false39.i

if.then36.i.if.then43.i72_crit_edge:              ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i72

lor.lhs.false39.i:                                ; preds = %if.then36.i
  %current_turbo_edca41.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %670 = ptrtoint ptr %current_turbo_edca41.i to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %current_turbo_edca41.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %671)
  %tobool42.not.i = icmp eq i8 %671, 0
  br i1 %tobool42.not.i, label %lor.lhs.false39.i.if.then43.i72_crit_edge, label %lor.lhs.false39.i.if.end58.i_crit_edge

lor.lhs.false39.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

lor.lhs.false39.i.if.then43.i72_crit_edge:        ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i72

if.then43.i72:                                    ; preds = %lor.lhs.false39.i.if.then43.i72_crit_edge, %if.then36.i.if.then43.i72_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 13, i32 7
  %672 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %write32_async.i.i, align 4
  call void %673(ptr noundef %642, i32 noundef 1288, i32 noundef 6202411) #8
  %cfg.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 32
  %674 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %675, i32 0, i32 1
  %676 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %write_readback.i.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %677)
  %tobool.not.i.i71 = icmp eq i8 %677, 0
  br i1 %tobool.not.i.i71, label %if.then43.i72.if.end58.sink.split.i_crit_edge, label %if.then43.i72.if.end58.sink.split.sink.split.i_crit_edge

if.then43.i72.if.end58.sink.split.sink.split.i_crit_edge: ; preds = %if.then43.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.sink.split.i

if.then43.i72.if.end58.sink.split.i_crit_edge:    ; preds = %if.then43.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

if.else.i73:                                      ; preds = %if.then32.i
  br i1 %tobool38.not.i, label %lor.lhs.false50.i, label %if.else.i73.if.then54.i75_crit_edge

if.else.i73.if.then54.i75_crit_edge:              ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i75

lor.lhs.false50.i:                                ; preds = %if.else.i73
  %current_turbo_edca52.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %678 = ptrtoint ptr %current_turbo_edca52.i to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %current_turbo_edca52.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %679)
  %tobool53.not.i74 = icmp eq i8 %679, 0
  br i1 %tobool53.not.i74, label %lor.lhs.false50.i.if.then54.i75_crit_edge, label %lor.lhs.false50.i.if.end58.i_crit_edge

lor.lhs.false50.i.if.end58.i_crit_edge:           ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

lor.lhs.false50.i.if.then54.i75_crit_edge:        ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i75

if.then54.i75:                                    ; preds = %lor.lhs.false50.i.if.then54.i75_crit_edge, %if.else.i73.if.then54.i75_crit_edge
  %write32_async.i113.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 13, i32 7
  %680 = ptrtoint ptr %write32_async.i113.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %write32_async.i113.i, align 4
  call void %681(ptr noundef %642, i32 noundef 1288, i32 noundef %edca_be_ul.1.i) #8
  %cfg.i114.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 32
  %682 = ptrtoint ptr %cfg.i114.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %cfg.i114.i, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %write_readback.i115.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %tobool.not.i116.i = icmp eq i8 %685, 0
  br i1 %tobool.not.i116.i, label %if.then54.i75.if.end58.sink.split.i_crit_edge, label %if.then54.i75.if.end58.sink.split.sink.split.i_crit_edge

if.then54.i75.if.end58.sink.split.sink.split.i_crit_edge: ; preds = %if.then54.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.sink.split.i

if.then54.i75.if.end58.sink.split.i_crit_edge:    ; preds = %if.then54.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

if.end58.sink.split.sink.split.i:                 ; preds = %if.then54.i75.if.end58.sink.split.sink.split.i_crit_edge, %if.then43.i72.if.end58.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i8 [ 1, %if.then43.i72.if.end58.sink.split.sink.split.i_crit_edge ], [ 0, %if.then54.i75.if.end58.sink.split.sink.split.i_crit_edge ]
  %read32_sync.i117.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 13, i32 11
  %686 = ptrtoint ptr %read32_sync.i117.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %read32_sync.i117.i, align 4
  %call.i118.i = call i32 %687(ptr noundef %642, i32 noundef 1288) #8
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end58.sink.split.sink.split.i, %if.then54.i75.if.end58.sink.split.i_crit_edge, %if.then43.i72.if.end58.sink.split.i_crit_edge
  %.sink.i76 = phi i8 [ 1, %if.then43.i72.if.end58.sink.split.i_crit_edge ], [ 0, %if.then54.i75.if.end58.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end58.sink.split.sink.split.i ]
  %688 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %688)
  store i8 %.sink.i76, ptr %is_cur_rdlstate.i, align 8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end58.sink.split.i, %lor.lhs.false50.i.if.end58.i_crit_edge, %lor.lhs.false39.i.if.end58.i_crit_edge
  %current_turbo_edca60.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %689 = ptrtoint ptr %current_turbo_edca60.i to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 1, ptr %current_turbo_edca60.i, align 2
  br label %if.end69.i

if.else61.i:                                      ; preds = %land.lhs.true.i69.if.else61.i_crit_edge, %lor.lhs.false27.i.if.else61.i_crit_edge
  %current_turbo_edca63.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 7
  %690 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %current_turbo_edca63.i, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %691)
  %tobool64.not.i = icmp eq i8 %691, 0
  br i1 %tobool64.not.i, label %if.else61.i.if.end69.i_crit_edge, label %if.then65.i

if.else61.i.if.end69.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then65.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %692 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i77 = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 32
  %693 = ptrtoint ptr %cfg.i77 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %cfg.i77, align 8
  %ops.i78 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %694, i32 0, i32 4
  %695 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %ops.i78, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %696, i32 0, i32 20
  %697 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %set_hw_reg.i, align 4
  call void %698(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #8
  %699 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 0, ptr %current_turbo_edca63.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then65.i, %if.else61.i.if.end69.i_crit_edge, %if.end58.i
  %is_any_nonbepkts71.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 15, i32 8
  %700 = ptrtoint ptr %is_any_nonbepkts71.i to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 0, ptr %is_any_nonbepkts71.i, align 1
  %stats72.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 24
  %701 = ptrtoint ptr %stats72.i to i32
  call void @__asan_load8_noabort(i32 %701)
  %702 = load i64, ptr %stats72.i, align 8
  store i64 %702, ptr @rtl8723e_dm_check_edca_turbo.last_txok_cnt, align 8
  %rxbytesunicast75.i = getelementptr inbounds %struct.rtl_priv, ptr %642, i32 0, i32 24, i32 3
  %703 = ptrtoint ptr %rxbytesunicast75.i to i32
  call void @__asan_load8_noabort(i32 %703)
  %704 = load i64, ptr %rxbytesunicast75.i, align 8
  store i64 %704, ptr @rtl8723e_dm_check_edca_turbo.last_rxok_cnt, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end69.i, %if.then23.i68, %land.lhs.true8.if.end11_crit_edge, %land.lhs.true6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  %init_set = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 25
  %705 = ptrtoint ptr %init_set to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %init_set, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %706)
  %tobool14.not = icmp eq i8 %706, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %707 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %write8_async.i, align 4
  call void %708(ptr noundef %1, i32 noundef 1902, i8 noundef zeroext 12) #8
  %709 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %710, i32 0, i32 1
  %711 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %write_readback.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %712)
  %tobool.not.i80 = icmp eq i8 %712, 0
  br i1 %tobool.not.i80, label %if.then15.if.end16_crit_edge, label %if.then.i81

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then.i81:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %713 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %read8_sync.i, align 4
  %call.i = call zeroext i8 %714(ptr noundef %1, i32 noundef 1902) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then.i81, %if.then15.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_dm_bt_coexist(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_set = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 25
  %4 = ptrtoint ptr %init_set to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %init_set, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rtl8723e_dm_bt_coexist) #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %get_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %get_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rfreg.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef 1048575) #8
  %conv.i = trunc i32 %call.i.i to i8
  %bt_rfreg_origin_1e.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 49, i32 18
  %14 = ptrtoint ptr %bt_rfreg_origin_1e.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %bt_rfreg_origin_1e.i, align 2
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i23.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i23.i, align 8
  %ops.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i24.i, align 4
  %get_rfreg.i25.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %get_rfreg.i25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_rfreg.i25.i, align 4
  %call.i26.i = tail call i32 %22(ptr noundef %hw, i32 noundef 0, i32 noundef 31, i32 noundef 240) #8
  %conv2.i = trunc i32 %call.i26.i to i8
  %bt_rfreg_origin_1f.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 49, i32 19
  %23 = ptrtoint ptr %bt_rfreg_origin_1f.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv2.i, ptr %bt_rfreg_origin_1f.i, align 1
  %cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 49, i32 32
  %lps_counter.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 49, i32 48
  %24 = ptrtoint ptr %lps_counter.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %lps_counter.i, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 5
  %25 = call ptr @memset(ptr %cstate.i, i32 0, i32 16)
  %26 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %27(ptr noundef %7, i32 noundef 1902, i8 noundef zeroext 4) #8
  %28 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %if.then3.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then3.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i28.i = tail call zeroext i8 %33(ptr noundef %7, i32 noundef 1902) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then3.rtl_write_byte.exit.i_crit_edge
  %34 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %35(ptr noundef %7, i32 noundef 1912, i8 noundef zeroext 3) #8
  %36 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i31.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i31.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i31.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i32.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i32.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit36.i_crit_edge, label %if.then.i35.i

rtl_write_byte.exit.i.rtl_write_byte.exit36.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit36.i

if.then.i35.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i33.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 9
  %40 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i34.i = tail call zeroext i8 %41(ptr noundef %7, i32 noundef 1912) #8
  br label %rtl_write_byte.exit36.i

rtl_write_byte.exit36.i:                          ; preds = %if.then.i35.i, %rtl_write_byte.exit.i.rtl_write_byte.exit36.i_crit_edge
  %42 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %43(ptr noundef %7, i32 noundef 64, i8 noundef zeroext 32) #8
  %44 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i39.i, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i40.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i40.i, label %rtl_write_byte.exit36.i.rtl8723e_dm_init_bt_coexist.exit_crit_edge, label %if.then.i43.i

rtl_write_byte.exit36.i.rtl8723e_dm_init_bt_coexist.exit_crit_edge: ; preds = %rtl_write_byte.exit36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_dm_init_bt_coexist.exit

if.then.i43.i:                                    ; preds = %rtl_write_byte.exit36.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i41.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 9
  %48 = ptrtoint ptr %read8_sync.i41.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i41.i, align 4
  %call.i42.i = tail call zeroext i8 %49(ptr noundef %7, i32 noundef 64) #8
  br label %rtl8723e_dm_init_bt_coexist.exit

rtl8723e_dm_init_bt_coexist.exit:                 ; preds = %if.then.i43.i, %rtl_write_byte.exit36.i.rtl8723e_dm_init_bt_coexist.exit_crit_edge
  %init_set.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 49, i32 25
  %50 = ptrtoint ptr %init_set.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %init_set.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %rtl8723e_dm_init_bt_coexist.exit, %if.end.if.end4_crit_edge
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 64) #8
  %conv = zext i8 %call.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.4) #8
  tail call void @rtl8723e_dm_bt_coexist_8723(ptr noundef %hw) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_bt_coexist_8723(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_set_txpower_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72, !74, !76}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 422, i32 2}
!2 = distinct !{null, !3, !"initialize", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 641, i32 12}
!4 = !{ptr @rtl8723e_dm_rf_saving.reg_874, !5, !"reg_874", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 642, i32 13}
!6 = !{ptr @rtl8723e_dm_rf_saving.reg_c70, !7, !"reg_c70", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 642, i32 22}
!8 = !{ptr @rtl8723e_dm_rf_saving.reg_85c, !9, !"reg_85c", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 642, i32 31}
!10 = !{ptr @rtl8723e_dm_rf_saving.reg_a74, !11, !"reg_a74", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 642, i32 40}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 823, i32 3}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 829, i32 3}
!16 = !{ptr @__func__.rtl8723e_dm_bt_coexist, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 835, i32 2}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 837, i32 2}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 524, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 215, i32 2}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 153, i32 2}
!27 = distinct !{null, !28, !"binitialized", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 162, i32 12}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 204, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 299, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 85, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 91, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 719, i32 3}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 727, i32 4}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 733, i32 4}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 741, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 391, i32 3}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 398, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 403, i32 3}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 408, i32 3}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 564, i32 3}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 570, i32 3}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 615, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 618, i32 4}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 620, i32 4}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rtl8723e_dm_check_edca_turbo.last_txok_cnt, !71, !"last_txok_cnt", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 446, i32 13}
!72 = !{ptr @rtl8723e_dm_check_edca_turbo.last_rxok_cnt, !73, !"last_rxok_cnt", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 447, i32 13}
!74 = !{ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_ul, !75, !"last_bt_edca_ul", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 448, i32 13}
!76 = !{ptr @rtl8723e_dm_check_edca_turbo.last_bt_edca_dl, !77, !"last_bt_edca_dl", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/dm.c", i32 449, i32 13}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i8 0, i8 2}
!89 = !{i64 2149343949}
!90 = !{i64 2149344215}
