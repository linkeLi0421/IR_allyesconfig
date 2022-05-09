; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c"
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
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"cnt_parity_fail = %d, cnt_rate_illegal = %d, cnt_crc8_fail = %d, cnt_mcs_fail = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cnt_ofdm_fail = %x, cnt_cck_fail = %x, cnt_all = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMaxPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EntryMinPWDB = 0x%lx(%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no link\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"driver is going to unload\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"driver does not control rate adaptive mask\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wrong rssi level setting %d !\0A\00", [33 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rtl92ee_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@rtl92ee_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"odm_DynamicATCSwitch(): Disable CFO tracking for BT!!\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl92ee_dm_dynamic_primary_cca_ckeck.count_down = internal global { i8, [31 x i8] } { i8 30, [31 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 21, i64 22, i64 23, i64 24]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 89, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 95, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 402, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 410, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 337, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 345, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 351, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 358, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 362, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 177, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 875, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 881, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 845, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 695, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 723, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 470, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 471, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 690, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"count_down\00", align 1
@___asan_gen_.83 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 574, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rtl92ee_dm_check_edca_turbo.last_txok_cnt, ptr @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, ptr @.str.16, ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_dm_write_cck_cca_thres(ptr nocapture noundef readonly %hw, i8 noundef zeroext %cur_thres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_cck_cca_thres = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 29
  %2 = ptrtoint ptr %cur_cck_cca_thres to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_cck_cca_thres, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %cur_thres)
  %cmp.not = icmp eq i8 %3, %cur_thres
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 2570, i8 noundef zeroext %cur_thres) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 2570) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %cur_cck_cca_thres to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cur_cck_cca_thres, align 2
  %pre_cck_cca_thres = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 28
  %14 = ptrtoint ptr %pre_cck_cca_thres to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pre_cck_cca_thres, align 1
  store i8 %cur_thres, ptr %cur_cck_cca_thres, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_dm_write_dig(ptr noundef %hw, i8 noundef zeroext %current_igi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 9
  %4 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_igvalue, align 4
  %conv = zext i8 %current_igi to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2:                                         ; preds = %if.end
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
  tail call void %11(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %conv) #7
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp5.not = icmp eq i8 %13, 0
  br i1 %cmp5.not, label %if.then2.if.end10_crit_edge, label %if.then7

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %cfg.i26 = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i26, align 8
  %ops.i27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i27, align 4
  %set_bbreg.i28 = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %set_bbreg.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bbreg.i28, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %conv) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %22 = ptrtoint ptr %cur_igvalue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_igvalue, align 4
  %pre_igvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 8
  %24 = ptrtoint ptr %pre_igvalue to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pre_igvalue, align 4
  store i32 %conv, ptr %cur_igvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_dm_init_edca_turbo(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_turbo_edca = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %2 = ptrtoint ptr %current_turbo_edca to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %current_turbo_edca, align 2
  %is_cur_rdlstate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 9
  %3 = ptrtoint ptr %is_cur_rdlstate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_cur_rdlstate, align 8
  %is_any_nonbepkts = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 8
  %4 = ptrtoint ptr %is_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_any_nonbepkts, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_dm_init_rate_adaptive_mask(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %ldpc_thres = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 22
  %8 = ptrtoint ptr %ldpc_thres to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 35, ptr %ldpc_thres, align 1
  %use_ldpc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 23
  %9 = ptrtoint ptr %use_ldpc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %use_ldpc, align 2
  %high_rssi_thresh_for_ra = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 3
  %10 = ptrtoint ptr %high_rssi_thresh_for_ra to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50, ptr %high_rssi_thresh_for_ra, align 4
  %low_rssi_thresh_for_ra40m = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 22, i32 6
  %11 = ptrtoint ptr %low_rssi_thresh_for_ra40m to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %low_rssi_thresh_for_ra40m, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_dm_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 127) #7
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %8 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dm_type, align 2
  tail call void @rtl_dm_diginit(ptr noundef %hw, i32 noundef %call.i) #7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 1
  %11 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 21
  %12 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pre_ratr_state.i, align 4
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 32
  %13 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  %spec.select.i = zext i1 %cmp.i to i8
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 15, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %15, align 1
  %ldpc_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 22
  %17 = ptrtoint ptr %ldpc_thres.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 35, ptr %ldpc_thres.i, align 1
  %use_ldpc.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 23
  %18 = ptrtoint ptr %use_ldpc.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %use_ldpc.i, align 2
  %high_rssi_thresh_for_ra.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %high_rssi_thresh_for_ra.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 50, ptr %high_rssi_thresh_for_ra.i, align 4
  %low_rssi_thresh_for_ra40m.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 22, i32 6
  %20 = ptrtoint ptr %low_rssi_thresh_for_ra40m.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %low_rssi_thresh_for_ra40m.i, align 4
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %rts_en.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 10, i32 68
  %23 = ptrtoint ptr %rts_en.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rts_en.i, align 4
  %intf_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 23, i32 1
  %24 = call ptr @memset(ptr %intf_flag.i, i32 0, i32 6)
  %25 = load ptr, ptr %priv, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 15, i32 7
  %26 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %current_turbo_edca.i, align 2
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 15, i32 9
  %27 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_cur_rdlstate.i, align 8
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 15, i32 8
  %28 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %29 = load ptr, ptr %priv, align 8
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 13
  %30 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %txpower_tracking.i, align 4
  %default_ofdm_index.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 38
  %31 = ptrtoint ptr %default_ofdm_index.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 30, ptr %default_ofdm_index.i, align 1
  %default_cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 39
  %32 = ptrtoint ptr %default_cck_index.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 20, ptr %default_cck_index.i, align 8
  %swing_idx_cck_base.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 67
  %33 = ptrtoint ptr %swing_idx_cck_base.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 20, ptr %swing_idx_cck_base.i, align 1
  %cck_index.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 40
  %34 = ptrtoint ptr %cck_index.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 20, ptr %cck_index.i, align 1
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 63, i32 0
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 30, ptr %arrayidx.i, align 1
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 37, i32 0
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 30, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 41, i32 0
  %37 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 42, i32 0
  %38 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 43, i32 0
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx14.i, align 1
  %arrayidx.1.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 63, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 30, ptr %arrayidx.1.i, align 1
  %arrayidx8.1.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 37, i32 1
  %41 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 30, ptr %arrayidx8.1.i, align 1
  %arrayidx10.1.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 41, i32 1
  %42 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx10.1.i, align 1
  %arrayidx12.1.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 42, i32 1
  %43 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx12.1.i, align 1
  %arrayidx14.1.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 43, i32 1
  %44 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx14.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 63, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 30, ptr %arrayidx.2.i, align 1
  %arrayidx8.2.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 37, i32 2
  %46 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 30, ptr %arrayidx8.2.i, align 1
  %arrayidx10.2.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 41, i32 2
  %47 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx10.2.i, align 1
  %arrayidx12.2.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 42, i32 2
  %48 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx12.2.i, align 1
  %arrayidx14.2.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 43, i32 2
  %49 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx14.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 63, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 30, ptr %arrayidx.3.i, align 1
  %arrayidx8.3.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 37, i32 3
  %51 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 30, ptr %arrayidx8.3.i, align 1
  %arrayidx10.3.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 41, i32 3
  %52 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx10.3.i, align 1
  %arrayidx12.3.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 42, i32 3
  %53 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx12.3.i, align 1
  %arrayidx14.3.i = getelementptr %struct.rtl_priv, ptr %29, i32 0, i32 15, i32 43, i32 3
  %54 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx14.3.i, align 1
  %55 = load ptr, ptr %priv, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 17, i32 58
  %56 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %crystalcap.i, align 2
  %conv.i = zext i8 %57 to i32
  %crystal_cap.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 15, i32 56
  %58 = ptrtoint ptr %crystal_cap.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i, ptr %crystal_cap.i, align 8
  %59 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %63, i32 0, i32 45
  %64 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %65(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i = icmp ne i32 %call.i.i, 0
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 15, i32 51
  %frombool.i = zext i1 %tobool.i to i8
  %66 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool.i, ptr %atc_status.i, align 8
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 15, i32 57
  %67 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 10, ptr %cfo_threshold.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_dm_diginit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_dm_dynamic_arfb_select(ptr nocapture noundef readonly %hw, i8 noundef zeroext %rate, i1 noundef zeroext %collision_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = add i8 %rate, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %3 = icmp ult i8 %2, 5
  br i1 %3, label %if.then, label %if.else57

if.then:                                          ; preds = %entry
  br i1 %collision_state, label %if.then8, label %if.else31

if.then8:                                         ; preds = %if.then
  %4 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rate, label %if.else27 [
    i8 24, label %if.then12
    i8 23, label %if.then16
    i8 22, label %if.then21
    i8 21, label %if.then26
  ]

if.then12:                                        ; preds = %if.then8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %5 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then12.rtl_write_dword.exit_crit_edge, label %if.then.i

if.then12.rtl_write_dword.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %12(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.then12.rtl_write_dword.exit_crit_edge
  %13 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write32_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1076, i32 noundef 117835009) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i155 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i155 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i155, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i156 = icmp eq i8 %18, 0
  br i1 %tobool.not.i156, label %rtl_write_dword.exit.if.end101_crit_edge, label %rtl_write_dword.exit.if.end101.sink.split_crit_edge

rtl_write_dword.exit.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit.if.end101_crit_edge:         ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then16:                                        ; preds = %if.then8
  %write32_async.i161 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %write32_async.i161 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32_async.i161, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i162 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i162, align 8
  %write_readback.i163 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i163 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i163, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i164 = icmp eq i8 %24, 0
  br i1 %tobool.not.i164, label %if.then16.rtl_write_dword.exit168_crit_edge, label %if.then.i167

if.then16.rtl_write_dword.exit168_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit168

if.then.i167:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i165 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %25 = ptrtoint ptr %read32_sync.i165 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32_sync.i165, align 4
  %call.i166 = tail call i32 %26(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit168

rtl_write_dword.exit168:                          ; preds = %if.then.i167, %if.then16.rtl_write_dword.exit168_crit_edge
  %27 = ptrtoint ptr %write32_async.i161 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32_async.i161, align 4
  tail call void %28(ptr noundef %1, i32 noundef 1076, i32 noundef 117900805) #7
  %29 = ptrtoint ptr %cfg.i162 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i162, align 8
  %write_readback.i171 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i171 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i171, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i172 = icmp eq i8 %32, 0
  br i1 %tobool.not.i172, label %rtl_write_dword.exit168.if.end101_crit_edge, label %rtl_write_dword.exit168.if.end101.sink.split_crit_edge

rtl_write_dword.exit168.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit168.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then21:                                        ; preds = %if.then8
  %write32_async.i177 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %write32_async.i177 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32_async.i177, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i178 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i178 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i178, align 8
  %write_readback.i179 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i179 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i179, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i180 = icmp eq i8 %38, 0
  br i1 %tobool.not.i180, label %if.then21.rtl_write_dword.exit184_crit_edge, label %if.then.i183

if.then21.rtl_write_dword.exit184_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit184

if.then.i183:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i181 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %39 = ptrtoint ptr %read32_sync.i181 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32_sync.i181, align 4
  %call.i182 = tail call i32 %40(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit184

rtl_write_dword.exit184:                          ; preds = %if.then.i183, %if.then21.rtl_write_dword.exit184_crit_edge
  %41 = ptrtoint ptr %write32_async.i177 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32_async.i177, align 4
  tail call void %42(ptr noundef %1, i32 noundef 1076, i32 noundef 134743814) #7
  %43 = ptrtoint ptr %cfg.i178 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i178, align 8
  %write_readback.i187 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i187 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i187, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i188 = icmp eq i8 %46, 0
  br i1 %tobool.not.i188, label %rtl_write_dword.exit184.if.end101_crit_edge, label %rtl_write_dword.exit184.if.end101.sink.split_crit_edge

rtl_write_dword.exit184.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit184.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then26:                                        ; preds = %if.then8
  %write32_async.i193 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %47 = ptrtoint ptr %write32_async.i193 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32_async.i193, align 4
  tail call void %48(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i194 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i194 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i194, align 8
  %write_readback.i195 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i195 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i195, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i196 = icmp eq i8 %52, 0
  br i1 %tobool.not.i196, label %if.then26.rtl_write_dword.exit200_crit_edge, label %if.then.i199

if.then26.rtl_write_dword.exit200_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit200

if.then.i199:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i197 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %53 = ptrtoint ptr %read32_sync.i197 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32_sync.i197, align 4
  %call.i198 = tail call i32 %54(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit200

rtl_write_dword.exit200:                          ; preds = %if.then.i199, %if.then26.rtl_write_dword.exit200_crit_edge
  %55 = ptrtoint ptr %write32_async.i193 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32_async.i193, align 4
  tail call void %56(ptr noundef %1, i32 noundef 1076, i32 noundef 134743815) #7
  %57 = ptrtoint ptr %cfg.i194 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i194, align 8
  %write_readback.i203 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i203 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i203, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i204 = icmp eq i8 %60, 0
  br i1 %tobool.not.i204, label %rtl_write_dword.exit200.if.end101_crit_edge, label %rtl_write_dword.exit200.if.end101.sink.split_crit_edge

rtl_write_dword.exit200.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit200.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else27:                                        ; preds = %if.then8
  %write32_async.i209 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %61 = ptrtoint ptr %write32_async.i209 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32_async.i209, align 4
  tail call void %62(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i210 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i210 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i210, align 8
  %write_readback.i211 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i211 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i211, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i212 = icmp eq i8 %66, 0
  br i1 %tobool.not.i212, label %if.else27.rtl_write_dword.exit216_crit_edge, label %if.then.i215

if.else27.rtl_write_dword.exit216_crit_edge:      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit216

if.then.i215:                                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i213 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %67 = ptrtoint ptr %read32_sync.i213 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32_sync.i213, align 4
  %call.i214 = tail call i32 %68(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit216

rtl_write_dword.exit216:                          ; preds = %if.then.i215, %if.else27.rtl_write_dword.exit216_crit_edge
  %69 = ptrtoint ptr %write32_async.i209 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32_async.i209, align 4
  tail call void %70(ptr noundef %1, i32 noundef 1076, i32 noundef 151586824) #7
  %71 = ptrtoint ptr %cfg.i210 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i210, align 8
  %write_readback.i219 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i219 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i219, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i220 = icmp eq i8 %74, 0
  br i1 %tobool.not.i220, label %rtl_write_dword.exit216.if.end101_crit_edge, label %rtl_write_dword.exit216.if.end101.sink.split_crit_edge

rtl_write_dword.exit216.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit216.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else31:                                        ; preds = %if.then
  %75 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %rate, label %if.else51 [
    i8 24, label %if.then35
    i8 23, label %if.then40
    i8 22, label %if.then45
    i8 21, label %if.then50
  ]

if.then35:                                        ; preds = %if.else31
  %write32_async.i225 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %76 = ptrtoint ptr %write32_async.i225 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32_async.i225, align 4
  tail call void %77(ptr noundef %1, i32 noundef 1072, i32 noundef 83951616) #7
  %cfg.i226 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i226 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i226, align 8
  %write_readback.i227 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i227 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i227, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i228 = icmp eq i8 %81, 0
  br i1 %tobool.not.i228, label %if.then35.rtl_write_dword.exit232_crit_edge, label %if.then.i231

if.then35.rtl_write_dword.exit232_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit232

if.then.i231:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i229 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %82 = ptrtoint ptr %read32_sync.i229 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32_sync.i229, align 4
  %call.i230 = tail call i32 %83(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit232

rtl_write_dword.exit232:                          ; preds = %if.then.i231, %if.then35.rtl_write_dword.exit232_crit_edge
  %84 = ptrtoint ptr %write32_async.i225 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32_async.i225, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1076, i32 noundef 151521030) #7
  %86 = ptrtoint ptr %cfg.i226 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i226, align 8
  %write_readback.i235 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i235 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i235, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i236 = icmp eq i8 %89, 0
  br i1 %tobool.not.i236, label %rtl_write_dword.exit232.if.end101_crit_edge, label %rtl_write_dword.exit232.if.end101.sink.split_crit_edge

rtl_write_dword.exit232.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit232.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then40:                                        ; preds = %if.else31
  %write32_async.i241 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %90 = ptrtoint ptr %write32_async.i241 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32_async.i241, align 4
  tail call void %91(ptr noundef %1, i32 noundef 1072, i32 noundef 100990976) #7
  %cfg.i242 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %92 = ptrtoint ptr %cfg.i242 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i242, align 8
  %write_readback.i243 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %write_readback.i243 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %write_readback.i243, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i244 = icmp eq i8 %95, 0
  br i1 %tobool.not.i244, label %if.then40.rtl_write_dword.exit248_crit_edge, label %if.then.i247

if.then40.rtl_write_dword.exit248_crit_edge:      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit248

if.then.i247:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i245 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %96 = ptrtoint ptr %read32_sync.i245 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32_sync.i245, align 4
  %call.i246 = tail call i32 %97(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit248

rtl_write_dword.exit248:                          ; preds = %if.then.i247, %if.then40.rtl_write_dword.exit248_crit_edge
  %98 = ptrtoint ptr %write32_async.i241 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32_async.i241, align 4
  tail call void %99(ptr noundef %1, i32 noundef 1076, i32 noundef 151521287) #7
  %100 = ptrtoint ptr %cfg.i242 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg.i242, align 8
  %write_readback.i251 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_readback.i251 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %write_readback.i251, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i252 = icmp eq i8 %103, 0
  br i1 %tobool.not.i252, label %rtl_write_dword.exit248.if.end101_crit_edge, label %rtl_write_dword.exit248.if.end101.sink.split_crit_edge

rtl_write_dword.exit248.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit248.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then45:                                        ; preds = %if.else31
  %write32_async.i257 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %104 = ptrtoint ptr %write32_async.i257 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write32_async.i257, align 4
  tail call void %105(ptr noundef %1, i32 noundef 1072, i32 noundef 117833728) #7
  %cfg.i258 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %106 = ptrtoint ptr %cfg.i258 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i258, align 8
  %write_readback.i259 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i259 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i259, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i260 = icmp eq i8 %109, 0
  br i1 %tobool.not.i260, label %if.then45.rtl_write_dword.exit264_crit_edge, label %if.then.i263

if.then45.rtl_write_dword.exit264_crit_edge:      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit264

if.then.i263:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i261 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %110 = ptrtoint ptr %read32_sync.i261 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32_sync.i261, align 4
  %call.i262 = tail call i32 %111(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit264

rtl_write_dword.exit264:                          ; preds = %if.then.i263, %if.then45.rtl_write_dword.exit264_crit_edge
  %112 = ptrtoint ptr %write32_async.i257 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32_async.i257, align 4
  tail call void %113(ptr noundef %1, i32 noundef 1076, i32 noundef 168364296) #7
  %114 = ptrtoint ptr %cfg.i258 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i258, align 8
  %write_readback.i267 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i267 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i267, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i268 = icmp eq i8 %117, 0
  br i1 %tobool.not.i268, label %rtl_write_dword.exit264.if.end101_crit_edge, label %rtl_write_dword.exit264.if.end101.sink.split_crit_edge

rtl_write_dword.exit264.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit264.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then50:                                        ; preds = %if.else31
  %write32_async.i273 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %118 = ptrtoint ptr %write32_async.i273 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write32_async.i273, align 4
  tail call void %119(ptr noundef %1, i32 noundef 1072, i32 noundef 117899264) #7
  %cfg.i274 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %120 = ptrtoint ptr %cfg.i274 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i274, align 8
  %write_readback.i275 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %write_readback.i275 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %write_readback.i275, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i276 = icmp eq i8 %123, 0
  br i1 %tobool.not.i276, label %if.then50.rtl_write_dword.exit280_crit_edge, label %if.then.i279

if.then50.rtl_write_dword.exit280_crit_edge:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit280

if.then.i279:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i277 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %124 = ptrtoint ptr %read32_sync.i277 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32_sync.i277, align 4
  %call.i278 = tail call i32 %125(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit280

rtl_write_dword.exit280:                          ; preds = %if.then.i279, %if.then50.rtl_write_dword.exit280_crit_edge
  %126 = ptrtoint ptr %write32_async.i273 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write32_async.i273, align 4
  tail call void %127(ptr noundef %1, i32 noundef 1076, i32 noundef 168364040) #7
  %128 = ptrtoint ptr %cfg.i274 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i274, align 8
  %write_readback.i283 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %write_readback.i283 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %write_readback.i283, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i284 = icmp eq i8 %131, 0
  br i1 %tobool.not.i284, label %rtl_write_dword.exit280.if.end101_crit_edge, label %rtl_write_dword.exit280.if.end101.sink.split_crit_edge

rtl_write_dword.exit280.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit280.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else51:                                        ; preds = %if.else31
  %write32_async.i289 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %132 = ptrtoint ptr %write32_async.i289 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write32_async.i289, align 4
  tail call void %133(ptr noundef %1, i32 noundef 1072, i32 noundef 134742016) #7
  %cfg.i290 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %134 = ptrtoint ptr %cfg.i290 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfg.i290, align 8
  %write_readback.i291 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_readback.i291 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %write_readback.i291, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i292 = icmp eq i8 %137, 0
  br i1 %tobool.not.i292, label %if.else51.rtl_write_dword.exit296_crit_edge, label %if.then.i295

if.else51.rtl_write_dword.exit296_crit_edge:      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit296

if.then.i295:                                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i293 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %138 = ptrtoint ptr %read32_sync.i293 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32_sync.i293, align 4
  %call.i294 = tail call i32 %139(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit296

rtl_write_dword.exit296:                          ; preds = %if.then.i295, %if.else51.rtl_write_dword.exit296_crit_edge
  %140 = ptrtoint ptr %write32_async.i289 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write32_async.i289, align 4
  tail call void %141(ptr noundef %1, i32 noundef 1076, i32 noundef 185207049) #7
  %142 = ptrtoint ptr %cfg.i290 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i290, align 8
  %write_readback.i299 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_readback.i299 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %write_readback.i299, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i300 = icmp eq i8 %145, 0
  br i1 %tobool.not.i300, label %rtl_write_dword.exit296.if.end101_crit_edge, label %rtl_write_dword.exit296.if.end101.sink.split_crit_edge

rtl_write_dword.exit296.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit296
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit296.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit296
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else57:                                        ; preds = %entry
  br i1 %collision_state, label %if.then62, label %if.else81

if.then62:                                        ; preds = %if.else57
  %146 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %rate, label %if.else77 [
    i8 27, label %if.then66
    i8 26, label %if.then71
    i8 25, label %if.then76
  ]

if.then66:                                        ; preds = %if.then62
  %write32_async.i305 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %147 = ptrtoint ptr %write32_async.i305 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write32_async.i305, align 4
  tail call void %148(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i306 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %149 = ptrtoint ptr %cfg.i306 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cfg.i306, align 8
  %write_readback.i307 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %write_readback.i307 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %write_readback.i307, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i308 = icmp eq i8 %152, 0
  br i1 %tobool.not.i308, label %if.then66.rtl_write_dword.exit312_crit_edge, label %if.then.i311

if.then66.rtl_write_dword.exit312_crit_edge:      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit312

if.then.i311:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i309 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %153 = ptrtoint ptr %read32_sync.i309 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read32_sync.i309, align 4
  %call.i310 = tail call i32 %154(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit312

rtl_write_dword.exit312:                          ; preds = %if.then.i311, %if.then66.rtl_write_dword.exit312_crit_edge
  %155 = ptrtoint ptr %write32_async.i305 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32_async.i305, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1076, i32 noundef 84148994) #7
  %157 = ptrtoint ptr %cfg.i306 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i306, align 8
  %write_readback.i315 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i315 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i315, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i316 = icmp eq i8 %160, 0
  br i1 %tobool.not.i316, label %rtl_write_dword.exit312.if.end101_crit_edge, label %rtl_write_dword.exit312.if.end101.sink.split_crit_edge

rtl_write_dword.exit312.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit312.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then71:                                        ; preds = %if.then62
  %write32_async.i321 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %161 = ptrtoint ptr %write32_async.i321 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write32_async.i321, align 4
  tail call void %162(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i322 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %163 = ptrtoint ptr %cfg.i322 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i322, align 8
  %write_readback.i323 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_readback.i323 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %write_readback.i323, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i324 = icmp eq i8 %166, 0
  br i1 %tobool.not.i324, label %if.then71.rtl_write_dword.exit328_crit_edge, label %if.then.i327

if.then71.rtl_write_dword.exit328_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit328

if.then.i327:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i325 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %167 = ptrtoint ptr %read32_sync.i325 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read32_sync.i325, align 4
  %call.i326 = tail call i32 %168(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit328

rtl_write_dword.exit328:                          ; preds = %if.then.i327, %if.then71.rtl_write_dword.exit328_crit_edge
  %169 = ptrtoint ptr %write32_async.i321 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write32_async.i321, align 4
  tail call void %170(ptr noundef %1, i32 noundef 1076, i32 noundef 100991746) #7
  %171 = ptrtoint ptr %cfg.i322 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg.i322, align 8
  %write_readback.i331 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %write_readback.i331 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %write_readback.i331, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i332 = icmp eq i8 %174, 0
  br i1 %tobool.not.i332, label %rtl_write_dword.exit328.if.end101_crit_edge, label %rtl_write_dword.exit328.if.end101.sink.split_crit_edge

rtl_write_dword.exit328.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit328.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then76:                                        ; preds = %if.then62
  %write32_async.i337 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %175 = ptrtoint ptr %write32_async.i337 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write32_async.i337, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i338 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %177 = ptrtoint ptr %cfg.i338 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i338, align 8
  %write_readback.i339 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i339 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i339, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i340 = icmp eq i8 %180, 0
  br i1 %tobool.not.i340, label %if.then76.rtl_write_dword.exit344_crit_edge, label %if.then.i343

if.then76.rtl_write_dword.exit344_crit_edge:      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit344

if.then.i343:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i341 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %181 = ptrtoint ptr %read32_sync.i341 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read32_sync.i341, align 4
  %call.i342 = tail call i32 %182(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit344

rtl_write_dword.exit344:                          ; preds = %if.then.i343, %if.then76.rtl_write_dword.exit344_crit_edge
  %183 = ptrtoint ptr %write32_async.i337 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write32_async.i337, align 4
  tail call void %184(ptr noundef %1, i32 noundef 1076, i32 noundef 117835010) #7
  %185 = ptrtoint ptr %cfg.i338 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cfg.i338, align 8
  %write_readback.i347 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %write_readback.i347 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %write_readback.i347, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i348 = icmp eq i8 %188, 0
  br i1 %tobool.not.i348, label %rtl_write_dword.exit344.if.end101_crit_edge, label %rtl_write_dword.exit344.if.end101.sink.split_crit_edge

rtl_write_dword.exit344.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit344.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else77:                                        ; preds = %if.then62
  %write32_async.i353 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %189 = ptrtoint ptr %write32_async.i353 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write32_async.i353, align 4
  tail call void %190(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #7
  %cfg.i354 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %191 = ptrtoint ptr %cfg.i354 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i354, align 8
  %write_readback.i355 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_readback.i355 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %write_readback.i355, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i356 = icmp eq i8 %194, 0
  br i1 %tobool.not.i356, label %if.else77.rtl_write_dword.exit360_crit_edge, label %if.then.i359

if.else77.rtl_write_dword.exit360_crit_edge:      ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit360

if.then.i359:                                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i357 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %195 = ptrtoint ptr %read32_sync.i357 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read32_sync.i357, align 4
  %call.i358 = tail call i32 %196(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit360

rtl_write_dword.exit360:                          ; preds = %if.then.i359, %if.else77.rtl_write_dword.exit360_crit_edge
  %197 = ptrtoint ptr %write32_async.i353 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write32_async.i353, align 4
  tail call void %198(ptr noundef %1, i32 noundef 1076, i32 noundef 100992002) #7
  %199 = ptrtoint ptr %cfg.i354 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cfg.i354, align 8
  %write_readback.i363 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %write_readback.i363 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %write_readback.i363, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.i364 = icmp eq i8 %202, 0
  br i1 %tobool.not.i364, label %rtl_write_dword.exit360.if.end101_crit_edge, label %rtl_write_dword.exit360.if.end101.sink.split_crit_edge

rtl_write_dword.exit360.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit360
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit360.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit360
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else81:                                        ; preds = %if.else57
  %203 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %rate, label %if.else96 [
    i8 27, label %if.then85
    i8 26, label %if.then90
    i8 25, label %if.then95
  ]

if.then85:                                        ; preds = %if.else81
  %write32_async.i369 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %204 = ptrtoint ptr %write32_async.i369 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write32_async.i369, align 4
  tail call void %205(ptr noundef %1, i32 noundef 1072, i32 noundef 50462720) #7
  %cfg.i370 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %206 = ptrtoint ptr %cfg.i370 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cfg.i370, align 8
  %write_readback.i371 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %write_readback.i371 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %write_readback.i371, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i372 = icmp eq i8 %209, 0
  br i1 %tobool.not.i372, label %if.then85.rtl_write_dword.exit376_crit_edge, label %if.then.i375

if.then85.rtl_write_dword.exit376_crit_edge:      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit376

if.then.i375:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i373 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %210 = ptrtoint ptr %read32_sync.i373 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read32_sync.i373, align 4
  %call.i374 = tail call i32 %211(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit376

rtl_write_dword.exit376:                          ; preds = %if.then.i375, %if.then85.rtl_write_dword.exit376_crit_edge
  %212 = ptrtoint ptr %write32_async.i369 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write32_async.i369, align 4
  tail call void %213(ptr noundef %1, i32 noundef 1076, i32 noundef 117835012) #7
  %214 = ptrtoint ptr %cfg.i370 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cfg.i370, align 8
  %write_readback.i379 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %write_readback.i379 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %write_readback.i379, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i380 = icmp eq i8 %217, 0
  br i1 %tobool.not.i380, label %rtl_write_dword.exit376.if.end101_crit_edge, label %rtl_write_dword.exit376.if.end101.sink.split_crit_edge

rtl_write_dword.exit376.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit376.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then90:                                        ; preds = %if.else81
  %write32_async.i385 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %218 = ptrtoint ptr %write32_async.i385 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write32_async.i385, align 4
  tail call void %219(ptr noundef %1, i32 noundef 1072, i32 noundef 50462720) #7
  %cfg.i386 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %220 = ptrtoint ptr %cfg.i386 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cfg.i386, align 8
  %write_readback.i387 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %write_readback.i387 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %write_readback.i387, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i388 = icmp eq i8 %223, 0
  br i1 %tobool.not.i388, label %if.then90.rtl_write_dword.exit392_crit_edge, label %if.then.i391

if.then90.rtl_write_dword.exit392_crit_edge:      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit392

if.then.i391:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i389 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %224 = ptrtoint ptr %read32_sync.i389 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read32_sync.i389, align 4
  %call.i390 = tail call i32 %225(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit392

rtl_write_dword.exit392:                          ; preds = %if.then.i391, %if.then90.rtl_write_dword.exit392_crit_edge
  %226 = ptrtoint ptr %write32_async.i385 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write32_async.i385, align 4
  tail call void %227(ptr noundef %1, i32 noundef 1076, i32 noundef 134678021) #7
  %228 = ptrtoint ptr %cfg.i386 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg.i386, align 8
  %write_readback.i395 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %write_readback.i395 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %write_readback.i395, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i396 = icmp eq i8 %231, 0
  br i1 %tobool.not.i396, label %rtl_write_dword.exit392.if.end101_crit_edge, label %rtl_write_dword.exit392.if.end101.sink.split_crit_edge

rtl_write_dword.exit392.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit392.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then95:                                        ; preds = %if.else81
  %write32_async.i401 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %232 = ptrtoint ptr %write32_async.i401 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write32_async.i401, align 4
  tail call void %233(ptr noundef %1, i32 noundef 1072, i32 noundef 84017152) #7
  %cfg.i402 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %234 = ptrtoint ptr %cfg.i402 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cfg.i402, align 8
  %write_readback.i403 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %write_readback.i403 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %write_readback.i403, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i404 = icmp eq i8 %237, 0
  br i1 %tobool.not.i404, label %if.then95.rtl_write_dword.exit408_crit_edge, label %if.then.i407

if.then95.rtl_write_dword.exit408_crit_edge:      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit408

if.then.i407:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i405 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %238 = ptrtoint ptr %read32_sync.i405 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read32_sync.i405, align 4
  %call.i406 = tail call i32 %239(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit408

rtl_write_dword.exit408:                          ; preds = %if.then.i407, %if.then95.rtl_write_dword.exit408_crit_edge
  %240 = ptrtoint ptr %write32_async.i401 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %write32_async.i401, align 4
  tail call void %241(ptr noundef %1, i32 noundef 1076, i32 noundef 151521030) #7
  %242 = ptrtoint ptr %cfg.i402 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cfg.i402, align 8
  %write_readback.i411 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %write_readback.i411 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %write_readback.i411, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i412 = icmp eq i8 %245, 0
  br i1 %tobool.not.i412, label %rtl_write_dword.exit408.if.end101_crit_edge, label %rtl_write_dword.exit408.if.end101.sink.split_crit_edge

rtl_write_dword.exit408.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit408
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit408.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit408
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.else96:                                        ; preds = %if.else81
  %write32_async.i417 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %246 = ptrtoint ptr %write32_async.i417 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write32_async.i417, align 4
  tail call void %247(ptr noundef %1, i32 noundef 1072, i32 noundef 67239936) #7
  %cfg.i418 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %248 = ptrtoint ptr %cfg.i418 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cfg.i418, align 8
  %write_readback.i419 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %write_readback.i419 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %write_readback.i419, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i420 = icmp eq i8 %251, 0
  br i1 %tobool.not.i420, label %if.else96.rtl_write_dword.exit424_crit_edge, label %if.then.i423

if.else96.rtl_write_dword.exit424_crit_edge:      ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit424

if.then.i423:                                     ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i421 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %252 = ptrtoint ptr %read32_sync.i421 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read32_sync.i421, align 4
  %call.i422 = tail call i32 %253(ptr noundef %1, i32 noundef 1072) #7
  br label %rtl_write_dword.exit424

rtl_write_dword.exit424:                          ; preds = %if.then.i423, %if.else96.rtl_write_dword.exit424_crit_edge
  %254 = ptrtoint ptr %write32_async.i417 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write32_async.i417, align 4
  tail call void %255(ptr noundef %1, i32 noundef 1076, i32 noundef 134678021) #7
  %256 = ptrtoint ptr %cfg.i418 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cfg.i418, align 8
  %write_readback.i427 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %write_readback.i427 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %write_readback.i427, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i428 = icmp eq i8 %259, 0
  br i1 %tobool.not.i428, label %rtl_write_dword.exit424.if.end101_crit_edge, label %rtl_write_dword.exit424.if.end101.sink.split_crit_edge

rtl_write_dword.exit424.if.end101.sink.split_crit_edge: ; preds = %rtl_write_dword.exit424
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

rtl_write_dword.exit424.if.end101_crit_edge:      ; preds = %rtl_write_dword.exit424
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.end101.sink.split:                             ; preds = %rtl_write_dword.exit424.if.end101.sink.split_crit_edge, %rtl_write_dword.exit408.if.end101.sink.split_crit_edge, %rtl_write_dword.exit392.if.end101.sink.split_crit_edge, %rtl_write_dword.exit376.if.end101.sink.split_crit_edge, %rtl_write_dword.exit360.if.end101.sink.split_crit_edge, %rtl_write_dword.exit344.if.end101.sink.split_crit_edge, %rtl_write_dword.exit328.if.end101.sink.split_crit_edge, %rtl_write_dword.exit312.if.end101.sink.split_crit_edge, %rtl_write_dword.exit296.if.end101.sink.split_crit_edge, %rtl_write_dword.exit280.if.end101.sink.split_crit_edge, %rtl_write_dword.exit264.if.end101.sink.split_crit_edge, %rtl_write_dword.exit248.if.end101.sink.split_crit_edge, %rtl_write_dword.exit232.if.end101.sink.split_crit_edge, %rtl_write_dword.exit216.if.end101.sink.split_crit_edge, %rtl_write_dword.exit200.if.end101.sink.split_crit_edge, %rtl_write_dword.exit184.if.end101.sink.split_crit_edge, %rtl_write_dword.exit168.if.end101.sink.split_crit_edge, %rtl_write_dword.exit.if.end101.sink.split_crit_edge
  %read32_sync.i429 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %260 = ptrtoint ptr %read32_sync.i429 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read32_sync.i429, align 4
  %call.i430 = tail call i32 %261(ptr noundef %1, i32 noundef 1076) #7
  br label %if.end101

if.end101:                                        ; preds = %if.end101.sink.split, %rtl_write_dword.exit424.if.end101_crit_edge, %rtl_write_dword.exit408.if.end101_crit_edge, %rtl_write_dword.exit392.if.end101_crit_edge, %rtl_write_dword.exit376.if.end101_crit_edge, %rtl_write_dword.exit360.if.end101_crit_edge, %rtl_write_dword.exit344.if.end101_crit_edge, %rtl_write_dword.exit328.if.end101_crit_edge, %rtl_write_dword.exit312.if.end101_crit_edge, %rtl_write_dword.exit296.if.end101_crit_edge, %rtl_write_dword.exit280.if.end101_crit_edge, %rtl_write_dword.exit264.if.end101_crit_edge, %rtl_write_dword.exit248.if.end101_crit_edge, %rtl_write_dword.exit232.if.end101_crit_edge, %rtl_write_dword.exit216.if.end101_crit_edge, %rtl_write_dword.exit200.if.end101_crit_edge, %rtl_write_dword.exit184.if.end101_crit_edge, %rtl_write_dword.exit168.if.end101_crit_edge, %rtl_write_dword.exit.if.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_dm_watchdog(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %fw_current_in_ps_mode.i.i = alloca i8, align 1
  %h2c.i = alloca [4 x i8], align 4
  %fw_current_inpsmode = alloca i8, align 1
  %fw_ps_awake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inpsmode) #7
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_ps_awake) #7
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
  call void %9(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inpsmode) #7
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
  call void %15(ptr noundef %hw, i8 noundef zeroext 86, ptr noundef nonnull %fw_ps_awake) #7
  %p2p_ps_info = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39
  %16 = ptrtoint ptr %p2p_ps_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2p_ps_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fw_ps_awake, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #7
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %19 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not = icmp eq i8 %22, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %23 = ptrtoint ptr %fw_ps_awake to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fw_ps_awake, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rfchange_inprogress, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %one_entry_only.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 49
  %29 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %one_entry_only.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 8
  %30 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %opmode.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %31, label %if.then10.rtl92ee_dm_common_info_self_update.exit_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 3, label %if.then10.if.then15.i_crit_edge
    i32 1, label %if.then10.if.then15.i_crit_edge177
    i32 7, label %if.then10.if.then15.i_crit_edge178
  ]

if.then10.if.then15.i_crit_edge178:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.if.then15.i_crit_edge177:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.if.then15.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then10.rtl92ee_dm_common_info_self_update.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_common_info_self_update.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 9, i32 10
  %33 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp2.i = icmp ugt i32 %34, 1
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.rtl92ee_dm_common_info_self_update.exit_crit_edge

land.lhs.true.i.rtl92ee_dm_common_info_self_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_common_info_self_update.exit

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then15.i:                                      ; preds = %if.then10.if.then15.i_crit_edge, %if.then10.if.then15.i_crit_edge177, %if.then10.if.then15.i_crit_edge178
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #7
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 28
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then15.i
  %cnt.0.i = phi i8 [ 0, %if.then15.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %drv_priv.0.in.i = phi ptr [ %entry_list.i, %if.then15.i ], [ %drv_priv.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %35 = ptrtoint ptr %drv_priv.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %drv_priv.0.i = load ptr, ptr %drv_priv.0.in.i, align 1
  %cmp17.not.i = icmp eq ptr %drv_priv.0.i, %entry_list.i
  %inc.i = add i8 %cnt.0.i, 1
  br i1 %cmp17.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cnt.0.i)
  %cmp25.i = icmp eq i8 %cnt.0.i, 1
  br i1 %cmp25.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.rtl92ee_dm_common_info_self_update.exit_crit_edge

for.end.i.rtl92ee_dm_common_info_self_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_common_info_self_update.exit

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %36 = ptrtoint ptr %one_entry_only.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %one_entry_only.i, align 1
  br label %rtl92ee_dm_common_info_self_update.exit

rtl92ee_dm_common_info_self_update.exit:          ; preds = %cleanup.sink.split.i, %for.end.i.rtl92ee_dm_common_info_self_update.exit_crit_edge, %land.lhs.true.i.rtl92ee_dm_common_info_self_update.exit_crit_edge, %if.then10.rtl92ee_dm_common_info_self_update.exit_crit_edge
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %falsealm_cnt1.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %44(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 1) #7
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i133.i = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i133.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i133.i, align 8
  %ops.i134.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i134.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i134.i, align 4
  %set_bbreg.i135.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i135.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i135.i, align 4
  call void %52(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 1) #7
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i137.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i137.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i137.i, align 8
  %ops.i138.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i138.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i138.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 45
  %59 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %60(ptr noundef %hw, i32 noundef 3312, i32 noundef -1) #7
  %and.i = and i32 %call.i.i, 65535
  %cnt_fast_fsync_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 4
  %61 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i, ptr %cnt_fast_fsync_fail.i, align 4
  %shr.i = lshr i32 %call.i.i, 16
  %cnt_sb_search_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 5
  %62 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr.i, ptr %cnt_sb_search_fail.i, align 4
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %cfg.i140.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i140.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i140.i, align 8
  %ops.i141.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i141.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i141.i, align 4
  %get_bbreg.i142.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 45
  %69 = ptrtoint ptr %get_bbreg.i142.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_bbreg.i142.i, align 4
  %call.i143.i = call i32 %70(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #7
  %and4.i = and i32 %call.i143.i, 65535
  %cnt_ofdm_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 9
  %71 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and4.i, ptr %cnt_ofdm_cca.i, align 4
  %shr6.i = lshr i32 %call.i143.i, 16
  %72 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr6.i, ptr %falsealm_cnt1.i, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %cfg.i145.i = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i145.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i145.i, align 8
  %ops.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i146.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i146.i, align 4
  %get_bbreg.i147.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %78, i32 0, i32 45
  %79 = ptrtoint ptr %get_bbreg.i147.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %get_bbreg.i147.i, align 4
  %call.i148.i = call i32 %80(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #7
  %and8.i = and i32 %call.i148.i, 65535
  %cnt_rate_illegal.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 1
  %81 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and8.i, ptr %cnt_rate_illegal.i, align 4
  %shr10.i = lshr i32 %call.i148.i, 16
  %cnt_crc8_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 2
  %82 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr10.i, ptr %cnt_crc8_fail.i, align 4
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %cfg.i150.i = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i150.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i150.i, align 8
  %ops.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ops.i151.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i151.i, align 4
  %get_bbreg.i152.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %88, i32 0, i32 45
  %89 = ptrtoint ptr %get_bbreg.i152.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_bbreg.i152.i, align 4
  %call.i153.i = call i32 %90(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #7
  %and12.i = and i32 %call.i153.i, 65535
  %cnt_mcs_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 3
  %91 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and12.i, ptr %cnt_mcs_fail.i, align 4
  %92 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %falsealm_cnt1.i, align 4
  %94 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cnt_rate_illegal.i, align 4
  %96 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cnt_crc8_fail.i, align 4
  %98 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %100 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add.i = add i32 %93, %and12.i
  %add16.i = add i32 %add.i, %95
  %add18.i = add i32 %add16.i, %97
  %add20.i = add i32 %add18.i, %99
  %add22.i = add i32 %add20.i, %101
  %cnt_ofdm_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 6
  %102 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add22.i, ptr %cnt_ofdm_fail.i, align 4
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 8
  %cfg.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 32
  %105 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i155.i, align 8
  %ops.i156.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ops.i156.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i156.i, align 4
  %get_bbreg.i157.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %108, i32 0, i32 45
  %109 = ptrtoint ptr %get_bbreg.i157.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %get_bbreg.i157.i, align 4
  %call.i158.i = call i32 %110(ptr noundef %hw, i32 noundef 2244, i32 noundef -1) #7
  %and24.i = and i32 %call.i158.i, 65535
  %cnt_bw_lsc.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 13
  %111 = ptrtoint ptr %cnt_bw_lsc.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and24.i, ptr %cnt_bw_lsc.i, align 4
  %shr26.i = lshr i32 %call.i158.i, 16
  %cnt_bw_usc.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 12
  %112 = ptrtoint ptr %cnt_bw_usc.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shr26.i, ptr %cnt_bw_usc.i, align 4
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %cfg.i160.i = getelementptr inbounds %struct.rtl_priv, ptr %114, i32 0, i32 32
  %115 = ptrtoint ptr %cfg.i160.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i160.i, align 8
  %ops.i161.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ops.i161.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i161.i, align 4
  %set_bbreg.i162.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %118, i32 0, i32 46
  %119 = ptrtoint ptr %set_bbreg.i162.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_bbreg.i162.i, align 4
  call void %120(ptr noundef %hw, i32 noundef 2604, i32 noundef 4096, i32 noundef 1) #7
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 8
  %cfg.i164.i = getelementptr inbounds %struct.rtl_priv, ptr %122, i32 0, i32 32
  %123 = ptrtoint ptr %cfg.i164.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i164.i, align 8
  %ops.i165.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %ops.i165.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i165.i, align 4
  %set_bbreg.i166.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %126, i32 0, i32 46
  %127 = ptrtoint ptr %set_bbreg.i166.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_bbreg.i166.i, align 4
  call void %128(ptr noundef %hw, i32 noundef 2604, i32 noundef 16384, i32 noundef 1) #7
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 8
  %cfg.i168.i = getelementptr inbounds %struct.rtl_priv, ptr %130, i32 0, i32 32
  %131 = ptrtoint ptr %cfg.i168.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i168.i, align 8
  %ops.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %ops.i169.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i169.i, align 4
  %get_bbreg.i170.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %134, i32 0, i32 45
  %135 = ptrtoint ptr %get_bbreg.i170.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %get_bbreg.i170.i, align 4
  %call.i171.i = call i32 %136(ptr noundef %hw, i32 noundef 2652, i32 noundef 255) #7
  %cnt_cck_fail.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 7
  %137 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call.i171.i, ptr %cnt_cck_fail.i, align 4
  %138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv, align 8
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %139, i32 0, i32 32
  %140 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i173.i, align 8
  %ops.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %ops.i174.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i174.i, align 4
  %get_bbreg.i175.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %143, i32 0, i32 45
  %144 = ptrtoint ptr %get_bbreg.i175.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %get_bbreg.i175.i, align 4
  %call.i176.i = call i32 %145(ptr noundef %hw, i32 noundef 2648, i32 noundef -16777216) #7
  %and29.i = shl i32 %call.i176.i, 8
  %shl.i = and i32 %and29.i, 65280
  %146 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cnt_cck_fail.i, align 4
  %add31.i = add i32 %shl.i, %147
  store i32 %add31.i, ptr %cnt_cck_fail.i, align 4
  %148 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv, align 8
  %cfg.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 32
  %150 = ptrtoint ptr %cfg.i178.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i178.i, align 8
  %ops.i179.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %ops.i179.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i179.i, align 4
  %get_bbreg.i180.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %153, i32 0, i32 45
  %154 = ptrtoint ptr %get_bbreg.i180.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %get_bbreg.i180.i, align 4
  %call.i181.i = call i32 %155(ptr noundef %hw, i32 noundef 2656, i32 noundef -1) #7
  %trunc.i = trunc i32 %call.i181.i to i16
  %rev.i = call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %or.i = zext i16 %rev.i to i32
  %cnt_cck_cca.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 10
  %156 = ptrtoint ptr %cnt_cck_cca.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i, ptr %cnt_cck_cca.i, align 4
  %157 = ptrtoint ptr %cnt_fast_fsync_fail.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cnt_fast_fsync_fail.i, align 4
  %159 = ptrtoint ptr %cnt_sb_search_fail.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cnt_sb_search_fail.i, align 4
  %add39.i = add i32 %160, %158
  %161 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %falsealm_cnt1.i, align 4
  %add41.i = add i32 %add39.i, %162
  %163 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cnt_rate_illegal.i, align 4
  %add43.i = add i32 %add41.i, %164
  %165 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cnt_crc8_fail.i, align 4
  %add45.i = add i32 %add43.i, %166
  %167 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cnt_mcs_fail.i, align 4
  %add47.i = add i32 %add45.i, %168
  %169 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cnt_cck_fail.i, align 4
  %add49.i = add i32 %add47.i, %170
  %cnt_all.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 8
  %171 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add49.i, ptr %cnt_all.i, align 4
  %172 = ptrtoint ptr %cnt_ofdm_cca.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cnt_ofdm_cca.i, align 4
  %add52.i = add i32 %173, %or.i
  %cnt_cca_all.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 26, i32 11
  %174 = ptrtoint ptr %cnt_cca_all.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add52.i, ptr %cnt_cca_all.i, align 4
  %175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv, align 8
  %cfg.i183.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 32
  %177 = ptrtoint ptr %cfg.i183.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i183.i, align 8
  %ops.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %ops.i184.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops.i184.i, align 4
  %set_bbreg.i185.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %180, i32 0, i32 46
  %181 = ptrtoint ptr %set_bbreg.i185.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %set_bbreg.i185.i, align 4
  call void %182(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 1) #7
  %183 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv, align 8
  %cfg.i187.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 32
  %185 = ptrtoint ptr %cfg.i187.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cfg.i187.i, align 8
  %ops.i188.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %ops.i188.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i188.i, align 4
  %set_bbreg.i189.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %188, i32 0, i32 46
  %189 = ptrtoint ptr %set_bbreg.i189.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %set_bbreg.i189.i, align 4
  call void %190(ptr noundef %hw, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 0) #7
  %191 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %priv, align 8
  %cfg.i191.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 32
  %193 = ptrtoint ptr %cfg.i191.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cfg.i191.i, align 8
  %ops.i192.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %ops.i192.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ops.i192.i, align 4
  %set_bbreg.i193.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %196, i32 0, i32 46
  %197 = ptrtoint ptr %set_bbreg.i193.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %set_bbreg.i193.i, align 4
  call void %198(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 1) #7
  %199 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %priv, align 8
  %cfg.i195.i = getelementptr inbounds %struct.rtl_priv, ptr %200, i32 0, i32 32
  %201 = ptrtoint ptr %cfg.i195.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg.i195.i, align 8
  %ops.i196.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %ops.i196.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops.i196.i, align 4
  %set_bbreg.i197.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %204, i32 0, i32 46
  %205 = ptrtoint ptr %set_bbreg.i197.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %set_bbreg.i197.i, align 4
  call void %206(ptr noundef %hw, i32 noundef 3328, i32 noundef 134217728, i32 noundef 0) #7
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 8
  %cfg.i199.i = getelementptr inbounds %struct.rtl_priv, ptr %208, i32 0, i32 32
  %209 = ptrtoint ptr %cfg.i199.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cfg.i199.i, align 8
  %ops.i200.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %210, i32 0, i32 4
  %211 = ptrtoint ptr %ops.i200.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ops.i200.i, align 4
  %set_bbreg.i201.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %212, i32 0, i32 46
  %213 = ptrtoint ptr %set_bbreg.i201.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %set_bbreg.i201.i, align 4
  call void %214(ptr noundef %hw, i32 noundef 3072, i32 noundef -2147483648, i32 noundef 0) #7
  %215 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %priv, align 8
  %cfg.i203.i = getelementptr inbounds %struct.rtl_priv, ptr %216, i32 0, i32 32
  %217 = ptrtoint ptr %cfg.i203.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cfg.i203.i, align 8
  %ops.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %ops.i204.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops.i204.i, align 4
  %set_bbreg.i205.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %220, i32 0, i32 46
  %221 = ptrtoint ptr %set_bbreg.i205.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %set_bbreg.i205.i, align 4
  call void %222(ptr noundef %hw, i32 noundef 3328, i32 noundef -2147483648, i32 noundef 0) #7
  %223 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv, align 8
  %cfg.i207.i = getelementptr inbounds %struct.rtl_priv, ptr %224, i32 0, i32 32
  %225 = ptrtoint ptr %cfg.i207.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cfg.i207.i, align 8
  %ops.i208.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %ops.i208.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops.i208.i, align 4
  %set_bbreg.i209.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %228, i32 0, i32 46
  %229 = ptrtoint ptr %set_bbreg.i209.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %set_bbreg.i209.i, align 4
  call void %230(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 0) #7
  %231 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %priv, align 8
  %cfg.i211.i = getelementptr inbounds %struct.rtl_priv, ptr %232, i32 0, i32 32
  %233 = ptrtoint ptr %cfg.i211.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cfg.i211.i, align 8
  %ops.i212.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %234, i32 0, i32 4
  %235 = ptrtoint ptr %ops.i212.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ops.i212.i, align 4
  %set_bbreg.i213.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %236, i32 0, i32 46
  %237 = ptrtoint ptr %set_bbreg.i213.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %set_bbreg.i213.i, align 4
  call void %238(ptr noundef %hw, i32 noundef 2604, i32 noundef 12288, i32 noundef 2) #7
  %239 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %priv, align 8
  %cfg.i215.i = getelementptr inbounds %struct.rtl_priv, ptr %240, i32 0, i32 32
  %241 = ptrtoint ptr %cfg.i215.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i215.i, align 8
  %ops.i216.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %ops.i216.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ops.i216.i, align 4
  %set_bbreg.i217.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %244, i32 0, i32 46
  %245 = ptrtoint ptr %set_bbreg.i217.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %set_bbreg.i217.i, align 4
  call void %246(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 0) #7
  %247 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %priv, align 8
  %cfg.i219.i = getelementptr inbounds %struct.rtl_priv, ptr %248, i32 0, i32 32
  %249 = ptrtoint ptr %cfg.i219.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %cfg.i219.i, align 8
  %ops.i220.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %ops.i220.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops.i220.i, align 4
  %set_bbreg.i221.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %252, i32 0, i32 46
  %253 = ptrtoint ptr %set_bbreg.i221.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %set_bbreg.i221.i, align 4
  call void %254(ptr noundef %hw, i32 noundef 2604, i32 noundef 49152, i32 noundef 2) #7
  %255 = ptrtoint ptr %falsealm_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %falsealm_cnt1.i, align 4
  %257 = ptrtoint ptr %cnt_rate_illegal.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %cnt_rate_illegal.i, align 4
  %259 = ptrtoint ptr %cnt_crc8_fail.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cnt_crc8_fail.i, align 4
  %261 = ptrtoint ptr %cnt_mcs_fail.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %cnt_mcs_fail.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %256, i32 noundef %258, i32 noundef %260, i32 noundef %262) #7
  %263 = ptrtoint ptr %cnt_ofdm_fail.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %cnt_ofdm_fail.i, align 4
  %265 = ptrtoint ptr %cnt_cck_fail.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cnt_cck_fail.i, align 4
  %267 = ptrtoint ptr %cnt_all.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %cnt_all.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %38, i64 noundef 8192, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %264, i32 noundef %266, i32 noundef %268) #7
  %269 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %priv, align 8
  %dm1.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h2c.i) #7
  %271 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %h2c.i, align 4
  %opmode.i34 = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 9, i32 8
  %272 = ptrtoint ptr %opmode.i34 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %opmode.i34, align 8
  %274 = zext i32 %273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %274, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %273, label %rtl92ee_dm_common_info_self_update.exit.if.end39.i_crit_edge [
    i32 3, label %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge
    i32 1, label %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge179
    i32 7, label %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge180
  ]

rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge180: ; preds = %rtl92ee_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge179: ; preds = %rtl92ee_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge: ; preds = %rtl92ee_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

rtl92ee_dm_common_info_self_update.exit.if.end39.i_crit_edge: ; preds = %rtl92ee_dm_common_info_self_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then.i:                                        ; preds = %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge, %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge179, %rtl92ee_dm_common_info_self_update.exit.if.then.i_crit_edge180
  %entry_list_lock.i35 = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 7, i32 8
  call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i35) #7
  %entry_list.i36 = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 28
  %275 = ptrtoint ptr %entry_list.i36 to i32
  call void @__asan_loadN_noabort(i32 %275, i32 4)
  %drv_priv.095.i = load ptr, ptr %entry_list.i36, align 1
  %cmp8.not96.i = icmp eq ptr %drv_priv.095.i, %entry_list.i36
  br i1 %cmp8.not96.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i35) #7
  br label %if.else.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %arrayidx.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 3
  %undec_sm_pwdb17.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 2
  %arrayidx18.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 2
  %arrayidx19.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %drv_priv.0100.i = phi ptr [ %drv_priv.095.i, %for.body.lr.ph.i ], [ %drv_priv.0.i38, %for.body.i.for.body.i_crit_edge ]
  %i.099.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i37, %for.body.i.for.body.i_crit_edge ]
  %min.098.i = phi i32 [ 255, %for.body.lr.ph.i ], [ %278, %for.body.i.for.body.i_crit_edge ]
  %max.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %279, %for.body.i.for.body.i_crit_edge ]
  %rssi_stat.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.0100.i, i32 0, i32 2
  %276 = ptrtoint ptr %rssi_stat.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rssi_stat.i, align 4
  %278 = call i32 @llvm.smin.i32(i32 %277, i32 %min.098.i) #7
  %279 = call i32 @llvm.smax.i32(i32 %277, i32 %max.097.i) #7
  %280 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %arrayidx.i, align 1
  %281 = ptrtoint ptr %undec_sm_pwdb17.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %undec_sm_pwdb17.i, align 8
  %conv.i = trunc i32 %282 to i8
  %283 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv.i, ptr %arrayidx18.i, align 2
  %284 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 32, ptr %arrayidx19.i, align 1
  %inc.i37 = add i8 %i.099.i, 1
  %285 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %inc.i37, ptr %h2c.i, align 4
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 66, i32 noundef 4, ptr noundef nonnull %h2c.i) #7
  %286 = ptrtoint ptr %drv_priv.0100.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 4)
  %drv_priv.0.i38 = load ptr, ptr %drv_priv.0100.i, align 1
  %cmp8.not.i = icmp eq ptr %drv_priv.0.i38, %entry_list.i36
  br i1 %cmp8.not.i, label %for.end.i39, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i39:                                      ; preds = %for.body.i
  call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp28.not.i = icmp eq i32 %279, 0
  br i1 %cmp28.not.i, label %for.end.i39.if.else.i_crit_edge, label %if.then30.i

for.end.i39.if.else.i_crit_edge:                  ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then30.i:                                      ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %entry_max_undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 3
  %287 = ptrtoint ptr %entry_max_undec_sm_pwdb.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %279, ptr %entry_max_undec_sm_pwdb.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %270, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %279, i32 noundef %279) #7
  br label %if.end32.i

if.else.i:                                        ; preds = %for.end.i39.if.else.i_crit_edge, %for.end.thread.i
  %min.0.lcssa107.i = phi i32 [ 255, %for.end.thread.i ], [ %278, %for.end.i39.if.else.i_crit_edge ]
  %entry_max_undec_sm_pwdb31.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 3
  %288 = ptrtoint ptr %entry_max_undec_sm_pwdb31.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %entry_max_undec_sm_pwdb31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then30.i
  %min.0.lcssa106.i = phi i32 [ %min.0.lcssa107.i, %if.else.i ], [ %278, %if.then30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %min.0.lcssa106.i)
  %cmp33.not.i = icmp eq i32 %min.0.lcssa106.i, 255
  br i1 %cmp33.not.i, label %if.else36.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %dm1.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %min.0.lcssa106.i, ptr %dm1.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %270, i64 noundef 13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %min.0.lcssa106.i, i32 noundef %min.0.lcssa106.i) #7
  br label %if.end39.i

if.else36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %290 = ptrtoint ptr %dm1.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %dm1.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else36.i, %if.then35.i, %rtl92ee_dm_common_info_self_update.exit.if.end39.i_crit_edge
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 14
  %291 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %useramask.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool.not.i = icmp eq i8 %292, 0
  br i1 %tobool.not.i, label %if.else49.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx41.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 3
  %293 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %arrayidx41.i, align 1
  %undec_sm_pwdb42.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 2
  %294 = ptrtoint ptr %undec_sm_pwdb42.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %undec_sm_pwdb42.i, align 8
  %conv44.i = trunc i32 %295 to i8
  %arrayidx45.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 2
  %296 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv44.i, ptr %arrayidx45.i, align 2
  %arrayidx46.i = getelementptr inbounds [4 x i8], ptr %h2c.i, i32 0, i32 1
  %297 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 32, ptr %arrayidx46.i, align 1
  %298 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %h2c.i, align 4
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 66, i32 noundef 4, ptr noundef nonnull %h2c.i) #7
  br label %if.end52.i

if.else49.i:                                      ; preds = %if.end39.i
  %undec_sm_pwdb50.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 15, i32 2
  %299 = ptrtoint ptr %undec_sm_pwdb50.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %undec_sm_pwdb50.i, align 8
  %conv51.i = trunc i32 %300 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 13, i32 5
  %301 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write8_async.i.i, align 4
  call void %302(ptr noundef %270, i32 noundef 1278, i8 noundef zeroext %conv51.i) #7
  %cfg.i.i40 = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 32
  %303 = ptrtoint ptr %cfg.i.i40 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cfg.i.i40, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %write_readback.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool.not.i.i = icmp eq i8 %306, 0
  br i1 %tobool.not.i.i, label %if.else49.i.if.end52.i_crit_edge, label %if.then.i.i

if.else49.i.if.end52.i_crit_edge:                 ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then.i.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 13, i32 9
  %307 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i41 = call zeroext i8 %308(ptr noundef %270, i32 noundef 1278) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then.i.i, %if.else49.i.if.end52.i_crit_edge, %if.then40.i
  %309 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %priv, align 8
  %rx_rssi_percentage.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 17
  %311 = ptrtoint ptr %rx_rssi_percentage.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %rx_rssi_percentage.i.i, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 5
  %313 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %314(ptr noundef %310, i32 noundef 3248, i8 noundef zeroext %312) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 32
  %315 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %write_readback.i.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool.not.i.i.i = icmp eq i8 %318, 0
  br i1 %tobool.not.i.i.i, label %if.end52.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.end52.i.rtl_write_byte.exit.i.i_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %319 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %320(ptr noundef %310, i32 noundef 3248) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end52.i.rtl_write_byte.exit.i.i_crit_edge
  %arrayidx3.i.i = getelementptr %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 17, i32 1
  %321 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx3.i.i, align 1
  %323 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %324(ptr noundef %310, i32 noundef 3249, i8 noundef zeroext %322) #7
  %325 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i46.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %write_readback.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %write_readback.i46.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.i47.i.i = icmp eq i8 %328, 0
  br i1 %tobool.not.i47.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge, label %if.then.i50.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit51.i.i

if.then.i50.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i48.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %329 = ptrtoint ptr %read8_sync.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %read8_sync.i48.i.i, align 4
  %call.i49.i.i = call zeroext i8 %330(ptr noundef %310, i32 noundef 3249) #7
  br label %rtl_write_byte.exit51.i.i

rtl_write_byte.exit51.i.i:                        ; preds = %if.then.i50.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit51.i.i_crit_edge
  %rx_evm_dbm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 18
  %331 = ptrtoint ptr %rx_evm_dbm.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %rx_evm_dbm.i.i, align 4
  %333 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %334(ptr noundef %310, i32 noundef 3250, i8 noundef zeroext %332) #7
  %335 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i54.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %write_readback.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %write_readback.i54.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool.not.i55.i.i = icmp eq i8 %338, 0
  br i1 %tobool.not.i55.i.i, label %rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge, label %if.then.i58.i.i

rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge: ; preds = %rtl_write_byte.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit59.i.i

if.then.i58.i.i:                                  ; preds = %rtl_write_byte.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i56.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %339 = ptrtoint ptr %read8_sync.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %read8_sync.i56.i.i, align 4
  %call.i57.i.i = call zeroext i8 %340(ptr noundef %310, i32 noundef 3250) #7
  br label %rtl_write_byte.exit59.i.i

rtl_write_byte.exit59.i.i:                        ; preds = %if.then.i58.i.i, %rtl_write_byte.exit51.i.i.rtl_write_byte.exit59.i.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 18, i32 1
  %341 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx8.i.i, align 1
  %343 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %344(ptr noundef %310, i32 noundef 3251, i8 noundef zeroext %342) #7
  %345 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i62.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %write_readback.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %write_readback.i62.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %tobool.not.i63.i.i = icmp eq i8 %348, 0
  br i1 %tobool.not.i63.i.i, label %rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge, label %if.then.i66.i.i

rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge: ; preds = %rtl_write_byte.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit67.i.i

if.then.i66.i.i:                                  ; preds = %rtl_write_byte.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i64.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %349 = ptrtoint ptr %read8_sync.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %read8_sync.i64.i.i, align 4
  %call.i65.i.i = call zeroext i8 %350(ptr noundef %310, i32 noundef 3251) #7
  br label %rtl_write_byte.exit67.i.i

rtl_write_byte.exit67.i.i:                        ; preds = %if.then.i66.i.i, %rtl_write_byte.exit59.i.i.rtl_write_byte.exit67.i.i_crit_edge
  %rx_snr_db.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 10
  %351 = ptrtoint ptr %rx_snr_db.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %rx_snr_db.i.i, align 8
  %conv.i.i = trunc i32 %352 to i8
  %353 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %354(ptr noundef %310, i32 noundef 3252, i8 noundef zeroext %conv.i.i) #7
  %355 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i70.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %write_readback.i70.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %write_readback.i70.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool.not.i71.i.i = icmp eq i8 %358, 0
  br i1 %tobool.not.i71.i.i, label %rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge, label %if.then.i74.i.i

rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge: ; preds = %rtl_write_byte.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit75.i.i

if.then.i74.i.i:                                  ; preds = %rtl_write_byte.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i72.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %359 = ptrtoint ptr %read8_sync.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read8_sync.i72.i.i, align 4
  %call.i73.i.i = call zeroext i8 %360(ptr noundef %310, i32 noundef 3252) #7
  br label %rtl_write_byte.exit75.i.i

rtl_write_byte.exit75.i.i:                        ; preds = %if.then.i74.i.i, %rtl_write_byte.exit67.i.i.rtl_write_byte.exit75.i.i_crit_edge
  %arrayidx13.i.i = getelementptr %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 10, i32 1
  %361 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx13.i.i, align 4
  %conv14.i.i = trunc i32 %362 to i8
  %363 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %364(ptr noundef %310, i32 noundef 3253, i8 noundef zeroext %conv14.i.i) #7
  %365 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i78.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %write_readback.i78.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %write_readback.i78.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool.not.i79.i.i = icmp eq i8 %368, 0
  br i1 %tobool.not.i79.i.i, label %rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge, label %if.then.i82.i.i

rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge: ; preds = %rtl_write_byte.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit83.i.i

if.then.i82.i.i:                                  ; preds = %rtl_write_byte.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 9
  %369 = ptrtoint ptr %read8_sync.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %read8_sync.i80.i.i, align 4
  %call.i81.i.i = call zeroext i8 %370(ptr noundef %310, i32 noundef 3253) #7
  br label %rtl_write_byte.exit83.i.i

rtl_write_byte.exit83.i.i:                        ; preds = %if.then.i82.i.i, %rtl_write_byte.exit75.i.i.rtl_write_byte.exit83.i.i_crit_edge
  %rx_cfo_short.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 20
  %371 = ptrtoint ptr %rx_cfo_short.i.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %rx_cfo_short.i.i, align 2
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 6
  %373 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %374(ptr noundef %310, i32 noundef 3254, i16 noundef zeroext %372) #7
  %375 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i85.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %376, i32 0, i32 1
  %377 = ptrtoint ptr %write_readback.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %write_readback.i85.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool.not.i86.i.i = icmp eq i8 %378, 0
  br i1 %tobool.not.i86.i.i, label %rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i88.i.i

rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i.i

if.then.i88.i.i:                                  ; preds = %rtl_write_byte.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 10
  %379 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i87.i.i = call zeroext i16 %380(ptr noundef %310, i32 noundef 3254) #7
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i88.i.i, %rtl_write_byte.exit83.i.i.rtl_write_word.exit.i.i_crit_edge
  %arrayidx19.i.i = getelementptr %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 20, i32 1
  %381 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %arrayidx19.i.i, align 2
  %383 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %384(ptr noundef %310, i32 noundef 3256, i16 noundef zeroext %382) #7
  %385 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i91.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %386, i32 0, i32 1
  %387 = ptrtoint ptr %write_readback.i91.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %write_readback.i91.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool.not.i92.i.i = icmp eq i8 %388, 0
  br i1 %tobool.not.i92.i.i, label %rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge, label %if.then.i95.i.i

rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit96.i.i

if.then.i95.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i93.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 10
  %389 = ptrtoint ptr %read16_sync.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %read16_sync.i93.i.i, align 4
  %call.i94.i.i = call zeroext i16 %390(ptr noundef %310, i32 noundef 3256) #7
  br label %rtl_write_word.exit96.i.i

rtl_write_word.exit96.i.i:                        ; preds = %if.then.i95.i.i, %rtl_write_word.exit.i.i.rtl_write_word.exit96.i.i_crit_edge
  %rx_cfo_tail.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 21
  %391 = ptrtoint ptr %rx_cfo_tail.i.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %rx_cfo_tail.i.i, align 2
  %393 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %394(ptr noundef %310, i32 noundef 3258, i16 noundef zeroext %392) #7
  %395 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i99.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %write_readback.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %write_readback.i99.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool.not.i100.i.i = icmp eq i8 %398, 0
  br i1 %tobool.not.i100.i.i, label %rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge, label %if.then.i103.i.i

rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge: ; preds = %rtl_write_word.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit104.i.i

if.then.i103.i.i:                                 ; preds = %rtl_write_word.exit96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i101.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 10
  %399 = ptrtoint ptr %read16_sync.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %read16_sync.i101.i.i, align 4
  %call.i102.i.i = call zeroext i16 %400(ptr noundef %310, i32 noundef 3258) #7
  br label %rtl_write_word.exit104.i.i

rtl_write_word.exit104.i.i:                       ; preds = %if.then.i103.i.i, %rtl_write_word.exit96.i.i.rtl_write_word.exit104.i.i_crit_edge
  %arrayidx24.i.i = getelementptr %struct.rtl_priv, ptr %310, i32 0, i32 24, i32 21, i32 1
  %401 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %arrayidx24.i.i, align 2
  %403 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %404(ptr noundef %310, i32 noundef 3260, i16 noundef zeroext %402) #7
  %405 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i107.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %406, i32 0, i32 1
  %407 = ptrtoint ptr %write_readback.i107.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %write_readback.i107.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool.not.i108.i.i = icmp eq i8 %408, 0
  br i1 %tobool.not.i108.i.i, label %rtl_write_word.exit104.i.i.rtl92ee_rssi_dump_to_register.exit.i_crit_edge, label %if.then.i111.i.i

rtl_write_word.exit104.i.i.rtl92ee_rssi_dump_to_register.exit.i_crit_edge: ; preds = %rtl_write_word.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_rssi_dump_to_register.exit.i

if.then.i111.i.i:                                 ; preds = %rtl_write_word.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i109.i.i = getelementptr inbounds %struct.rtl_priv, ptr %310, i32 0, i32 13, i32 10
  %409 = ptrtoint ptr %read16_sync.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read16_sync.i109.i.i, align 4
  %call.i110.i.i = call zeroext i16 %410(ptr noundef %310, i32 noundef 3260) #7
  br label %rtl92ee_rssi_dump_to_register.exit.i

rtl92ee_rssi_dump_to_register.exit.i:             ; preds = %if.then.i111.i.i, %rtl_write_word.exit104.i.i.rtl92ee_rssi_dump_to_register.exit.i_crit_edge
  %411 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %priv, align 8
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 9, i32 10
  %413 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %414)
  %cmp.i.i = icmp ult i32 %414, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %rtl92ee_rssi_dump_to_register.exit.i.if.then4.i.i_crit_edge

rtl92ee_rssi_dump_to_register.exit.i.if.then4.i.i_crit_edge: ; preds = %rtl92ee_rssi_dump_to_register.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

land.lhs.true.i.i:                                ; preds = %rtl92ee_rssi_dump_to_register.exit.i
  %dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 15
  %415 = ptrtoint ptr %dm.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %dm.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %cmp1.i.i = icmp eq i32 %416, 0
  br i1 %cmp1.i.i, label %if.then.i93.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i93.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %min_undec_pwdb_for_dm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 35, i32 26
  %417 = ptrtoint ptr %min_undec_pwdb_for_dm.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %min_undec_pwdb_for_dm.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %412, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.4) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i93.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %418 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %.pr.i.i = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp3.i.i = icmp ugt i32 %.pr.i.i, 1
  br i1 %cmp3.i.i, label %if.end.i.i.if.then4.i.i_crit_edge, label %if.else20.i.i

if.end.i.i.if.then4.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i.if.then4.i.i_crit_edge, %rtl92ee_rssi_dump_to_register.exit.i.if.then4.i.i_crit_edge
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 9, i32 8
  %419 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %opmode.i.i, align 8
  %421 = zext i32 %420 to i64
  call void @__sanitizer_cov_trace_switch(i64 %421, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %420, label %if.else.i.i [
    i32 3, label %if.then4.i.i.if.then8.i.i_crit_edge
    i32 1, label %if.then4.i.i.if.then8.i.i_crit_edge181
  ]

if.then4.i.i.if.then8.i.i_crit_edge181:           ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i

if.then4.i.i.if.then8.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.then4.i.i.if.then8.i.i_crit_edge, %if.then4.i.i.if.then8.i.i_crit_edge181
  %dm9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 15
  %422 = ptrtoint ptr %dm9.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %dm9.i.i, align 8
  %conv.i94.i = trunc i32 %423 to i8
  %min_undec_pwdb_for_dm11.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 35, i32 26
  %424 = ptrtoint ptr %min_undec_pwdb_for_dm11.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv.i94.i, ptr %min_undec_pwdb_for_dm11.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %412, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %423) #7
  br label %rtl92ee_dm_check_rssi_monitor.exit

if.else.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %undec_sm_pwdb.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 15, i32 2
  %425 = ptrtoint ptr %undec_sm_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %undec_sm_pwdb.i.i, align 8
  %conv15.i.i = trunc i32 %426 to i8
  %min_undec_pwdb_for_dm16.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 35, i32 26
  %427 = ptrtoint ptr %min_undec_pwdb_for_dm16.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %conv15.i.i, ptr %min_undec_pwdb_for_dm16.i.i, align 1
  %conv18.i.i = and i32 %426, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %412, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv18.i.i) #7
  br label %rtl92ee_dm_check_rssi_monitor.exit

if.else20.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %428 = ptrtoint ptr %dm.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %dm.i.i, align 8
  %conv23.i.i = trunc i32 %429 to i8
  %min_undec_pwdb_for_dm24.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 35, i32 26
  %430 = ptrtoint ptr %min_undec_pwdb_for_dm24.i.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %conv23.i.i, ptr %min_undec_pwdb_for_dm24.i.i, align 1
  %conv26.i.i = and i32 %429, 255
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %412, i64 noundef 262144, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv26.i.i) #7
  br label %rtl92ee_dm_check_rssi_monitor.exit

rtl92ee_dm_check_rssi_monitor.exit:               ; preds = %if.else20.i.i, %if.else.i.i, %if.then8.i.i
  %min_undec_pwdb_for_dm28.i.i = getelementptr inbounds %struct.rtl_priv, ptr %412, i32 0, i32 35, i32 26
  %431 = ptrtoint ptr %min_undec_pwdb_for_dm28.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %min_undec_pwdb_for_dm28.i.i, align 1
  %conv29.i.i = zext i8 %432 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %412, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv29.i.i) #7
  %min_undec_pwdb_for_dm.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 35, i32 26
  %433 = ptrtoint ptr %min_undec_pwdb_for_dm.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %min_undec_pwdb_for_dm.i, align 1
  %rssi_val_min.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 35, i32 27
  %435 = ptrtoint ptr %rssi_val_min.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %434, ptr %rssi_val_min.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h2c.i) #7
  %436 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %priv, align 8
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 9
  %438 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %cur_igvalue.i, align 4
  %conv.i43 = trunc i32 %439 to i8
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 9, i32 20
  %440 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %act_scanning.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool.not.i44 = icmp eq i8 %441, 0
  br i1 %tobool.not.i44, label %if.end.i, label %rtl92ee_dm_check_rssi_monitor.exit.rtl92ee_dm_dig.exit_crit_edge

rtl92ee_dm_check_rssi_monitor.exit.rtl92ee_dm_dig.exit_crit_edge: ; preds = %rtl92ee_dm_check_rssi_monitor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_dig.exit

if.end.i:                                         ; preds = %rtl92ee_dm_check_rssi_monitor.exit
  %dig_min_02.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 51
  %link_state.i45 = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 9, i32 10
  %442 = ptrtoint ptr %link_state.i45 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %link_state.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %443)
  %cmp.i = icmp ugt i32 %443, 1
  %media_connect_0.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 54
  %444 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %media_connect_0.i, align 1, !range !51
  br i1 %cmp.i, label %if.then17.i, label %if.else67.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %445)
  %tobool4.not.i = icmp eq i8 %445, 0
  %rssi_val_min.i46 = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 27
  %446 = ptrtoint ptr %rssi_val_min.i46 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %rssi_val_min.i46, align 4
  %add.i47 = add i8 %447, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %447)
  %cmp20.i = icmp ugt i8 %447, 80
  br i1 %cmp20.i, label %if.then22.i, label %if.else.i48

if.then22.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_max.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 24
  %448 = ptrtoint ptr %rx_gain_max.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 90, ptr %rx_gain_max.i, align 1
  br label %if.end38.i

if.else.i48:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %447)
  %cmp27.i = icmp ult i8 %447, 20
  %rx_gain_max30.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 24
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #9
  %449 = ptrtoint ptr %rx_gain_max30.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 30, ptr %rx_gain_max30.i, align 1
  br label %if.end38.i

if.else31.i:                                      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #9
  %450 = ptrtoint ptr %rx_gain_max30.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 %add.i47, ptr %rx_gain_max30.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else31.i, %if.then29.i, %if.then22.i
  %one_entry_only.i49 = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 15, i32 49
  %451 = ptrtoint ptr %one_entry_only.i49 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %one_entry_only.i49, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool39.not.i = icmp eq i8 %452, 0
  br i1 %tobool39.not.i, label %if.end38.i.if.end69.i_crit_edge, label %if.then40.i50

if.end38.i.if.end69.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then40.i50:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %453 = ptrtoint ptr %rssi_val_min.i46 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %rssi_val_min.i46, align 4
  %455 = call i8 @llvm.umin.i8(i8 %454, i8 50) #7
  %456 = call i8 @llvm.umax.i8(i8 %455, i8 30) #7
  br label %if.end69.i

if.else67.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %445)
  %tobool10.i = icmp ne i8 %445, 0
  %rx_gain_max68.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 24
  %457 = ptrtoint ptr %rx_gain_max68.i to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 90, ptr %rx_gain_max68.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %437, i64 noundef 8192, i32 noundef 4, ptr noundef nonnull @.str.9) #7
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else67.i, %if.then40.i50, %if.end38.i.if.end69.i_crit_edge
  %458 = phi i1 [ %tobool10.i, %if.else67.i ], [ false, %if.end38.i.if.end69.i_crit_edge ], [ false, %if.then40.i50 ]
  %459 = phi i1 [ false, %if.else67.i ], [ %tobool4.not.i, %if.end38.i.if.end69.i_crit_edge ], [ %tobool4.not.i, %if.then40.i50 ]
  %dig_min_0.0.i = phi i8 [ 30, %if.else67.i ], [ 30, %if.end38.i.if.end69.i_crit_edge ], [ %456, %if.then40.i50 ]
  %cnt_all.i51 = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 26, i32 8
  %460 = ptrtoint ptr %cnt_all.i51 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %cnt_all.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %461)
  %cmp70.i = icmp ugt i32 %461, 10000
  br i1 %cmp70.i, label %if.then72.i, label %if.else109.i

if.then72.i:                                      ; preds = %if.end69.i
  %large_fa_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 36
  %462 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %463)
  %cmp74.not.i = icmp eq i8 %463, 3
  br i1 %cmp74.not.i, label %if.then72.i.if.end78.i_crit_edge, label %if.then76.i

if.then72.i.if.end78.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i52 = add i8 %463, 1
  %464 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %inc.i52, ptr %large_fa_hit.i, align 1
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.then72.i.if.end78.i_crit_edge
  %forbidden_igi.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 37
  %465 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %forbidden_igi.i, align 2
  %conv79.i = zext i8 %466 to i32
  %conv80.i = and i32 %439, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv80.i, i32 %conv79.i)
  %cmp81.i = icmp ugt i32 %conv80.i, %conv79.i
  br i1 %cmp81.i, label %if.end86.thread.i, label %if.end86.i

if.end86.thread.i:                                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %467 = ptrtoint ptr %forbidden_igi.i to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %conv.i43, ptr %forbidden_igi.i, align 2
  %468 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 1, ptr %large_fa_hit.i, align 1
  br label %if.end143.i

if.end86.i:                                       ; preds = %if.end78.i
  %469 = ptrtoint ptr %large_fa_hit.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %.pr.i = load i8, ptr %large_fa_hit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp89.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp89.i, label %if.then91.i, label %if.end86.i.if.end143.i_crit_edge

if.end86.i.if.end143.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.i

if.then91.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_max95.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 24
  %470 = ptrtoint ptr %rx_gain_max95.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %rx_gain_max95.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %466, i8 %471)
  %cmp97.not.i = icmp ult i8 %466, %471
  %add94.i = add nuw i8 %466, 1
  %spec.select.i = select i1 %cmp97.not.i, i8 %add94.i, i8 %471
  %472 = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 25
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %spec.select.i, ptr %472, align 2
  %recover_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 7
  %474 = ptrtoint ptr %recover_cnt.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 3600, ptr %recover_cnt.i, align 4
  br label %if.end143.i

if.else109.i:                                     ; preds = %if.end69.i
  %recover_cnt110.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 7
  %475 = ptrtoint ptr %recover_cnt110.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %recover_cnt110.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %476)
  %cmp111.not.i = icmp eq i32 %476, 0
  br i1 %cmp111.not.i, label %if.else115.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i32 %476, -1
  %477 = ptrtoint ptr %recover_cnt110.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %dec.i, ptr %recover_cnt110.i, align 4
  br label %if.end143.i

if.else115.i:                                     ; preds = %if.else109.i
  %large_fa_hit116.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 36
  %478 = ptrtoint ptr %large_fa_hit116.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %large_fa_hit116.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %479)
  %cmp118.i = icmp ult i8 %479, 3
  br i1 %cmp118.i, label %if.then120.i, label %if.else139.i

if.then120.i:                                     ; preds = %if.else115.i
  %forbidden_igi121.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 37
  %480 = ptrtoint ptr %forbidden_igi121.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %forbidden_igi121.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %481, i8 %dig_min_0.0.i)
  %cmp125.not.i = icmp ugt i8 %481, %dig_min_0.0.i
  br i1 %cmp125.not.i, label %if.else130.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  %482 = ptrtoint ptr %forbidden_igi121.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %dig_min_0.0.i, ptr %forbidden_igi121.i, align 2
  %rx_gain_min129.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 25
  %483 = ptrtoint ptr %rx_gain_min129.i to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 %dig_min_0.0.i, ptr %rx_gain_min129.i, align 2
  br label %if.end143.i

if.else130.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec132.i = add i8 %481, -1
  %484 = ptrtoint ptr %forbidden_igi121.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %dec132.i, ptr %forbidden_igi121.i, align 2
  %rx_gain_min137.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 25
  %485 = ptrtoint ptr %rx_gain_min137.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %481, ptr %rx_gain_min137.i, align 2
  br label %if.end143.i

if.else139.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #9
  %486 = ptrtoint ptr %large_fa_hit116.i to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 0, ptr %large_fa_hit116.i, align 1
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else139.i, %if.else130.i, %if.then127.i, %if.then113.i, %if.then91.i, %if.end86.i.if.end143.i_crit_edge, %if.end86.thread.i
  %num_qry_beacon_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 15, i32 50, i32 4
  %487 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %487)
  %488 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %488)
  %cmp146.i = icmp ult i16 %488, 5
  br i1 %cmp146.i, label %if.then148.i, label %if.end143.i.if.end150.i_crit_edge

if.end143.i.if.end150.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150.i

if.then148.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_gain_min149.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 25
  %489 = ptrtoint ptr %rx_gain_min149.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 30, ptr %rx_gain_min149.i, align 2
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then148.i, %if.end143.i.if.end150.i_crit_edge
  %rx_gain_min151.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 25
  %490 = ptrtoint ptr %rx_gain_min151.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %rx_gain_min151.i, align 2
  %rx_gain_max153.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 24
  %492 = ptrtoint ptr %rx_gain_max153.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %rx_gain_max153.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %491, i8 %493)
  %cmp155.i = icmp ugt i8 %491, %493
  br i1 %cmp155.i, label %if.then157.i, label %if.end150.i.if.end160.i_crit_edge

if.end150.i.if.end160.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160.i

if.then157.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %494 = ptrtoint ptr %rx_gain_min151.i to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 %493, ptr %rx_gain_min151.i, align 2
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then157.i, %if.end150.i.if.end160.i_crit_edge
  %495 = ptrtoint ptr %link_state.i45 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %link_state.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %496)
  %cmp162.i = icmp ugt i32 %496, 1
  br i1 %cmp162.i, label %if.then164.i, label %if.else221.i

if.then164.i:                                     ; preds = %if.end160.i
  br i1 %459, label %if.then166.i, label %if.else177.i

if.then166.i:                                     ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #9
  %rssi_val_min167.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 27
  %497 = ptrtoint ptr %rssi_val_min167.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %rssi_val_min167.i, align 4
  %499 = call i8 @llvm.umin.i8(i8 %498, i8 50) #7
  %large_fa_hit176.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 35, i32 36
  %500 = ptrtoint ptr %large_fa_hit176.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 0, ptr %large_fa_hit176.i, align 1
  br label %if.end256.i

if.else177.i:                                     ; preds = %if.then164.i
  %501 = ptrtoint ptr %cnt_all.i51 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %cnt_all.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %502)
  %cmp180.i = icmp ugt i32 %502, 1024
  br i1 %cmp180.i, label %if.then182.i, label %if.else186.i

if.then182.i:                                     ; preds = %if.else177.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv185.i = add i8 %conv.i43, 4
  br label %if.end256.i

if.else186.i:                                     ; preds = %if.else177.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %502)
  %cmp189.i = icmp ugt i32 %502, 768
  br i1 %cmp189.i, label %if.then191.i, label %if.end206.i

if.then191.i:                                     ; preds = %if.else186.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv194.i = add i8 %conv.i43, 2
  br label %if.end256.i

if.end206.i:                                      ; preds = %if.else186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %502)
  %cmp198.i = icmp ult i32 %502, 512
  %conv203.i = add i8 %conv.i43, -2
  %spec.select392.i = select i1 %cmp198.i, i8 %conv203.i, i8 %conv.i43
  %503 = ptrtoint ptr %num_qry_beacon_pkt.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %num_qry_beacon_pkt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %504)
  %cmp211.i = icmp ult i16 %504, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %502)
  %cmp215.i = icmp ne i32 %502, 768
  %or.cond.i = select i1 %cmp211.i, i1 %cmp215.i, i1 false
  br i1 %or.cond.i, label %if.then217.i, label %if.end206.i.if.end256.i_crit_edge

if.end206.i.if.end256.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end256.i

if.then217.i:                                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %505 = ptrtoint ptr %rx_gain_min151.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %rx_gain_min151.i, align 2
  br label %if.end256.i

if.else221.i:                                     ; preds = %if.end160.i
  br i1 %458, label %if.then223.i, label %if.else225.i

if.then223.i:                                     ; preds = %if.else221.i
  call void @__sanitizer_cov_trace_pc() #9
  %507 = ptrtoint ptr %rx_gain_min151.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %rx_gain_min151.i, align 2
  br label %if.end256.i

if.else225.i:                                     ; preds = %if.else221.i
  %509 = ptrtoint ptr %cnt_all.i51 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %cnt_all.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %510)
  %cmp228.i = icmp ugt i32 %510, 10000
  br i1 %cmp228.i, label %if.then230.i, label %if.else234.i

if.then230.i:                                     ; preds = %if.else225.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv233.i = add i8 %conv.i43, 4
  br label %if.end256.i

if.else234.i:                                     ; preds = %if.else225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %510)
  %cmp237.i = icmp ugt i32 %510, 8000
  br i1 %cmp237.i, label %if.then239.i, label %if.else243.i

if.then239.i:                                     ; preds = %if.else234.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv242.i = add i8 %conv.i43, 2
  br label %if.end256.i

if.else243.i:                                     ; preds = %if.else234.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %510)
  %cmp246.i = icmp ult i32 %510, 500
  %conv251.i = add i8 %conv.i43, -2
  %spec.select393.i = select i1 %cmp246.i, i8 %conv251.i, i8 %conv.i43
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.else243.i, %if.then239.i, %if.then230.i, %if.then223.i, %if.then217.i, %if.end206.i.if.end256.i_crit_edge, %if.then191.i, %if.then182.i, %if.then166.i
  %current_igi.2.i = phi i8 [ %499, %if.then166.i ], [ %506, %if.then217.i ], [ %spec.select392.i, %if.end206.i.if.end256.i_crit_edge ], [ %508, %if.then223.i ], [ %conv233.i, %if.then230.i ], [ %conv242.i, %if.then239.i ], [ %spec.select393.i, %if.else243.i ], [ %conv194.i, %if.then191.i ], [ %conv185.i, %if.then182.i ]
  %511 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %priv, align 8
  %stop_dig.i.i = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 35, i32 20
  %513 = ptrtoint ptr %stop_dig.i.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %stop_dig.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %tobool.not.i.i53 = icmp eq i8 %514, 0
  br i1 %tobool.not.i.i53, label %if.end.i.i55, label %if.end256.i.rtl92ee_dm_write_dig.exit.i_crit_edge

if.end256.i.rtl92ee_dm_write_dig.exit.i_crit_edge: ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dig.exit.i

if.end.i.i55:                                     ; preds = %if.end256.i
  %515 = ptrtoint ptr %rx_gain_min151.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %rx_gain_min151.i, align 2
  %517 = ptrtoint ptr %rx_gain_max153.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %rx_gain_max153.i, align 1
  %519 = call i8 @llvm.umin.i8(i8 %current_igi.2.i, i8 %518) #7
  %520 = call i8 @llvm.umax.i8(i8 %519, i8 %516) #7
  %cur_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 35, i32 9
  %521 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %cur_igvalue.i.i, align 4
  %conv.i.i54 = zext i8 %520 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %522, i32 %conv.i.i54)
  %cmp.not.i.i = icmp eq i32 %522, %conv.i.i54
  br i1 %cmp.not.i.i, label %if.end.i.i55.if.end10.i.i_crit_edge, label %if.then2.i.i

if.end.i.i55.if.end10.i.i_crit_edge:              ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i55
  %cfg.i.i.i56 = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 32
  %523 = ptrtoint ptr %cfg.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %cfg.i.i.i56, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %524, i32 0, i32 4
  %525 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %526, i32 0, i32 46
  %527 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %528(ptr noundef %hw, i32 noundef 3152, i32 noundef 127, i32 noundef %conv.i.i54) #7
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 14, i32 4
  %529 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %530)
  %cmp5.not.i.i = icmp eq i8 %530, 0
  br i1 %cmp5.not.i.i, label %if.then2.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.then2.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %531 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %priv, align 8
  %cfg.i26.i.i = getelementptr inbounds %struct.rtl_priv, ptr %532, i32 0, i32 32
  %533 = ptrtoint ptr %cfg.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %cfg.i26.i.i, align 8
  %ops.i27.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %534, i32 0, i32 4
  %535 = ptrtoint ptr %ops.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %ops.i27.i.i, align 4
  %set_bbreg.i28.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %536, i32 0, i32 46
  %537 = ptrtoint ptr %set_bbreg.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %set_bbreg.i28.i.i, align 4
  call void %538(ptr noundef %hw, i32 noundef 3160, i32 noundef 127, i32 noundef %conv.i.i54) #7
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.then2.i.i.if.end10.i.i_crit_edge, %if.end.i.i55.if.end10.i.i_crit_edge
  %539 = ptrtoint ptr %cur_igvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %cur_igvalue.i.i, align 4
  %pre_igvalue.i.i = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 35, i32 8
  %541 = ptrtoint ptr %pre_igvalue.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %540, ptr %pre_igvalue.i.i, align 4
  store i32 %conv.i.i54, ptr %cur_igvalue.i.i, align 4
  br label %rtl92ee_dm_write_dig.exit.i

rtl92ee_dm_write_dig.exit.i:                      ; preds = %if.end10.i.i, %if.end256.i.rtl92ee_dm_write_dig.exit.i_crit_edge
  %542 = ptrtoint ptr %link_state.i45 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %link_state.i45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %543)
  %cmp274.i = icmp ugt i32 %543, 1
  %frombool278.i = zext i1 %cmp274.i to i8
  %544 = ptrtoint ptr %media_connect_0.i to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %frombool278.i, ptr %media_connect_0.i, align 1
  %545 = ptrtoint ptr %dig_min_02.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %dig_min_0.0.i, ptr %dig_min_02.i, align 4
  br label %rtl92ee_dm_dig.exit

rtl92ee_dm_dig.exit:                              ; preds = %rtl92ee_dm_write_dig.exit.i, %rtl92ee_dm_check_rssi_monitor.exit.rtl92ee_dm_dig.exit_crit_edge
  %546 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_in_ps_mode.i.i) #7
  %548 = ptrtoint ptr %fw_current_in_ps_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 0, ptr %fw_current_in_ps_mode.i.i, align 1
  %cfg.i.i57 = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 32
  %549 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %cfg.i.i57, align 8
  %ops.i.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %550, i32 0, i32 4
  %551 = ptrtoint ptr %ops.i.i58 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ops.i.i58, align 4
  %get_hw_reg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %552, i32 0, i32 19
  %553 = ptrtoint ptr %get_hw_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %get_hw_reg.i.i, align 4
  call void %554(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_in_ps_mode.i.i) #7
  %555 = ptrtoint ptr %fw_current_in_ps_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %fw_current_in_ps_mode.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %556)
  %tobool.not.i.i59 = icmp eq i8 %556, 0
  br i1 %tobool.not.i.i59, label %if.end.i.i64, label %rtl92ee_dm_dig.exit.rtl92ee_dm_adaptivity.exit_crit_edge

rtl92ee_dm_dig.exit.rtl92ee_dm_adaptivity.exit_crit_edge: ; preds = %rtl92ee_dm_dig.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_adaptivity.exit

if.end.i.i64:                                     ; preds = %rtl92ee_dm_dig.exit
  %557 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %priv, align 8
  %cfg.i.i.i60 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 32
  %559 = ptrtoint ptr %cfg.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %cfg.i.i.i60, align 8
  %ops.i.i.i61 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %560, i32 0, i32 4
  %561 = ptrtoint ptr %ops.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %ops.i.i.i61, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %562, i32 0, i32 45
  %563 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i62 = call i32 %564(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #7
  %565 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %priv, align 8
  %cfg.i49.i.i = getelementptr inbounds %struct.rtl_priv, ptr %566, i32 0, i32 32
  %567 = ptrtoint ptr %cfg.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %cfg.i49.i.i, align 8
  %ops.i50.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %568, i32 0, i32 4
  %569 = ptrtoint ptr %ops.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %ops.i50.i.i, align 4
  %get_bbreg.i51.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %570, i32 0, i32 45
  %571 = ptrtoint ptr %get_bbreg.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %get_bbreg.i51.i.i, align 4
  %call.i52.i.i = call i32 %572(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #7
  %conv3.i.i = and i32 %call.i.i.i62, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv3.i.i)
  %cmp.i.i63 = icmp ugt i32 %conv3.i.i, 40
  %conv5.i.i = and i32 %call.i52.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv5.i.i)
  %cmp6.i.i = icmp ugt i32 %conv5.i.i, 40
  %or.cond.i.i = select i1 %cmp.i.i63, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then8.i.i65, label %if.else.i.i72

if.then8.i.i65:                                   ; preds = %if.end.i.i64
  %pre_edcca_enable.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 10, i32 7
  %573 = ptrtoint ptr %pre_edcca_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %pre_edcca_enable.i.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %574)
  %tobool9.not.i.i = icmp eq i8 %574, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.then8.i.i65.rtl92ee_dm_adaptivity.exit_crit_edge

if.then8.i.i65.rtl92ee_dm_adaptivity.exit_crit_edge: ; preds = %if.then8.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_adaptivity.exit

if.then10.i.i:                                    ; preds = %if.then8.i.i65
  %write8_async.i.i.i66 = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 5
  %575 = ptrtoint ptr %write8_async.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %write8_async.i.i.i66, align 4
  call void %576(ptr noundef %547, i32 noundef 3148, i8 noundef zeroext 3) #7
  %577 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cfg.i.i57, align 8
  %write_readback.i.i.i67 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %578, i32 0, i32 1
  %579 = ptrtoint ptr %write_readback.i.i.i67 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %write_readback.i.i.i67, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %580)
  %tobool.not.i.i.i68 = icmp eq i8 %580, 0
  br i1 %tobool.not.i.i.i68, label %if.then10.i.i.rtl_write_byte.exit.i.i71_crit_edge, label %if.then.i.i.i70

if.then10.i.i.rtl_write_byte.exit.i.i71_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i71

if.then.i.i.i70:                                  ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i69 = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 9
  %581 = ptrtoint ptr %read8_sync.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %read8_sync.i.i.i69, align 4
  %call.i54.i.i = call zeroext i8 %582(ptr noundef %547, i32 noundef 3148) #7
  br label %rtl_write_byte.exit.i.i71

rtl_write_byte.exit.i.i71:                        ; preds = %if.then.i.i.i70, %if.then10.i.i.rtl_write_byte.exit.i.i71_crit_edge
  %583 = ptrtoint ptr %write8_async.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %write8_async.i.i.i66, align 4
  call void %584(ptr noundef %547, i32 noundef 3150, i8 noundef zeroext 0) #7
  %585 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %cfg.i.i57, align 8
  %write_readback.i57.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %586, i32 0, i32 1
  %587 = ptrtoint ptr %write_readback.i57.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %write_readback.i57.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool.not.i58.i.i = icmp eq i8 %588, 0
  br i1 %tobool.not.i58.i.i, label %rtl_write_byte.exit.i.i71.rtl_write_byte.exit62.i.i_crit_edge, label %if.then.i61.i.i

rtl_write_byte.exit.i.i71.rtl_write_byte.exit62.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit62.i.i

if.then.i61.i.i:                                  ; preds = %rtl_write_byte.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i59.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 9
  %589 = ptrtoint ptr %read8_sync.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %read8_sync.i59.i.i, align 4
  %call.i60.i.i = call zeroext i8 %590(ptr noundef %547, i32 noundef 3150) #7
  br label %rtl_write_byte.exit62.i.i

rtl_write_byte.exit62.i.i:                        ; preds = %if.then.i61.i.i, %rtl_write_byte.exit.i.i71.rtl_write_byte.exit62.i.i_crit_edge
  %591 = ptrtoint ptr %pre_edcca_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 1, ptr %pre_edcca_enable.i.i, align 2
  br label %rtl92ee_dm_adaptivity.exit

if.else.i.i72:                                    ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %conv3.i.i)
  %cmp15.i.i = icmp ult i32 %conv3.i.i, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %conv5.i.i)
  %cmp19.i.i = icmp ult i32 %conv5.i.i, 37
  %or.cond47.i.i = select i1 %cmp15.i.i, i1 %cmp19.i.i, i1 false
  br i1 %or.cond47.i.i, label %if.then21.i.i, label %if.else.i.i72.rtl92ee_dm_adaptivity.exit_crit_edge

if.else.i.i72.rtl92ee_dm_adaptivity.exit_crit_edge: ; preds = %if.else.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_adaptivity.exit

if.then21.i.i:                                    ; preds = %if.else.i.i72
  %pre_edcca_enable23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 10, i32 7
  %592 = ptrtoint ptr %pre_edcca_enable23.i.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %pre_edcca_enable23.i.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %593)
  %tobool24.not.i.i = icmp eq i8 %593, 0
  br i1 %tobool24.not.i.i, label %if.then21.i.i.rtl92ee_dm_adaptivity.exit_crit_edge, label %if.then25.i.i

if.then21.i.i.rtl92ee_dm_adaptivity.exit_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_adaptivity.exit

if.then25.i.i:                                    ; preds = %if.then21.i.i
  %write8_async.i63.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 5
  %594 = ptrtoint ptr %write8_async.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %write8_async.i63.i.i, align 4
  call void %595(ptr noundef %547, i32 noundef 3148, i8 noundef zeroext 127) #7
  %596 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %cfg.i.i57, align 8
  %write_readback.i65.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %597, i32 0, i32 1
  %598 = ptrtoint ptr %write_readback.i65.i.i to i32
  call void @__asan_load1_noabort(i32 %598)
  %599 = load i8, ptr %write_readback.i65.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %599)
  %tobool.not.i66.i.i = icmp eq i8 %599, 0
  br i1 %tobool.not.i66.i.i, label %if.then25.i.i.rtl_write_byte.exit70.i.i_crit_edge, label %if.then.i69.i.i

if.then25.i.i.rtl_write_byte.exit70.i.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit70.i.i

if.then.i69.i.i:                                  ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i67.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 9
  %600 = ptrtoint ptr %read8_sync.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %read8_sync.i67.i.i, align 4
  %call.i68.i.i = call zeroext i8 %601(ptr noundef %547, i32 noundef 3148) #7
  br label %rtl_write_byte.exit70.i.i

rtl_write_byte.exit70.i.i:                        ; preds = %if.then.i69.i.i, %if.then25.i.i.rtl_write_byte.exit70.i.i_crit_edge
  %602 = ptrtoint ptr %write8_async.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %write8_async.i63.i.i, align 4
  call void %603(ptr noundef %547, i32 noundef 3150, i8 noundef zeroext 127) #7
  %604 = ptrtoint ptr %cfg.i.i57 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %cfg.i.i57, align 8
  %write_readback.i73.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %write_readback.i73.i.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %write_readback.i73.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %607)
  %tobool.not.i74.i.i = icmp eq i8 %607, 0
  br i1 %tobool.not.i74.i.i, label %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge, label %if.then.i77.i.i

rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge: ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit78.i.i

if.then.i77.i.i:                                  ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i75.i.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 13, i32 9
  %608 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i76.i.i = call zeroext i8 %609(ptr noundef %547, i32 noundef 3150) #7
  br label %rtl_write_byte.exit78.i.i

rtl_write_byte.exit78.i.i:                        ; preds = %if.then.i77.i.i, %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge
  %610 = ptrtoint ptr %pre_edcca_enable23.i.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 0, ptr %pre_edcca_enable23.i.i, align 2
  br label %rtl92ee_dm_adaptivity.exit

rtl92ee_dm_adaptivity.exit:                       ; preds = %rtl_write_byte.exit78.i.i, %if.then21.i.i.rtl92ee_dm_adaptivity.exit_crit_edge, %if.else.i.i72.rtl92ee_dm_adaptivity.exit_crit_edge, %rtl_write_byte.exit62.i.i, %if.then8.i.i65.rtl92ee_dm_adaptivity.exit_crit_edge, %rtl92ee_dm_dig.exit.rtl92ee_dm_adaptivity.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_in_ps_mode.i.i) #7
  %611 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %priv, align 8
  %link_state.i74 = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 9, i32 10
  %613 = ptrtoint ptr %link_state.i74 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %link_state.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %614)
  %cmp.i75 = icmp ugt i32 %614, 1
  br i1 %cmp.i75, label %if.then.i77, label %rtl92ee_dm_adaptivity.exit.if.end28.sink.split.i_crit_edge

rtl92ee_dm_adaptivity.exit.if.end28.sink.split.i_crit_edge: ; preds = %rtl92ee_dm_adaptivity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split.i

if.then.i77:                                      ; preds = %rtl92ee_dm_adaptivity.exit
  %rssi_val_min.i76 = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 35, i32 27
  %615 = ptrtoint ptr %rssi_val_min.i76 to i32
  call void @__asan_load1_noabort(i32 %615)
  %616 = load i8, ptr %rssi_val_min.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %616)
  %cmp1.i = icmp ugt i8 %616, 25
  br i1 %cmp1.i, label %if.then.i77.if.end28.i_crit_edge, label %land.lhs.true.i78

if.then.i77.if.end28.i_crit_edge:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true.i78:                                ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %616)
  %cmp10.i = icmp ugt i8 %616, 10
  br i1 %cmp10.i, label %land.lhs.true.i78.if.end28.i_crit_edge, label %land.lhs.true.i78.if.end28.sink.split.i_crit_edge

land.lhs.true.i78.if.end28.sink.split.i_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split.i

land.lhs.true.i78.if.end28.i_crit_edge:           ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.end28.sink.split.i:                            ; preds = %land.lhs.true.i78.if.end28.sink.split.i_crit_edge, %rtl92ee_dm_adaptivity.exit.if.end28.sink.split.i_crit_edge
  %cnt_cck_fail22.i = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 26, i32 7
  %617 = ptrtoint ptr %cnt_cck_fail22.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %cnt_cck_fail22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %618)
  %cmp23.i = icmp ugt i32 %618, 1000
  %.35.i = select i1 %cmp23.i, i8 -125, i8 64
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %land.lhs.true.i78.if.end28.i_crit_edge, %if.then.i77.if.end28.i_crit_edge
  %cur_cck_cca_thresh.0.i = phi i8 [ -51, %if.then.i77.if.end28.i_crit_edge ], [ -125, %land.lhs.true.i78.if.end28.i_crit_edge ], [ %.35.i, %if.end28.sink.split.i ]
  %cur_cck_cca_thres.i.i = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 35, i32 29
  %619 = ptrtoint ptr %cur_cck_cca_thres.i.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %cur_cck_cca_thres.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %620, i8 %cur_cck_cca_thresh.0.i)
  %cmp.not.i.i79 = icmp eq i8 %620, %cur_cck_cca_thresh.0.i
  br i1 %cmp.not.i.i79, label %if.end28.i.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge, label %if.then.i.i84

if.end28.i.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_cck_packet_detection_thresh.exit

if.then.i.i84:                                    ; preds = %if.end28.i
  %write8_async.i.i.i80 = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 13, i32 5
  %621 = ptrtoint ptr %write8_async.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %write8_async.i.i.i80, align 4
  call void %622(ptr noundef %612, i32 noundef 2570, i8 noundef zeroext %cur_cck_cca_thresh.0.i) #7
  %cfg.i.i.i81 = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 32
  %623 = ptrtoint ptr %cfg.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %cfg.i.i.i81, align 8
  %write_readback.i.i.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %624, i32 0, i32 1
  %625 = ptrtoint ptr %write_readback.i.i.i82 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %write_readback.i.i.i82, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %626)
  %tobool.not.i.i.i83 = icmp eq i8 %626, 0
  br i1 %tobool.not.i.i.i83, label %if.then.i.i84.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge, label %if.then.i.i.i87

if.then.i.i84.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge: ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_cck_packet_detection_thresh.exit

if.then.i.i.i87:                                  ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i85 = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 13, i32 9
  %627 = ptrtoint ptr %read8_sync.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %read8_sync.i.i.i85, align 4
  %call.i.i.i86 = call zeroext i8 %628(ptr noundef %612, i32 noundef 2570) #7
  br label %rtl92ee_dm_cck_packet_detection_thresh.exit

rtl92ee_dm_cck_packet_detection_thresh.exit:      ; preds = %if.then.i.i.i87, %if.then.i.i84.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge, %if.end28.i.rtl92ee_dm_cck_packet_detection_thresh.exit_crit_edge
  %629 = ptrtoint ptr %cur_cck_cca_thres.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %cur_cck_cca_thres.i.i, align 2
  %pre_cck_cca_thres.i.i = getelementptr inbounds %struct.rtl_priv, ptr %612, i32 0, i32 35, i32 28
  %631 = ptrtoint ptr %pre_cck_cca_thres.i.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %630, ptr %pre_cck_cca_thres.i.i, align 1
  store i8 %cur_cck_cca_thresh.0.i, ptr %cur_cck_cca_thres.i.i, align 2
  %632 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %priv, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 10, i32 14
  %634 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %635)
  %cmp.i.i89 = icmp eq i8 %635, 0
  br i1 %cmp.i.i89, label %if.then.i90, label %if.end.i93

if.then.i90:                                      ; preds = %rtl92ee_dm_cck_packet_detection_thresh.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %633, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.10) #7
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

if.end.i93:                                       ; preds = %rtl92ee_dm_cck_packet_detection_thresh.exit
  %useramask.i91 = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 15, i32 14
  %636 = ptrtoint ptr %useramask.i91 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %useramask.i91, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %637)
  %tobool.not.i92 = icmp eq i8 %637, 0
  br i1 %tobool.not.i92, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %633, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.11) #7
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

if.end5.i:                                        ; preds = %if.end.i93
  %link_state.i94 = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 9, i32 10
  %638 = ptrtoint ptr %link_state.i94 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %link_state.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %639)
  %cmp.i95 = icmp eq i32 %639, 2
  br i1 %cmp.i95, label %land.lhs.true.i97, label %if.end5.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge

if.end5.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

land.lhs.true.i97:                                ; preds = %if.end5.i
  %opmode.i96 = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 9, i32 8
  %640 = ptrtoint ptr %opmode.i96 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %opmode.i96, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %641)
  %cmp6.i = icmp eq i32 %641, 2
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true.i97.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge

land.lhs.true.i97.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

if.then7.i:                                       ; preds = %land.lhs.true.i97
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 15, i32 2
  %642 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %undec_sm_pwdb.i, align 8
  %ldpc_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 22, i32 22
  %644 = ptrtoint ptr %ldpc_thres.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %ldpc_thres.i, align 1
  %conv.i98 = zext i8 %645 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %643, i32 %conv.i98)
  %cmp9.i = icmp slt i32 %643, %conv.i98
  br i1 %cmp9.i, label %if.then7.i.if.end22.sink.split.i_crit_edge, label %if.else.i99

if.then7.i.if.end22.sink.split.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.else.i99:                                      ; preds = %if.then7.i
  %sub.i = add nsw i32 %conv.i98, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %643, i32 %sub.i)
  %cmp16.i = icmp sgt i32 %643, %sub.i
  br i1 %cmp16.i, label %if.else.i99.if.end22.sink.split.i_crit_edge, label %if.else.i99.if.end22.i_crit_edge

if.else.i99.if.end22.i_crit_edge:                 ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else.i99.if.end22.sink.split.i_crit_edge:      ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else.i99.if.end22.sink.split.i_crit_edge, %if.then7.i.if.end22.sink.split.i_crit_edge
  %.sink75.i = phi i8 [ 1, %if.then7.i.if.end22.sink.split.i_crit_edge ], [ 0, %if.else.i99.if.end22.sink.split.i_crit_edge ]
  %use_ldpc19.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 22, i32 23
  %646 = ptrtoint ptr %use_ldpc19.i to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 %.sink75.i, ptr %use_ldpc19.i, align 2
  %lower_rts_rate20.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 22, i32 24
  %647 = ptrtoint ptr %lower_rts_rate20.i to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 %.sink75.i, ptr %lower_rts_rate20.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.else.i99.if.end22.i_crit_edge
  %648 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %undec_sm_pwdb.i, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 22, i32 1
  %650 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %priv, align 8
  %high_rssi_thresh_for_ra.i.i = getelementptr inbounds %struct.rtl_priv, ptr %651, i32 0, i32 22, i32 3
  %652 = ptrtoint ptr %high_rssi_thresh_for_ra.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %high_rssi_thresh_for_ra.i.i, align 4
  %low_rssi_thresh_for_ra40m.i.i = getelementptr inbounds %struct.rtl_priv, ptr %651, i32 0, i32 22, i32 6
  %654 = ptrtoint ptr %low_rssi_thresh_for_ra40m.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %low_rssi_thresh_for_ra40m.i.i, align 4
  %656 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %ratr_state.i, align 1
  %658 = zext i8 %657 to i64
  call void @__sanitizer_cov_trace_switch(i64 %658, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %657, label %sw.default.i.i [
    i8 0, label %if.end22.i.sw.epilog.i.i_crit_edge
    i8 1, label %if.end22.i.sw.epilog.i.i_crit_edge182
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb2.i.i
  ]

if.end22.i.sw.epilog.i.i_crit_edge182:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.end22.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %653, 5
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %add3.i.i = add i32 %653, 5
  %add4.i.i = add i32 %655, 5
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i100 = zext i8 %657 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %651, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i100) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end22.i.sw.epilog.i.i_crit_edge, %if.end22.i.sw.epilog.i.i_crit_edge182
  %high_rssithresh_for_ra.0.i.i = phi i32 [ %653, %sw.default.i.i ], [ %add3.i.i, %sw.bb2.i.i ], [ %add.i.i, %sw.bb1.i.i ], [ %653, %if.end22.i.sw.epilog.i.i_crit_edge ], [ %653, %if.end22.i.sw.epilog.i.i_crit_edge182 ]
  %low_rssithresh_for_ra.0.i.i = phi i32 [ %655, %sw.default.i.i ], [ %add4.i.i, %sw.bb2.i.i ], [ %655, %sw.bb1.i.i ], [ %655, %if.end22.i.sw.epilog.i.i_crit_edge ], [ %655, %if.end22.i.sw.epilog.i.i_crit_edge182 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %high_rssithresh_for_ra.0.i.i, i32 %649)
  %cmp.i63.i = icmp ult i32 %high_rssithresh_for_ra.0.i.i, %649
  call void @__sanitizer_cov_trace_cmp4(i32 %low_rssithresh_for_ra.0.i.i, i32 %649)
  %cmp7.i.i = icmp ult i32 %low_rssithresh_for_ra.0.i.i, %649
  %..i.i = select i1 %cmp7.i.i, i8 2, i8 3
  %state.0.i.i = select i1 %cmp.i63.i, i8 1, i8 %..i.i
  %659 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %ratr_state.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %660, i8 %state.0.i.i)
  %cmp14.not.i.i = icmp eq i8 %660, %state.0.i.i
  br i1 %cmp14.not.i.i, label %sw.epilog.i.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge, label %if.then26.i

sw.epilog.i.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

if.then26.i:                                      ; preds = %sw.epilog.i.i
  %661 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 %state.0.i.i, ptr %ratr_state.i, align 1
  %662 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i.i = and i32 %662, -16384
  %663 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %663, i32 0, i32 1
  %664 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %665, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i101 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i101, label %if.then26.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i103

if.then26.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i103:                             ; preds = %if.then26.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i102 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i102, label %land.lhs.true.i.i103.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i103.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i103
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i104

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i104:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i104, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i103.rcu_read_lock.exit.i_crit_edge, %if.then26.i.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 9, i32 34
  %666 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %priv, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %667, i32 0, i32 9, i32 7
  %668 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %vif.i.i, align 4
  %call.i65.i = call ptr @ieee80211_find_sta(ptr noundef %669, ptr noundef %bssid.i) #7
  %tobool28.not.i = icmp eq ptr %call.i65.i, null
  br i1 %tobool28.not.i, label %rcu_read_lock.exit.i.if.end31.i_crit_edge, label %if.then29.i105

rcu_read_lock.exit.i.if.end31.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then29.i105:                                   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 32
  %670 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %671, i32 0, i32 4
  %672 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %ops.i, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %673, i32 0, i32 21
  %674 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %update_rate_tbl.i, align 4
  %676 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %ratr_state.i, align 1
  call void %675(ptr noundef %hw, ptr noundef nonnull %call.i65.i, i8 noundef zeroext %677, i1 noundef zeroext true) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i105, %rcu_read_lock.exit.i.if.end31.i_crit_edge
  %call.i66.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i66.i, label %if.end31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i69.i

if.end31.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i69.i:                              ; preds = %if.end31.i
  %call1.i67.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call1.i67.i, 0
  br i1 %tobool.not.i68.i, label %land.lhs.true.i69.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i71.i

land.lhs.true.i69.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i71.i:                             ; preds = %land.lhs.true.i69.i
  %.b4.i70.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i, label %land.lhs.true2.i71.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i72.i

land.lhs.true2.i71.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i72.i:                                    ; preds = %land.lhs.true2.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i72.i, %land.lhs.true2.i71.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i69.i.rcu_read_unlock.exit.i_crit_edge, %if.end31.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %678 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i73.i = and i32 %678, -16384
  %679 = inttoptr i32 %and.i.i.i.i.i73.i to ptr
  %preempt_count.i.i.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %679, i32 0, i32 1
  %680 = ptrtoint ptr %preempt_count.i.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load volatile i32, ptr %preempt_count.i.i.i.i74.i, align 4
  %sub.i.i.i.i = add i32 %681, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i74.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %682 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 22, i32 21
  %684 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %683, ptr %pre_ratr_state.i, align 4
  br label %rtl92ee_dm_refresh_rate_adaptive_mask.exit

rtl92ee_dm_refresh_rate_adaptive_mask.exit:       ; preds = %rcu_read_unlock.exit.i, %sw.epilog.i.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge, %land.lhs.true.i97.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.end5.i.rtl92ee_dm_refresh_rate_adaptive_mask.exit_crit_edge, %if.then4.i, %if.then.i90
  %685 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %priv, align 8
  %num_non_be_pkt.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 50, i32 5
  %687 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_load2_noabort(i32 %687)
  %688 = load i16, ptr %num_non_be_pkt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %688)
  %cmp.i107 = icmp ugt i16 %688, 256
  br i1 %cmp.i107, label %if.then.i108, label %rtl92ee_dm_refresh_rate_adaptive_mask.exit.if.end.i112_crit_edge

rtl92ee_dm_refresh_rate_adaptive_mask.exit.if.end.i112_crit_edge: ; preds = %rtl92ee_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i112

if.then.i108:                                     ; preds = %rtl92ee_dm_refresh_rate_adaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 8
  %689 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 1, ptr %is_any_nonbepkts.i, align 1
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i108, %rtl92ee_dm_refresh_rate_adaptive_mask.exit.if.end.i112_crit_edge
  %690 = ptrtoint ptr %num_non_be_pkt.i to i32
  call void @__asan_store2_noabort(i32 %690)
  store i16 0, ptr %num_non_be_pkt.i, align 2
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 24
  %691 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %691)
  %692 = load i64, ptr %stats.i, align 8
  %693 = load i64, ptr @rtl92ee_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i109 = sub i64 %692, %693
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 24, i32 3
  %694 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %694)
  %695 = load i64, ptr %rxbytesunicast.i, align 8
  %696 = load i64, ptr @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub7.i = sub i64 %695, %696
  %is_any_nonbepkts9.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 8
  %697 = ptrtoint ptr %is_any_nonbepkts9.i to i32
  call void @__asan_load1_noabort(i32 %697)
  %698 = load i8, ptr %is_any_nonbepkts9.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %698)
  %tobool.not.i110 = icmp eq i8 %698, 0
  %699 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %priv, align 8
  %mode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %700, i32 0, i32 9, i32 42
  %701 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %701)
  %702 = load i16, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %702)
  %cmp.i.i111 = icmp eq i16 %702, 2
  br i1 %tobool.not.i110, label %land.end.i, label %land.end.thread.i

land.end.i:                                       ; preds = %if.end.i112
  br i1 %cmp.i.i111, label %land.end.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge, label %if.end14.i

land.end.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_check_edca_turbo.exit

land.end.thread.i:                                ; preds = %if.end.i112
  br i1 %cmp.i.i111, label %land.end.thread.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge, label %land.end.thread.i.if.else.i118_crit_edge

land.end.thread.i.if.else.i118_crit_edge:         ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i118

land.end.thread.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge: ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_check_edca_turbo.exit

if.end14.i:                                       ; preds = %land.end.i
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 11
  %703 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %disable_framebursting.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool11.not.i = icmp eq i8 %704, 0
  br i1 %tobool11.not.i, label %if.then16.i, label %if.end14.i.if.else.i118_crit_edge

if.end14.i.if.else.i118_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i118

if.then16.i:                                      ; preds = %if.end14.i
  %mul.i = shl i64 %sub.i109, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub7.i, i64 %mul.i)
  %cmp17.i = icmp ugt i64 %sub7.i, %mul.i
  %frombool21.i = zext i1 %cmp17.i to i8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 13, i32 7
  %705 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %write32_async.i.i, align 4
  call void %706(ptr noundef %686, i32 noundef 1288, i32 noundef 6202411) #7
  %cfg.i.i113 = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 32
  %707 = ptrtoint ptr %cfg.i.i113 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %cfg.i.i113, align 8
  %write_readback.i.i114 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %708, i32 0, i32 1
  %709 = ptrtoint ptr %write_readback.i.i114 to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %write_readback.i.i114, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %710)
  %tobool.not.i.i115 = icmp eq i8 %710, 0
  br i1 %tobool.not.i.i115, label %if.then16.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i117

if.then16.i.rtl_write_dword.exit.i_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i117:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 13, i32 11
  %711 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i116 = call i32 %712(ptr noundef %686, i32 noundef 1288) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i117, %if.then16.i.rtl_write_dword.exit.i_crit_edge
  %is_cur_rdlstate27.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 9
  %713 = ptrtoint ptr %is_cur_rdlstate27.i to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 %frombool21.i, ptr %is_cur_rdlstate27.i, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 7
  %714 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 1, ptr %current_turbo_edca.i, align 2
  br label %rtl92ee_dm_check_edca_turbo.exit

if.else.i118:                                     ; preds = %if.end14.i.if.else.i118_crit_edge, %land.end.thread.i.if.else.i118_crit_edge
  %current_turbo_edca31.i = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 15, i32 7
  %715 = ptrtoint ptr %current_turbo_edca31.i to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %current_turbo_edca31.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %716)
  %tobool32.not.i = icmp eq i8 %716, 0
  br i1 %tobool32.not.i, label %if.else.i118.if.end34.i_crit_edge, label %if.then33.i

if.else.i118.if.end34.i_crit_edge:                ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %717 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i119 = getelementptr inbounds %struct.rtl_priv, ptr %686, i32 0, i32 32
  %718 = ptrtoint ptr %cfg.i119 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %cfg.i119, align 8
  %ops.i120 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %719, i32 0, i32 4
  %720 = ptrtoint ptr %ops.i120 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %ops.i120, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %721, i32 0, i32 20
  %722 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %set_hw_reg.i, align 4
  call void %723(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.else.i118.if.end34.i_crit_edge
  %724 = ptrtoint ptr %current_turbo_edca31.i to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 0, ptr %current_turbo_edca31.i, align 2
  br label %rtl92ee_dm_check_edca_turbo.exit

rtl92ee_dm_check_edca_turbo.exit:                 ; preds = %if.end34.i, %rtl_write_dword.exit.i, %land.end.thread.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge, %land.end.i.rtl92ee_dm_check_edca_turbo.exit_crit_edge
  %725 = ptrtoint ptr %is_any_nonbepkts9.i to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 0, ptr %is_any_nonbepkts9.i, align 1
  %726 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %726)
  %727 = load i64, ptr %stats.i, align 8
  store i64 %727, ptr @rtl92ee_dm_check_edca_turbo.last_txok_cnt, align 8
  %728 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %728)
  %729 = load i64, ptr %rxbytesunicast.i, align 8
  store i64 %729, ptr @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, align 8
  %730 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %priv, align 8
  %link_state.i122 = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 9, i32 10
  %732 = ptrtoint ptr %link_state.i122 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %link_state.i122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %733)
  %cmp.i123 = icmp ult i32 %733, 2
  br i1 %cmp.i123, label %if.then.i125, label %if.else.i136

if.then.i125:                                     ; preds = %rtl92ee_dm_check_edca_turbo.exit
  %atc_status.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 51
  %734 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %atc_status.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %735)
  %cmp2.i124 = icmp eq i8 %735, 0
  br i1 %cmp2.i124, label %if.then4.i129, label %if.then.i125.if.end.i132_crit_edge

if.then.i125.if.end.i132_crit_edge:               ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i132

if.then4.i129:                                    ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i126 = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 32
  %736 = ptrtoint ptr %cfg.i.i126 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %cfg.i.i126, align 8
  %ops.i.i127 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %737, i32 0, i32 4
  %738 = ptrtoint ptr %ops.i.i127 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %ops.i.i127, align 4
  %set_bbreg.i.i128 = getelementptr inbounds %struct.rtl_hal_ops, ptr %739, i32 0, i32 46
  %740 = ptrtoint ptr %set_bbreg.i.i128 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %set_bbreg.i.i128, align 4
  call void %741(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #7
  %742 = ptrtoint ptr %atc_status.i to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 1, ptr %atc_status.i, align 8
  br label %if.end.i132

if.end.i132:                                      ; preds = %if.then4.i129, %if.then.i125.if.end.i132_crit_edge
  %cfg.i130 = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 32
  %743 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %cfg.i130, align 8
  %ops.i131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %744, i32 0, i32 4
  %745 = ptrtoint ptr %ops.i131 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %ops.i131, align 4
  %get_btc_status.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %746, i32 0, i32 66
  %747 = ptrtoint ptr %get_btc_status.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %get_btc_status.i, align 4
  %call.i = call zeroext i1 %748() #7
  br i1 %call.i, label %if.then6.i, label %if.end.i132.if.end10.i_crit_edge

if.end.i132.if.end10.i_crit_edge:                 ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i132
  %btcoexist.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 49
  %749 = ptrtoint ptr %btcoexist.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %btcoexist.i, align 8
  %btc_is_bt_disabled.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %750, i32 0, i32 19
  %751 = ptrtoint ptr %btc_is_bt_disabled.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %btc_is_bt_disabled.i, align 4
  %call7.i = call zeroext i1 %752(ptr noundef %731) #7
  br i1 %call7.i, label %if.then6.i.if.end10.i_crit_edge, label %if.then8.i

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %731, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.16) #7
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.end10.i:                                       ; preds = %if.then6.i.if.end10.i_crit_edge, %if.end.i132.if.end10.i_crit_edge
  %crystal_cap11.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 56
  %753 = ptrtoint ptr %crystal_cap11.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %crystal_cap11.i, align 8
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 17, i32 58
  %755 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %crystalcap.i, align 2
  %conv12.i = zext i8 %756 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %754, i32 %conv12.i)
  %cmp13.not.i = icmp eq i32 %754, %conv12.i
  br i1 %cmp13.not.i, label %if.end10.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, label %if.then15.i135

if.end10.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.then15.i135:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %757 = ptrtoint ptr %crystal_cap11.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 %conv12.i, ptr %crystal_cap11.i, align 8
  %and.i133 = and i8 %756, 63
  %conv22.i = zext i8 %and.i133 to i32
  %or.i134 = mul nuw nsw i32 %conv22.i, 65
  %758 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %priv, align 8
  %cfg.i241.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 32
  %760 = ptrtoint ptr %cfg.i241.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %cfg.i241.i, align 8
  %ops.i242.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %761, i32 0, i32 4
  %762 = ptrtoint ptr %ops.i242.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %ops.i242.i, align 4
  %set_bbreg.i243.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %763, i32 0, i32 46
  %764 = ptrtoint ptr %set_bbreg.i243.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %set_bbreg.i243.i, align 4
  call void %765(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or.i134) #7
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.else.i136:                                     ; preds = %rtl92ee_dm_check_edca_turbo.exit
  %packet_count29.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 58
  %766 = ptrtoint ptr %packet_count29.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %packet_count29.i, align 8
  %packet_count_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 59
  %768 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %packet_count_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %767, i32 %769)
  %cmp30.i = icmp eq i32 %767, %769
  br i1 %cmp30.i, label %if.else.i136.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, label %if.end33.i

if.else.i136.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.end33.i:                                       ; preds = %if.else.i136
  %arrayidx26.i = getelementptr %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 54, i32 1
  %770 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %arrayidx26.i, align 4
  %mul27.i = mul i32 %771, 3125
  %div28.i = sdiv i32 %mul27.i, 1280
  %cfo_tail.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 54
  %772 = ptrtoint ptr %cfo_tail.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %cfo_tail.i, align 4
  %mul.i137 = mul i32 %773, 3125
  %div.i = sdiv i32 %mul.i137, 1280
  %774 = ptrtoint ptr %packet_count_pre.i to i32
  call void @__asan_store4_noabort(i32 %774)
  store i32 %767, ptr %packet_count_pre.i, align 4
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 14, i32 4
  %775 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %776)
  %cmp36.i = icmp eq i8 %776, 0
  %add.i138 = add nsw i32 %div.i, %div28.i
  %shr.i139 = ashr i32 %add.i138, 1
  %cfo_ave.0.i = select i1 %cmp36.i, i32 %div.i, i32 %shr.i139
  %cfo_ave_pre.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 55
  %777 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %cfo_ave_pre.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %778, i32 %cfo_ave.0.i)
  %cmp41.not.i = icmp slt i32 %778, %cfo_ave.0.i
  %sub.i140 = sub i32 %778, %cfo_ave.0.i
  %sub45.i = sub i32 %cfo_ave.0.i, %778
  %cond.i = select i1 %cmp41.not.i, i32 %sub45.i, i32 %sub.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cond.i)
  %cmp46.i = icmp sgt i32 %cond.i, 20
  br i1 %cmp46.i, label %land.lhs.true.i141, label %if.end33.i.if.end51.i_crit_edge

if.end33.i.if.end51.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

land.lhs.true.i141:                               ; preds = %if.end33.i
  %large_cfo_hit.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 52
  %779 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_load1_noabort(i32 %779)
  %780 = load i8, ptr %large_cfo_hit.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %780)
  %tobool48.not.i = icmp eq i8 %780, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %land.lhs.true.i141.if.end51.i_crit_edge

land.lhs.true.i141.if.end51.i_crit_edge:          ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then49.i:                                      ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #9
  %781 = ptrtoint ptr %large_cfo_hit.i to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 1, ptr %large_cfo_hit.i, align 1
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.end51.i:                                       ; preds = %land.lhs.true.i141.if.end51.i_crit_edge, %if.end33.i.if.end51.i_crit_edge
  %large_cfo_hit52.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 52
  %782 = ptrtoint ptr %large_cfo_hit52.i to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 0, ptr %large_cfo_hit52.i, align 1
  %783 = ptrtoint ptr %cfo_ave_pre.i to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %cfo_ave.0.i, ptr %cfo_ave_pre.i, align 4
  %cfo_threshold.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 57
  %784 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %cfo_threshold.i, align 4
  %conv54.i = zext i8 %785 to i32
  %sub55.i = sub nsw i32 0, %conv54.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub55.i)
  %cmp56.not.i = icmp slt i32 %cfo_ave.0.i, %sub55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv54.i)
  %cmp61.not.i = icmp sgt i32 %cfo_ave.0.i, %conv54.i
  %or.cond.i142 = or i1 %cmp56.not.i, %cmp61.not.i
  br i1 %or.cond.i142, label %if.end51.i.if.end79.i_crit_edge, label %land.lhs.true63.i

if.end51.i.if.end79.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

land.lhs.true63.i:                                ; preds = %if.end51.i
  %is_freeze.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 53
  %786 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %is_freeze.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %787)
  %cmp66.i = icmp eq i8 %787, 0
  br i1 %cmp66.i, label %if.then68.i, label %land.lhs.true63.i.if.end79.i_crit_edge

land.lhs.true63.i.if.end79.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then68.i:                                      ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %785)
  %cmp71.i = icmp eq i8 %785, 10
  br i1 %cmp71.i, label %if.then73.i, label %if.else76.i

if.then73.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  %788 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %788)
  store i8 20, ptr %cfo_threshold.i, align 4
  %789 = ptrtoint ptr %is_freeze.i to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 1, ptr %is_freeze.i, align 2
  br label %if.end79.i

if.else76.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  %790 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 10, ptr %cfo_threshold.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else76.i, %if.then73.i, %land.lhs.true63.i.if.end79.i_crit_edge, %if.end51.i.if.end79.i_crit_edge
  %791 = ptrtoint ptr %cfo_threshold.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %cfo_threshold.i, align 4
  %conv81.i = zext i8 %792 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %conv81.i)
  %cmp82.i = icmp sgt i32 %cfo_ave.0.i, %conv81.i
  br i1 %cmp82.i, label %land.lhs.true84.i, label %if.end79.i.if.else92.i_crit_edge

if.end79.i.if.else92.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else92.i

land.lhs.true84.i:                                ; preds = %if.end79.i
  %crystal_cap85.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 56
  %793 = ptrtoint ptr %crystal_cap85.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %crystal_cap85.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %794)
  %cmp86.i = icmp slt i32 %794, 63
  br i1 %cmp86.i, label %land.lhs.true84.i.if.end109.i_crit_edge, label %land.lhs.true84.i.if.else92.i_crit_edge

land.lhs.true84.i.if.else92.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else92.i

land.lhs.true84.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.else92.i:                                      ; preds = %land.lhs.true84.i.if.else92.i_crit_edge, %if.end79.i.if.else92.i_crit_edge
  %sub96.i = sub nsw i32 0, %conv81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cfo_ave.0.i, i32 %sub96.i)
  %cmp97.i = icmp slt i32 %cfo_ave.0.i, %sub96.i
  br i1 %cmp97.i, label %land.lhs.true99.i, label %if.else92.i.if.end136.i_crit_edge

if.else92.i.if.end136.i_crit_edge:                ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

land.lhs.true99.i:                                ; preds = %if.else92.i
  %crystal_cap101.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 56
  %795 = ptrtoint ptr %crystal_cap101.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %crystal_cap101.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %796)
  %cmp102.i = icmp sgt i32 %796, 0
  br i1 %cmp102.i, label %land.lhs.true99.i.if.end109.i_crit_edge, label %land.lhs.true99.i.if.end136.i_crit_edge

land.lhs.true99.i.if.end136.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

land.lhs.true99.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.end109.i:                                      ; preds = %land.lhs.true99.i.if.end109.i_crit_edge, %land.lhs.true84.i.if.end109.i_crit_edge
  %.sink258.i = phi i32 [ -10, %land.lhs.true84.i.if.end109.i_crit_edge ], [ 10, %land.lhs.true99.i.if.end109.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %land.lhs.true84.i.if.end109.i_crit_edge ], [ -1, %land.lhs.true99.i.if.end109.i_crit_edge ]
  %add105.i = add nsw i32 %.sink258.i, %cfo_ave.0.i
  %shr106.i = ashr i32 %add105.i, 2
  %sub107.i = add nsw i32 %shr106.i, %.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub107.i)
  %cmp110.not.i = icmp eq i32 %sub107.i, 0
  br i1 %cmp110.not.i, label %if.end109.i.if.end136.i_crit_edge, label %if.then112.i

if.end109.i.if.end136.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then112.i:                                     ; preds = %if.end109.i
  %is_freeze113.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 53
  %797 = ptrtoint ptr %is_freeze113.i to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 0, ptr %is_freeze113.i, align 2
  %crystal_cap114.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 56
  %798 = ptrtoint ptr %crystal_cap114.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %crystal_cap114.i, align 8
  %add115.i = add i32 %799, %sub107.i
  store i32 %add115.i, ptr %crystal_cap114.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add115.i)
  %cmp117.i = icmp sgt i32 %add115.i, 63
  br i1 %cmp117.i, label %if.then112.i.if.end128.sink.split.i_crit_edge, label %if.else121.i

if.then112.i.if.end128.sink.split.i_crit_edge:    ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128.sink.split.i

if.else121.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add115.i)
  %cmp123.i = icmp slt i32 %add115.i, 0
  br i1 %cmp123.i, label %if.else121.i.if.end128.sink.split.i_crit_edge, label %if.else121.i.if.end128.i_crit_edge

if.else121.i.if.end128.i_crit_edge:               ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128.i

if.else121.i.if.end128.sink.split.i_crit_edge:    ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128.sink.split.i

if.end128.sink.split.i:                           ; preds = %if.else121.i.if.end128.sink.split.i_crit_edge, %if.then112.i.if.end128.sink.split.i_crit_edge
  %.sink259.i = phi i32 [ 63, %if.then112.i.if.end128.sink.split.i_crit_edge ], [ 0, %if.else121.i.if.end128.sink.split.i_crit_edge ]
  %800 = ptrtoint ptr %crystal_cap114.i to i32
  call void @__asan_store4_noabort(i32 %800)
  store i32 %.sink259.i, ptr %crystal_cap114.i, align 8
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.end128.sink.split.i, %if.else121.i.if.end128.i_crit_edge
  %801 = ptrtoint ptr %crystal_cap114.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %crystal_cap114.i, align 8
  %conv131.i = and i32 %802, 63
  %or135.i = mul nuw nsw i32 %conv131.i, 65
  %803 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %priv, align 8
  %cfg.i245.i = getelementptr inbounds %struct.rtl_priv, ptr %804, i32 0, i32 32
  %805 = ptrtoint ptr %cfg.i245.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %cfg.i245.i, align 8
  %ops.i246.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %806, i32 0, i32 4
  %807 = ptrtoint ptr %ops.i246.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %ops.i246.i, align 4
  %set_bbreg.i247.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %808, i32 0, i32 46
  %809 = ptrtoint ptr %set_bbreg.i247.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %set_bbreg.i247.i, align 4
  call void %810(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or135.i) #7
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.end128.i, %if.end109.i.if.end136.i_crit_edge, %land.lhs.true99.i.if.end136.i_crit_edge, %if.else92.i.if.end136.i_crit_edge
  %811 = add nsw i32 %cfo_ave.0.i, 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %811)
  %812 = icmp ult i32 %811, 159
  %atc_status143.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 15, i32 51
  %813 = ptrtoint ptr %atc_status143.i to i32
  call void @__asan_load1_noabort(i32 %813)
  %814 = load i8, ptr %atc_status143.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %814)
  %tobool144.not.i = icmp eq i8 %814, 0
  br i1 %812, label %if.then142.i, label %if.else151.i

if.then142.i:                                     ; preds = %if.end136.i
  br i1 %tobool144.not.i, label %if.then142.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, label %if.then148.i143

if.then142.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.then148.i143:                                  ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #9
  %815 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %priv, align 8
  %cfg.i249.i = getelementptr inbounds %struct.rtl_priv, ptr %816, i32 0, i32 32
  %817 = ptrtoint ptr %cfg.i249.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %cfg.i249.i, align 8
  %ops.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %818, i32 0, i32 4
  %819 = ptrtoint ptr %ops.i250.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %ops.i250.i, align 4
  %set_bbreg.i251.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %820, i32 0, i32 46
  %821 = ptrtoint ptr %set_bbreg.i251.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %set_bbreg.i251.i, align 4
  call void %822(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 0) #7
  %823 = ptrtoint ptr %atc_status143.i to i32
  call void @__asan_store1_noabort(i32 %823)
  store i8 0, ptr %atc_status143.i, align 8
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.else151.i:                                     ; preds = %if.end136.i
  br i1 %tobool144.not.i, label %if.then157.i144, label %if.else151.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge

if.else151.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge: ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_dynamic_atc_switch.exit

if.then157.i144:                                  ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #9
  %824 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %priv, align 8
  %cfg.i253.i = getelementptr inbounds %struct.rtl_priv, ptr %825, i32 0, i32 32
  %826 = ptrtoint ptr %cfg.i253.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %cfg.i253.i, align 8
  %ops.i254.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %827, i32 0, i32 4
  %828 = ptrtoint ptr %ops.i254.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %ops.i254.i, align 4
  %set_bbreg.i255.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %829, i32 0, i32 46
  %830 = ptrtoint ptr %set_bbreg.i255.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %set_bbreg.i255.i, align 4
  call void %831(ptr noundef %hw, i32 noundef 3372, i32 noundef 2048, i32 noundef 1) #7
  %832 = ptrtoint ptr %atc_status143.i to i32
  call void @__asan_store1_noabort(i32 %832)
  store i8 1, ptr %atc_status143.i, align 8
  br label %rtl92ee_dm_dynamic_atc_switch.exit

rtl92ee_dm_dynamic_atc_switch.exit:               ; preds = %if.then157.i144, %if.else151.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, %if.then148.i143, %if.then142.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, %if.then49.i, %if.else.i136.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, %if.then15.i135, %if.end10.i.rtl92ee_dm_dynamic_atc_switch.exit_crit_edge, %if.then8.i
  %833 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %priv, align 8
  %primarycca2.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23
  %cnt_ofdm_cca.i146 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 26, i32 9
  %835 = ptrtoint ptr %cnt_ofdm_cca.i146 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %cnt_ofdm_cca.i146, align 4
  %conv.i147 = zext i32 %836 to i64
  %cnt_ofdm_fail.i148 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 26, i32 6
  %837 = ptrtoint ptr %cnt_ofdm_fail.i148 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %cnt_ofdm_fail.i148, align 4
  %conv3.i = zext i32 %838 to i64
  %cnt_bw_usc.i149 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 26, i32 12
  %839 = ptrtoint ptr %cnt_bw_usc.i149 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %cnt_bw_usc.i149, align 4
  %conv4.i = zext i32 %840 to i64
  %cnt_bw_lsc.i150 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 26, i32 13
  %841 = ptrtoint ptr %cnt_bw_lsc.i150 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %cnt_bw_lsc.i150, align 4
  %conv5.i = zext i32 %842 to i64
  %cur_40_prime_sc.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 9, i32 46
  %843 = ptrtoint ptr %cur_40_prime_sc.i to i32
  call void @__asan_load1_noabort(i32 %843)
  %844 = load i8, ptr %cur_40_prime_sc.i, align 1
  %opmode.i151 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 9, i32 8
  %845 = ptrtoint ptr %opmode.i151 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %opmode.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %846)
  %cmp.i152 = icmp eq i32 %846, 3
  br i1 %cmp.i152, label %if.then.i154, label %if.end.i162

if.then.i154:                                     ; preds = %rtl92ee_dm_dynamic_atc_switch.exit
  %mf_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 6
  %847 = ptrtoint ptr %mf_state.i.i to i32
  call void @__asan_load1_noabort(i32 %847)
  %848 = load i8, ptr %mf_state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %848)
  %cmp.not.i.i153 = icmp eq i8 %848, 0
  br i1 %cmp.not.i.i153, label %if.then.i154.rtl92ee_dm_write_dynamic_cca.exit.i_crit_edge, label %if.then.i.i158

if.then.i154.rtl92ee_dm_write_dynamic_cca.exit.i_crit_edge: ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit.i

if.then.i.i158:                                   ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i.i155 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 32
  %849 = ptrtoint ptr %cfg.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %cfg.i.i.i155, align 8
  %ops.i.i.i156 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %850, i32 0, i32 4
  %851 = ptrtoint ptr %ops.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %ops.i.i.i156, align 4
  %set_bbreg.i.i.i157 = getelementptr inbounds %struct.rtl_hal_ops, ptr %852, i32 0, i32 46
  %853 = ptrtoint ptr %set_bbreg.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %set_bbreg.i.i.i157, align 4
  call void %854(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 0) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit.i

rtl92ee_dm_write_dynamic_cca.exit.i:              ; preds = %if.then.i.i158, %if.then.i154.rtl92ee_dm_write_dynamic_cca.exit.i_crit_edge
  %855 = ptrtoint ptr %mf_state.i.i to i32
  call void @__asan_store1_noabort(i32 %855)
  store i8 0, ptr %mf_state.i.i, align 1
  br label %if.end11

if.end.i162:                                      ; preds = %rtl92ee_dm_dynamic_atc_switch.exit
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 9, i32 41
  %856 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %857 = load i8, ptr %bw_40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %857)
  %tobool.not.i159 = icmp ne i8 %857, 0
  %link_state.i160 = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 9, i32 10
  %858 = ptrtoint ptr %link_state.i160 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %link_state.i160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %859)
  %cmp10.i161 = icmp ult i32 %859, 2
  %brmerge.i = select i1 %cmp10.i161, i1 true, i1 %tobool.not.i159
  br i1 %brmerge.i, label %if.end.i162.if.end11_crit_edge, label %if.end16.i

if.end.i162.if.end11_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end16.i:                                       ; preds = %if.end.i162
  %860 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %861 = load i8, ptr %primarycca2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %861)
  %cmp18.i = icmp eq i8 %861, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.else103.i

if.then20.i:                                      ; preds = %if.end16.i
  %862 = zext i8 %844 to i64
  call void @__sanitizer_cov_trace_switch(i64 %862, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %844, label %if.then20.i.if.end11_crit_edge [
    i8 2, label %if.then24.i
    i8 1, label %if.then60.i
  ]

if.then20.i.if.end11_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %836)
  %cmp25.i163 = icmp ugt i32 %836, 500
  %add.i164 = add nuw nsw i64 %conv4.i, 500
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i164, i64 %conv5.i)
  %cmp27.i165 = icmp ult i64 %add.i164, %conv5.i
  %or.cond.i166 = select i1 %cmp25.i163, i1 %cmp27.i165, i1 false
  %shr.i167 = lshr i64 %conv.i147, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i167, i64 %conv3.i)
  %cmp30.i168 = icmp ult i64 %shr.i167, %conv3.i
  %or.cond194.i = select i1 %or.cond.i166, i1 %cmp30.i168, i1 false
  br i1 %or.cond194.i, label %if.then32.i, label %if.else.i169

if.then32.i:                                      ; preds = %if.then24.i
  %intf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 2
  %863 = ptrtoint ptr %intf_type.i to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 1, ptr %intf_type.i, align 1
  %intf_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %864 = ptrtoint ptr %intf_flag.i to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 1, ptr %intf_flag.i, align 1
  %865 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %priv, align 8
  %mf_state.i202.i = getelementptr inbounds %struct.rtl_priv, ptr %866, i32 0, i32 23, i32 6
  %867 = ptrtoint ptr %mf_state.i202.i to i32
  call void @__asan_load1_noabort(i32 %867)
  %868 = load i8, ptr %mf_state.i202.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %868)
  %cmp.not.i203.i = icmp eq i8 %868, 2
  br i1 %cmp.not.i203.i, label %if.then32.i.rtl92ee_dm_write_dynamic_cca.exit208.i_crit_edge, label %if.then.i207.i

if.then32.i.rtl92ee_dm_write_dynamic_cca.exit208.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit208.i

if.then.i207.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i204.i = getelementptr inbounds %struct.rtl_priv, ptr %866, i32 0, i32 32
  %869 = ptrtoint ptr %cfg.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %cfg.i.i204.i, align 8
  %ops.i.i205.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %870, i32 0, i32 4
  %871 = ptrtoint ptr %ops.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %ops.i.i205.i, align 4
  %set_bbreg.i.i206.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %872, i32 0, i32 46
  %873 = ptrtoint ptr %set_bbreg.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %set_bbreg.i.i206.i, align 4
  call void %874(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 2) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit208.i

rtl92ee_dm_write_dynamic_cca.exit208.i:           ; preds = %if.then.i207.i, %if.then32.i.rtl92ee_dm_write_dynamic_cca.exit208.i_crit_edge
  %875 = ptrtoint ptr %mf_state.i202.i to i32
  call void @__asan_store1_noabort(i32 %875)
  store i8 2, ptr %mf_state.i202.i, align 1
  %876 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 1, ptr %primarycca2.i, align 1
  br label %if.end11

if.else.i169:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i167, i64 %conv3.i)
  %cmp42.i = icmp ugt i64 %shr.i167, %conv3.i
  %or.cond196.i = select i1 %or.cond.i166, i1 %cmp42.i, i1 false
  %intf_type45.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 2
  br i1 %or.cond196.i, label %if.then44.i, label %if.else48.i

if.then44.i:                                      ; preds = %if.else.i169
  %877 = ptrtoint ptr %intf_type45.i to i32
  call void @__asan_store1_noabort(i32 %877)
  store i8 2, ptr %intf_type45.i, align 1
  %intf_flag46.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %878 = ptrtoint ptr %intf_flag46.i to i32
  call void @__asan_store1_noabort(i32 %878)
  store i8 1, ptr %intf_flag46.i, align 1
  %879 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %priv, align 8
  %mf_state.i210.i = getelementptr inbounds %struct.rtl_priv, ptr %880, i32 0, i32 23, i32 6
  %881 = ptrtoint ptr %mf_state.i210.i to i32
  call void @__asan_load1_noabort(i32 %881)
  %882 = load i8, ptr %mf_state.i210.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %882)
  %cmp.not.i211.i = icmp eq i8 %882, 2
  br i1 %cmp.not.i211.i, label %if.then44.i.rtl92ee_dm_write_dynamic_cca.exit216.i_crit_edge, label %if.then.i215.i

if.then44.i.rtl92ee_dm_write_dynamic_cca.exit216.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit216.i

if.then.i215.i:                                   ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %880, i32 0, i32 32
  %883 = ptrtoint ptr %cfg.i.i212.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %cfg.i.i212.i, align 8
  %ops.i.i213.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %884, i32 0, i32 4
  %885 = ptrtoint ptr %ops.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %ops.i.i213.i, align 4
  %set_bbreg.i.i214.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %886, i32 0, i32 46
  %887 = ptrtoint ptr %set_bbreg.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %set_bbreg.i.i214.i, align 4
  call void %888(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 2) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit216.i

rtl92ee_dm_write_dynamic_cca.exit216.i:           ; preds = %if.then.i215.i, %if.then44.i.rtl92ee_dm_write_dynamic_cca.exit216.i_crit_edge
  %889 = ptrtoint ptr %mf_state.i210.i to i32
  call void @__asan_store1_noabort(i32 %889)
  store i8 2, ptr %mf_state.i210.i, align 1
  %890 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 1, ptr %primarycca2.i, align 1
  %dup_rts_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 3
  %891 = ptrtoint ptr %dup_rts_flag.i to i32
  call void @__asan_store1_noabort(i32 %891)
  store i8 1, ptr %dup_rts_flag.i, align 1
  %rts_en.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 10, i32 68
  %892 = ptrtoint ptr %rts_en.i to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 1, ptr %rts_en.i, align 4
  br label %if.end11

if.else48.i:                                      ; preds = %if.else.i169
  %893 = ptrtoint ptr %intf_type45.i to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 0, ptr %intf_type45.i, align 1
  %intf_flag50.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %894 = ptrtoint ptr %intf_flag50.i to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 0, ptr %intf_flag50.i, align 1
  %895 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %priv, align 8
  %mf_state.i218.i = getelementptr inbounds %struct.rtl_priv, ptr %896, i32 0, i32 23, i32 6
  %897 = ptrtoint ptr %mf_state.i218.i to i32
  call void @__asan_load1_noabort(i32 %897)
  %898 = load i8, ptr %mf_state.i218.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %898)
  %cmp.not.i219.i = icmp eq i8 %898, 0
  br i1 %cmp.not.i219.i, label %if.else48.i.rtl92ee_dm_write_dynamic_cca.exit224.i_crit_edge, label %if.then.i223.i

if.else48.i.rtl92ee_dm_write_dynamic_cca.exit224.i_crit_edge: ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit224.i

if.then.i223.i:                                   ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %896, i32 0, i32 32
  %899 = ptrtoint ptr %cfg.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %cfg.i.i220.i, align 8
  %ops.i.i221.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %900, i32 0, i32 4
  %901 = ptrtoint ptr %ops.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %ops.i.i221.i, align 4
  %set_bbreg.i.i222.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %902, i32 0, i32 46
  %903 = ptrtoint ptr %set_bbreg.i.i222.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %set_bbreg.i.i222.i, align 4
  call void %904(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 0) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit224.i

rtl92ee_dm_write_dynamic_cca.exit224.i:           ; preds = %if.then.i223.i, %if.else48.i.rtl92ee_dm_write_dynamic_cca.exit224.i_crit_edge
  %905 = ptrtoint ptr %mf_state.i218.i to i32
  call void @__asan_store1_noabort(i32 %905)
  store i8 0, ptr %mf_state.i218.i, align 1
  %rts_en52.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 10, i32 68
  %906 = ptrtoint ptr %rts_en52.i to i32
  call void @__asan_store1_noabort(i32 %906)
  store i8 0, ptr %rts_en52.i, align 4
  %dup_rts_flag53.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 3
  %907 = ptrtoint ptr %dup_rts_flag53.i to i32
  call void @__asan_store1_noabort(i32 %907)
  store i8 0, ptr %dup_rts_flag53.i, align 1
  br label %if.end11

if.then60.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %836)
  %cmp61.i = icmp ugt i32 %836, 500
  %add64.i = add nuw nsw i64 %conv5.i, 500
  call void @__sanitizer_cov_trace_cmp8(i64 %add64.i, i64 %conv4.i)
  %cmp65.i = icmp ult i64 %add64.i, %conv4.i
  %or.cond197.i = select i1 %cmp61.i, i1 %cmp65.i, i1 false
  %shr68.i = lshr i64 %conv.i147, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr68.i, i64 %conv3.i)
  %cmp69.i = icmp ult i64 %shr68.i, %conv3.i
  %or.cond198.i = select i1 %or.cond197.i, i1 %cmp69.i, i1 false
  br i1 %or.cond198.i, label %if.then71.i, label %if.else75.i

if.then71.i:                                      ; preds = %if.then60.i
  %intf_type72.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 2
  %908 = ptrtoint ptr %intf_type72.i to i32
  call void @__asan_store1_noabort(i32 %908)
  store i8 1, ptr %intf_type72.i, align 1
  %intf_flag73.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %909 = ptrtoint ptr %intf_flag73.i to i32
  call void @__asan_store1_noabort(i32 %909)
  store i8 1, ptr %intf_flag73.i, align 1
  %910 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %priv, align 8
  %mf_state.i226.i = getelementptr inbounds %struct.rtl_priv, ptr %911, i32 0, i32 23, i32 6
  %912 = ptrtoint ptr %mf_state.i226.i to i32
  call void @__asan_load1_noabort(i32 %912)
  %913 = load i8, ptr %mf_state.i226.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %913)
  %cmp.not.i227.i = icmp eq i8 %913, 1
  br i1 %cmp.not.i227.i, label %if.then71.i.rtl92ee_dm_write_dynamic_cca.exit232.i_crit_edge, label %if.then.i231.i

if.then71.i.rtl92ee_dm_write_dynamic_cca.exit232.i_crit_edge: ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit232.i

if.then.i231.i:                                   ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i228.i = getelementptr inbounds %struct.rtl_priv, ptr %911, i32 0, i32 32
  %914 = ptrtoint ptr %cfg.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %cfg.i.i228.i, align 8
  %ops.i.i229.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %915, i32 0, i32 4
  %916 = ptrtoint ptr %ops.i.i229.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %ops.i.i229.i, align 4
  %set_bbreg.i.i230.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %917, i32 0, i32 46
  %918 = ptrtoint ptr %set_bbreg.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %set_bbreg.i.i230.i, align 4
  call void %919(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 1) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit232.i

rtl92ee_dm_write_dynamic_cca.exit232.i:           ; preds = %if.then.i231.i, %if.then71.i.rtl92ee_dm_write_dynamic_cca.exit232.i_crit_edge
  %920 = ptrtoint ptr %mf_state.i226.i to i32
  call void @__asan_store1_noabort(i32 %920)
  store i8 1, ptr %mf_state.i226.i, align 1
  %921 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_store1_noabort(i32 %921)
  store i8 1, ptr %primarycca2.i, align 1
  br label %if.end11

if.else75.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr68.i, i64 %conv3.i)
  %cmp84.i = icmp ugt i64 %shr68.i, %conv3.i
  %or.cond200.i = select i1 %or.cond197.i, i1 %cmp84.i, i1 false
  %intf_type87.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 2
  br i1 %or.cond200.i, label %if.then86.i, label %if.else93.i

if.then86.i:                                      ; preds = %if.else75.i
  %922 = ptrtoint ptr %intf_type87.i to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 2, ptr %intf_type87.i, align 1
  %intf_flag88.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %923 = ptrtoint ptr %intf_flag88.i to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 1, ptr %intf_flag88.i, align 1
  %924 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %priv, align 8
  %mf_state.i234.i = getelementptr inbounds %struct.rtl_priv, ptr %925, i32 0, i32 23, i32 6
  %926 = ptrtoint ptr %mf_state.i234.i to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %mf_state.i234.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %927)
  %cmp.not.i235.i = icmp eq i8 %927, 1
  br i1 %cmp.not.i235.i, label %if.then86.i.rtl92ee_dm_write_dynamic_cca.exit240.i_crit_edge, label %if.then.i239.i

if.then86.i.rtl92ee_dm_write_dynamic_cca.exit240.i_crit_edge: ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit240.i

if.then.i239.i:                                   ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i236.i = getelementptr inbounds %struct.rtl_priv, ptr %925, i32 0, i32 32
  %928 = ptrtoint ptr %cfg.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %cfg.i.i236.i, align 8
  %ops.i.i237.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %929, i32 0, i32 4
  %930 = ptrtoint ptr %ops.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %ops.i.i237.i, align 4
  %set_bbreg.i.i238.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %931, i32 0, i32 46
  %932 = ptrtoint ptr %set_bbreg.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %set_bbreg.i.i238.i, align 4
  call void %933(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 1) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit240.i

rtl92ee_dm_write_dynamic_cca.exit240.i:           ; preds = %if.then.i239.i, %if.then86.i.rtl92ee_dm_write_dynamic_cca.exit240.i_crit_edge
  %934 = ptrtoint ptr %mf_state.i234.i to i32
  call void @__asan_store1_noabort(i32 %934)
  store i8 1, ptr %mf_state.i234.i, align 1
  %935 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_store1_noabort(i32 %935)
  store i8 1, ptr %primarycca2.i, align 1
  %dup_rts_flag90.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 3
  %936 = ptrtoint ptr %dup_rts_flag90.i to i32
  call void @__asan_store1_noabort(i32 %936)
  store i8 1, ptr %dup_rts_flag90.i, align 1
  %rts_en92.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 10, i32 68
  %937 = ptrtoint ptr %rts_en92.i to i32
  call void @__asan_store1_noabort(i32 %937)
  store i8 1, ptr %rts_en92.i, align 4
  br label %if.end11

if.else93.i:                                      ; preds = %if.else75.i
  %938 = ptrtoint ptr %intf_type87.i to i32
  call void @__asan_store1_noabort(i32 %938)
  store i8 0, ptr %intf_type87.i, align 1
  %intf_flag95.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %939 = ptrtoint ptr %intf_flag95.i to i32
  call void @__asan_store1_noabort(i32 %939)
  store i8 0, ptr %intf_flag95.i, align 1
  %940 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %priv, align 8
  %mf_state.i242.i = getelementptr inbounds %struct.rtl_priv, ptr %941, i32 0, i32 23, i32 6
  %942 = ptrtoint ptr %mf_state.i242.i to i32
  call void @__asan_load1_noabort(i32 %942)
  %943 = load i8, ptr %mf_state.i242.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %943)
  %cmp.not.i243.i = icmp eq i8 %943, 0
  br i1 %cmp.not.i243.i, label %if.else93.i.rtl92ee_dm_write_dynamic_cca.exit248.i_crit_edge, label %if.then.i247.i

if.else93.i.rtl92ee_dm_write_dynamic_cca.exit248.i_crit_edge: ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit248.i

if.then.i247.i:                                   ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i244.i = getelementptr inbounds %struct.rtl_priv, ptr %941, i32 0, i32 32
  %944 = ptrtoint ptr %cfg.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %cfg.i.i244.i, align 8
  %ops.i.i245.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %945, i32 0, i32 4
  %946 = ptrtoint ptr %ops.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %ops.i.i245.i, align 4
  %set_bbreg.i.i246.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %947, i32 0, i32 46
  %948 = ptrtoint ptr %set_bbreg.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %set_bbreg.i.i246.i, align 4
  call void %949(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 0) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit248.i

rtl92ee_dm_write_dynamic_cca.exit248.i:           ; preds = %if.then.i247.i, %if.else93.i.rtl92ee_dm_write_dynamic_cca.exit248.i_crit_edge
  %950 = ptrtoint ptr %mf_state.i242.i to i32
  call void @__asan_store1_noabort(i32 %950)
  store i8 0, ptr %mf_state.i242.i, align 1
  %rts_en97.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 10, i32 68
  %951 = ptrtoint ptr %rts_en97.i to i32
  call void @__asan_store1_noabort(i32 %951)
  store i8 0, ptr %rts_en97.i, align 4
  %dup_rts_flag98.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 3
  %952 = ptrtoint ptr %dup_rts_flag98.i to i32
  call void @__asan_store1_noabort(i32 %952)
  store i8 0, ptr %dup_rts_flag98.i, align 1
  br label %if.end11

if.else103.i:                                     ; preds = %if.end16.i
  %953 = load i8, ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down, align 1
  %dec.i170 = add i8 %953, -1
  store i8 %dec.i170, ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i170)
  %cmp105.i = icmp eq i8 %dec.i170, 0
  br i1 %cmp105.i, label %if.then107.i, label %if.else103.i.if.end11_crit_edge

if.else103.i.if.end11_crit_edge:                  ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then107.i:                                     ; preds = %if.else103.i
  store i8 30, ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down, align 1
  %954 = ptrtoint ptr %primarycca2.i to i32
  call void @__asan_store1_noabort(i32 %954)
  store i8 0, ptr %primarycca2.i, align 1
  %955 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %priv, align 8
  %mf_state.i250.i = getelementptr inbounds %struct.rtl_priv, ptr %956, i32 0, i32 23, i32 6
  %957 = ptrtoint ptr %mf_state.i250.i to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %mf_state.i250.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %958)
  %cmp.not.i251.i = icmp eq i8 %958, 0
  br i1 %cmp.not.i251.i, label %if.then107.i.rtl92ee_dm_write_dynamic_cca.exit256.i_crit_edge, label %if.then.i255.i

if.then107.i.rtl92ee_dm_write_dynamic_cca.exit256.i_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92ee_dm_write_dynamic_cca.exit256.i

if.then.i255.i:                                   ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i252.i = getelementptr inbounds %struct.rtl_priv, ptr %956, i32 0, i32 32
  %959 = ptrtoint ptr %cfg.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %cfg.i.i252.i, align 8
  %ops.i.i253.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %960, i32 0, i32 4
  %961 = ptrtoint ptr %ops.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %ops.i.i253.i, align 4
  %set_bbreg.i.i254.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %962, i32 0, i32 46
  %963 = ptrtoint ptr %set_bbreg.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %set_bbreg.i.i254.i, align 4
  call void %964(ptr noundef %hw, i32 noundef 3180, i32 noundef 384, i32 noundef 0) #7
  br label %rtl92ee_dm_write_dynamic_cca.exit256.i

rtl92ee_dm_write_dynamic_cca.exit256.i:           ; preds = %if.then.i255.i, %if.then107.i.rtl92ee_dm_write_dynamic_cca.exit256.i_crit_edge
  %965 = ptrtoint ptr %mf_state.i250.i to i32
  call void @__asan_store1_noabort(i32 %965)
  store i8 0, ptr %mf_state.i250.i, align 1
  %rts_en110.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 10, i32 68
  %966 = ptrtoint ptr %rts_en110.i to i32
  call void @__asan_store1_noabort(i32 %966)
  store i8 0, ptr %rts_en110.i, align 4
  %dup_rts_flag111.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 3
  %967 = ptrtoint ptr %dup_rts_flag111.i to i32
  call void @__asan_store1_noabort(i32 %967)
  store i8 0, ptr %dup_rts_flag111.i, align 1
  %intf_type112.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 2
  %968 = ptrtoint ptr %intf_type112.i to i32
  call void @__asan_store1_noabort(i32 %968)
  store i8 0, ptr %intf_type112.i, align 1
  %intf_flag113.i = getelementptr inbounds %struct.rtl_priv, ptr %834, i32 0, i32 23, i32 1
  %969 = ptrtoint ptr %intf_flag113.i to i32
  call void @__asan_store1_noabort(i32 %969)
  store i8 0, ptr %intf_flag113.i, align 1
  br label %if.end11

if.end11:                                         ; preds = %rtl92ee_dm_write_dynamic_cca.exit256.i, %if.else103.i.if.end11_crit_edge, %rtl92ee_dm_write_dynamic_cca.exit248.i, %rtl92ee_dm_write_dynamic_cca.exit240.i, %rtl92ee_dm_write_dynamic_cca.exit232.i, %rtl92ee_dm_write_dynamic_cca.exit224.i, %rtl92ee_dm_write_dynamic_cca.exit216.i, %rtl92ee_dm_write_dynamic_cca.exit208.i, %if.then20.i.if.end11_crit_edge, %if.end.i162.if.end11_crit_edge, %rtl92ee_dm_write_dynamic_cca.exit.i, %land.lhs.true8.if.end11_crit_edge, %land.lhs.true6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_ps_awake) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inpsmode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 95, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 402, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 410, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 337, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 345, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 351, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 358, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 362, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 177, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 875, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 881, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 845, i32 3}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtl92ee_dm_check_edca_turbo.last_txok_cnt, !34, !"last_txok_cnt", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 470, i32 13}
!35 = !{ptr @rtl92ee_dm_check_edca_turbo.last_rxok_cnt, !36, !"last_rxok_cnt", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 471, i32 13}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 690, i32 5}
!39 = !{ptr @rtl92ee_dm_dynamic_primary_cca_ckeck.count_down, !40, !"count_down", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/dm.c", i32 574, i32 12}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{i64 2149351823}
!53 = !{i64 2149352089}
