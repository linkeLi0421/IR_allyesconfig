; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c"
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
%struct.rt_firmware = type { ptr, i32, i16, [64000 x i8], [64000 x i8], i32, i32, [90000 x i8], i32, i16 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@_rtl92s_dm_check_edca_turbo.last_txok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@_rtl92s_dm_check_edca_turbo.last_rxok_cnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@edca_setting_ul = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 6177570, i32 42063, i32 6202447, i32 6202146, i32 6202402, i32 6202146, i32 4105295, i32 6202447, i32 0, i32 0], [56 x i8] zeroinitializer }, align 32
@edca_setting_dl = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 42063, i32 6202447, i32 6202447, i32 42544, i32 42063, i32 42544, i32 42544, i32 42027, i32 0, i32 0], [56 x i8] zeroinitializer }, align 32
@edca_setting_dl_gmode = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 17186, i32 42063, i32 6202447, i32 42027, i32 6177570, i32 17186, i32 42032, i32 6202447, i32 0, i32 0], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermal meter 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write to FW Thermal Val = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92s_dm_initial_gain_sta_beforeconnect.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92s_dm_initial_gain_sta_beforeconnect.force_write = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not connected to any\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RSSI = %ld RSSI_LEVEL = %d PreState = %d, CurState = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.rtl92s_dm_watchdog = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 20, i32 24, i32 20, i32 24, i32 20, i32 24], [40 x i8] zeroinitializer }, align 32
@switch.table.rtl92s_dm_watchdog.10 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 30, i32 34, i32 30, i32 34, i32 34, i32 34], [40 x i8] zeroinitializer }, align 32
@switch.table.rtl92s_dm_watchdog.11 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 40, i32 44, i32 44, i32 44, i32 44, i32 44], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"last_txok_cnt\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 51, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"last_rxok_cnt\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 52, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"edca_setting_ul\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 35, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"edca_setting_dl\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 13, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"edca_setting_dl_gmode\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 24, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 147, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 161, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [54 x i8] c"_rtl92s_dm_initial_gain_sta_beforeconnect.initialized\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [54 x i8] c"_rtl92s_dm_initial_gain_sta_beforeconnect.force_write\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 579, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 591, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 596, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 603, i32 3 }
@___asan_gen_.50 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 267, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [32 x i8] c"switch.table.rtl92s_dm_watchdog\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [35 x i8] c"switch.table.rtl92s_dm_watchdog.10\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [35 x i8] c"switch.table.rtl92s_dm_watchdog.11\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @_rtl92s_dm_check_edca_turbo.last_txok_cnt, ptr @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, ptr @edca_setting_ul, ptr @edca_setting_dl, ptr @edca_setting_dl_gmode, ptr @.str, ptr @.str.1, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @switch.table.rtl92s_dm_watchdog, ptr @switch.table.rtl92s_dm_watchdog.10, ptr @switch.table.rtl92s_dm_watchdog.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_dm_check_edca_turbo.last_txok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_dm_check_edca_turbo.last_rxok_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_ul to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_dl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edca_setting_dl_gmode to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92s_dm_watchdog to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92s_dm_watchdog.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92s_dm_watchdog.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92s_dm_init_edca_turbo(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_dm_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dm_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 32
  %2 = ptrtoint ptr %dm_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dm_type, align 2
  %undec_sm_pwdb = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %undec_sm_pwdb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %undec_sm_pwdb, align 8
  %4 = load ptr, ptr %priv, align 8
  %pfirmware.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 10, i32 33
  %5 = ptrtoint ptr %pfirmware.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pfirmware.i, align 8
  %firmwareversion.i = getelementptr inbounds %struct.rt_firmware, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %firmwareversion.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %firmwareversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %8)
  %cmp.i = icmp ugt i16 %8, 59
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %dm_type.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 32
  %9 = ptrtoint ptr %dm_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dm_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp3.i = icmp eq i8 %10, 1
  br i1 %cmp3.i, label %land.lhs.true.i._rtl92s_dm_init_dynamic_txpower.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i._rtl92s_dm_init_dynamic_txpower.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_init_dynamic_txpower.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %_rtl92s_dm_init_dynamic_txpower.exit

_rtl92s_dm_init_dynamic_txpower.exit:             ; preds = %if.else.i, %land.lhs.true.i._rtl92s_dm_init_dynamic_txpower.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true.i._rtl92s_dm_init_dynamic_txpower.exit_crit_edge ]
  %dynamic_txpower_enable7.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 6
  %11 = ptrtoint ptr %dynamic_txpower_enable7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i, ptr %dynamic_txpower_enable7.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 24
  %12 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 15, i32 29
  %13 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 15, i32 7
  %16 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %current_turbo_edca.i, align 2
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 15, i32 8
  %17 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_any_nonbepkts.i, align 1
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 15, i32 9
  %18 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_cur_rdlstate.i, align 8
  %19 = load ptr, ptr %priv, align 8
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 22, i32 1
  %20 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %ratr_state.i, align 1
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 22, i32 21
  %21 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %pre_ratr_state.i, align 4
  %useramask10.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 15, i32 14
  %22 = ptrtoint ptr %useramask10.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %useramask10.i, align 1
  %inform_fw_driverctrldm.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 15, i32 16
  %23 = ptrtoint ptr %inform_fw_driverctrldm.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %inform_fw_driverctrldm.i, align 2
  %24 = load ptr, ptr %priv, align 8
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 15, i32 13
  %25 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %txpower_tracking.i, align 4
  %txpowercount.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 15, i32 18
  %26 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %txpowercount.i, align 4
  %txpower_trackinginit.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 15, i32 10
  %27 = ptrtoint ptr %txpower_trackinginit.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %txpower_trackinginit.i, align 1
  %28 = load ptr, ptr %priv, align 8
  %dig_enable_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 11
  %29 = ptrtoint ptr %dig_enable_flag.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %dig_enable_flag.i, align 4
  %backoff_enable_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 48
  %30 = ptrtoint ptr %backoff_enable_flag.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %backoff_enable_flag.i, align 1
  %dm_type.i13 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 32
  %31 = ptrtoint ptr %dm_type.i13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dm_type.i13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i14 = icmp eq i8 %32, 1
  br i1 %cmp.i14, label %land.lhs.true.i18, label %_rtl92s_dm_init_dynamic_txpower.exit.if.else.i19_crit_edge

_rtl92s_dm_init_dynamic_txpower.exit.if.else.i19_crit_edge: ; preds = %_rtl92s_dm_init_dynamic_txpower.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i19

land.lhs.true.i18:                                ; preds = %_rtl92s_dm_init_dynamic_txpower.exit
  %pfirmware.i15 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 10, i32 33
  %33 = ptrtoint ptr %pfirmware.i15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pfirmware.i15, align 8
  %firmwareversion.i16 = getelementptr inbounds %struct.rt_firmware, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %firmwareversion.i16 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %firmwareversion.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %36)
  %cmp3.i17 = icmp ugt i16 %36, 59
  br i1 %cmp3.i17, label %land.lhs.true.i18._rtl92s_dm_init_dig.exit_crit_edge, label %land.lhs.true.i18.if.else.i19_crit_edge

land.lhs.true.i18.if.else.i19_crit_edge:          ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i19

land.lhs.true.i18._rtl92s_dm_init_dig.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_init_dig.exit

if.else.i19:                                      ; preds = %land.lhs.true.i18.if.else.i19_crit_edge, %_rtl92s_dm_init_dynamic_txpower.exit.if.else.i19_crit_edge
  br label %_rtl92s_dm_init_dig.exit

_rtl92s_dm_init_dig.exit:                         ; preds = %if.else.i19, %land.lhs.true.i18._rtl92s_dm_init_dig.exit_crit_edge
  %.sink.i20 = phi i8 [ 2, %if.else.i19 ], [ 3, %land.lhs.true.i18._rtl92s_dm_init_dig.exit_crit_edge ]
  %dig_algorithm5.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 13
  %37 = ptrtoint ptr %dig_algorithm5.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink.i20, ptr %dig_algorithm5.i, align 2
  %dm_digtable.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35
  %dig_twoport_algorithm.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 14
  %38 = ptrtoint ptr %dig_twoport_algorithm.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dig_twoport_algorithm.i, align 1
  %dig_ext_port_stage.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 12
  %39 = ptrtoint ptr %dig_ext_port_stage.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %dig_ext_port_stage.i, align 1
  %dig_dbgmode.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 15
  %40 = ptrtoint ptr %dig_dbgmode.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %dig_dbgmode.i, align 4
  %dig_slgorithm_switch.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 16
  %41 = ptrtoint ptr %dig_slgorithm_switch.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %dig_slgorithm_switch.i, align 1
  %dig_state.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 38
  %42 = ptrtoint ptr %dig_state.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %dig_state.i, align 1
  %dig_highpwrstate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 39
  %43 = ptrtoint ptr %dig_highpwrstate.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %dig_highpwrstate.i, align 4
  %cur_sta_cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 40
  %44 = ptrtoint ptr %cur_sta_cstate.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cur_sta_cstate.i, align 1
  %pre_sta_cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 41
  %45 = ptrtoint ptr %pre_sta_cstate.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %pre_sta_cstate.i, align 2
  %cur_ap_cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 42
  %46 = ptrtoint ptr %cur_ap_cstate.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %cur_ap_cstate.i, align 1
  %pre_ap_cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 43
  %47 = ptrtoint ptr %pre_ap_cstate.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %pre_ap_cstate.i, align 4
  %48 = ptrtoint ptr %dm_digtable.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 35, ptr %dm_digtable.i, align 4
  %rssi_highthresh.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 1
  %49 = ptrtoint ptr %rssi_highthresh.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 40, ptr %rssi_highthresh.i, align 4
  %fa_lowthresh.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 2
  %50 = ptrtoint ptr %fa_lowthresh.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 400, ptr %fa_lowthresh.i, align 4
  %fa_highthresh.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 3
  %51 = ptrtoint ptr %fa_highthresh.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1000, ptr %fa_highthresh.i, align 4
  %rssi_highpower_lowthresh.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 5
  %52 = ptrtoint ptr %rssi_highpower_lowthresh.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 70, ptr %rssi_highpower_lowthresh.i, align 4
  %rssi_highpower_highthresh.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 6
  %53 = ptrtoint ptr %rssi_highpower_highthresh.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 75, ptr %rssi_highpower_highthresh.i, align 4
  %rssi_val.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 10
  %54 = ptrtoint ptr %rssi_val.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 50, ptr %rssi_val.i, align 4
  %back_val.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 21
  %55 = ptrtoint ptr %back_val.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 12, ptr %back_val.i, align 2
  %rx_gain_max.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 24
  %56 = ptrtoint ptr %rx_gain_max.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 62, ptr %rx_gain_max.i, align 1
  %rx_gain_min.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 25
  %57 = ptrtoint ptr %rx_gain_min.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 30, ptr %rx_gain_min.i, align 2
  %backoffval_range_max.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 49
  %58 = ptrtoint ptr %backoffval_range_max.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 12, ptr %backoffval_range_max.i, align 2
  %backoffval_range_min.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 35, i32 50
  %59 = ptrtoint ptr %backoffval_range_min.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -4, ptr %backoffval_range_min.i, align 1
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %60 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32_async.i, align 4
  tail call void %61(ptr noundef %1, i32 noundef 704, i32 noundef -16777199) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %62 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %write_readback.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %_rtl92s_dm_init_dig.exit.rtl_write_dword.exit_crit_edge, label %if.then.i

_rtl92s_dm_init_dig.exit.rtl_write_dword.exit_crit_edge: ; preds = %_rtl92s_dm_init_dig.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %_rtl92s_dm_init_dig.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %66 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %67(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %_rtl92s_dm_init_dig.exit.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_dm_watchdog(ptr noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  %current_mrc.i = alloca i8, align 1
  %enable_mrc.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %vendor.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 35
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor.i, align 8
  %arrayidx.i = getelementptr [10 x i32], ptr @edca_setting_ul, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [10 x i32], ptr @edca_setting_dl, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr [10 x i32], ptr @edca_setting_dl_gmode, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %10 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_turbo_edca.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %12 = ptrtoint ptr %current_turbo_edca.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %current_turbo_edca.i, align 2
  br label %_rtl92s_dm_check_edca_turbo.exit

if.end.i:                                         ; preds = %entry
  %is_any_nonbepkts.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 8
  %13 = ptrtoint ptr %is_any_nonbepkts.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_any_nonbepkts.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.if.else98.i_crit_edge

if.end.i.if.else98.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else98.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %disable_framebursting.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 11
  %15 = ptrtoint ptr %disable_framebursting.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %disable_framebursting.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not.i = icmp eq i8 %16, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %land.lhs.true.i.if.else98.i_crit_edge

land.lhs.true.i.if.else98.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else98.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %stats.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stats.i, align 8
  %19 = load i64, ptr @_rtl92s_dm_check_edca_turbo.last_txok_cnt, align 8
  %sub.i = sub i64 %18, %19
  %rxbytesunicast.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 3
  %20 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rxbytesunicast.i, align 8
  %22 = load i64, ptr @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, align 8
  %sub11.i = sub i64 %21, %22
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %23 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp12.i = icmp eq i8 %24, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.else53.i

if.then14.i:                                      ; preds = %if.then9.i
  %mul.i = shl i64 %sub11.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %mul.i)
  %cmp15.i = icmp ugt i64 %sub.i, %mul.i
  %is_cur_rdlstate.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 9
  %25 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_cur_rdlstate.i, align 8, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not.i = icmp eq i8 %26, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.then14.i
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.then17.i.if.then24.i_crit_edge

if.then17.i.if.then24.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.then17.i
  %current_turbo_edca22.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %27 = ptrtoint ptr %current_turbo_edca22.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %current_turbo_edca22.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not.i = icmp eq i8 %28, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %lor.lhs.false.i.if.end50.i_crit_edge

lor.lhs.false.i.if.end50.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.then17.i.if.then24.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %29 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 472, i32 noundef %5) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.then24.i.if.end50.sink.split.i_crit_edge, label %if.then24.i.if.end50.sink.split.sink.split.i_crit_edge

if.then24.i.if.end50.sink.split.sink.split.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.sink.split.i

if.then24.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.i

if.else.i:                                        ; preds = %if.then14.i
  br i1 %tobool19.not.i, label %if.else.i.if.then35.i_crit_edge, label %lor.lhs.false31.i

if.else.i.if.then35.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

lor.lhs.false31.i:                                ; preds = %if.else.i
  %current_turbo_edca33.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %35 = ptrtoint ptr %current_turbo_edca33.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %current_turbo_edca33.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool34.not.i = icmp eq i8 %36, 0
  br i1 %tobool34.not.i, label %lor.lhs.false31.i.if.then35.i_crit_edge, label %lor.lhs.false31.i.if.end50.i_crit_edge

lor.lhs.false31.i.if.end50.i_crit_edge:           ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

lor.lhs.false31.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false31.i.if.then35.i_crit_edge, %if.else.i.if.then35.i_crit_edge
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %37 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mode.i, align 4
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i16 %38, label %if.else45.i [
    i16 4, label %if.then35.i.if.then44.i_crit_edge
    i16 2, label %if.then35.i.if.then44.i_crit_edge80
  ]

if.then35.i.if.then44.i_crit_edge80:              ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then35.i.if.then44.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.then35.i.if.then44.i_crit_edge, %if.then35.i.if.then44.i_crit_edge80
  %write32_async.i158.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %40 = ptrtoint ptr %write32_async.i158.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32_async.i158.i, align 4
  tail call void %41(ptr noundef %1, i32 noundef 472, i32 noundef %9) #7
  %cfg.i159.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i159.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i159.i, align 8
  %write_readback.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i160.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i160.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i161.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i161.i, label %if.then44.i.if.end50.sink.split.i_crit_edge, label %if.then44.i.if.end50.sink.split.sink.split.i_crit_edge

if.then44.i.if.end50.sink.split.sink.split.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.sink.split.i

if.then44.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.i

if.else45.i:                                      ; preds = %if.then35.i
  %write32_async.i166.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %46 = ptrtoint ptr %write32_async.i166.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32_async.i166.i, align 4
  tail call void %47(ptr noundef %1, i32 noundef 472, i32 noundef %7) #7
  %cfg.i167.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i167.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i167.i, align 8
  %write_readback.i168.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_readback.i168.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %write_readback.i168.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i169.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i169.i, label %if.else45.i.if.end50.sink.split.i_crit_edge, label %if.else45.i.if.end50.sink.split.sink.split.i_crit_edge

if.else45.i.if.end50.sink.split.sink.split.i_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.sink.split.i

if.else45.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.sink.split.i

if.end50.sink.split.sink.split.i:                 ; preds = %if.else45.i.if.end50.sink.split.sink.split.i_crit_edge, %if.then44.i.if.end50.sink.split.sink.split.i_crit_edge, %if.then24.i.if.end50.sink.split.sink.split.i_crit_edge
  %.sink.ph.i = phi i8 [ 0, %if.then24.i.if.end50.sink.split.sink.split.i_crit_edge ], [ 1, %if.else45.i.if.end50.sink.split.sink.split.i_crit_edge ], [ 1, %if.then44.i.if.end50.sink.split.sink.split.i_crit_edge ]
  %read32_sync.i170.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %52 = ptrtoint ptr %read32_sync.i170.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32_sync.i170.i, align 4
  %call.i171.i = tail call i32 %53(ptr noundef %1, i32 noundef 472) #7
  br label %if.end50.sink.split.i

if.end50.sink.split.i:                            ; preds = %if.end50.sink.split.sink.split.i, %if.else45.i.if.end50.sink.split.i_crit_edge, %if.then44.i.if.end50.sink.split.i_crit_edge, %if.then24.i.if.end50.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then24.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else45.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.then44.i.if.end50.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end50.sink.split.sink.split.i ]
  %54 = ptrtoint ptr %is_cur_rdlstate.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink.i, ptr %is_cur_rdlstate.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.sink.split.i, %lor.lhs.false31.i.if.end50.i_crit_edge, %lor.lhs.false.i.if.end50.i_crit_edge
  %current_turbo_edca52.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %55 = ptrtoint ptr %current_turbo_edca52.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %current_turbo_edca52.i, align 2
  br label %_rtl92s_dm_check_edca_turbo.exit

if.else53.i:                                      ; preds = %if.then9.i
  %mul54.i = shl i64 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub11.i, i64 %mul54.i)
  %cmp55.i = icmp ugt i64 %sub11.i, %mul54.i
  %is_cur_rdlstate59.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 9
  %56 = ptrtoint ptr %is_cur_rdlstate59.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_cur_rdlstate59.i, align 8, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool60.not.i = icmp eq i8 %57, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.else81.i

if.then57.i:                                      ; preds = %if.else53.i
  br i1 %tobool60.not.i, label %if.then57.i.if.then65.i_crit_edge, label %lor.lhs.false61.i

if.then57.i.if.then65.i_crit_edge:                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

lor.lhs.false61.i:                                ; preds = %if.then57.i
  %current_turbo_edca63.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %58 = ptrtoint ptr %current_turbo_edca63.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %current_turbo_edca63.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool64.not.i = icmp eq i8 %59, 0
  br i1 %tobool64.not.i, label %lor.lhs.false61.i.if.then65.i_crit_edge, label %lor.lhs.false61.i.if.end94.i_crit_edge

lor.lhs.false61.i.if.end94.i_crit_edge:           ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

lor.lhs.false61.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false61.i.if.then65.i_crit_edge, %if.then57.i.if.then65.i_crit_edge
  %mode66.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %60 = ptrtoint ptr %mode66.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mode66.i, align 4
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %61, label %if.else76.i [
    i16 4, label %if.then65.i.if.then75.i_crit_edge
    i16 2, label %if.then65.i.if.then75.i_crit_edge81
  ]

if.then65.i.if.then75.i_crit_edge81:              ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75.i

if.then65.i.if.then75.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75.i

if.then75.i:                                      ; preds = %if.then65.i.if.then75.i_crit_edge, %if.then65.i.if.then75.i_crit_edge81
  %write32_async.i174.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %63 = ptrtoint ptr %write32_async.i174.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32_async.i174.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 472, i32 noundef %9) #7
  %cfg.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i175.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i175.i, align 8
  %write_readback.i176.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i176.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i176.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i177.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i177.i, label %if.then75.i.if.end94.sink.split.i_crit_edge, label %if.then75.i.if.end94.sink.split.sink.split.i_crit_edge

if.then75.i.if.end94.sink.split.sink.split.i_crit_edge: ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.sink.split.i

if.then75.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.i

if.else76.i:                                      ; preds = %if.then65.i
  %write32_async.i182.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %69 = ptrtoint ptr %write32_async.i182.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32_async.i182.i, align 4
  tail call void %70(ptr noundef %1, i32 noundef 472, i32 noundef %7) #7
  %cfg.i183.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i183.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i183.i, align 8
  %write_readback.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i184.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i184.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i185.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i185.i, label %if.else76.i.if.end94.sink.split.i_crit_edge, label %if.else76.i.if.end94.sink.split.sink.split.i_crit_edge

if.else76.i.if.end94.sink.split.sink.split.i_crit_edge: ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.sink.split.i

if.else76.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.i

if.else81.i:                                      ; preds = %if.else53.i
  br i1 %tobool60.not.i, label %lor.lhs.false86.i, label %if.else81.i.if.then90.i_crit_edge

if.else81.i.if.then90.i_crit_edge:                ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i

lor.lhs.false86.i:                                ; preds = %if.else81.i
  %current_turbo_edca88.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %75 = ptrtoint ptr %current_turbo_edca88.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %current_turbo_edca88.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool89.not.i = icmp eq i8 %76, 0
  br i1 %tobool89.not.i, label %lor.lhs.false86.i.if.then90.i_crit_edge, label %lor.lhs.false86.i.if.end94.i_crit_edge

lor.lhs.false86.i.if.end94.i_crit_edge:           ; preds = %lor.lhs.false86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

lor.lhs.false86.i.if.then90.i_crit_edge:          ; preds = %lor.lhs.false86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i

if.then90.i:                                      ; preds = %lor.lhs.false86.i.if.then90.i_crit_edge, %if.else81.i.if.then90.i_crit_edge
  %write32_async.i190.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %77 = ptrtoint ptr %write32_async.i190.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32_async.i190.i, align 4
  tail call void %78(ptr noundef %1, i32 noundef 472, i32 noundef %5) #7
  %cfg.i191.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %79 = ptrtoint ptr %cfg.i191.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i191.i, align 8
  %write_readback.i192.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i192.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i192.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i193.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i193.i, label %if.then90.i.if.end94.sink.split.i_crit_edge, label %if.then90.i.if.end94.sink.split.sink.split.i_crit_edge

if.then90.i.if.end94.sink.split.sink.split.i_crit_edge: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.sink.split.i

if.then90.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.sink.split.i

if.end94.sink.split.sink.split.i:                 ; preds = %if.then90.i.if.end94.sink.split.sink.split.i_crit_edge, %if.else76.i.if.end94.sink.split.sink.split.i_crit_edge, %if.then75.i.if.end94.sink.split.sink.split.i_crit_edge
  %.sink199.ph.i = phi i8 [ 1, %if.else76.i.if.end94.sink.split.sink.split.i_crit_edge ], [ 1, %if.then75.i.if.end94.sink.split.sink.split.i_crit_edge ], [ 0, %if.then90.i.if.end94.sink.split.sink.split.i_crit_edge ]
  %read32_sync.i194.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %83 = ptrtoint ptr %read32_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read32_sync.i194.i, align 4
  %call.i195.i = tail call i32 %84(ptr noundef %1, i32 noundef 472) #7
  br label %if.end94.sink.split.i

if.end94.sink.split.i:                            ; preds = %if.end94.sink.split.sink.split.i, %if.then90.i.if.end94.sink.split.i_crit_edge, %if.else76.i.if.end94.sink.split.i_crit_edge, %if.then75.i.if.end94.sink.split.i_crit_edge
  %.sink199.i = phi i8 [ 1, %if.else76.i.if.end94.sink.split.i_crit_edge ], [ 1, %if.then75.i.if.end94.sink.split.i_crit_edge ], [ 0, %if.then90.i.if.end94.sink.split.i_crit_edge ], [ %.sink199.ph.i, %if.end94.sink.split.sink.split.i ]
  %85 = ptrtoint ptr %is_cur_rdlstate59.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink199.i, ptr %is_cur_rdlstate59.i, align 8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.end94.sink.split.i, %lor.lhs.false86.i.if.end94.i_crit_edge, %lor.lhs.false61.i.if.end94.i_crit_edge
  %current_turbo_edca96.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %86 = ptrtoint ptr %current_turbo_edca96.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %current_turbo_edca96.i, align 2
  br label %_rtl92s_dm_check_edca_turbo.exit

if.else98.i:                                      ; preds = %land.lhs.true.i.if.else98.i_crit_edge, %if.end.i.if.else98.i_crit_edge
  %current_turbo_edca100.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 7
  %87 = ptrtoint ptr %current_turbo_edca100.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %current_turbo_edca100.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool101.not.i = icmp eq i8 %88, 0
  br i1 %tobool101.not.i, label %if.else98.i._rtl92s_dm_check_edca_turbo.exit_crit_edge, label %if.then102.i

if.else98.i._rtl92s_dm_check_edca_turbo.exit_crit_edge: ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_check_edca_turbo.exit

if.then102.i:                                     ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %89 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %tmp.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %90 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %93, i32 0, i32 20
  %94 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_hw_reg.i, align 4
  call void %95(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %tmp.i) #7
  %96 = ptrtoint ptr %current_turbo_edca100.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %current_turbo_edca100.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %_rtl92s_dm_check_edca_turbo.exit

_rtl92s_dm_check_edca_turbo.exit:                 ; preds = %if.then102.i, %if.else98.i._rtl92s_dm_check_edca_turbo.exit_crit_edge, %if.end94.i, %if.end50.i, %if.then.i
  %is_any_nonbepkts108.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 8
  %97 = ptrtoint ptr %is_any_nonbepkts108.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %is_any_nonbepkts108.i, align 1
  %stats109.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24
  %98 = ptrtoint ptr %stats109.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %stats109.i, align 8
  store i64 %99, ptr @_rtl92s_dm_check_edca_turbo.last_txok_cnt, align 8
  %rxbytesunicast112.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 3
  %100 = ptrtoint ptr %rxbytesunicast112.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rxbytesunicast112.i, align 8
  store i64 %101, ptr @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, align 8
  %102 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv.i, align 8
  %rf_type.i7 = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 4
  %104 = ptrtoint ptr %rf_type.i7 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rf_type.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %cmp.i = icmp eq i8 %105, 2
  br i1 %cmp.i, label %_rtl92s_dm_check_edca_turbo.exit._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge, label %if.end.i9

_rtl92s_dm_check_edca_turbo.exit._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge: ; preds = %_rtl92s_dm_check_edca_turbo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_check_txpowertracking_thermalmeter.exit

if.end.i9:                                        ; preds = %_rtl92s_dm_check_edca_turbo.exit
  %txpower_tracking.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 13
  %106 = ptrtoint ptr %txpower_tracking.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %txpower_tracking.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i8 = icmp eq i8 %107, 0
  br i1 %tobool.not.i8, label %if.end.i9._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge, label %if.end3.i

if.end.i9._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge: ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_check_txpowertracking_thermalmeter.exit

if.end3.i:                                        ; preds = %if.end.i9
  %txpowercount.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 18
  %108 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %txpowercount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %109)
  %cmp7.i = icmp ult i8 %109, 6
  br i1 %cmp7.i, label %if.then9.i10, label %if.end12.i

if.then9.i10:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nuw nsw i8 %109, 1
  %110 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %inc.i, ptr %txpowercount.i, align 4
  br label %_rtl92s_dm_check_txpowertracking_thermalmeter.exit

if.end12.i:                                       ; preds = %if.end3.i
  %tm_trigger.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 27
  %111 = ptrtoint ptr %tm_trigger.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tm_trigger.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool14.not.i = icmp eq i8 %112, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.else.i13

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i.i11 = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 32
  %113 = ptrtoint ptr %cfg.i.i11 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i.i11, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %116, i32 0, i32 48
  %117 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_rfreg.i.i, align 4
  call void %118(ptr noundef %hw, i32 noundef 0, i32 noundef 36, i32 noundef 1048575, i32 noundef 96) #7
  br label %if.end20.i

if.else.i13:                                      ; preds = %if.end12.i
  %txpower_trackinginit.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 10
  %119 = ptrtoint ptr %txpower_trackinginit.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %txpower_trackinginit.i.i, align 1
  %120 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv.i, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 32
  %122 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i.i.i, align 4
  %get_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %125, i32 0, i32 47
  %126 = ptrtoint ptr %get_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %get_rfreg.i.i.i, align 4
  %call.i.i.i = call i32 %127(ptr noundef %hw, i32 noundef 0, i32 noundef 36, i32 noundef 31) #7
  %conv.i.i = trunc i32 %call.i.i.i to i8
  %conv2.i.i = and i32 %call.i.i.i, 255
  %thermalvalue4.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 15, i32 23
  %128 = ptrtoint ptr %thermalvalue4.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %thermalvalue4.i.i, align 2
  %conv5.i.i = zext i8 %129 to i32
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 17, i32 55
  %130 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %eeprom_thermalmeter.i.i, align 4
  %conv6.i.i = zext i8 %131 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv2.i.i, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool.not.i.i12 = icmp eq i8 %conv.i.i, 0
  br i1 %tobool.not.i.i12, label %if.else.i13._rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i_crit_edge, label %if.then.i.i

if.else.i13._rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i_crit_edge: ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i

if.then.i.i:                                      ; preds = %if.else.i13
  %132 = ptrtoint ptr %thermalvalue4.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.i.i, ptr %thermalvalue4.i.i, align 2
  %pfirmware.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 10, i32 33
  %133 = ptrtoint ptr %pfirmware.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pfirmware.i.i, align 8
  %firmwareversion.i.i = getelementptr inbounds %struct.rt_firmware, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %firmwareversion.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %firmwareversion.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %136)
  %cmp.i.i = icmp ugt i16 %136, 52
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i.i = call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 14) #7
  br label %_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 17, i32 56
  %137 = ptrtoint ptr %thermalmeter.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %thermalmeter.i.i, align 1
  %conv14.i.i = zext i8 %138 to i32
  %shl.i.i = shl nuw nsw i32 %conv14.i.i, 8
  %shl16.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl.i.i, %shl16.i.i
  %or17.i.i = or i32 %or.i.i, -50331623
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %or17.i.i) #7
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 13, i32 7
  %139 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32_async.i.i.i, align 4
  call void %140(ptr noundef %103, i32 noundef 704, i32 noundef %or17.i.i) #7
  %cfg.i36.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 32
  %141 = ptrtoint ptr %cfg.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i36.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %write_readback.i.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i.i.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i.i.i

if.else.i.i.rtl_write_dword.exit.i.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 13, i32 11
  %145 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i37.i.i = call i32 %146(ptr noundef %103, i32 noundef 704) #7
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i.i.i, %if.else.i.i.rtl_write_dword.exit.i.i_crit_edge
  call void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef %hw) #7
  br label %_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i

_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i: ; preds = %rtl_write_dword.exit.i.i, %if.then11.i.i, %if.else.i13._rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i_crit_edge
  %147 = ptrtoint ptr %txpowercount.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %txpowercount.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i, %if.then15.i
  %storemerge.i = phi i8 [ 1, %if.then15.i ], [ 0, %_rtl92s_dm_txpowertracking_callback_thermalmeter.exit.i ]
  %148 = ptrtoint ptr %tm_trigger.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %storemerge.i, ptr %tm_trigger.i, align 1
  br label %_rtl92s_dm_check_txpowertracking_thermalmeter.exit

_rtl92s_dm_check_txpowertracking_thermalmeter.exit: ; preds = %if.end20.i, %if.then9.i10, %if.end.i9._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge, %_rtl92s_dm_check_edca_turbo.exit._rtl92s_dm_check_txpowertracking_thermalmeter.exit_crit_edge
  %149 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv.i, align 8
  %rf_type.i15 = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 14, i32 4
  %151 = ptrtoint ptr %rf_type.i15 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rf_type.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %152)
  %cmp.i16 = icmp eq i8 %152, 2
  br i1 %cmp.i16, label %_rtl92s_dm_check_txpowertracking_thermalmeter.exit._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.end.i18

_rtl92s_dm_check_txpowertracking_thermalmeter.exit._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %_rtl92s_dm_check_txpowertracking_thermalmeter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_ctrl_initgain_byrssi.exit

if.end.i18:                                       ; preds = %_rtl92s_dm_check_txpowertracking_thermalmeter.exit
  %dm_initialgain_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 15, i32 5
  %153 = ptrtoint ptr %dm_initialgain_enable.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %dm_initialgain_enable.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i17 = icmp eq i8 %154, 0
  br i1 %tobool.not.i17, label %if.end.i18._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.end3.i19

if.end.i18._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_ctrl_initgain_byrssi.exit

if.end3.i19:                                      ; preds = %if.end.i18
  %dig_enable_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 35, i32 11
  %155 = ptrtoint ptr %dig_enable_flag.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %dig_enable_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp5.i = icmp eq i8 %156, 0
  br i1 %cmp5.i, label %if.end3.i19._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, label %if.end8.i

if.end3.i19._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end3.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_ctrl_initgain_byrssi.exit

if.end8.i:                                        ; preds = %if.end3.i19
  %act_scanning.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 9, i32 20
  %157 = ptrtoint ptr %act_scanning.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %act_scanning.i.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i.i20 = icmp eq i8 %158, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i, label %if.end8.i._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge

if.end8.i._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_ctrl_initgain_byrssi.exit

if.end.i.i:                                       ; preds = %if.end8.i
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 9, i32 10
  %159 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp.i.i21 = icmp ugt i32 %160, 1
  br i1 %cmp.i.i21, label %if.end.i.i.if.end6.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 9, i32 8
  %161 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %opmode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp3.i.i = icmp eq i32 %162, 1
  %spec.select.i.i = zext i1 %cmp3.i.i to i8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %.sink.i.i = phi i8 [ 1, %if.end.i.i.if.end6.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %cur_sta_cstate5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 35, i32 40
  %163 = ptrtoint ptr %cur_sta_cstate5.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %.sink.i.i, ptr %cur_sta_cstate5.i.i, align 1
  %undec_sm_pwdb.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 15, i32 2
  %164 = ptrtoint ptr %undec_sm_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %undec_sm_pwdb.i.i, align 8
  %rssi_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 35, i32 10
  %166 = ptrtoint ptr %rssi_val.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %rssi_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink.i.i)
  %cmp8.not.i.i = icmp eq i8 %.sink.i.i, 0
  br i1 %cmp8.not.i.i, label %if.end6.i.i.if.end17.i.i_crit_edge, label %if.then10.i.i

if.end6.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  %dig_twoport_algorithm.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 35, i32 14
  %167 = ptrtoint ptr %dig_twoport_algorithm.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dig_twoport_algorithm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %168)
  %cmp12.i.i = icmp eq i8 %168, 1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.then10.i.i.if.end17.i.i_crit_edge

if.then10.i.i.if.end17.i.i_crit_edge:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then14.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %dig_twoport_algorithm.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %dig_twoport_algorithm.i.i, align 1
  %call.i.i = call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 24) #7
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i.i, %if.then10.i.i.if.end17.i.i_crit_edge, %if.end6.i.i.if.end17.i.i_crit_edge
  %170 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %priv.i, align 8
  %falsealm_cnt1.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 32
  %172 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ops.i.i.i.i, align 4
  %get_bbreg.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %175, i32 0, i32 45
  %176 = ptrtoint ptr %get_bbreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %get_bbreg.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %177(ptr noundef %hw, i32 noundef 3488, i32 noundef -1) #7
  %shr.i.i.i = lshr i32 %call.i.i.i.i, 16
  %178 = ptrtoint ptr %falsealm_cnt1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %shr.i.i.i, ptr %falsealm_cnt1.i.i.i, align 4
  %179 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %priv.i, align 8
  %cfg.i40.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %180, i32 0, i32 32
  %181 = ptrtoint ptr %cfg.i40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg.i40.i.i.i, align 8
  %ops.i41.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %ops.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops.i41.i.i.i, align 4
  %get_bbreg.i42.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %184, i32 0, i32 45
  %185 = ptrtoint ptr %get_bbreg.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %get_bbreg.i42.i.i.i, align 4
  %call.i43.i.i.i = call i32 %186(ptr noundef %hw, i32 noundef 3492, i32 noundef -1) #7
  %and3.i.i.i = and i32 %call.i43.i.i.i, 65535
  %cnt_rate_illegal.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 1
  %187 = ptrtoint ptr %cnt_rate_illegal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %and3.i.i.i, ptr %cnt_rate_illegal.i.i.i, align 4
  %shr5.i.i.i = lshr i32 %call.i43.i.i.i, 16
  %cnt_crc8_fail.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 2
  %188 = ptrtoint ptr %cnt_crc8_fail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %shr5.i.i.i, ptr %cnt_crc8_fail.i.i.i, align 4
  %189 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %priv.i, align 8
  %cfg.i45.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %190, i32 0, i32 32
  %191 = ptrtoint ptr %cfg.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i45.i.i.i, align 8
  %ops.i46.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %ops.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ops.i46.i.i.i, align 4
  %get_bbreg.i47.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %194, i32 0, i32 45
  %195 = ptrtoint ptr %get_bbreg.i47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %get_bbreg.i47.i.i.i, align 4
  %call.i48.i.i.i = call i32 %196(ptr noundef %hw, i32 noundef 3496, i32 noundef -1) #7
  %and7.i.i.i = and i32 %call.i48.i.i.i, 65535
  %cnt_mcs_fail.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 3
  %197 = ptrtoint ptr %cnt_mcs_fail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and7.i.i.i, ptr %cnt_mcs_fail.i.i.i, align 4
  %198 = ptrtoint ptr %falsealm_cnt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %falsealm_cnt1.i.i.i, align 4
  %200 = ptrtoint ptr %cnt_rate_illegal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cnt_rate_illegal.i.i.i, align 4
  %202 = ptrtoint ptr %cnt_crc8_fail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cnt_crc8_fail.i.i.i, align 4
  %add.i.i.i = add i32 %199, %and7.i.i.i
  %add11.i.i.i = add i32 %add.i.i.i, %201
  %add13.i.i.i = add i32 %add11.i.i.i, %203
  %cnt_ofdm_fail.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 6
  %204 = ptrtoint ptr %cnt_ofdm_fail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add13.i.i.i, ptr %cnt_ofdm_fail.i.i.i, align 4
  %205 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv.i, align 8
  %cfg.i50.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %206, i32 0, i32 32
  %207 = ptrtoint ptr %cfg.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i50.i.i.i, align 8
  %ops.i51.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %ops.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i51.i.i.i, align 4
  %get_bbreg.i52.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %210, i32 0, i32 45
  %211 = ptrtoint ptr %get_bbreg.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %get_bbreg.i52.i.i.i, align 4
  %call.i53.i.i.i = call i32 %212(ptr noundef %hw, i32 noundef 3172, i32 noundef -1) #7
  %and15.i.i.i = and i32 %call.i53.i.i.i, 65535
  %cnt_cck_fail.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 7
  %213 = ptrtoint ptr %cnt_cck_fail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %and15.i.i.i, ptr %cnt_cck_fail.i.i.i, align 4
  %214 = ptrtoint ptr %cnt_ofdm_fail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cnt_ofdm_fail.i.i.i, align 4
  %add18.i.i.i = add i32 %215, %and15.i.i.i
  %cnt_all.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 26, i32 8
  %216 = ptrtoint ptr %cnt_all.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %add18.i.i.i, ptr %cnt_all.i.i.i, align 4
  %217 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %priv.i, align 8
  %pre_sta_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 41
  %219 = ptrtoint ptr %pre_sta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %pre_sta_cstate.i.i.i, align 2
  %cur_sta_cstate.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 40
  %221 = ptrtoint ptr %cur_sta_cstate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %cur_sta_cstate.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %220, i8 %222)
  %cmp.i.i.i = icmp eq i8 %220, %222
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %222)
  %cmp6.i.i.i = icmp eq i8 %222, 2
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp6.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i22, label %if.else67.i.i.i

if.then.i.i.i22:                                  ; preds = %if.end17.i.i
  br i1 %cmp6.i.i.i, label %if.then12.i.i.i, label %if.then.i.i.i22._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge

if.then.i.i.i22._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge: ; preds = %if.then.i.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i

if.then12.i.i.i:                                  ; preds = %if.then.i.i.i22
  %rfpwr_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 21, i32 24
  %223 = ptrtoint ptr %rfpwr_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %rfpwr_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp13.not.i.i.i = icmp eq i32 %224, 0
  br i1 %cmp13.not.i.i.i, label %if.end.i.i.i, label %if.then12.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge

if.then12.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge: ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then12.i.i.i
  %backoff_enable_flag.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 48
  %225 = ptrtoint ptr %backoff_enable_flag.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %backoff_enable_flag.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.i.i.i23 = icmp eq i8 %226, 0
  br i1 %tobool.not.i.i.i23, label %if.else.i.i.i, label %if.then16.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end.i.i.i
  %cnt_all.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 8
  %227 = ptrtoint ptr %cnt_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cnt_all.i.i.i.i, align 4
  %fa_highthresh.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 3
  %229 = ptrtoint ptr %fa_highthresh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %fa_highthresh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp.i.i.i.i = icmp ugt i32 %228, %230
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then16.i.i.i
  %back_val.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 21
  %231 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %back_val.i.i.i.i, align 2
  %conv.i.i.i.i = sext i8 %232 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -6
  %backoffval_range_min.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 50
  %233 = ptrtoint ptr %backoffval_range_min.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %backoffval_range_min.i.i.i.i, align 1
  %conv2.i.i.i.i = sext i8 %234 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %conv2.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %sub.i.i.i.i, %conv2.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then5.i.i.i.i, label %if.else.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %235 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %back_val.i.i.i.i, align 2
  br label %if.end17.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv11.i.i.i.i = trunc i32 %sub.i.i.i.i to i8
  %236 = ptrtoint ptr %back_val.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv11.i.i.i.i, ptr %back_val.i.i.i.i, align 2
  br label %if.end17.i.i.i

if.else12.i.i.i.i:                                ; preds = %if.then16.i.i.i
  %fa_lowthresh.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 2
  %237 = ptrtoint ptr %fa_lowthresh.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %fa_lowthresh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %238)
  %cmp14.i.i.i.i = icmp ult i32 %228, %238
  br i1 %cmp14.i.i.i.i, label %if.then16.i.i.i.i, label %if.else12.i.i.i.i.if.end17.i.i.i_crit_edge

if.else12.i.i.i.i.if.end17.i.i.i_crit_edge:       ; preds = %if.else12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

if.then16.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  %back_val17.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 21
  %239 = ptrtoint ptr %back_val17.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %back_val17.i.i.i.i, align 2
  %conv18.i.i.i.i = sext i8 %240 to i32
  %add.i.i.i.i = add nsw i32 %conv18.i.i.i.i, 6
  %backoffval_range_max.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 49
  %241 = ptrtoint ptr %backoffval_range_max.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %backoffval_range_max.i.i.i.i, align 2
  %conv19.i.i.i.i = sext i8 %242 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %conv19.i.i.i.i)
  %cmp20.i.i.i.i = icmp sgt i32 %add.i.i.i.i, %conv19.i.i.i.i
  br i1 %cmp20.i.i.i.i, label %if.then22.i.i.i.i, label %if.else25.i.i.i.i

if.then22.i.i.i.i:                                ; preds = %if.then16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %back_val17.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %back_val17.i.i.i.i, align 2
  br label %if.end17.i.i.i

if.else25.i.i.i.i:                                ; preds = %if.then16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv29.i.i.i.i = trunc i32 %add.i.i.i.i to i8
  %244 = ptrtoint ptr %back_val17.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv29.i.i.i.i, ptr %back_val17.i.i.i.i, align 2
  br label %if.end17.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %back_val.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 21
  %245 = ptrtoint ptr %back_val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 12, ptr %back_val.i.i.i, align 2
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.else.i.i.i, %if.else25.i.i.i.i, %if.then22.i.i.i.i, %if.else12.i.i.i.i.if.end17.i.i.i_crit_edge, %if.else.i.i.i.i, %if.then5.i.i.i.i
  %rssi_val.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 10
  %246 = ptrtoint ptr %rssi_val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rssi_val.i.i.i, align 4
  %add.i35.i.i = add i32 %247, 10
  %back_val18.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 21
  %248 = ptrtoint ptr %back_val18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %back_val18.i.i.i, align 2
  %conv19.i.i.i = sext i8 %249 to i32
  %sub.i.i.i = sub i32 %add.i35.i.i, %conv19.i.i.i
  %rx_gain_max.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 24
  %250 = ptrtoint ptr %rx_gain_max.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %rx_gain_max.i.i.i, align 1
  %conv20.i.i.i = zext i8 %251 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv20.i.i.i)
  %cmp21.i.i.i = icmp sgt i32 %sub.i.i.i, %conv20.i.i.i
  br i1 %cmp21.i.i.i, label %if.then23.i.i.i, label %if.else26.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cur_igvalue.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 9
  %252 = ptrtoint ptr %cur_igvalue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv20.i.i.i, ptr %cur_igvalue.i.i.i, align 4
  br label %if.end47.i.i.i

if.else26.i.i.i:                                  ; preds = %if.end17.i.i.i
  %rx_gain_min.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 25
  %253 = ptrtoint ptr %rx_gain_min.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %rx_gain_min.i.i.i, align 2
  %conv32.i.i.i = zext i8 %254 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv32.i.i.i)
  %cmp33.i.i.i = icmp slt i32 %sub.i.i.i, %conv32.i.i.i
  %cur_igvalue38.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 9
  br i1 %cmp33.i.i.i, label %if.then35.i.i.i, label %if.else39.i.i.i

if.then35.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %cur_igvalue38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv32.i.i.i, ptr %cur_igvalue38.i.i.i, align 4
  br label %if.end47.i.i.i

if.else39.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %cur_igvalue38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %sub.i.i.i, ptr %cur_igvalue38.i.i.i, align 4
  br label %if.end47.i.i.i

if.end47.i.i.i:                                   ; preds = %if.else39.i.i.i, %if.then35.i.i.i, %if.then23.i.i.i
  %cnt_all.i36.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 26, i32 8
  %257 = ptrtoint ptr %cnt_all.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %cnt_all.i36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %258)
  %cmp48.i.i.i = icmp ugt i32 %258, 10000
  br i1 %cmp48.i.i.i, label %if.end56.i.i.i, label %if.end47.i.i.i.if.end71.i.i.i_crit_edge

if.end47.i.i.i.if.end71.i.i.i_crit_edge:          ; preds = %if.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i.i.i

if.end56.i.i.i:                                   ; preds = %if.end47.i.i.i
  %cur_igvalue51.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 9
  %259 = ptrtoint ptr %cur_igvalue51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cur_igvalue51.i.i.i, align 4
  %261 = call i32 @llvm.umax.i32(i32 %260, i32 51) #7
  %262 = ptrtoint ptr %cur_igvalue51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %cur_igvalue51.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %258)
  %cmp58.i.i.i = icmp ugt i32 %258, 16000
  br i1 %cmp58.i.i.i, label %if.then60.i.i.i, label %if.end56.i.i.i.if.end71.i.i.i_crit_edge

if.end56.i.i.i.if.end71.i.i.i_crit_edge:          ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i.i.i

if.then60.i.i.i:                                  ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %rx_gain_max.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %rx_gain_max.i.i.i, align 1
  %conv62.i.i.i = zext i8 %264 to i32
  %265 = ptrtoint ptr %cur_igvalue51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %conv62.i.i.i, ptr %cur_igvalue51.i.i.i, align 4
  br label %if.end71.i.i.i

if.else67.i.i.i:                                  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dig_ext_port_stage.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 12
  %266 = ptrtoint ptr %dig_ext_port_stage.i.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 4, ptr %dig_ext_port_stage.i.i.i, align 1
  %call.i.i.i24 = call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 0) #7
  %back_val68.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 21
  %267 = ptrtoint ptr %back_val68.i.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 12, ptr %back_val68.i.i.i, align 2
  %default_initialgain.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 14, i32 45
  %268 = ptrtoint ptr %default_initialgain.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %default_initialgain.i.i.i, align 4
  %conv69.i.i.i = zext i8 %269 to i32
  %cur_igvalue70.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 9
  %270 = ptrtoint ptr %cur_igvalue70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %conv69.i.i.i, ptr %cur_igvalue70.i.i.i, align 4
  %pre_igvalue.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 8
  %271 = ptrtoint ptr %pre_igvalue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %pre_igvalue.i.i.i, align 4
  br label %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i

if.end71.i.i.i:                                   ; preds = %if.then60.i.i.i, %if.end56.i.i.i.if.end71.i.i.i_crit_edge, %if.end47.i.i.i.if.end71.i.i.i_crit_edge
  %pre_igvalue72.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 8
  %272 = ptrtoint ptr %pre_igvalue72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pre_igvalue72.i.i.i, align 4
  %274 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %priv.i, align 8
  %cfg.i.i37.i.i = getelementptr inbounds %struct.rtl_priv, ptr %275, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i.i37.i.i, align 8
  %ops.i.i38.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %ops.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i.i38.i.i, align 4
  %get_bbreg.i.i39.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %279, i32 0, i32 45
  %280 = ptrtoint ptr %get_bbreg.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %get_bbreg.i.i39.i.i, align 4
  %call.i.i40.i.i = call i32 %281(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %273, i32 %call.i.i40.i.i)
  %cmp74.not.i.i.i = icmp eq i32 %273, %call.i.i40.i.i
  br i1 %cmp74.not.i.i.i, label %if.end71.i.i.i.if.end77.i.i.i_crit_edge, label %if.then76.i.i.i

if.end71.i.i.i.if.end77.i.i.i_crit_edge:          ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i.i.i

if.then76.i.i.i:                                  ; preds = %if.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 1
  br label %if.end77.i.i.i

if.end77.i.i.i:                                   ; preds = %if.then76.i.i.i, %if.end71.i.i.i.if.end77.i.i.i_crit_edge
  %282 = ptrtoint ptr %pre_igvalue72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %pre_igvalue72.i.i.i, align 4
  %cur_igvalue79.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 35, i32 9
  %284 = ptrtoint ptr %cur_igvalue79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %cur_igvalue79.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %285)
  %cmp80.not.i.i.i = icmp eq i32 %283, %285
  br i1 %cmp80.not.i.i.i, label %lor.lhs.false82.i.i.i, label %if.end77.i.i.i.if.then87.i.i.i_crit_edge

if.end77.i.i.i.if.then87.i.i.i_crit_edge:         ; preds = %if.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87.i.i.i

lor.lhs.false82.i.i.i:                            ; preds = %if.end77.i.i.i
  %.b.i.i.i = load i1, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized, align 1
  br i1 %.b.i.i.i, label %lor.lhs.false84.i.i.i, label %lor.lhs.false82.i.i.i.if.then87.i.i.i_crit_edge

lor.lhs.false82.i.i.i.if.then87.i.i.i_crit_edge:  ; preds = %lor.lhs.false82.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87.i.i.i

lor.lhs.false84.i.i.i:                            ; preds = %lor.lhs.false82.i.i.i
  %.b143.i.i.i = load i1, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 1
  br i1 %.b143.i.i.i, label %lor.lhs.false84.i.i.i.if.then87.i.i.i_crit_edge, label %lor.lhs.false84.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge

lor.lhs.false84.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge: ; preds = %lor.lhs.false84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i

lor.lhs.false84.i.i.i.if.then87.i.i.i_crit_edge:  ; preds = %lor.lhs.false84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87.i.i.i

if.then87.i.i.i:                                  ; preds = %lor.lhs.false84.i.i.i.if.then87.i.i.i_crit_edge, %lor.lhs.false82.i.i.i.if.then87.i.i.i_crit_edge, %if.end77.i.i.i.if.then87.i.i.i_crit_edge
  %call88.i.i.i = call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 1) #7
  %286 = ptrtoint ptr %cur_igvalue79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cur_igvalue79.i.i.i, align 4
  %conv91.i.i.i = and i32 %287, 255
  %288 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %priv.i, align 8
  %cfg.i146.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %289, i32 0, i32 32
  %290 = ptrtoint ptr %cfg.i146.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cfg.i146.i.i.i, align 8
  %ops.i147.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %291, i32 0, i32 4
  %292 = ptrtoint ptr %ops.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ops.i147.i.i.i, align 4
  %set_bbreg.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %293, i32 0, i32 46
  %294 = ptrtoint ptr %set_bbreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %set_bbreg.i.i.i.i, align 4
  call void %295(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef %conv91.i.i.i) #7
  %296 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %priv.i, align 8
  %cfg.i149.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %297, i32 0, i32 32
  %298 = ptrtoint ptr %cfg.i149.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cfg.i149.i.i.i, align 8
  %ops.i150.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %299, i32 0, i32 4
  %300 = ptrtoint ptr %ops.i150.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ops.i150.i.i.i, align 4
  %set_bbreg.i151.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %301, i32 0, i32 46
  %302 = ptrtoint ptr %set_bbreg.i151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %set_bbreg.i151.i.i.i, align 4
  call void %303(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef %conv91.i.i.i) #7
  %304 = ptrtoint ptr %cur_igvalue79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cur_igvalue79.i.i.i, align 4
  %306 = ptrtoint ptr %pre_igvalue72.i.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %pre_igvalue72.i.i.i, align 4
  store i1 true, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.initialized, align 1
  store i1 false, ptr @_rtl92s_dm_initial_gain_sta_beforeconnect.force_write, align 1
  br label %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i

_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i: ; preds = %if.then87.i.i.i, %lor.lhs.false84.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge, %if.else67.i.i.i, %if.then12.i.i.i._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge, %if.then.i.i.i22._rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i_crit_edge
  %307 = ptrtoint ptr %cur_sta_cstate5.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %cur_sta_cstate5.i.i, align 1
  %pre_sta_cstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 35, i32 41
  %309 = ptrtoint ptr %pre_sta_cstate.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %pre_sta_cstate.i.i, align 2
  br label %_rtl92s_dm_ctrl_initgain_byrssi.exit

_rtl92s_dm_ctrl_initgain_byrssi.exit:             ; preds = %_rtl92s_dm_initial_gain_sta_beforeconnect.exit.i.i, %if.end8.i._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end3.i19._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, %if.end.i18._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge, %_rtl92s_dm_check_txpowertracking_thermalmeter.exit._rtl92s_dm_ctrl_initgain_byrssi.exit_crit_edge
  %310 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %priv.i, align 8
  %rf_type.i26 = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 4
  %312 = ptrtoint ptr %rf_type.i26 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %rf_type.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %313)
  %cmp.i27 = icmp eq i8 %313, 2
  br i1 %cmp.i27, label %_rtl92s_dm_ctrl_initgain_byrssi.exit._rtl92s_dm_dynamic_txpower.exit_crit_edge, label %if.end.i29

_rtl92s_dm_ctrl_initgain_byrssi.exit._rtl92s_dm_dynamic_txpower.exit_crit_edge: ; preds = %_rtl92s_dm_ctrl_initgain_byrssi.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_dynamic_txpower.exit

if.end.i29:                                       ; preds = %_rtl92s_dm_ctrl_initgain_byrssi.exit
  %dm.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 6
  %314 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %dynamic_txpower_enable.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool.not.i28 = icmp eq i8 %315, 0
  br i1 %tobool.not.i28, label %if.end.i29.if.then6.i_crit_edge, label %lor.lhs.false.i30

if.end.i29.if.then6.i_crit_edge:                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

lor.lhs.false.i30:                                ; preds = %if.end.i29
  %dm_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 30
  %316 = ptrtoint ptr %dm_flag.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %dm_flag.i, align 4
  %318 = and i8 %317, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool5.not.i = icmp eq i8 %318, 0
  br i1 %tobool5.not.i, label %if.end8.i32, label %lor.lhs.false.i30.if.then6.i_crit_edge

lor.lhs.false.i30.if.then6.i_crit_edge:           ; preds = %lor.lhs.false.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i30.if.then6.i_crit_edge, %if.end.i29.if.then6.i_crit_edge
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 29
  %319 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 0, ptr %dynamic_txhighpower_lvl.i, align 1
  br label %_rtl92s_dm_dynamic_txpower.exit

if.end8.i32:                                      ; preds = %lor.lhs.false.i30
  %link_state.i31 = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 9, i32 10
  %320 = ptrtoint ptr %link_state.i31 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %link_state.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %321)
  %cmp9.i = icmp ult i32 %321, 2
  br i1 %cmp9.i, label %land.lhs.true.i34, label %if.then22.i

land.lhs.true.i34:                                ; preds = %if.end8.i32
  %322 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %dm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp12.i33 = icmp eq i32 %323, 0
  br i1 %cmp12.i33, label %if.then14.i35, label %if.else31.i

if.then14.i35:                                    ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %311, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.2) #7
  %dynamic_txhighpower_lvl16.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 29
  %324 = ptrtoint ptr %dynamic_txhighpower_lvl16.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 0, ptr %dynamic_txhighpower_lvl16.i, align 1
  %last_dtp_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 24
  %325 = ptrtoint ptr %last_dtp_lvl.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 0, ptr %last_dtp_lvl.i, align 1
  br label %_rtl92s_dm_dynamic_txpower.exit

if.then22.i:                                      ; preds = %if.end8.i32
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 9, i32 8
  %326 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %327)
  %cmp23.i = icmp eq i32 %327, 1
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i36

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %dm.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %311, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %329) #7
  br label %if.end34.i

if.else.i36:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %undec_sm_pwdb29.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 2
  %330 = ptrtoint ptr %undec_sm_pwdb29.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %undec_sm_pwdb29.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %311, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %331) #7
  br label %if.end34.i

if.else31.i:                                      ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %311, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %323) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else31.i, %if.else.i36, %if.then25.i
  %undec_sm_pwdb.0.i = phi i32 [ %329, %if.then25.i ], [ %331, %if.else.i36 ], [ %323, %if.else31.i ]
  %332 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %priv.i, align 8
  %cfg.i.i37 = getelementptr inbounds %struct.rtl_priv, ptr %333, i32 0, i32 32
  %334 = ptrtoint ptr %cfg.i.i37 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %cfg.i.i37, align 8
  %ops.i.i38 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %ops.i.i38 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops.i.i38, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %337, i32 0, i32 45
  %338 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i39 = call i32 %339(ptr noundef %hw, i32 noundef 3216, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i39)
  %cmp35.i = icmp eq i32 %call.i.i39, 1
  br i1 %cmp35.i, label %if.end34.i.if.end65.sink.split.i_crit_edge, label %if.else40.i

if.end34.i.if.end65.sink.split.i_crit_edge:       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split.i

if.else40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %undec_sm_pwdb.0.i)
  %cmp41.i = icmp sgt i32 %undec_sm_pwdb.0.i, 73
  br i1 %cmp41.i, label %if.else40.i.if.end65.sink.split.i_crit_edge, label %if.else46.i

if.else40.i.if.end65.sink.split.i_crit_edge:      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split.i

if.else46.i:                                      ; preds = %if.else40.i
  %340 = add i32 %undec_sm_pwdb.0.i, -67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %340)
  %341 = icmp ult i32 %340, 4
  br i1 %341, label %if.else46.i.if.end65.sink.split.i_crit_edge, label %if.else55.i

if.else46.i.if.end65.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split.i

if.else55.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %undec_sm_pwdb.0.i)
  %cmp57.i = icmp slt i32 %undec_sm_pwdb.0.i, 64
  br i1 %cmp57.i, label %if.else55.i.if.end65.sink.split.i_crit_edge, label %if.else55.i.if.end65.i_crit_edge

if.else55.i.if.end65.i_crit_edge:                 ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.else55.i.if.end65.sink.split.i_crit_edge:      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.sink.split.i

if.end65.sink.split.i:                            ; preds = %if.else55.i.if.end65.sink.split.i_crit_edge, %if.else46.i.if.end65.sink.split.i_crit_edge, %if.else40.i.if.end65.sink.split.i_crit_edge, %if.end34.i.if.end65.sink.split.i_crit_edge
  %.sink.i40 = phi i8 [ 0, %if.end34.i.if.end65.sink.split.i_crit_edge ], [ 2, %if.else40.i.if.end65.sink.split.i_crit_edge ], [ 1, %if.else46.i.if.end65.sink.split.i_crit_edge ], [ 0, %if.else55.i.if.end65.sink.split.i_crit_edge ]
  %dynamic_txhighpower_lvl45.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 29
  %342 = ptrtoint ptr %dynamic_txhighpower_lvl45.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %.sink.i40, ptr %dynamic_txhighpower_lvl45.i, align 1
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end65.sink.split.i, %if.else55.i.if.end65.i_crit_edge
  %dynamic_txhighpower_lvl67.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 29
  %343 = ptrtoint ptr %dynamic_txhighpower_lvl67.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %dynamic_txhighpower_lvl67.i, align 1
  %last_dtp_lvl70.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 15, i32 24
  %345 = ptrtoint ptr %last_dtp_lvl70.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %last_dtp_lvl70.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %344, i8 %346)
  %cmp72.not.i = icmp eq i8 %344, %346
  br i1 %cmp72.not.i, label %if.end65.i.if.end75.i_crit_edge, label %if.then74.i

if.end65.i.if.end75.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then74.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 10
  %347 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %current_channel.i, align 1
  call void @rtl92s_phy_set_txpower(ptr noundef %hw, i8 noundef zeroext %348) #7
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %if.end65.i.if.end75.i_crit_edge
  %349 = ptrtoint ptr %dynamic_txhighpower_lvl67.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %dynamic_txhighpower_lvl67.i, align 1
  %351 = ptrtoint ptr %last_dtp_lvl70.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %last_dtp_lvl70.i, align 1
  br label %_rtl92s_dm_dynamic_txpower.exit

_rtl92s_dm_dynamic_txpower.exit:                  ; preds = %if.end75.i, %if.then14.i35, %if.then6.i, %_rtl92s_dm_ctrl_initgain_byrssi.exit._rtl92s_dm_dynamic_txpower.exit_crit_edge
  %352 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %priv.i, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 10, i32 14
  %354 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %cmp.i.i42 = icmp eq i8 %355, 0
  br i1 %cmp.i.i42, label %_rtl92s_dm_dynamic_txpower.exit._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, label %if.end.i44

_rtl92s_dm_dynamic_txpower.exit._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge: ; preds = %_rtl92s_dm_dynamic_txpower.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

if.end.i44:                                       ; preds = %_rtl92s_dm_dynamic_txpower.exit
  %useramask.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 15, i32 14
  %356 = ptrtoint ptr %useramask.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %useramask.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i43 = icmp eq i8 %357, 0
  br i1 %tobool.not.i43, label %if.end.i44._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, label %if.end6.i

if.end.i44._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

if.end6.i:                                        ; preds = %if.end.i44
  %pfirmware.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 10, i32 33
  %358 = ptrtoint ptr %pfirmware.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %pfirmware.i, align 8
  %firmwareversion.i = getelementptr inbounds %struct.rt_firmware, ptr %359, i32 0, i32 2
  %360 = ptrtoint ptr %firmwareversion.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %firmwareversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %361)
  %cmp.i45 = icmp ugt i16 %361, 60
  br i1 %cmp.i45, label %land.lhs.true.i46, label %if.end6.i.if.end15.i_crit_edge

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i46:                                ; preds = %if.end6.i
  %inform_fw_driverctrldm.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 15, i32 16
  %362 = ptrtoint ptr %inform_fw_driverctrldm.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %inform_fw_driverctrldm.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool10.not.i = icmp eq i8 %363, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true.i46.if.end15.i_crit_edge

land.lhs.true.i46.if.end15.i_crit_edge:           ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then11.i:                                      ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 27) #7
  %364 = ptrtoint ptr %inform_fw_driverctrldm.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 1, ptr %inform_fw_driverctrldm.i, align 2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %land.lhs.true.i46.if.end15.i_crit_edge, %if.end6.i.if.end15.i_crit_edge
  %link_state.i47 = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 9, i32 10
  %365 = ptrtoint ptr %link_state.i47 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %link_state.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %366)
  %cmp16.i = icmp eq i32 %366, 2
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.end15.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge

if.end15.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

land.lhs.true18.i:                                ; preds = %if.end15.i
  %opmode.i48 = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 9, i32 8
  %367 = ptrtoint ptr %opmode.i48 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %opmode.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %368)
  %cmp19.i = icmp eq i32 %368, 2
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true18.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge

land.lhs.true18.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

if.then21.i:                                      ; preds = %land.lhs.true18.i
  %pre_ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 22, i32 21
  %369 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %pre_ratr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %370)
  %371 = icmp ult i8 %370, 6
  br i1 %371, label %switch.lookup, label %if.then21.i.sw.epilog.i_crit_edge

if.then21.i.sw.epilog.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %372 = sext i8 %370 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.rtl92s_dm_watchdog, i32 0, i32 %372
  %373 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %373)
  %switch.load = load i32, ptr %switch.gep, align 4
  %374 = sext i8 %370 to i32
  %switch.gep76 = getelementptr inbounds [6 x i32], ptr @switch.table.rtl92s_dm_watchdog.10, i32 0, i32 %374
  %375 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load4_noabort(i32 %375)
  %switch.load77 = load i32, ptr %switch.gep76, align 4
  %376 = sext i8 %370 to i32
  %switch.gep78 = getelementptr inbounds [6 x i32], ptr @switch.table.rtl92s_dm_watchdog.11, i32 0, i32 %376
  %377 = ptrtoint ptr %switch.gep78 to i32
  call void @__asan_load4_noabort(i32 %377)
  %switch.load79 = load i32, ptr %switch.gep78, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then21.i.sw.epilog.i_crit_edge
  %low_rssi_thresh.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 24, %if.then21.i.sw.epilog.i_crit_edge ]
  %middle_rssi_thresh.0.i = phi i32 [ %switch.load77, %switch.lookup ], [ 34, %if.then21.i.sw.epilog.i_crit_edge ]
  %high_rssi_thresh.0.i = phi i32 [ %switch.load79, %switch.lookup ], [ 44, %if.then21.i.sw.epilog.i_crit_edge ]
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 15, i32 2
  %378 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %high_rssi_thresh.0.i)
  %cmp27.i = icmp sgt i32 %379, %high_rssi_thresh.0.i
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i49

if.then29.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %ratr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 22, i32 1
  %380 = ptrtoint ptr %ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %ratr_state.i, align 1
  br label %if.end47.i

if.else.i49:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %middle_rssi_thresh.0.i)
  %cmp32.i = icmp sgt i32 %379, %middle_rssi_thresh.0.i
  br i1 %cmp32.i, label %if.then34.i, label %if.else36.i

if.then34.i:                                      ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #9
  %ratr_state35.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 22, i32 1
  %381 = ptrtoint ptr %ratr_state35.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 4, ptr %ratr_state35.i, align 1
  br label %if.end47.i

if.else36.i:                                      ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %low_rssi_thresh.0.i)
  %cmp39.i = icmp sgt i32 %379, %low_rssi_thresh.0.i
  %ratr_state42.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 22, i32 1
  br i1 %cmp39.i, label %if.then41.i, label %if.else43.i

if.then41.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  %382 = ptrtoint ptr %ratr_state42.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 4, ptr %ratr_state42.i, align 1
  br label %if.end47.i

if.else43.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  %383 = ptrtoint ptr %ratr_state42.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 5, ptr %ratr_state42.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else43.i, %if.then41.i, %if.then34.i, %if.then29.i
  %384 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %pre_ratr_state.i, align 4
  %ratr_state50.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 22, i32 1
  %386 = ptrtoint ptr %ratr_state50.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %ratr_state50.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %385, i8 %387)
  %cmp52.not.i = icmp eq i8 %385, %387
  br i1 %cmp52.not.i, label %if.end47.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, label %if.then54.i

if.end47.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

if.then54.i:                                      ; preds = %if.end47.i
  %conv51.i = zext i8 %387 to i32
  %conv49.i = zext i8 %385 to i32
  %388 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %undec_sm_pwdb.i, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %353, i64 noundef 2048, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %389, i32 noundef %conv51.i, i32 noundef %conv49.i, i32 noundef %conv51.i) #7
  %390 = call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i.i = and i32 %390, -16384
  %391 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %391, i32 0, i32 1
  %392 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i50 = add i32 %393, 1
  store volatile i32 %add.i.i.i.i50, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i51 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i51, label %if.then54.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then54.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then54.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i52 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i52, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i53

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i53:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i53, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then54.i.rcu_read_lock.exit.i_crit_edge
  %bssid.i = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 9, i32 34
  %394 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %priv.i, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %395, i32 0, i32 9, i32 7
  %396 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %vif.i.i, align 4
  %call.i109.i = call ptr @ieee80211_find_sta(ptr noundef %397, ptr noundef %bssid.i) #7
  %tobool64.not.i54 = icmp eq ptr %call.i109.i, null
  br i1 %tobool64.not.i54, label %rcu_read_lock.exit.i.if.end67.i_crit_edge, label %if.then65.i57

rcu_read_lock.exit.i.if.end67.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then65.i57:                                    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i55 = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 32
  %398 = ptrtoint ptr %cfg.i55 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %cfg.i55, align 8
  %ops.i56 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %399, i32 0, i32 4
  %400 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ops.i56, align 4
  %update_rate_tbl.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %401, i32 0, i32 21
  %402 = ptrtoint ptr %update_rate_tbl.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %update_rate_tbl.i, align 4
  %404 = ptrtoint ptr %ratr_state50.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %ratr_state50.i, align 1
  call void %403(ptr noundef %hw, ptr noundef nonnull %call.i109.i, i8 noundef zeroext %405, i1 noundef zeroext true) #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i57, %rcu_read_lock.exit.i.if.end67.i_crit_edge
  %call.i110.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i110.i, label %if.end67.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i113.i

if.end67.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i113.i:                             ; preds = %if.end67.i
  %call1.i111.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %tobool.not.i112.i = icmp eq i32 %call1.i111.i, 0
  br i1 %tobool.not.i112.i, label %land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i115.i

land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i115.i:                            ; preds = %land.lhs.true.i113.i
  %.b4.i114.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114.i, label %land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i116.i

land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i116.i:                                   ; preds = %land.lhs.true2.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i116.i, %land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge, %if.end67.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %406 = call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i117.i = and i32 %406, -16384
  %407 = inttoptr i32 %and.i.i.i.i.i117.i to ptr
  %preempt_count.i.i.i.i118.i = getelementptr inbounds %struct.thread_info, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %preempt_count.i.i.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load volatile i32, ptr %preempt_count.i.i.i.i118.i, align 4
  %sub.i.i.i.i58 = add i32 %409, -1
  store volatile i32 %sub.i.i.i.i58, ptr %preempt_count.i.i.i.i118.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %410 = ptrtoint ptr %ratr_state50.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %ratr_state50.i, align 1
  %412 = ptrtoint ptr %pre_ratr_state.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %411, ptr %pre_ratr_state.i, align 4
  br label %_rtl92s_dm_refresh_rateadaptive_mask.exit

_rtl92s_dm_refresh_rateadaptive_mask.exit:        ; preds = %rcu_read_unlock.exit.i, %if.end47.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, %land.lhs.true18.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, %if.end15.i._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, %if.end.i44._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge, %_rtl92s_dm_dynamic_txpower.exit._rtl92s_dm_refresh_rateadaptive_mask.exit_crit_edge
  %413 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_mrc.i) #7
  %415 = ptrtoint ptr %current_mrc.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 -1, ptr %current_mrc.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable_mrc.i) #7
  %416 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 1, ptr %enable_mrc.i, align 1
  %state.i.i60 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 10, i32 14
  %417 = ptrtoint ptr %state.i.i60 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %state.i.i60, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %cmp.i.i61 = icmp eq i8 %418, 0
  br i1 %cmp.i.i61, label %_rtl92s_dm_refresh_rateadaptive_mask.exit._rtl92s_dm_switch_baseband_mrc.exit_crit_edge, label %if.end.i63

_rtl92s_dm_refresh_rateadaptive_mask.exit._rtl92s_dm_switch_baseband_mrc.exit_crit_edge: ; preds = %_rtl92s_dm_refresh_rateadaptive_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_switch_baseband_mrc.exit

if.end.i63:                                       ; preds = %_rtl92s_dm_refresh_rateadaptive_mask.exit
  %rf_type.i62 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 14, i32 4
  %419 = ptrtoint ptr %rf_type.i62 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %rf_type.i62, align 1
  %421 = zext i8 %420 to i64
  call void @__sanitizer_cov_trace_switch(i64 %421, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %420, label %if.end10.i [
    i8 0, label %if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge
    i8 2, label %if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge82
  ]

if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge82: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_switch_baseband_mrc.exit

if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge: ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_switch_baseband_mrc.exit

if.end10.i:                                       ; preds = %if.end.i63
  %cfg.i64 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 32
  %422 = ptrtoint ptr %cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %cfg.i64, align 8
  %ops.i65 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %423, i32 0, i32 4
  %424 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ops.i65, align 4
  %get_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %425, i32 0, i32 19
  %426 = ptrtoint ptr %get_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %get_hw_reg.i, align 4
  call void %427(ptr noundef %hw, i8 noundef zeroext 93, ptr noundef nonnull %current_mrc.i) #7
  %link_state.i66 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 9, i32 10
  %428 = ptrtoint ptr %link_state.i66 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %link_state.i66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %429)
  %cmp11.i = icmp ugt i32 %429, 1
  br i1 %cmp11.i, label %if.then13.i, label %if.end10.i.if.end21.i_crit_edge

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end10.i
  %undec_sm_pwdb.i67 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 15, i32 2
  %430 = ptrtoint ptr %undec_sm_pwdb.i67 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %undec_sm_pwdb.i67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %cmp14.i = icmp sgt i32 %431, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.then13.i.if.end21.i_crit_edge

if.then13.i.if.end21.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_rssi_percentage.i = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 24, i32 17
  %432 = ptrtoint ptr %rx_rssi_percentage.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %rx_rssi_percentage.i, align 8
  %arrayidx19.i = getelementptr %struct.rtl_priv, ptr %414, i32 0, i32 24, i32 17, i32 1
  %434 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx19.i, align 1
  %phi.cast.i = zext i8 %433 to i32
  %phi.cast111.i = zext i8 %435 to i32
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then13.i.if.end21.i_crit_edge, %if.end10.i.if.end21.i_crit_edge
  %rssi_a.0.i = phi i32 [ %phi.cast.i, %if.then16.i ], [ 0, %if.then13.i.if.end21.i_crit_edge ], [ 0, %if.end10.i.if.end21.i_crit_edge ]
  %rssi_b.0.i = phi i32 [ %phi.cast111.i, %if.then16.i ], [ 0, %if.then13.i.if.end21.i_crit_edge ], [ 0, %if.end10.i.if.end21.i_crit_edge ]
  %mode.i68 = getelementptr inbounds %struct.rtl_priv, ptr %414, i32 0, i32 9, i32 42
  %436 = ptrtoint ptr %mode.i68 to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %mode.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %437)
  %cmp23.not.i = icmp eq i16 %437, 2
  br i1 %cmp23.not.i, label %if.end21.i.if.end72.i_crit_edge, label %if.then25.i70

if.end21.i.if.end72.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then25.i70:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rssi_a.0.i)
  %cmp27.i69 = icmp eq i32 %rssi_a.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rssi_b.0.i)
  %cmp30.i = icmp eq i32 %rssi_b.0.i, 0
  %or.cond.i = select i1 %cmp27.i69, i1 %cmp30.i, i1 false
  br i1 %or.cond.i, label %if.then32.i, label %if.else.i71

if.then32.i:                                      ; preds = %if.then25.i70
  call void @__sanitizer_cov_trace_pc() #9
  %438 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 1, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else.i71:                                      ; preds = %if.then25.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %rssi_b.0.i)
  %cmp34.i = icmp ugt i32 %rssi_b.0.i, 30
  br i1 %cmp34.i, label %if.then36.i, label %if.else37.i

if.then36.i:                                      ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #9
  %439 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 1, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else37.i:                                      ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rssi_b.0.i)
  %cmp39.i72 = icmp ult i32 %rssi_b.0.i, 5
  br i1 %cmp39.i72, label %if.then41.i73, label %if.else42.i

if.then41.i73:                                    ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #9
  %440 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 0, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else42.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rssi_a.0.i)
  %cmp44.i = icmp ult i32 %rssi_a.0.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %rssi_a.0.i, i32 %rssi_b.0.i)
  %cmp49.not.i = icmp ult i32 %rssi_a.0.i, %rssi_b.0.i
  %or.cond112.i = select i1 %cmp44.i, i1 true, i1 %cmp49.not.i
  br i1 %or.cond112.i, label %if.else67.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.else42.i
  %sub.i74 = sub nsw i32 %rssi_a.0.i, %rssi_b.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i74)
  %cmp54.i = icmp sgt i32 %sub.i74, 15
  br i1 %cmp54.i, label %if.then56.i, label %if.else57.i

if.then56.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  %441 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 0, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else57.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub.i74)
  %cmp61.i = icmp slt i32 %sub.i74, 10
  br i1 %cmp61.i, label %if.then63.i, label %if.else64.i

if.then63.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #9
  %442 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 1, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else64.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #9
  %443 = ptrtoint ptr %current_mrc.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %current_mrc.i, align 1, !range !45
  %445 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %444, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.else67.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #9
  %446 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 1, ptr %enable_mrc.i, align 1
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else67.i, %if.else64.i, %if.then63.i, %if.then56.i, %if.then41.i73, %if.then36.i, %if.then32.i, %if.end21.i.if.end72.i_crit_edge
  %447 = ptrtoint ptr %enable_mrc.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %enable_mrc.i, align 1, !range !45
  %449 = ptrtoint ptr %current_mrc.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %current_mrc.i, align 1, !range !45
  call void @__sanitizer_cov_trace_cmp1(i8 %448, i8 %450)
  %cmp77.not.i = icmp eq i8 %448, %450
  br i1 %cmp77.not.i, label %if.end72.i._rtl92s_dm_switch_baseband_mrc.exit_crit_edge, label %if.then79.i

if.end72.i._rtl92s_dm_switch_baseband_mrc.exit_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92s_dm_switch_baseband_mrc.exit

if.then79.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %451 = ptrtoint ptr %cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %cfg.i64, align 8
  %ops81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %452, i32 0, i32 4
  %453 = ptrtoint ptr %ops81.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %ops81.i, align 4
  %set_hw_reg.i75 = getelementptr inbounds %struct.rtl_hal_ops, ptr %454, i32 0, i32 20
  %455 = ptrtoint ptr %set_hw_reg.i75 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %set_hw_reg.i75, align 4
  call void %456(ptr noundef %hw, i8 noundef zeroext 93, ptr noundef nonnull %enable_mrc.i) #7
  br label %_rtl92s_dm_switch_baseband_mrc.exit

_rtl92s_dm_switch_baseband_mrc.exit:              ; preds = %if.then79.i, %if.end72.i._rtl92s_dm_switch_baseband_mrc.exit_crit_edge, %if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge, %if.end.i63._rtl92s_dm_switch_baseband_mrc.exit_crit_edge82, %_rtl92s_dm_refresh_rateadaptive_mask.exit._rtl92s_dm_switch_baseband_mrc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable_mrc.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_mrc.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_txpower(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @_rtl92s_dm_check_edca_turbo.last_txok_cnt, !1, !"last_txok_cnt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 51, i32 13}
!2 = !{ptr @_rtl92s_dm_check_edca_turbo.last_rxok_cnt, !3, !"last_rxok_cnt", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 52, i32 13}
!4 = !{ptr @edca_setting_ul, !5, !"edca_setting_ul", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 35, i32 18}
!6 = !{ptr @edca_setting_dl, !7, !"edca_setting_dl", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 13, i32 18}
!8 = !{ptr @edca_setting_dl_gmode, !9, !"edca_setting_dl_gmode", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 24, i32 18}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 147, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 161, i32 4}
!14 = distinct !{null, !15, !"initialized", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 435, i32 12}
!16 = distinct !{null, !17, !"force_write", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 435, i32 25}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 579, i32 3}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 591, i32 4}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 596, i32 4}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 603, i32 3}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/dm.c", i32 267, i32 4}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{i64 2149339456}
!47 = !{i64 2149339722}
!48 = !{!"auto-init"}
