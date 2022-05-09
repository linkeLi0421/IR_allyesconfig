; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.btc_coexist = type { i8, ptr, %struct.btc_board_info, %struct.btc_bt_info, %struct.btc_stack_info, i32, %struct.btc_bt_link_info, i8, i8, i8, i8, i8, i8, i8, %struct.btc_statistics, [10 x i8], %struct.completion, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btc_board_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.btc_stack_info = type { i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wifi_only_cfg = type { ptr, %struct.wifi_only_haldata, i32 }
%struct.wifi_only_haldata = type { i16, i8, i8, i8, i8 }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], Package Type = TFBGA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], Package Type = Non-TFBGA\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0A %-35s = %d/ %d/ %d/ %d/ %d\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"STA/vWifi/HS/p2pGo/p2pGc\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d / %d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Dot11 channel / HsChnl(High Speed)\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A %-35s = %d/ %d\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wifi rssi/ HS rssi\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A %-35s = %d/ %d/ %d \00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wifi link/ roam/ scan\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0A %-35s = %s / %s/ %s/ AP=%d \00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wifi freq/ bw/ traffic\00", [41 x i8] zeroinitializer }, align 32
@gl_btc_wifi_freq_string = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11b\00", [28 x i8] zeroinitializer }, align 32
@gl_btc_wifi_bw_string = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uplink\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"downlink\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0A %-35s = %s%s%s%s\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Power Status\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DC mode\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", IPS ON\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", LPS ON\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0A %-35s = %6ph (0x%x/0x%x)\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power mode cmd(lps/rpwm)\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.4G\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5G\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"11bg\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT20\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT40\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HT80\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HT160\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"btmpinfo wait req_num=%d wait=%ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"btmpinfo wait (req_num=%d) timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.halbtc_get_wifi_central_chnl = private unnamed_addr constant [29 x i8] c"halbtc_get_wifi_central_chnl\00", align 1
@halbtc_aggregation_check.pre_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s()<--dont leave lps under AP mode\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.halbtc_leave_lps = private unnamed_addr constant [17 x i8] c"halbtc_leave_lps\00", align 1
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s()<--dont enter lps under AP mode\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.halbtc_enter_lps = private unnamed_addr constant [17 x i8] c"halbtc_enter_lps\00", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.exhalbtc_bind_bt_coex_withadapter = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\00\03\04\05", [26 x i8] zeroinitializer }, align 32
@switch.table.exhalbtc_set_chip_type = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\00\03\04\05", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.40 = internal global [41 x i64] [i64 39, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.41 = internal global [25 x i64] [i64 23, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 17, i64 18, i64 19, i64 22, i64 23, i64 24, i64 25, i64 26, i64 28, i64 30]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 11, i64 13]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1359, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1362, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 824, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 825, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 835, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 836, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 841, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 842, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 848, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 849, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 862, i32 16 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 863, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"gl_btc_wifi_freq_string\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 18, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 865, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"gl_btc_wifi_bw_string\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 10, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 867, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 868, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 869, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 877, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 878, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 879, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 880, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 880, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 881, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 885, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 886, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 19, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 20, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 11, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 12, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 13, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 14, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 15, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 240, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 245, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 119, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"pre_time\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 347, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 265, i32 3 }
@___asan_gen_.200 = private constant [65 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 287, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 87, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [47 x i8] c"switch.table.exhalbtc_bind_bt_coex_withadapter\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [36 x i8] c"switch.table.exhalbtc_set_chip_type\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @gl_btc_wifi_freq_string, ptr @.str.12, ptr @gl_btc_wifi_bw_string, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @halbtc_aggregation_check.pre_time, ptr @.str.36, ptr @.str.37, ptr @init_completion.__key, ptr @.str.38, ptr @switch.table.exhalbtc_bind_bt_coex_withadapter, ptr @switch.table.exhalbtc_set_chip_type], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl_btc_wifi_freq_string to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl_btc_wifi_bw_string to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halbtc_aggregation_check.pre_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exhalbtc_bind_bt_coex_withadapter to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exhalbtc_set_chip_type to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @halbtc_is_wifi_uplink(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_busy_traffic = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 25, i32 7
  %0 = ptrtoint ptr %tx_busy_traffic to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_busy_traffic, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @halbtc_send_wifi_port_id_cmd(ptr nocapture noundef readonly %bt_context) local_unnamed_addr #2 align 64 {
entry:
  %cmd_buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_buf) #9
  %2 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cmd_buf, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_hal_ops, ptr %6, i32 0, i32 64
  %7 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fill_h2c_cmd, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  call void %8(ptr noundef %10, i8 noundef zeroext 113, i32 noundef 1, ptr noundef nonnull %cmd_buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @halbtc_set_default_port_id_cmd(ptr nocapture noundef readonly %bt_context) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_default_port_id_cmd = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %set_default_port_id_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_default_port_id_cmd, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 8
  tail call void %7(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @exhalbtc_initlize_variables(ptr nocapture noundef readonly %rtlpriv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %btc_read_1byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %btc_read_1byte to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @halbtc_read_1byte, ptr %btc_read_1byte, align 4
  %btc_write_1byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %btc_write_1byte to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @halbtc_write_1byte, ptr %btc_write_1byte, align 4
  %btc_write_1byte_bitmask = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %btc_write_1byte_bitmask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @halbtc_bitmask_write_1byte, ptr %btc_write_1byte_bitmask, align 4
  %btc_read_2byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %btc_read_2byte to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @halbtc_read_2byte, ptr %btc_read_2byte, align 4
  %btc_write_2byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %btc_write_2byte to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @halbtc_write_2byte, ptr %btc_write_2byte, align 4
  %btc_read_4byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %btc_read_4byte to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @halbtc_read_4byte, ptr %btc_read_4byte, align 4
  %btc_write_4byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %btc_write_4byte to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @halbtc_write_4byte, ptr %btc_write_4byte, align 4
  %btc_write_local_reg_1byte = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %btc_write_local_reg_1byte to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @halbtc_write_local_reg_1byte, ptr %btc_write_local_reg_1byte, align 4
  %btc_set_bb_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %btc_set_bb_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @halbtc_set_bbreg, ptr %btc_set_bb_reg, align 4
  %btc_get_bb_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %btc_get_bb_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @halbtc_get_bbreg, ptr %btc_get_bb_reg, align 4
  %btc_set_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %btc_set_rf_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @halbtc_set_rfreg, ptr %btc_set_rf_reg, align 4
  %btc_get_rf_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %btc_get_rf_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @halbtc_get_rfreg, ptr %btc_get_rf_reg, align 4
  %btc_fill_h2c = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 29
  %14 = ptrtoint ptr %btc_fill_h2c to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @halbtc_fill_h2c_cmd, ptr %btc_fill_h2c, align 4
  %btc_disp_dbg_msg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 30
  %15 = ptrtoint ptr %btc_disp_dbg_msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @halbtc_display_dbg_msg, ptr %btc_disp_dbg_msg, align 4
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 31
  %16 = ptrtoint ptr %btc_get to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @halbtc_get, ptr %btc_get, align 4
  %btc_set = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %btc_set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @halbtc_set, ptr %btc_set, align 4
  %btc_set_bt_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %btc_set_bt_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @halbtc_set_bt_reg, ptr %btc_set_bt_reg, align 4
  %btc_get_bt_reg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %btc_get_bt_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @halbtc_get_bt_reg, ptr %btc_get_bt_reg, align 4
  %bt_ctrl_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 10
  %20 = ptrtoint ptr %bt_ctrl_buf_size to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bt_ctrl_buf_size, align 2
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %agg_buf_size, align 2
  %increase_scan_dev_num = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 11
  %22 = ptrtoint ptr %increase_scan_dev_num to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %increase_scan_dev_num, align 1
  %btc_get_bt_coex_supported_feature = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 35
  %23 = ptrtoint ptr %btc_get_bt_coex_supported_feature to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @halbtc_get_bt_coex_supported_feature, ptr %btc_get_bt_coex_supported_feature, align 4
  %btc_get_bt_coex_supported_version = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 36
  %24 = ptrtoint ptr %btc_get_bt_coex_supported_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @halbtc_get_bt_coex_supported_version, ptr %btc_get_bt_coex_supported_version, align 4
  %btc_get_bt_phydm_version = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 37
  %25 = ptrtoint ptr %btc_get_bt_phydm_version to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @halbtc_get_phydm_version, ptr %btc_get_bt_phydm_version, align 4
  %btc_phydm_modify_ra_pcr_threshold = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 38
  %26 = ptrtoint ptr %btc_phydm_modify_ra_pcr_threshold to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @halbtc_phydm_modify_ra_pcr_threshold, ptr %btc_phydm_modify_ra_pcr_threshold, align 4
  %btc_phydm_query_phy_counter = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 39
  %27 = ptrtoint ptr %btc_phydm_query_phy_counter to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @halbtc_phydm_query_phy_counter, ptr %btc_phydm_query_phy_counter, align 4
  %btc_get_ant_det_val_from_bt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 40
  %28 = ptrtoint ptr %btc_get_ant_det_val_from_bt to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @halbtc_get_ant_det_val_from_bt, ptr %btc_get_ant_det_val_from_bt, align 4
  %btc_get_ble_scan_type_from_bt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 41
  %29 = ptrtoint ptr %btc_get_ble_scan_type_from_bt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @halbtc_get_ble_scan_type_from_bt, ptr %btc_get_ble_scan_type_from_bt, align 4
  %btc_get_ble_scan_para_from_bt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 42
  %30 = ptrtoint ptr %btc_get_ble_scan_para_from_bt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @halbtc_get_ble_scan_para_from_bt, ptr %btc_get_ble_scan_para_from_bt, align 4
  %btc_get_bt_afh_map_from_bt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 43
  %31 = ptrtoint ptr %btc_get_bt_afh_map_from_bt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @halbtc_get_bt_afh_map_from_bt, ptr %btc_get_bt_afh_map_from_bt, align 4
  %bt_mp_comp = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %bt_mp_comp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bt_mp_comp, align 4
  %wait.i = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %33 = xor i1 %tobool.not, true
  ret i1 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @halbtc_read_1byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef %reg_addr) #9
  ret i8 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_write_1byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %conv = trunc i32 %data to i8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %reg_addr, i8 noundef zeroext %conv) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef %reg_addr) #9
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_bitmask_write_1byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i32 noundef %bit_mask, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bit_mask)
  %cmp.not = icmp eq i32 %bit_mask, -1
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef %reg_addr) #9
  %4 = and i32 %bit_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.cond, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.then
  %5 = and i32 %bit_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %6 = and i32 %bit_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.2 = icmp eq i32 %6, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %7 = and i32 %bit_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.3 = icmp eq i32 %7, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %8 = and i32 %bit_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.4 = icmp eq i32 %8, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %9 = and i32 %bit_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.5 = icmp eq i32 %9, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %10 = and i32 %bit_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.6 = icmp eq i32 %10, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = and i32 %bit_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.7 = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %conv.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 2, %for.cond.1.for.end_crit_edge ], [ 3, %for.cond.2.for.end_crit_edge ], [ 4, %for.cond.3.for.end_crit_edge ], [ 5, %for.cond.4.for.end_crit_edge ], [ 6, %for.cond.5.for.end_crit_edge ], [ %spec.select, %for.cond.6 ]
  %conv5 = zext i8 %call.i to i32
  %neg = xor i32 %bit_mask, -1
  %and6 = and i32 %conv5, %neg
  %conv7 = zext i8 %data to i32
  %shl = shl nuw nsw i32 %conv7, %conv.lcssa
  %and9 = and i32 %shl, %bit_mask
  %or = or i32 %and9, %and6
  %conv10 = trunc i32 %or to i8
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry.if.end11_crit_edge
  %data.addr.0 = phi i8 [ %conv10, %for.end ], [ %data, %entry.if.end11_crit_edge ]
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef %reg_addr, i8 noundef zeroext %data.addr.0) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end11.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end11.rtl_write_byte.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %read8_sync.i21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %read8_sync.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i21, align 4
  %call.i22 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef %reg_addr) #9
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end11.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @halbtc_read_2byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %2 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %3(ptr noundef %1, i32 noundef %reg_addr) #9
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_write_2byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %reg_addr, i16 noundef zeroext %data) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef %reg_addr) #9
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_read_4byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %reg_addr) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_write_4byte(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %reg_addr, i32 noundef %data) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef %reg_addr) #9
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_write_local_reg_1byte(ptr nocapture noundef readonly %btc_context, i32 noundef %reg_addr, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %chip_interface = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 5
  %2 = ptrtoint ptr %chip_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end9_crit_edge [
    i32 2, label %if.then7
    i32 1, label %if.then3
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then3:                                         ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef %reg_addr, i8 noundef zeroext %data) #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then3.if.end9_crit_edge, label %if.then3.if.end9.sink.split_crit_edge

if.then3.if.end9.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %entry
  %write8_async.i16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %write8_async.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i16, align 4
  tail call void %12(ptr noundef %1, i32 noundef %reg_addr, i8 noundef zeroext %data) #9
  %cfg.i17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i17, align 8
  %write_readback.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i18, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i19 = icmp eq i8 %16, 0
  br i1 %tobool.not.i19, label %if.then7.if.end9_crit_edge, label %if.then7.if.end9.sink.split_crit_edge

if.then7.if.end9.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.sink.split:                               ; preds = %if.then7.if.end9.sink.split_crit_edge, %if.then3.if.end9.sink.split_crit_edge
  %read8_sync.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %read8_sync.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i20, align 4
  %call.i21 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef %reg_addr) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.then7.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_set_bbreg(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i32 noundef %bit_mask, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
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
  tail call void %11(ptr noundef %3, i32 noundef %reg_addr, i32 noundef %bit_mask, i32 noundef %data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_get_bbreg(ptr nocapture noundef readonly %bt_context, i32 noundef %reg_addr, i32 noundef %bit_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %11(ptr noundef %3, i32 noundef %reg_addr, i32 noundef %bit_mask) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_set_rfreg(ptr nocapture noundef readonly %bt_context, i8 noundef zeroext %rf_path, i32 noundef %reg_addr, i32 noundef %bit_mask, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %conv = zext i8 %rf_path to i32
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 48
  %10 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %11(ptr noundef %3, i32 noundef %conv, i32 noundef %reg_addr, i32 noundef %bit_mask, i32 noundef %data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_get_rfreg(ptr nocapture noundef readonly %bt_context, i8 noundef zeroext %rf_path, i32 noundef %reg_addr, i32 noundef %bit_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %conv = zext i8 %rf_path to i32
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = tail call i32 %11(ptr noundef %3, i32 noundef %conv, i32 noundef %reg_addr, i32 noundef %bit_mask) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_fill_h2c_cmd(ptr nocapture noundef readonly %bt_context, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr noundef %cmd_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %fill_h2c_cmd = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %fill_h2c_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fill_h2c_cmd, align 4
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 6
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  tail call void %7(ptr noundef %9, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr noundef %cmd_buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_display_dbg_msg(ptr noundef %bt_context, i8 noundef zeroext %disp_type, ptr noundef %m) #2 align 64 {
entry:
  %wifi_rssi.i = alloca i32, align 4
  %bt_hs_rssi.i = alloca i32, align 4
  %scan.i = alloca i8, align 1
  %link.i = alloca i8, align 1
  %roam.i = alloca i8, align 1
  %wifi_busy.i = alloca i8, align 1
  %wifi_under_b_mode.i = alloca i8, align 1
  %wifi_under_5g.i = alloca i8, align 1
  %wifi_bw.i = alloca i32, align 4
  %wifi_traffic_dir.i = alloca i32, align 4
  %bt_hs_on.i = alloca i8, align 1
  %wifi_chnl.i = alloca i8, align 1
  %wifi_hs_chnl.i = alloca i8, align 1
  %ap_num.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %disp_type)
  %cond = icmp eq i8 %disp_type, 4
  br i1 %cond, label %sw.bb2, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 1
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_rssi.i) #9
  %2 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wifi_rssi.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_hs_rssi.i) #9
  %3 = ptrtoint ptr %bt_hs_rssi.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bt_hs_rssi.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scan.i) #9
  %4 = ptrtoint ptr %scan.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %scan.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link.i) #9
  %5 = ptrtoint ptr %link.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %link.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %roam.i) #9
  %6 = ptrtoint ptr %roam.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %roam.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_busy.i) #9
  %7 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %wifi_busy.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #9
  %8 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %wifi_under_b_mode.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g.i) #9
  %9 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %wifi_under_5g.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_bw.i) #9
  %10 = ptrtoint ptr %wifi_bw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %wifi_bw.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wifi_traffic_dir.i) #9
  %11 = ptrtoint ptr %wifi_traffic_dir.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wifi_traffic_dir.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bt_hs_on.i) #9
  %12 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bt_hs_on.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_chnl.i) #9
  %13 = ptrtoint ptr %wifi_chnl.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %wifi_chnl.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_hs_chnl.i) #9
  %14 = ptrtoint ptr %wifi_hs_chnl.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %wifi_hs_chnl.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_num.i) #9
  %15 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ap_num.i, align 1
  %opmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %16 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opmode.i.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %17, label %sw.bb2..thread.i.i_crit_edge [
    i32 2, label %if.end.thread.i.i
    i32 1, label %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge
    i32 7, label %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge7
    i32 3, label %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge8
  ]

sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge8: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit.i.i

sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge7: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit.i.i

sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit.i.i

sw.bb2..thread.i.i_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i.i

if.end.thread.i.i:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %link_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %19 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp1.i.i = icmp ugt i32 %20, 1
  %spec.select.i.i = zext i1 %cmp1.i.i to i32
  br label %.thread.i.i

is_any_client_connect_to_ap.exit.i.i:             ; preds = %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge, %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge7, %sw.bb2.is_any_client_connect_to_ap.exit.i.i_crit_edge8
  %entry_list_lock.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i.i.i) #9
  %entry_list.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 28
  %21 = ptrtoint ptr %entry_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %entry_list.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %22, %entry_list.i.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i.i.i) #9
  br i1 %cmp.i.i.not.i.i, label %is_any_client_connect_to_ap.exit.i.i..thread.i.i_crit_edge, label %is_any_client_connect_to_ap.exit.i.i.halbtc_get_wifi_link_status.exit.i_crit_edge

is_any_client_connect_to_ap.exit.i.i.halbtc_get_wifi_link_status.exit.i_crit_edge: ; preds = %is_any_client_connect_to_ap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_get_wifi_link_status.exit.i

is_any_client_connect_to_ap.exit.i.i..thread.i.i_crit_edge: ; preds = %is_any_client_connect_to_ap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %is_any_client_connect_to_ap.exit.i.i..thread.i.i_crit_edge, %if.end.thread.i.i, %sw.bb2..thread.i.i_crit_edge
  %num_of_connected_port.01419.ph.i.i = phi i32 [ 0, %is_any_client_connect_to_ap.exit.i.i..thread.i.i_crit_edge ], [ %spec.select.i.i, %if.end.thread.i.i ], [ 0, %sw.bb2..thread.i.i_crit_edge ]
  br label %halbtc_get_wifi_link_status.exit.i

halbtc_get_wifi_link_status.exit.i:               ; preds = %.thread.i.i, %is_any_client_connect_to_ap.exit.i.i.halbtc_get_wifi_link_status.exit.i_crit_edge
  %23 = phi i32 [ %num_of_connected_port.01419.ph.i.i, %.thread.i.i ], [ 2, %is_any_client_connect_to_ap.exit.i.i.halbtc_get_wifi_link_status.exit.i_crit_edge ]
  %and.i = and i32 %23, 1
  %and1.i = lshr i32 %23, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %and.i, i32 noundef %and1.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 31
  %24 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %btc_get.i, align 4
  %call13.i = call zeroext i1 %25(ptr noundef %bt_context, i8 noundef zeroext 0, ptr noundef nonnull %bt_hs_on.i) #9
  %26 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %btc_get.i, align 4
  %call15.i = call zeroext i1 %27(ptr noundef %bt_context, i8 noundef zeroext 37, ptr noundef nonnull %wifi_chnl.i) #9
  %28 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %btc_get.i, align 4
  %call17.i = call zeroext i1 %29(ptr noundef %bt_context, i8 noundef zeroext 39, ptr noundef nonnull %wifi_hs_chnl.i) #9
  %30 = ptrtoint ptr %wifi_chnl.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %wifi_chnl.i, align 1
  %conv.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %wifi_hs_chnl.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wifi_hs_chnl.i, align 1
  %conv18.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %bt_hs_on.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bt_hs_on.i, align 1, !range !97
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef %conv18.i, i32 noundef %36) #9
  %37 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %btc_get.i, align 4
  %call22.i = call zeroext i1 %38(ptr noundef %bt_context, i8 noundef zeroext 22, ptr noundef nonnull %wifi_rssi.i) #9
  %39 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %btc_get.i, align 4
  %call24.i = call zeroext i1 %40(ptr noundef %bt_context, i8 noundef zeroext 23, ptr noundef nonnull %bt_hs_rssi.i) #9
  %41 = ptrtoint ptr %wifi_rssi.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wifi_rssi.i, align 4
  %sub.i = add i32 %42, -100
  %43 = ptrtoint ptr %bt_hs_rssi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bt_hs_rssi.i, align 4
  %sub25.i = add i32 %44, -100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %sub.i, i32 noundef %sub25.i) #9
  %45 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %btc_get.i, align 4
  %call27.i = call zeroext i1 %46(ptr noundef %bt_context, i8 noundef zeroext 5, ptr noundef nonnull %scan.i) #9
  %47 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btc_get.i, align 4
  %call29.i = call zeroext i1 %48(ptr noundef %bt_context, i8 noundef zeroext 6, ptr noundef nonnull %link.i) #9
  %49 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %btc_get.i, align 4
  %call31.i = call zeroext i1 %50(ptr noundef %bt_context, i8 noundef zeroext 11, ptr noundef nonnull %roam.i) #9
  %51 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %link.i, align 1, !range !97
  %53 = zext i8 %52 to i32
  %54 = ptrtoint ptr %roam.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %roam.i, align 1, !range !97
  %56 = zext i8 %55 to i32
  %57 = ptrtoint ptr %scan.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %scan.i, align 1, !range !97
  %59 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %53, i32 noundef %56, i32 noundef %59) #9
  %60 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %btc_get.i, align 4
  %call39.i = call zeroext i1 %61(ptr noundef %bt_context, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g.i) #9
  %62 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %btc_get.i, align 4
  %call41.i = call zeroext i1 %63(ptr noundef %bt_context, i8 noundef zeroext 24, ptr noundef nonnull %wifi_bw.i) #9
  %64 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %btc_get.i, align 4
  %call43.i = call zeroext i1 %65(ptr noundef %bt_context, i8 noundef zeroext 4, ptr noundef nonnull %wifi_busy.i) #9
  %66 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %btc_get.i, align 4
  %call45.i = call zeroext i1 %67(ptr noundef %bt_context, i8 noundef zeroext 25, ptr noundef nonnull %wifi_traffic_dir.i) #9
  %68 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %btc_get.i, align 4
  %call47.i = call zeroext i1 %69(ptr noundef %bt_context, i8 noundef zeroext 41, ptr noundef nonnull %ap_num.i) #9
  %70 = ptrtoint ptr %wifi_under_5g.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %wifi_under_5g.i, align 1, !range !97
  %72 = zext i8 %71 to i32
  %73 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %btc_get.i, align 4
  %call52.i = call zeroext i1 %74(ptr noundef %bt_context, i8 noundef zeroext 16, ptr noundef nonnull %wifi_under_b_mode.i) #9
  %arrayidx.i = getelementptr [2 x ptr], ptr @gl_btc_wifi_freq_string, i32 0, i32 %72
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %wifi_under_b_mode.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %wifi_under_b_mode.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool53.not.i = icmp eq i8 %78, 0
  br i1 %tobool53.not.i, label %cond.false.i, label %halbtc_get_wifi_link_status.exit.i.cond.end.i_crit_edge

halbtc_get_wifi_link_status.exit.i.cond.end.i_crit_edge: ; preds = %halbtc_get_wifi_link_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %halbtc_get_wifi_link_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %wifi_bw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wifi_bw.i, align 4
  %arrayidx55.i = getelementptr [5 x ptr], ptr @gl_btc_wifi_bw_string, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx55.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %halbtc_get_wifi_link_status.exit.i.cond.end.i_crit_edge
  %cond56.i = phi ptr [ %82, %cond.false.i ], [ @.str.12, %halbtc_get_wifi_link_status.exit.i.cond.end.i_crit_edge ]
  %83 = ptrtoint ptr %wifi_busy.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wifi_busy.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool57.not.i = icmp eq i8 %84, 0
  br i1 %tobool57.not.i, label %cond.end.i.halbtc_display_wifi_status.exit_crit_edge, label %cond.false59.i

cond.end.i.halbtc_display_wifi_status.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_display_wifi_status.exit

cond.false59.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %wifi_traffic_dir.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wifi_traffic_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i = icmp eq i32 %86, 0
  %cond61.i = select i1 %cmp.i, ptr @.str.14, ptr @.str.15
  br label %halbtc_display_wifi_status.exit

halbtc_display_wifi_status.exit:                  ; preds = %cond.false59.i, %cond.end.i.halbtc_display_wifi_status.exit_crit_edge
  %cond63.i = phi ptr [ %cond61.i, %cond.false59.i ], [ @.str.13, %cond.end.i.halbtc_display_wifi_status.exit_crit_edge ]
  %87 = ptrtoint ptr %ap_num.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ap_num.i, align 1
  %conv64.i = zext i8 %88 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %76, ptr noundef %cond56.i, ptr noundef nonnull %cond63.i, i32 noundef %conv64.i) #9
  %inactive_pwrstate.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 23
  %89 = ptrtoint ptr %inactive_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %inactive_pwrstate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp65.i = icmp eq i32 %90, 2
  %dot11_psmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 7
  %91 = ptrtoint ptr %dot11_psmode.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dot11_psmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp70.not.i = icmp eq i32 %92, 0
  %cond80.i = select i1 %cmp65.i, ptr @.str.20, ptr @.str.21
  %cond83.i = select i1 %cmp70.not.i, ptr @.str.21, ptr @.str.22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond80.i, ptr noundef nonnull %cond83.i, ptr noundef nonnull @.str.21) #9
  %pwr_mode_val.i = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 15
  %lps_val.i = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 3, i32 25
  %93 = ptrtoint ptr %lps_val.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %lps_val.i, align 2
  %conv87.i = zext i8 %94 to i32
  %rpwm_val.i = getelementptr inbounds %struct.btc_coexist, ptr %bt_context, i32 0, i32 3, i32 26
  %95 = ptrtoint ptr %rpwm_val.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rpwm_val.i, align 1
  %conv89.i = zext i8 %96 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %pwr_mode_val.i, i32 noundef %conv87.i, i32 noundef %conv89.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_num.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_hs_chnl.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_chnl.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bt_hs_on.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_traffic_dir.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_bw.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_b_mode.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_busy.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %roam.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scan.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_hs_rssi.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wifi_rssi.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %halbtc_display_wifi_status.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @halbtc_get(ptr noundef %void_btcoexist, i8 noundef zeroext %get_type, ptr noundef writeonly %out_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = ptrtoint ptr %void_btcoexist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %void_btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp ne i8 %3, 0
  %cmp.i = icmp ne ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %get_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %get_type, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb3
    i8 3, label %sw.bb14
    i8 4, label %sw.bb15
    i8 5, label %sw.bb19
    i8 6, label %sw.bb24
    i8 11, label %sw.bb31
    i8 12, label %sw.bb38
    i8 13, label %sw.bb42
    i8 14, label %sw.bb48
    i8 15, label %sw.bb55
    i8 16, label %sw.bb61
    i8 17, label %sw.bb69
    i8 18, label %sw.bb70
    i8 19, label %sw.bb71
    i8 21, label %sw.bb72
    i8 22, label %sw.bb73
    i8 23, label %sw.bb75
    i8 24, label %sw.bb76
    i8 25, label %sw.bb78
    i8 26, label %sw.bb83
    i8 27, label %sw.bb86
    i8 28, label %sw.bb88
    i8 29, label %sw.bb90
    i8 30, label %sw.bb91
    i8 31, label %sw.bb93
    i8 32, label %sw.bb95
    i8 33, label %sw.bb97
    i8 34, label %sw.bb99
    i8 35, label %sw.bb101
    i8 36, label %sw.bb104
    i8 37, label %sw.bb107
    i8 38, label %sw.bb108
    i8 39, label %sw.bb110
    i8 41, label %sw.bb111
    i8 42, label %sw.bb114
    i8 43, label %sw.bb115
    i8 44, label %sw.bb116
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %7 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %land.lhs.true, label %sw.bb3.if.end10_crit_edge

sw.bb3.if.end10_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7 = icmp ugt i32 %10, 1
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %sw.bb3.if.end10_crit_edge
  %tmp.0.off0 = phi i1 [ false, %sw.bb3.if.end10_crit_edge ], [ %cmp7, %land.lhs.true ]
  %call11 = tail call fastcc zeroext i1 @is_any_client_connect_to_ap(ptr noundef %void_btcoexist)
  %spec.select208 = select i1 %call11, i1 true, i1 %tmp.0.off0
  %frombool = zext i1 %spec.select208 to i8
  %11 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %out_buf, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %busytraffic.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 6
  %13 = ptrtoint ptr %busytraffic.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %busytraffic.i, align 8, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i209.not = icmp eq i8 %14, 0
  br i1 %tobool.not.i209.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %17 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %act_scanning, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else22:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %link_state25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %21 = ptrtoint ptr %link_state25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_state25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp26 = icmp eq i32 %22, 1
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else29:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %link_state32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %25 = ptrtoint ptr %link_state32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_state32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp33 = icmp eq i32 %26, 1
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else36:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %in_4way = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 5
  %29 = ptrtoint ptr %in_4way to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_4way, align 1, !range !97
  %31 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %out_buf, align 1
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %32 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp43 = icmp eq i32 %33, 1
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else46:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  %opmode49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %36 = ptrtoint ptr %opmode49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opmode49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp50 = icmp eq i32 %37, 3
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else53:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %40 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pairwise_enc_algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp56 = icmp eq i32 %41, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

if.else59:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %45)
  %cmp64 = icmp eq i16 %45, 2
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %out_buf, align 1
  br label %cleanup

if.else67:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb70:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb71:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb72:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %undec_sm_pwdb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 2
  %52 = ptrtoint ptr %undec_sm_pwdb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %undec_sm_pwdb.i, align 8
  %54 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %out_buf, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %out_buf, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %if.end
  %mode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %56 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mode.i.i, align 4
  %58 = add i16 %57, -2
  %switch.and.i.i = and i16 %58, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i16 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %sw.bb76.halbtc_get_wifi_bw.exit_crit_edge, label %if.else.i

sw.bb76.halbtc_get_wifi_bw.exit_crit_edge:        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_get_wifi_bw.exit

if.else.i:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %59 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %switch.selectcmp.i = icmp eq i8 %60, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %switch.selectcmp4.i = icmp eq i8 %60, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 3, i32 %switch.select.i
  br label %halbtc_get_wifi_bw.exit

halbtc_get_wifi_bw.exit:                          ; preds = %if.else.i, %sw.bb76.halbtc_get_wifi_bw.exit_crit_edge
  %wifi_bw.0.i = phi i32 [ 0, %sw.bb76.halbtc_get_wifi_bw.exit_crit_edge ], [ %switch.select5.i, %if.else.i ]
  %61 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %wifi_bw.0.i, ptr %out_buf, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.end
  %tx_busy_traffic.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 25, i32 7
  %62 = ptrtoint ptr %tx_busy_traffic.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tx_busy_traffic.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i211.not = icmp eq i8 %63, 0
  br i1 %tobool.not.i211.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %out_buf, align 4
  br label %cleanup

if.else81:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %out_buf, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %66 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %fw_version, align 4
  %conv84 = zext i16 %67 to i32
  %shl = shl nuw i32 %conv84, 16
  %fw_subversion = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 35
  %68 = ptrtoint ptr %fw_subversion to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %fw_subversion, align 2
  %conv85 = zext i16 %69 to i32
  %or = or i32 %shl, %conv85
  %70 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or, ptr %out_buf, align 4
  br label %cleanup

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call fastcc i32 @halbtc_get_wifi_link_status(ptr noundef %void_btcoexist)
  %71 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call87, ptr %out_buf, align 4
  br label %cleanup

sw.bb88:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call fastcc i32 @halbtc_get_bt_patch_version(ptr noundef %void_btcoexist)
  %72 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call89, ptr %out_buf, align 4
  br label %cleanup

sw.bb90:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %out_buf, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = tail call i32 @halbtc_get_bt_coex_supported_version(ptr noundef %void_btcoexist)
  %74 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call92, ptr %out_buf, align 4
  br label %cleanup

sw.bb93:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call94 = tail call i32 @halbtc_get_bt_coex_supported_feature(ptr noundef %void_btcoexist)
  %75 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call94, ptr %out_buf, align 4
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call96 = tail call fastcc i32 @halbtc_get_bt_device_info(ptr noundef %void_btcoexist)
  %76 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call96, ptr %out_buf, align 4
  br label %cleanup

sw.bb97:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = tail call fastcc i32 @halbtc_get_bt_forbidden_slot_val(ptr noundef %void_btcoexist)
  %77 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call98, ptr %out_buf, align 4
  br label %cleanup

sw.bb99:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %btc_phydm_query_phy_counter = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 39
  %78 = ptrtoint ptr %btc_phydm_query_phy_counter to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btc_phydm_query_phy_counter, align 4
  %call100 = tail call i32 %79(ptr noundef %void_btcoexist, i32 noundef 25) #9
  %80 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call100, ptr %out_buf, align 4
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %btc_phydm_query_phy_counter102 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 39
  %81 = ptrtoint ptr %btc_phydm_query_phy_counter102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %btc_phydm_query_phy_counter102, align 4
  %call103 = tail call i32 %82(ptr noundef %void_btcoexist, i32 noundef 26) #9
  %83 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call103, ptr %out_buf, align 4
  br label %cleanup

sw.bb104:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %btc_phydm_query_phy_counter105 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 39
  %84 = ptrtoint ptr %btc_phydm_query_phy_counter105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %btc_phydm_query_phy_counter105, align 4
  %call106 = tail call i32 %85(ptr noundef %void_btcoexist, i32 noundef 27) #9
  %86 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call106, ptr %out_buf, align 4
  br label %cleanup

sw.bb107:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %87 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %current_channel, align 1
  %89 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %out_buf, align 1
  br label %cleanup

sw.bb108:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = tail call fastcc zeroext i8 @halbtc_get_wifi_central_chnl(ptr noundef %void_btcoexist)
  %90 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %call109, ptr %out_buf, align 1
  br label %cleanup

sw.bb110:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb111:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ap_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 4
  %92 = ptrtoint ptr %ap_num to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ap_num, align 4
  %94 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %out_buf, align 1
  br label %cleanup

sw.bb114:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb115:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %out_buf, align 1
  br label %cleanup

sw.bb116:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pwr_mode_val = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 15
  %97 = ptrtoint ptr %pwr_mode_val to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pwr_mode_val, align 4
  %99 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %out_buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb111, %sw.bb110, %sw.bb108, %sw.bb107, %sw.bb104, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb83, %if.else81, %if.then80, %halbtc_get_wifi_bw.exit, %sw.bb75, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %if.else67, %if.then66, %if.else59, %if.then58, %if.else53, %if.then52, %if.else46, %if.then45, %sw.bb38, %if.else36, %if.then35, %if.else29, %if.then28, %if.else22, %if.then21, %if.else, %if.then17, %sw.bb14, %if.end10, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.bb116 ], [ true, %sw.bb115 ], [ true, %sw.bb114 ], [ true, %sw.bb111 ], [ false, %sw.bb110 ], [ true, %sw.bb108 ], [ true, %sw.bb107 ], [ true, %sw.bb104 ], [ true, %sw.bb101 ], [ true, %sw.bb99 ], [ true, %sw.bb97 ], [ true, %sw.bb95 ], [ true, %sw.bb93 ], [ true, %sw.bb91 ], [ true, %sw.bb90 ], [ true, %sw.bb88 ], [ true, %sw.bb86 ], [ true, %sw.bb83 ], [ true, %if.then80 ], [ true, %if.else81 ], [ true, %halbtc_get_wifi_bw.exit ], [ false, %sw.bb75 ], [ true, %sw.bb73 ], [ true, %sw.bb72 ], [ true, %sw.bb71 ], [ true, %sw.bb70 ], [ true, %sw.bb69 ], [ true, %if.then66 ], [ true, %if.else67 ], [ true, %if.then58 ], [ true, %if.else59 ], [ true, %if.then52 ], [ true, %if.else53 ], [ true, %if.then45 ], [ true, %if.else46 ], [ true, %sw.bb38 ], [ true, %if.then35 ], [ true, %if.else36 ], [ true, %if.then28 ], [ true, %if.else29 ], [ true, %if.then21 ], [ true, %if.else22 ], [ true, %if.then17 ], [ true, %if.else ], [ true, %sw.bb14 ], [ true, %if.end10 ], [ false, %sw.bb2 ], [ false, %sw.bb ], [ false, %if.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @halbtc_set(ptr noundef %void_btcoexist, i8 noundef zeroext %set_type, ptr nocapture noundef readonly %in_buf) #2 align 64 {
entry:
  %ap_enable.i103 = alloca i8, align 1
  %ap_enable.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %void_btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %void_btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %4 = zext i8 %set_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %set_type, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb5
    i8 3, label %sw.bb9
    i8 4, label %sw.bb13
    i8 5, label %sw.bb17
    i8 6, label %sw.bb21
    i8 7, label %sw.bb25
    i8 8, label %sw.bb29
    i8 9, label %sw.bb33
    i8 11, label %sw.bb35
    i8 12, label %sw.bb37
    i8 13, label %sw.bb38
    i8 17, label %sw.bb39
    i8 30, label %sw.bb52
    i8 18, label %sw.bb41
    i8 19, label %sw.bb43
    i8 22, label %sw.bb45
    i8 23, label %sw.bb46
    i8 24, label %sw.bb47
    i8 25, label %sw.bb48
    i8 26, label %sw.bb49
    i8 28, label %sw.bb50
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_buf, align 1, !range !97
  %bt_info = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3
  %7 = ptrtoint ptr %bt_info to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %bt_info, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_buf, align 1, !range !97
  %bt_busy = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %bt_busy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bt_busy, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_buf, align 1, !range !97
  %limited_dig = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %limited_dig to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %limited_dig, align 1
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_buf, align 1, !range !97
  %force_to_roam = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 23
  %16 = ptrtoint ptr %force_to_roam to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %force_to_roam, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %in_buf, align 1, !range !97
  %reject_agg_pkt = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %reject_agg_pkt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %reject_agg_pkt, align 1
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_buf, align 1, !range !97
  %bt_ctrl_agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 13
  %22 = ptrtoint ptr %bt_ctrl_agg_buf_size to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %bt_ctrl_agg_buf_size, align 1
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %in_buf, align 1, !range !97
  %increase_scan_dev_num = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 11
  %25 = ptrtoint ptr %increase_scan_dev_num to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %increase_scan_dev_num, align 1
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in_buf, align 1, !range !97
  %bt_tx_rx_mask = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 14
  %28 = ptrtoint ptr %bt_tx_rx_mask to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bt_tx_rx_mask, align 2
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_buf, align 1, !range !97
  %miracast_plus_bt = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %miracast_plus_bt, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %in_buf, align 1
  %rssi_adjust_for_agc_table_on = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %rssi_adjust_for_agc_table_on to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rssi_adjust_for_agc_table_on, align 1
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %in_buf, align 1
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %agg_buf_size, align 2
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %38 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = load i32, ptr @halbtc_aggregation_check.pre_time, align 4
  %sub.i = sub i32 %40, %41
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %call.i)
  %cmp.i97 = icmp ult i32 %call.i, 8001
  br i1 %cmp.i97, label %sw.bb38.cleanup_crit_edge, label %if.end.i

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb38
  store i32 %40, ptr @halbtc_aggregation_check.pre_time, align 4
  %reject_agg_pkt.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %reject_agg_pkt.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reject_agg_pkt.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i98 = icmp eq i8 %43, 0
  %pre_reject_agg_pkt7.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 8
  br i1 %tobool.not.i98, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %pre_reject_agg_pkt7.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %pre_reject_agg_pkt7.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %pre_reject_agg_pkt7.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pre_reject_agg_pkt7.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool8.not.i = icmp eq i8 %46, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then9.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pre_reject_agg_pkt7.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %pre_reject_agg_pkt7.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %if.else.i.if.end16.i_crit_edge
  %48 = xor i1 %tobool8.not.i, true
  %pre_bt_ctrl_agg_buf_size.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %pre_bt_ctrl_agg_buf_size.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pre_bt_ctrl_agg_buf_size.i, align 1, !range !97
  %bt_ctrl_agg_buf_size.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 13
  %51 = ptrtoint ptr %bt_ctrl_agg_buf_size.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bt_ctrl_agg_buf_size.i, align 1, !range !97
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp22.not.i = icmp eq i8 %50, %52
  br i1 %cmp22.not.i, label %if.end31.i, label %if.end31.thread.i

if.end31.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool34.not.i = icmp eq i8 %50, 0
  br i1 %tobool34.not.i, label %if.end48.i, label %if.then35.i

if.end31.thread.i:                                ; preds = %if.end16.i
  %53 = ptrtoint ptr %pre_bt_ctrl_agg_buf_size.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %pre_bt_ctrl_agg_buf_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool34.not75.i = icmp eq i8 %52, 0
  br i1 %tobool34.not75.i, label %if.end31.thread.i.if.then50.i_crit_edge, label %if.then35.thread.i

if.end31.thread.i.if.then50.i_crit_edge:          ; preds = %if.end31.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.then35.thread.i:                               ; preds = %if.end31.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %pre_agg_buf_size80.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 5
  %agg_buf_size81.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 6
  %54 = ptrtoint ptr %agg_buf_size81.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %agg_buf_size81.i, align 2
  %56 = ptrtoint ptr %pre_agg_buf_size80.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %pre_agg_buf_size80.i, align 1
  br label %if.then50.i

if.then35.i:                                      ; preds = %if.end31.i
  %pre_agg_buf_size.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 5
  %57 = ptrtoint ptr %pre_agg_buf_size.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pre_agg_buf_size.i, align 1
  %agg_buf_size.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 6
  %59 = ptrtoint ptr %agg_buf_size.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %agg_buf_size.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp40.not.i = icmp ne i8 %58, %60
  %spec.select.i = select i1 %cmp40.not.i, i1 true, i1 %48
  %61 = ptrtoint ptr %pre_agg_buf_size.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %pre_agg_buf_size.i, align 1
  br i1 %spec.select.i, label %if.then35.i.if.then50.i_crit_edge, label %if.then35.i.cleanup_crit_edge

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35.i.if.then50.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.end48.i:                                       ; preds = %if.end31.i
  br i1 %tobool8.not.i, label %if.end48.i.cleanup_crit_edge, label %if.end48.i.if.then50.i_crit_edge

if.end48.i.if.then50.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.end48.i.cleanup_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50.i:                                      ; preds = %if.end48.i.if.then50.i_crit_edge, %if.then35.i.if.then50.i_crit_edge, %if.then35.thread.i, %if.end31.thread.i.if.then50.i_crit_edge
  tail call void @rtl_rx_ampdu_apply(ptr noundef %39) #9
  br label %cleanup

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %in_buf, align 1
  %rssi_adjust_for_1ant_coex_type = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 2
  %64 = ptrtoint ptr %rssi_adjust_for_1ant_coex_type to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %rssi_adjust_for_1ant_coex_type, align 2
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %in_buf, align 1
  %lps_val = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 25
  %67 = ptrtoint ptr %lps_val to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %lps_val, align 2
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %in_buf, align 1
  %rpwm_val = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 26
  %70 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %rpwm_val, align 1
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i) #9
  %71 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ap_enable.i, align 1
  %72 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i, align 4
  %btc_get.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 31
  %74 = ptrtoint ptr %btc_get.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %btc_get.i, align 4
  %call.i100 = call zeroext i1 %75(ptr noundef %void_btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i) #9
  %76 = ptrtoint ptr %ap_enable.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ap_enable.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i101 = icmp eq i8 %77, 0
  br i1 %tobool.not.i101, label %if.end.i102, label %if.then.i

if.then.i:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %73, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.halbtc_leave_lps) #9
  br label %halbtc_leave_lps.exit

if.end.i102:                                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %bt_ctrl_lps.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 20
  %78 = ptrtoint ptr %bt_ctrl_lps.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %bt_ctrl_lps.i, align 1
  %bt_lps_on.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 22
  %79 = ptrtoint ptr %bt_lps_on.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %bt_lps_on.i, align 1
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 9, i32 6
  %80 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw.i, align 8
  call void @rtl_lps_leave(ptr noundef %81, i1 noundef zeroext false) #9
  br label %halbtc_leave_lps.exit

halbtc_leave_lps.exit:                            ; preds = %if.end.i102, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ap_enable.i103) #9
  %82 = ptrtoint ptr %ap_enable.i103 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %ap_enable.i103, align 1
  %83 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i, align 4
  %btc_get.i105 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 31
  %85 = ptrtoint ptr %btc_get.i105 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %btc_get.i105, align 4
  %call.i106 = call zeroext i1 %86(ptr noundef %void_btcoexist, i8 noundef zeroext 14, ptr noundef nonnull %ap_enable.i103) #9
  %87 = ptrtoint ptr %ap_enable.i103 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ap_enable.i103, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i107 = icmp eq i8 %88, 0
  br i1 %tobool.not.i107, label %if.end.i112, label %if.then.i108

if.then.i108:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %84, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.halbtc_enter_lps) #9
  br label %halbtc_enter_lps.exit

if.end.i112:                                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  %bt_ctrl_lps.i109 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 20
  %89 = ptrtoint ptr %bt_ctrl_lps.i109 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %bt_ctrl_lps.i109, align 1
  %bt_lps_on.i110 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 22
  %90 = ptrtoint ptr %bt_lps_on.i110 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %bt_lps_on.i110, align 1
  %hw.i111 = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 0, i32 9, i32 6
  %91 = ptrtoint ptr %hw.i111 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw.i111, align 8
  call void @rtl_lps_enter(ptr noundef %92, i1 noundef zeroext false) #9
  br label %halbtc_enter_lps.exit

halbtc_enter_lps.exit:                            ; preds = %if.end.i112, %if.then.i108
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ap_enable.i103) #9
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %bt_ctrl_lps.i113 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 20
  %93 = ptrtoint ptr %bt_ctrl_lps.i113 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bt_ctrl_lps.i113, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i114 = icmp eq i8 %94, 0
  br i1 %tobool.not.i114, label %sw.bb47.cleanup_crit_edge, label %if.then.i118

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i118:                                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i, align 4
  %bt_lps_on.i116 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 22
  %97 = ptrtoint ptr %bt_lps_on.i116 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %bt_lps_on.i116, align 1
  %hw.i117 = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 9, i32 6
  %98 = ptrtoint ptr %hw.i117 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw.i117, align 8
  tail call void @rtl_lps_leave(ptr noundef %99, i1 noundef zeroext false) #9
  %100 = ptrtoint ptr %bt_ctrl_lps.i113 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %bt_ctrl_lps.i113, align 1
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  %bt_ctrl_lps.i120 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 20
  %101 = ptrtoint ptr %bt_ctrl_lps.i120 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bt_ctrl_lps.i120, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i121 = icmp eq i8 %102, 0
  br i1 %tobool.not.i121, label %sw.bb48.cleanup_crit_edge, label %if.then.i125

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i125:                                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adapter.i, align 4
  %bt_lps_on.i123 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 22
  %105 = ptrtoint ptr %bt_lps_on.i123 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bt_lps_on.i123, align 1
  %hw.i124 = getelementptr inbounds %struct.rtl_priv, ptr %104, i32 0, i32 9, i32 6
  %106 = ptrtoint ptr %hw.i124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw.i124, align 8
  tail call void @rtl_lps_leave(ptr noundef %107, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %bt_ctrl_lps.i127 = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 20
  %108 = ptrtoint ptr %bt_ctrl_lps.i127 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bt_ctrl_lps.i127, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i128 = icmp eq i8 %109, 0
  br i1 %tobool.not.i128, label %sw.bb49.cleanup_crit_edge, label %if.then.i129

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i129:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %bt_ctrl_lps.i127 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %bt_ctrl_lps.i127, align 1
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %in_buf, align 1, !range !97
  %bt_disable_low_pwr.i = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 19
  %113 = ptrtoint ptr %bt_disable_low_pwr.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %bt_disable_low_pwr.i, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %in_buf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %in_buf, align 4
  %ra_mask = getelementptr inbounds %struct.btc_coexist, ptr %void_btcoexist, i32 0, i32 3, i32 27
  %116 = ptrtoint ptr %ra_mask to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %ra_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb52, %sw.bb50, %if.then.i129, %sw.bb49.cleanup_crit_edge, %if.then.i125, %sw.bb48.cleanup_crit_edge, %if.then.i118, %sw.bb47.cleanup_crit_edge, %halbtc_enter_lps.exit, %halbtc_leave_lps.exit, %sw.bb43, %sw.bb41, %sw.bb39, %if.then50.i, %if.end48.i.cleanup_crit_edge, %if.then35.i.cleanup_crit_edge, %if.then1.i, %sw.bb38.cleanup_crit_edge, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %sw.bb50 ], [ true, %halbtc_enter_lps.exit ], [ true, %halbtc_leave_lps.exit ], [ true, %sw.bb43 ], [ true, %sw.bb41 ], [ true, %sw.bb52 ], [ true, %sw.bb39 ], [ false, %sw.bb37 ], [ true, %sw.bb35 ], [ true, %sw.bb33 ], [ true, %sw.bb29 ], [ true, %sw.bb25 ], [ true, %sw.bb21 ], [ true, %sw.bb17 ], [ true, %sw.bb13 ], [ true, %sw.bb9 ], [ true, %sw.bb5 ], [ true, %sw.bb1 ], [ true, %sw.bb ], [ true, %sw.bb38.cleanup_crit_edge ], [ true, %if.then1.i ], [ true, %if.then35.i.cleanup_crit_edge ], [ true, %if.end48.i.cleanup_crit_edge ], [ true, %if.then50.i ], [ true, %sw.bb47.cleanup_crit_edge ], [ true, %if.then.i118 ], [ true, %sw.bb48.cleanup_crit_edge ], [ true, %if.then.i125 ], [ true, %sw.bb49.cleanup_crit_edge ], [ true, %if.then.i129 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @halbtc_set_bt_reg(ptr noundef %btc_context, i8 noundef zeroext %reg_type, i32 noundef %offset, i32 noundef %set_val) #2 align 64 {
entry:
  %cmd_buffer1 = alloca [4 x i8], align 4
  %cmd_buffer2 = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer1) #9
  %0 = ptrtoint ptr %cmd_buffer1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 851968, ptr %cmd_buffer1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer2) #9
  %1 = ptrtoint ptr %cmd_buffer2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 786432, ptr %cmd_buffer2, align 4
  %conv = trunc i32 %set_val to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx = getelementptr inbounds [4 x i8], ptr %cmd_buffer1, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx, align 2
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %4 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, 14
  br i1 %cmp.i.not.i, label %entry.cleanup_crit_edge, label %if.then1.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %8 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer1) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %5, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then1.i.cleanup.sink.split_crit_edge, label %if.end

if.then1.i.cleanup.sink.split_crit_edge:          ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then1.i
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %cmd_buffer2, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %reg_type, ptr %arrayidx1, align 2
  %conv2 = trunc i32 %offset to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %cmd_buffer2, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2, ptr %arrayidx3, align 1
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i10 = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 10, i32 10
  %21 = ptrtoint ptr %hw_type.i.i10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_type.i.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %22)
  %cmp.i.not.i11 = icmp eq i16 %22, 14
  br i1 %cmp.i.not.i11, label %if.end.cleanup_crit_edge, label %if.then1.i13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i13:                                     ; preds = %if.end
  %23 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %cfg.i15 = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i15, align 8
  %ops.i16 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i16, align 4
  %fill_h2c_cmd.i17 = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 64
  %28 = ptrtoint ptr %fill_h2c_cmd.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fill_h2c_cmd.i17, align 4
  %hw.i18 = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 9, i32 6
  %30 = ptrtoint ptr %hw.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i18, align 8
  call void %29(ptr noundef %31, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer2) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %20, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 200) #9
  %call28.i19 = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i19)
  %cmp.i20 = icmp eq i32 %call28.i19, 0
  br i1 %cmp.i20, label %if.then1.i13.cleanup.sink.split_crit_edge, label %if.then1.i13.cleanup_crit_edge

if.then1.i13.cleanup_crit_edge:                   ; preds = %if.then1.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i13.cleanup.sink.split_crit_edge:        ; preds = %if.then1.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then1.i13.cleanup.sink.split_crit_edge, %if.then1.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then1.i.cleanup.sink.split_crit_edge ], [ %20, %if.then1.i13.cleanup.sink.split_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %.sink, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then1.i13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @halbtc_get_bt_reg(ptr nocapture noundef readnone %btc_context, i8 noundef zeroext %reg_type, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_get_bt_coex_supported_feature(ptr noundef %btc_context) #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %bt_supported_feature = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 31
  %1 = ptrtoint ptr %bt_supported_feature to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bt_supported_feature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.label_done_crit_edge

entry.label_done_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.end:                                           ; preds = %entry
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %3 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 14
  br i1 %cmp.i.not.i, label %if.end.label_done_crit_edge, label %if.then1.i

if.end.label_done_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then1.i:                                       ; preds = %if.end
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %7 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %8 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %9, 112
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %10 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 42, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 8
  call void %16(ptr noundef %18, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 7, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.label_done_crit_edge

if.then1.i.label_done_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 7) #9
  br label %label_done

label_done:                                       ; preds = %if.then30.i, %if.then1.i.label_done_crit_edge, %if.end.label_done_crit_edge, %entry.label_done_crit_edge
  %19 = ptrtoint ptr %bt_supported_feature to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bt_supported_feature, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_get_bt_coex_supported_version(ptr noundef %btc_context) #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %bt_supported_version = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 32
  %1 = ptrtoint ptr %bt_supported_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bt_supported_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.label_done_crit_edge

entry.label_done_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.end:                                           ; preds = %entry
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %3 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 14
  br i1 %cmp.i.not.i, label %if.end.label_done_crit_edge, label %if.then1.i

if.end.label_done_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then1.i:                                       ; preds = %if.end
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %7 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %8 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %9, -128
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %10 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 43, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 8
  call void %16(ptr noundef %18, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.label_done_crit_edge

if.then1.i.label_done_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 8) #9
  br label %label_done

label_done:                                       ; preds = %if.then30.i, %if.then1.i.label_done_crit_edge, %if.end.label_done_crit_edge, %entry.label_done_crit_edge
  %19 = ptrtoint ptr %bt_supported_version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bt_supported_version, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @halbtc_get_phydm_version(ptr nocapture noundef readnone %btc_context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @halbtc_phydm_modify_ra_pcr_threshold(ptr nocapture noundef %btc_context, i8 noundef zeroext %ra_offset_direction, i8 noundef zeroext %ra_threshold_offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @halbtc_phydm_query_phy_counter(ptr nocapture noundef readnone %btc_context, i32 noundef %dm_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @halbtc_get_ant_det_val_from_bt(ptr noundef %btc_context) #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.halbtc_send_bt_mp_operation.exit_crit_edge, label %if.then1.i

entry.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %7, 32
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 44, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge

if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 2) #9
  br label %halbtc_send_bt_mp_operation.exit

halbtc_send_bt_mp_operation.exit:                 ; preds = %if.then30.i, %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge, %entry.halbtc_send_bt_mp_operation.exit_crit_edge
  %bt_ant_det_val = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 35
  %17 = ptrtoint ptr %bt_ant_det_val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bt_ant_det_val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @halbtc_get_ble_scan_type_from_bt(ptr noundef %btc_context) #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.halbtc_send_bt_mp_operation.exit_crit_edge, label %if.then1.i

entry.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %7, 64
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 46, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge

if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 4) #9
  br label %halbtc_send_bt_mp_operation.exit

halbtc_send_bt_mp_operation.exit:                 ; preds = %if.then30.i, %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge, %entry.halbtc_send_bt_mp_operation.exit_crit_edge
  %bt_ble_scan_type = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 36
  %17 = ptrtoint ptr %bt_ble_scan_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bt_ble_scan_type, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @halbtc_get_ble_scan_para_from_bt(ptr noundef %btc_context, i8 noundef zeroext %scan_type) #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.halbtc_send_bt_mp_operation.exit_crit_edge, label %if.then1.i

entry.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %7, 48
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 45, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 3, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge

if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 3) #9
  br label %halbtc_send_bt_mp_operation.exit

halbtc_send_bt_mp_operation.exit:                 ; preds = %if.then30.i, %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge, %entry.halbtc_send_bt_mp_operation.exit_crit_edge
  %bt_ble_scan_para = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 37
  %17 = ptrtoint ptr %bt_ble_scan_para to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bt_ble_scan_para, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @halbtc_get_bt_afh_map_from_bt(ptr noundef %btc_context, i8 noundef zeroext %map_type, ptr nocapture noundef writeonly %afh_map) #2 align 64 {
entry:
  %cmd_buffer = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %cmd_buffer, align 2
  %add.ptr = getelementptr i8, ptr %afh_map, i32 4
  %add.ptr1 = getelementptr i8, ptr %afh_map, i32 8
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.exit_crit_edge, label %if.then1.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 2
  %conv20.i = or i8 %7, 80
  store i8 %conv20.i, ptr %cmd_buffer, align 2
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 30, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 2, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.end

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 5) #9
  br label %exit

if.end:                                           ; preds = %if.then1.i
  %afh_map_l2 = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 28
  %17 = ptrtoint ptr %afh_map_l2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %afh_map_l2, align 4
  %19 = ptrtoint ptr %afh_map to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %afh_map, align 4
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i31 = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 10, i32 10
  %22 = ptrtoint ptr %hw_type.i.i31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_type.i.i31, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %23)
  %cmp.i.not.i32 = icmp eq i16 %23, 14
  br i1 %cmp.i.not.i32, label %if.end.exit_crit_edge, label %if.then1.i34

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then1.i34:                                     ; preds = %if.end
  %24 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %25 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd_buffer, align 2
  %conv20.i35 = or i8 %26, 96
  store i8 %conv20.i35, ptr %cmd_buffer, align 2
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 31, ptr %arrayidx21.i, align 1
  %cfg.i37 = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i37, align 8
  %ops.i38 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i38, align 4
  %fill_h2c_cmd.i39 = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 64
  %32 = ptrtoint ptr %fill_h2c_cmd.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fill_h2c_cmd.i39, align 4
  %hw.i40 = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 9, i32 6
  %34 = ptrtoint ptr %hw.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i40, align 8
  call void %33(ptr noundef %35, i8 noundef zeroext 103, i32 noundef 2, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 6, i32 noundef 200) #9
  %call28.i41 = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i41)
  %cmp.i42 = icmp eq i32 %call28.i41, 0
  br i1 %cmp.i42, label %if.then30.i43, label %if.end8

if.then30.i43:                                    ; preds = %if.then1.i34
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 6) #9
  br label %exit

if.end8:                                          ; preds = %if.then1.i34
  %afh_map_m10 = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 29
  %36 = ptrtoint ptr %afh_map_m10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %afh_map_m10, align 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr, align 4
  %39 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i47 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 10, i32 10
  %41 = ptrtoint ptr %hw_type.i.i47 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hw_type.i.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %42)
  %cmp.i.not.i48 = icmp eq i16 %42, 14
  br i1 %cmp.i.not.i48, label %if.end8.exit_crit_edge, label %if.then1.i50

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then1.i50:                                     ; preds = %if.end8
  %43 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %44 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cmd_buffer, align 2
  %conv20.i51 = or i8 %45, -112
  store i8 %conv20.i51, ptr %cmd_buffer, align 2
  %46 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %arrayidx21.i, align 1
  %cfg.i53 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i53, align 8
  %ops.i54 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i54, align 4
  %fill_h2c_cmd.i55 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 64
  %51 = ptrtoint ptr %fill_h2c_cmd.i55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fill_h2c_cmd.i55, align 4
  %hw.i56 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 9, i32 6
  %53 = ptrtoint ptr %hw.i56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw.i56, align 8
  call void %52(ptr noundef %54, i8 noundef zeroext 103, i32 noundef 2, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 9, i32 noundef 200) #9
  %call28.i57 = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i57)
  %cmp.i58 = icmp eq i32 %call28.i57, 0
  br i1 %cmp.i58, label %if.then30.i59, label %if.end16

if.then30.i59:                                    ; preds = %if.then1.i50
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 9) #9
  br label %exit

if.end16:                                         ; preds = %if.then1.i50
  call void @__sanitizer_cov_trace_pc() #11
  %afh_map_h18 = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 30
  %55 = ptrtoint ptr %afh_map_h18 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %afh_map_h18, align 4
  %57 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %add.ptr1, align 2
  br label %exit

exit:                                             ; preds = %if.end16, %if.then30.i59, %if.end8.exit_crit_edge, %if.then30.i43, %if.end.exit_crit_edge, %if.then30.i, %entry.exit_crit_edge
  %ret.0.in = phi i1 [ true, %if.end16 ], [ false, %if.then30.i ], [ false, %entry.exit_crit_edge ], [ false, %if.then30.i43 ], [ false, %if.end.exit_crit_edge ], [ false, %if.then30.i59 ], [ false, %if.end8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_buffer) #9
  ret i1 %ret.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @exhalbtc_initlize_variables_wifi_only(ptr noundef %rtlpriv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_only_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %0 = ptrtoint ptr %wifi_only_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wifi_only_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rtlpriv, ptr %1, align 4
  %interface = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 10, i32 9
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.selectcmp21 = icmp eq i32 %4, 0
  %switch.select22 = select i1 %switch.selectcmp21, i32 1, i32 %switch.select
  %chip_interface3 = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %chip_interface3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.select22, ptr %chip_interface3, align 4
  %haldata_info = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %haldata_info to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %haldata_info, align 2
  %ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 1, i32 2
  %7 = ptrtoint ptr %ant_num.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ant_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  %..i = select i1 %cmp.i, i8 2, i8 1
  %efuse_pg_antnum = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %efuse_pg_antnum to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %..i, ptr %efuse_pg_antnum, align 2
  %single_ant_path.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 1, i32 3
  %10 = ptrtoint ptr %single_ant_path.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %single_ant_path.i, align 1
  %efuse_pg_antpath = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %efuse_pg_antpath to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %efuse_pg_antpath, align 1
  %rfe_type.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 10, i32 31
  %13 = ptrtoint ptr %rfe_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rfe_type.i, align 1
  %rfe_type = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %rfe_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %rfe_type, align 2
  %ant_div_cfg = getelementptr inbounds %struct.wifi_only_cfg, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %ant_div_cfg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ant_div_cfg, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %17 = xor i1 %tobool.not, true
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @exhalbtc_bind_bt_coex_withadapter(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %interface = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 10, i32 9
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %switch.selectcmp78 = icmp eq i32 %5, 0
  %switch.select79 = select i1 %switch.selectcmp78, i32 1, i32 %switch.select
  %chip_interface7 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %chip_interface7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.select79, ptr %chip_interface7, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %1, align 4
  %statistics = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %statistics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %statistics, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %statistics, align 4
  %adapter9 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adapter9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %adapter, ptr %adapter9, align 4
  %stack_info = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %stack_info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stack_info, align 4
  %bt_ctrl_agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %bt_ctrl_agg_buf_size to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bt_ctrl_agg_buf_size, align 1
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %agg_buf_size, align 2
  %increase_scan_dev_num = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 11
  %14 = ptrtoint ptr %increase_scan_dev_num to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %increase_scan_dev_num, align 1
  %miracast_plus_bt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %miracast_plus_bt to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %miracast_plus_bt, align 4
  %btc_info.i = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 49, i32 1
  %16 = ptrtoint ptr %btc_info.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btc_info.i, align 4
  %switch.tableidx = add i8 %17, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %18 = icmp ult i8 %switch.tableidx, 6
  br i1 %18, label %switch.lookup, label %if.end4.exhalbtc_set_chip_type.exit_crit_edge

if.end4.exhalbtc_set_chip_type.exit_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exhalbtc_set_chip_type.exit

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.exhalbtc_bind_bt_coex_withadapter, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %20)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %exhalbtc_set_chip_type.exit

exhalbtc_set_chip_type.exit:                      ; preds = %switch.lookup, %if.end4.exhalbtc_set_chip_type.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.end4.exhalbtc_set_chip_type.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %board_info14.i = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %board_info14.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i, ptr %board_info14.i, align 4
  %22 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btc_context, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %exhalbtc_set_chip_type.exit.exhalbtc_set_ant_num.exit_crit_edge, label %if.end.i

exhalbtc_set_chip_type.exit.exhalbtc_set_ant_num.exit_crit_edge: ; preds = %exhalbtc_set_chip_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exhalbtc_set_ant_num.exit

if.end.i:                                         ; preds = %exhalbtc_set_chip_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 49, i32 1, i32 2
  %24 = ptrtoint ptr %ant_num.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ant_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  %..i = select i1 %cmp.i, i8 2, i8 1
  %pg_ant_num.i = getelementptr inbounds %struct.btc_coexist, ptr %23, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %pg_ant_num.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %..i, ptr %pg_ant_num.i, align 1
  %btdm_ant_num.i = getelementptr inbounds %struct.btc_coexist, ptr %23, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %btdm_ant_num.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %..i, ptr %btdm_ant_num.i, align 2
  br label %exhalbtc_set_ant_num.exit

exhalbtc_set_ant_num.exit:                        ; preds = %if.end.i, %exhalbtc_set_chip_type.exit.exhalbtc_set_ant_num.exit_crit_edge
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %btdm_ant_pos, align 1
  %single_ant_path.i = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 49, i32 1, i32 3
  %29 = ptrtoint ptr %single_ant_path.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %single_ant_path.i, align 1
  %single_ant_path1.i = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %single_ant_path1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %single_ant_path1.i, align 4
  %package_type.i = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 10, i32 16
  %32 = ptrtoint ptr %package_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %package_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %switch.selectcmp80 = icmp ugt i8 %33, 1
  %34 = zext i1 %switch.selectcmp80 to i8
  %tfbga_package25 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %tfbga_package25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tfbga_package25, align 1
  %.str.1.sink = select i1 %switch.selectcmp80, ptr @.str, ptr @.str.1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %adapter, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull %.str.1.sink) #9
  %rfe_type.i = getelementptr inbounds %struct.rtl_priv, ptr %adapter, i32 0, i32 10, i32 31
  %36 = ptrtoint ptr %rfe_type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rfe_type.i, align 1
  %rfe_type = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %rfe_type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rfe_type, align 2
  %ant_div_cfg = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 7
  %39 = ptrtoint ptr %ant_div_cfg to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ant_div_cfg, align 1
  br label %cleanup

cleanup:                                          ; preds = %exhalbtc_set_ant_num.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %exhalbtc_set_ant_num.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @exhalbtc_set_chip_type(ptr nocapture noundef writeonly %btcoexist, i8 noundef zeroext %chip_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %chip_type, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.exhalbtc_set_chip_type, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %board_info14 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2
  %3 = ptrtoint ptr %board_info14 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %board_info14, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_set_ant_num(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %type, i8 noundef zeroext %ant_num) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 0, label %if.then3
    i8 1, label %if.then8
    i8 2, label %if.then15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pg_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %pg_ant_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %ant_num, ptr %pg_ant_num, align 1
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %ant_num, ptr %btdm_ant_num, align 2
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %btdm_ant_num10 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %btdm_ant_num10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %ant_num, ptr %btdm_ant_num10, align 2
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %btdm_ant_num17 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %btdm_ant_num17 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %ant_num, ptr %btdm_ant_num17, align 2
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 32
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mod_params, align 4
  %ant_sel = getelementptr inbounds %struct.rtl_mod_params, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %ant_sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ant_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp18 = icmp eq i32 %12, 1
  %btdm_ant_pos = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 2, i32 3
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %btdm_ant_pos, align 1
  br label %cleanup

if.else22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %btdm_ant_pos to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %btdm_ant_pos, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.then20, %if.then8, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @exhalbtc_set_single_ant_path(ptr nocapture noundef writeonly %btcoexist, i8 noundef zeroext %single_ant_path) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %single_ant_path1 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %single_ant_path1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %single_ant_path, ptr %single_ant_path1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_power_on_setting(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end15_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.if.end15_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.if.end15_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_power_on = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 15
  %4 = ptrtoint ptr %cnt_power_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_power_on, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_power_on, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %9)
  %cmp = icmp eq i16 %9, 11
  br i1 %cmp, label %if.then2, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %btdm_ant_num, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %11, label %if.then2.if.end15_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_power_on_setting(ptr noundef %btcoexist) #9
  br label %if.end15

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_power_on_setting(ptr noundef %btcoexist) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then6, %if.then2.if.end15_crit_edge, %if.end.if.end15_crit_edge, %halbtc_is_bt_coexist_available.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_power_on_setting(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_power_on_setting(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_pre_load_firmware(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end8_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.if.end8_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.if.end8_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_pre_load_firmware = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 14
  %4 = ptrtoint ptr %cnt_pre_load_firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_pre_load_firmware, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_pre_load_firmware, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %9)
  %cmp = icmp eq i16 %9, 11
  br i1 %cmp, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %btdm_ant_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp4 = icmp eq i8 %11, 2
  br i1 %cmp4, label %if.then6, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_pre_load_firmware(ptr noundef %btcoexist) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge, %halbtc_is_bt_coexist_available.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_pre_load_firmware(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_init_hw_config(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end65_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.if.end65_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.if.end65_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_init_hw_config = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %cnt_init_hw_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_init_hw_config, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_init_hw_config, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %9, label %if.end.if.end65_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then22
    i16 12, label %if.then54
  ]

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %btdm_ant_num, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %12, label %if.then2.if.end65_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.if.end65_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_init_hwconfig(ptr noundef %btcoexist) #9
  br label %if.end65

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_init_hwconfig(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only) #9
  br label %if.end65

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btdm_ant_num24, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %15, label %if.then22.if.end65_crit_edge [
    i8 2, label %if.then28
    i8 1, label %if.then35
  ]

if.then22.if.end65_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_init_hwconfig(ptr noundef %btcoexist) #9
  br label %if.end65

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_init_hwconfig(ptr noundef %btcoexist, i1 noundef zeroext %wifi_only) #9
  br label %if.end65

if.then54:                                        ; preds = %if.end
  %btdm_ant_num56 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %btdm_ant_num56 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btdm_ant_num56, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp58 = icmp eq i8 %18, 2
  br i1 %cmp58, label %if.then60, label %if.then54.if.end65_crit_edge

if.then54.if.end65_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_init_hwconfig(ptr noundef %btcoexist) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.then54.if.end65_crit_edge, %if.then35, %if.then28, %if.then22.if.end65_crit_edge, %if.then12, %if.then6, %if.then2.if.end65_crit_edge, %if.end.if.end65_crit_edge, %halbtc_is_bt_coexist_available.exit.if.end65_crit_edge, %entry.if.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_init_hwconfig(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_init_hwconfig(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_init_hwconfig(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_init_hwconfig(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_init_hwconfig(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_init_hw_config_wifi_only(ptr nocapture noundef %wifionly_cfg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_init_coex_dm(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_init_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %cnt_init_coex_dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_init_coex_dm, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_init_coex_dm, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %9, label %if.end.if.end55_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then22
    i16 12, label %if.then45
  ]

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %btdm_ant_num, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %12, label %if.then2.if.end55_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.if.end55_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_init_coex_dm(ptr noundef %btcoexist) #9
  br label %if.end55

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_init_coex_dm(ptr noundef %btcoexist) #9
  br label %if.end55

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btdm_ant_num24, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %15, label %if.then22.if.end55_crit_edge [
    i8 2, label %if.then28
    i8 1, label %if.then35
  ]

if.then22.if.end55_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_init_coex_dm(ptr noundef %btcoexist) #9
  br label %if.end55

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_init_coex_dm(ptr noundef %btcoexist) #9
  br label %if.end55

if.then45:                                        ; preds = %if.end
  %btdm_ant_num47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %btdm_ant_num47 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btdm_ant_num47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp49 = icmp eq i8 %18, 2
  br i1 %cmp49, label %if.then51, label %if.then45.if.end55_crit_edge

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_init_coex_dm(ptr noundef %btcoexist) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then45.if.end55_crit_edge, %if.then35, %if.then28, %if.then22.if.end55_crit_edge, %if.then12, %if.then6, %if.then2.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %initialized = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 11
  %19 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %initialized, align 4
  br label %return

return:                                           ; preds = %if.end55, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_init_coex_dm(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_init_coex_dm(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_init_coex_dm(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_init_coex_dm(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_init_coex_dm(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_ips_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 3
  %4 = ptrtoint ptr %cnt_ips_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_ips_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_ips_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type)
  %cmp = icmp eq i8 %type, 2
  %. = zext i1 %cmp to i8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_type, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %11, label %if.end2.cleanup_crit_edge [
    i16 13, label %if.then9
    i16 11, label %if.then30
    i16 12, label %if.then53
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end2
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %btdm_ant_num, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %14, label %if.then9.cleanup_crit_edge [
    i8 2, label %if.then13
    i8 1, label %if.then20
  ]

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then20:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then30:                                        ; preds = %if.end2
  %btdm_ant_num32 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num32, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %17, label %if.then30.cleanup_crit_edge [
    i8 2, label %if.then36
    i8 1, label %if.then43
  ]

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then53:                                        ; preds = %if.end2
  %btdm_ant_num55 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp57 = icmp eq i8 %20, 2
  br i1 %cmp57, label %if.then59, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_ips_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.then53.cleanup_crit_edge, %if.then43, %if.then36, %if.then30.cleanup_crit_edge, %if.then20, %if.then13, %if.then9.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_lps_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %cnt_lps_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_lps_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_lps_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp = icmp ne i8 %type, 0
  %. = zext i1 %cmp to i8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_type, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %11, label %if.end2.cleanup_crit_edge [
    i16 13, label %if.then9
    i16 11, label %if.then30
    i16 12, label %if.then53
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end2
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %btdm_ant_num, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %14, label %if.then9.cleanup_crit_edge [
    i8 2, label %if.then13
    i8 1, label %if.then20
  ]

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then20:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then30:                                        ; preds = %if.end2
  %btdm_ant_num32 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num32, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %17, label %if.then30.cleanup_crit_edge [
    i8 2, label %if.then36
    i8 1, label %if.then43
  ]

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then53:                                        ; preds = %if.end2
  %btdm_ant_num55 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp57 = icmp eq i8 %20, 2
  br i1 %cmp57, label %if.then59, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_lps_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.then53.cleanup_crit_edge, %if.then43, %if.then36, %if.then30.cleanup_crit_edge, %if.then20, %if.then13, %if.then9.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_scan_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 5
  %4 = ptrtoint ptr %cnt_scan_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_scan_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_scan_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %tobool3.not = icmp ne i8 %type, 0
  %. = zext i1 %tobool3.not to i8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_type, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %11, label %if.end2.cleanup_crit_edge [
    i16 13, label %if.then7
    i16 11, label %if.then28
    i16 12, label %if.then51
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %btdm_ant_num, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %14, label %if.then7.cleanup_crit_edge [
    i8 2, label %if.then11
    i8 1, label %if.then18
  ]

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then28:                                        ; preds = %if.end2
  %btdm_ant_num30 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num30, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %17, label %if.then28.cleanup_crit_edge [
    i8 2, label %if.then34
    i8 1, label %if.then41
  ]

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then41:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then51:                                        ; preds = %if.end2
  %btdm_ant_num53 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num53, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp55 = icmp eq i8 %20, 2
  br i1 %cmp55, label %if.then57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_scan_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then51.cleanup_crit_edge, %if.then41, %if.then34, %if.then28.cleanup_crit_edge, %if.then18, %if.then11, %if.then7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_scan_notify_wifi_only(ptr nocapture noundef %wifionly_cfg, i8 noundef zeroext %is_5g) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %action) local_unnamed_addr #2 align 64 {
entry:
  %wifi_under_5g = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wifi_under_5g) #9
  %0 = ptrtoint ptr %wifi_under_5g to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wifi_under_5g, align 1, !annotation !98
  %1 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %4, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_connect_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 6
  %5 = ptrtoint ptr %cnt_connect_notify to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnt_connect_notify, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %cnt_connect_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %7 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %btc_get = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 31
  %9 = ptrtoint ptr %btc_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %btc_get, align 4
  %call3 = call zeroext i1 %10(ptr noundef %btcoexist, i8 noundef zeroext 13, ptr noundef nonnull %wifi_under_5g) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool4.not = icmp ne i8 %action, 0
  %. = zext i1 %tobool4.not to i8
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 10, i32 10
  %13 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_type, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %14, label %if.end2.cleanup_crit_edge [
    i16 13, label %if.then8
    i16 11, label %if.then29
    i16 12, label %if.then52
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end2
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %17, label %if.then8.cleanup_crit_edge [
    i8 2, label %if.then12
    i8 1, label %if.then19
  ]

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void @ex_btc8821a2ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then19:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void @ex_btc8821a1ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then29:                                        ; preds = %if.end2
  %btdm_ant_num31 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num31, align 2
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %20, label %if.then29.cleanup_crit_edge [
    i8 2, label %if.then35
    i8 1, label %if.then42
  ]

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  call void @ex_btc8723b2ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then42:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  call void @ex_btc8723b1ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then52:                                        ; preds = %if.end2
  %btdm_ant_num54 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %btdm_ant_num54 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %btdm_ant_num54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp56 = icmp eq i8 %23, 2
  br i1 %cmp56, label %if.then58, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @ex_btc8192e2ant_connect_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then52.cleanup_crit_edge, %if.then42, %if.then35, %if.then29.cleanup_crit_edge, %if.then19, %if.then12, %if.then8.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wifi_under_5g) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_mediastatus_notify(ptr noundef %btcoexist, i32 noundef %media_status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_media_status_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %cnt_media_status_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_media_status_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_media_status_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %media_status)
  %cmp = icmp eq i32 %media_status, 1
  %. = zext i1 %cmp to i8
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_type, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %11, label %if.end2.cleanup_crit_edge [
    i16 13, label %if.then7
    i16 11, label %if.then28
    i16 12, label %if.then51
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %btdm_ant_num, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %14, label %if.then7.cleanup_crit_edge [
    i8 2, label %if.then11
    i8 1, label %if.then18
  ]

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then28:                                        ; preds = %if.end2
  %btdm_ant_num30 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num30, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %17, label %if.then28.cleanup_crit_edge [
    i8 2, label %if.then34
    i8 1, label %if.then41
  ]

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then41:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

if.then51:                                        ; preds = %if.end2
  %btdm_ant_num53 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num53, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp55 = icmp eq i8 %20, 2
  br i1 %cmp55, label %if.then57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_media_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.then51.cleanup_crit_edge, %if.then41, %if.then34, %if.then28.cleanup_crit_edge, %if.then18, %if.then11, %if.then7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.cleanup_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_special_packet_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 8
  %4 = ptrtoint ptr %cnt_special_packet_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_special_packet_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_special_packet_notify, align 4
  %manual_control = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 13
  %6 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %manual_control, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %pkt_type.off = add i8 %pkt_type, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %pkt_type.off)
  %switch = icmp ult i8 %pkt_type.off, 3
  %or.cond = and i1 %switch, %tobool.not
  br i1 %or.cond, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hw_type, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %11, label %if.end17.cleanup_crit_edge [
    i16 13, label %if.then21
    i16 11, label %if.then42
    i16 12, label %if.then65
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %btdm_ant_num, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %14, label %if.then21.cleanup_crit_edge [
    i8 2, label %if.then25
    i8 1, label %if.then32
  ]

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) #9
  br label %cleanup

if.then32:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) #9
  br label %cleanup

if.then42:                                        ; preds = %if.end17
  %btdm_ant_num44 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %btdm_ant_num44 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btdm_ant_num44, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %17, label %if.then42.cleanup_crit_edge [
    i8 2, label %if.then48
    i8 1, label %if.then55
  ]

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) #9
  br label %cleanup

if.then55:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) #9
  br label %cleanup

if.then65:                                        ; preds = %if.end17
  %btdm_ant_num67 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %btdm_ant_num67 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btdm_ant_num67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp69 = icmp eq i8 %20, 2
  br i1 %cmp69, label %if.then71, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_special_packet_notify(ptr noundef %btcoexist, i8 noundef zeroext %pkt_type) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then65.cleanup_crit_edge, %if.then55, %if.then48, %if.then42.cleanup_crit_edge, %if.then32, %if.then25, %if.then21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %halbtc_is_bt_coexist_available.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_bt_info_notify = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %cnt_bt_info_notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_bt_info_notify, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_bt_info_notify, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %9, label %if.end.return_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then22
    i16 12, label %if.then45
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %btdm_ant_num, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %12, label %if.then2.return_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) #9
  br label %return

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) #9
  br label %return

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btdm_ant_num24, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %15, label %if.then22.return_crit_edge [
    i8 2, label %if.then28
    i8 1, label %if.then35
  ]

if.then22.return_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) #9
  br label %return

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) #9
  br label %return

if.then45:                                        ; preds = %if.end
  %btdm_ant_num47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %btdm_ant_num47 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btdm_ant_num47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp49 = icmp eq i8 %18, 2
  br i1 %cmp49, label %if.then51, label %if.then45.return_crit_edge

if.then45.return_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_bt_info_notify(ptr noundef %btcoexist, ptr noundef %tmp_buf, i8 noundef zeroext %length) #9
  br label %return

return:                                           ; preds = %if.then51, %if.then45.return_crit_edge, %if.then35, %if.then28, %if.then22.return_crit_edge, %if.then12, %if.then6, %if.then2.return_crit_edge, %if.end.return_crit_edge, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_rf_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end25_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.if.end25_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.if.end25_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %7)
  %cond = icmp eq i16 %7, 11
  br i1 %cond, label %if.then9, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then9:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdm_ant_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp11 = icmp eq i8 %9, 1
  br i1 %cmp11, label %if.then13, label %if.then9.if.end25_crit_edge

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_rf_status_notify(ptr noundef %btcoexist, i8 noundef zeroext %type) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.then9.if.end25_crit_edge, %if.end.if.end25_crit_edge, %halbtc_is_bt_coexist_available.exit.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_rf_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_halt_notify(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %7, label %if.end.if.end55_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then22
    i16 12, label %if.then45
  ]

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btdm_ant_num, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %10, label %if.then2.if.end55_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.if.end55_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_halt_notify(ptr noundef %btcoexist) #9
  br label %if.end55

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_halt_notify(ptr noundef %btcoexist) #9
  br label %if.end55

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btdm_ant_num24, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %13, label %if.then22.if.end55_crit_edge [
    i8 2, label %if.then28
    i8 1, label %if.then35
  ]

if.then22.if.end55_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_halt_notify(ptr noundef %btcoexist) #9
  br label %if.end55

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_halt_notify(ptr noundef %btcoexist) #9
  br label %if.end55

if.then45:                                        ; preds = %if.end
  %btdm_ant_num47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %btdm_ant_num47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btdm_ant_num47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp49 = icmp eq i8 %16, 2
  br i1 %cmp49, label %if.then51, label %if.then45.if.end55_crit_edge

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_halt_notify(ptr noundef %btcoexist) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then45.if.end55_crit_edge, %if.then35, %if.then28, %if.then22.if.end55_crit_edge, %if.then12, %if.then6, %if.then2.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %17 = ptrtoint ptr %btcoexist to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %btcoexist, align 4
  br label %return

return:                                           ; preds = %if.end55, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_halt_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_halt_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_halt_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_halt_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_halt_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end48_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.if.end48_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.if.end48_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %7, label %if.end.if.end48_crit_edge [
    i16 11, label %if.then2
    i16 13, label %if.then22
  ]

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btdm_ant_num, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %10, label %if.then2.if.end48_crit_edge [
    i8 1, label %if.then6
    i8 2, label %if.then12
  ]

if.then2.if.end48_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) #9
  br label %if.end48

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) #9
  br label %if.end48

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btdm_ant_num24, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %13, label %if.then22.if.end48_crit_edge [
    i8 1, label %if.then28
    i8 2, label %if.then35
  ]

if.then22.if.end48_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) #9
  br label %if.end48

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_pnp_notify(ptr noundef %btcoexist, i8 noundef zeroext %pnp_state) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then35, %if.then28, %if.then22.if.end48_crit_edge, %if.then12, %if.then6, %if.then2.if.end48_crit_edge, %if.end.if.end48_crit_edge, %halbtc_is_bt_coexist_available.exit.if.end48_crit_edge, %entry.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_pnp_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_pnp_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_pnp_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_pnp_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_coex_dm_switch(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %2 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp ne i8 %3, 0
  %cmp.i = icmp ne ptr %1, null
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cnt_coex_dm_switch = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 11
  %4 = ptrtoint ptr %cnt_coex_dm_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_coex_dm_switch, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_coex_dm_switch, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %7)
  %cmp = icmp eq i16 %7, 11
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %btdm_ant_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp5 = icmp eq i8 %9, 1
  br i1 %cmp5, label %if.then7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  %stop_coex_dm = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 12
  %10 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stop_coex_dm, align 1
  tail call void @ex_btc8723b1ant_coex_dm_reset(ptr noundef %btcoexist) #9
  %btc_context.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 2
  %11 = ptrtoint ptr %btc_context.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %btc_context.i, align 8
  %tobool.not.i22 = icmp eq ptr %12, null
  br i1 %tobool.not.i22, label %if.then7.exhalbtc_set_ant_num.exit_crit_edge, label %if.end.i

if.then7.exhalbtc_set_ant_num.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exhalbtc_set_ant_num.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %btdm_ant_num17.i = getelementptr inbounds %struct.btc_coexist, ptr %12, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %btdm_ant_num17.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %btdm_ant_num17.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mod_params.i, align 4
  %ant_sel.i = getelementptr inbounds %struct.rtl_mod_params, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %ant_sel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ant_sel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp18.i = icmp eq i32 %19, 1
  %btdm_ant_pos.i = getelementptr inbounds %struct.btc_coexist, ptr %12, i32 0, i32 2, i32 3
  %. = select i1 %cmp18.i, i8 2, i8 1
  %20 = ptrtoint ptr %btdm_ant_pos.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %., ptr %btdm_ant_pos.i, align 1
  br label %exhalbtc_set_ant_num.exit

exhalbtc_set_ant_num.exit:                        ; preds = %if.end.i, %if.then7.exhalbtc_set_ant_num.exit_crit_edge
  tail call void @ex_btc8723b2ant_init_hwconfig(ptr noundef %btcoexist) #9
  tail call void @ex_btc8723b2ant_init_coex_dm(ptr noundef %btcoexist) #9
  %21 = ptrtoint ptr %stop_coex_dm to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %stop_coex_dm, align 1
  br label %cleanup

cleanup:                                          ; preds = %exhalbtc_set_ant_num.exit, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_coex_dm_reset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_periodical(ptr noundef %btcoexist) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %cnt_periodical = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 10
  %4 = ptrtoint ptr %cnt_periodical to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_periodical, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_periodical, align 4
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  %8 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_type, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %9, label %if.end.return_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then25
    i16 12, label %if.then48
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %btdm_ant_num, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %12, label %if.then2.return_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_periodical(ptr noundef %btcoexist) #9
  br label %return

if.then12:                                        ; preds = %if.then2
  %inactiveps.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 21, i32 17
  %14 = ptrtoint ptr %inactiveps.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %inactiveps.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i77 = icmp eq i8 %15, 0
  br i1 %tobool.not.i77, label %if.then12.if.then14_crit_edge, label %if.then.i

if.then12.if.then14_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then.i:                                        ; preds = %if.then12
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 21, i32 24
  %16 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.then.i.if.then14_crit_edge, label %land.lhs.true.i

if.then.i.if.then14_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

land.lhs.true.i:                                  ; preds = %if.then.i
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 21, i32 18
  %18 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rfoff_reason.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %19)
  %cmp1.i = icmp eq i32 %19, 268435456
  br i1 %cmp1.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.then14_crit_edge

land.lhs.true.i.if.then14_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then14:                                        ; preds = %land.lhs.true.i.if.then14_crit_edge, %if.then.i.if.then14_crit_edge, %if.then12.if.then14_crit_edge
  tail call void @ex_btc8821a1ant_periodical(ptr noundef %btcoexist) #9
  br label %return

if.then25:                                        ; preds = %if.end
  %btdm_ant_num27 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %btdm_ant_num27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %btdm_ant_num27, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %21, label %if.then25.return_crit_edge [
    i8 2, label %if.then31
    i8 1, label %if.then38
  ]

if.then25.return_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_periodical(ptr noundef %btcoexist) #9
  br label %return

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_periodical(ptr noundef %btcoexist) #9
  br label %return

if.then48:                                        ; preds = %if.end
  %btdm_ant_num50 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %btdm_ant_num50 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %btdm_ant_num50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp52 = icmp eq i8 %24, 2
  br i1 %cmp52, label %if.then54, label %if.then48.return_crit_edge

if.then48.return_crit_edge:                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_periodical(ptr noundef %btcoexist) #9
  br label %return

return:                                           ; preds = %if.then54, %if.then48.return_crit_edge, %if.then38, %if.then31, %if.then25.return_crit_edge, %if.then14, %land.lhs.true.i.return_crit_edge, %if.then6, %if.then2.return_crit_edge, %if.end.return_crit_edge, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_periodical(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_periodical(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_periodical(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_periodical(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_periodical(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_dbg_control(ptr nocapture noundef %btcoexist, i8 noundef zeroext %code, i8 noundef zeroext %len, ptr nocapture noundef readnone %data) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cnt_dbg_ctrl = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 14, i32 13
  %4 = ptrtoint ptr %cnt_dbg_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_dbg_ctrl, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %cnt_dbg_ctrl, align 4
  br label %return

return:                                           ; preds = %if.end, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_antenna_detection(ptr nocapture noundef %btcoexist, i32 noundef %cent_freq, i32 noundef %offset, i32 noundef %span, i32 noundef %seconds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_stack_update_profile_info() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_update_min_bt_rssi(ptr nocapture noundef %btcoexist, i8 noundef signext %bt_rssi) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  %min_bt_rssi = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %min_bt_rssi to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bt_rssi, ptr %min_bt_rssi, align 1
  br label %return

return:                                           ; preds = %if.end, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_set_hci_version(ptr nocapture noundef %btcoexist, i16 noundef zeroext %hci_version) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hci_version1 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %hci_version1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %hci_version, ptr %hci_version1, align 2
  br label %return

return:                                           ; preds = %if.end, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_set_bt_patch_version(ptr nocapture noundef %btcoexist, i16 noundef zeroext %bt_hci_version, i16 noundef zeroext %bt_patch_version) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bt_real_fw_ver = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %bt_real_fw_ver to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %bt_patch_version, ptr %bt_real_fw_ver, align 2
  %bt_hci_ver = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 15
  %5 = ptrtoint ptr %bt_hci_ver to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bt_hci_version, ptr %bt_hci_ver, align 4
  br label %return

return:                                           ; preds = %if.end, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exhalbtc_display_bt_coex_info(ptr noundef %btcoexist, ptr noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %halbtc_is_bt_coexist_available.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

halbtc_is_bt_coexist_available.exit:              ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %halbtc_is_bt_coexist_available.exit.return_crit_edge, label %if.end

halbtc_is_bt_coexist_available.exit.return_crit_edge: ; preds = %halbtc_is_bt_coexist_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %halbtc_is_bt_coexist_available.exit
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 4
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 10
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_type, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %7, label %if.end.return_crit_edge [
    i16 13, label %if.then2
    i16 11, label %if.then22
    i16 12, label %if.then45
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  %btdm_ant_num = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %btdm_ant_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btdm_ant_num, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %10, label %if.then2.return_crit_edge [
    i8 2, label %if.then6
    i8 1, label %if.then12
  ]

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) #9
  br label %return

if.then12:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8821a1ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) #9
  br label %return

if.then22:                                        ; preds = %if.end
  %btdm_ant_num24 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %btdm_ant_num24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btdm_ant_num24, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %13, label %if.then22.return_crit_edge [
    i8 2, label %if.then28
    i8 1, label %if.then35
  ]

if.then22.return_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) #9
  br label %return

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8723b1ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) #9
  br label %return

if.then45:                                        ; preds = %if.end
  %btdm_ant_num47 = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %btdm_ant_num47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btdm_ant_num47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp49 = icmp eq i8 %16, 2
  br i1 %cmp49, label %if.then51, label %if.then45.return_crit_edge

if.then45.return_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ex_btc8192e2ant_display_coex_info(ptr noundef %btcoexist, ptr noundef %m) #9
  br label %return

return:                                           ; preds = %if.then51, %if.then45.return_crit_edge, %if.then35, %if.then28, %if.then22.return_crit_edge, %if.then12, %if.then6, %if.then2.return_crit_edge, %if.end.return_crit_edge, %halbtc_is_bt_coexist_available.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a2ant_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8821a1ant_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b2ant_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8723b1ant_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ex_btc8192e2ant_display_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_switch_band_notify(ptr nocapture noundef %btcoexist, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exhalbtc_switch_band_notify_wifi_only(ptr nocapture noundef %wifionly_cfg, i8 noundef zeroext %is_5g) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @halbtc_get_wifi_link_status(ptr nocapture noundef readonly %btcoexist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %3, label %entry..thread_crit_edge [
    i32 2, label %if.end.thread
    i32 1, label %entry.is_any_client_connect_to_ap.exit_crit_edge
    i32 7, label %entry.is_any_client_connect_to_ap.exit_crit_edge25
    i32 3, label %entry.is_any_client_connect_to_ap.exit_crit_edge26
  ]

entry.is_any_client_connect_to_ap.exit_crit_edge26: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit

entry.is_any_client_connect_to_ap.exit_crit_edge25: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit

entry.is_any_client_connect_to_ap.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_any_client_connect_to_ap.exit

entry..thread_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %5 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1 = icmp ugt i32 %6, 1
  %spec.select = zext i1 %cmp1 to i32
  br label %.thread

is_any_client_connect_to_ap.exit:                 ; preds = %entry.is_any_client_connect_to_ap.exit_crit_edge, %entry.is_any_client_connect_to_ap.exit_crit_edge25, %entry.is_any_client_connect_to_ap.exit_crit_edge26
  %entry_list_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock.i) #9
  %entry_list.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 28
  %7 = ptrtoint ptr %entry_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %entry_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %8, %entry_list.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock.i) #9
  br i1 %cmp.i.i.not, label %is_any_client_connect_to_ap.exit..thread_crit_edge, label %is_any_client_connect_to_ap.exit._crit_edge

is_any_client_connect_to_ap.exit._crit_edge:      ; preds = %is_any_client_connect_to_ap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %9

is_any_client_connect_to_ap.exit..thread_crit_edge: ; preds = %is_any_client_connect_to_ap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread

.thread:                                          ; preds = %is_any_client_connect_to_ap.exit..thread_crit_edge, %if.end.thread, %entry..thread_crit_edge
  %num_of_connected_port.01419.ph = phi i32 [ 0, %is_any_client_connect_to_ap.exit..thread_crit_edge ], [ %spec.select, %if.end.thread ], [ 0, %entry..thread_crit_edge ]
  br label %9

9:                                                ; preds = %.thread, %is_any_client_connect_to_ap.exit._crit_edge
  %10 = phi i32 [ %num_of_connected_port.01419.ph, %.thread ], [ 2, %is_any_client_connect_to_ap.exit._crit_edge ]
  %11 = phi i32 [ %num_of_connected_port.01419.ph, %.thread ], [ 1, %is_any_client_connect_to_ap.exit._crit_edge ]
  %shl = shl nuw nsw i32 %11, 16
  %or6 = or i32 %shl, %10
  ret i32 %or6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_any_client_connect_to_ap(ptr nocapture noundef readonly %btcoexist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %entry.if.end9_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge16
    i32 3, label %entry.if.then_crit_edge17
  ]

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge16, %entry.if.then_crit_edge17
  %entry_list_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %entry_list_lock) #9
  %entry_list = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %entry_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %entry_list, align 4
  %cmp.i = icmp ne ptr %6, %entry_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %entry_list_lock) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %ret.1.off0 = phi i1 [ %cmp.i, %if.then ], [ false, %entry.if.end9_crit_edge ]
  ret i1 %ret.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @halbtc_get_bt_patch_version(ptr noundef %btcoexist) unnamed_addr #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %bt_real_fw_ver = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 3, i32 16
  %1 = ptrtoint ptr %bt_real_fw_ver to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bt_real_fw_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.label_done_crit_edge

entry.label_done_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.end:                                           ; preds = %entry
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %3 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 14
  br i1 %cmp.i.not.i, label %if.end.label_done_crit_edge, label %if.then1.i

if.end.label_done_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then1.i:                                       ; preds = %if.end
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 16
  %7 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %8 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %9, -32
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %10 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 64
  %15 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 8
  call void %16(ptr noundef %18, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 14, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.label_done_crit_edge

if.then1.i.label_done_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %label_done

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 14) #9
  br label %label_done

label_done:                                       ; preds = %if.then30.i, %if.then1.i.label_done_crit_edge, %if.end.label_done_crit_edge, %entry.label_done_crit_edge
  %19 = ptrtoint ptr %bt_real_fw_ver to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bt_real_fw_ver, align 2
  %conv = zext i16 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @halbtc_get_bt_device_info(ptr noundef %btc_context) unnamed_addr #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.halbtc_send_bt_mp_operation.exit_crit_edge, label %if.then1.i

entry.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %7, -96
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 10, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge

if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 10) #9
  br label %halbtc_send_bt_mp_operation.exit

halbtc_send_bt_mp_operation.exit:                 ; preds = %if.then30.i, %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge, %entry.halbtc_send_bt_mp_operation.exit_crit_edge
  %bt_device_info = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 33
  %17 = ptrtoint ptr %bt_device_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bt_device_info, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @halbtc_get_bt_forbidden_slot_val(ptr noundef %btc_context) unnamed_addr #2 align 64 {
entry:
  %cmd_buffer = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_buffer) #9
  %0 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_buffer, align 4
  %adapter.i.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 1
  %1 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter.i.i, align 4
  %hw_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 10
  %3 = ptrtoint ptr %hw_type.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 14
  br i1 %cmp.i.not.i, label %entry.halbtc_send_bt_mp_operation.exit_crit_edge, label %if.then1.i

entry.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then1.i:                                       ; preds = %entry
  %bt_mp_comp.i = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 16
  %5 = ptrtoint ptr %bt_mp_comp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bt_mp_comp.i, align 4
  %6 = ptrtoint ptr %cmd_buffer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_buffer, align 4
  %conv20.i = or i8 %7, -80
  store i8 %conv20.i, ptr %cmd_buffer, align 4
  %arrayidx21.i = getelementptr inbounds i8, ptr %cmd_buffer, i32 1
  %8 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 49, ptr %arrayidx21.i, align 1
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 64
  %13 = ptrtoint ptr %fill_h2c_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fill_h2c_cmd.i, align 4
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 8
  call void %14(ptr noundef %16, i8 noundef zeroext 103, i32 noundef 4, ptr noundef nonnull %cmd_buffer) #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 11, i32 noundef 200) #9
  %call28.i = call i32 @wait_for_completion_timeout(ptr noundef %bt_mp_comp.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.i, label %if.then30.i, label %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge

if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %halbtc_send_bt_mp_operation.exit

if.then30.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 1073741824, i32 noundef 3, ptr noundef nonnull @.str.34, i32 noundef 11) #9
  br label %halbtc_send_bt_mp_operation.exit

halbtc_send_bt_mp_operation.exit:                 ; preds = %if.then30.i, %if.then1.i.halbtc_send_bt_mp_operation.exit_crit_edge, %entry.halbtc_send_bt_mp_operation.exit_crit_edge
  %bt_forb_slot_val = getelementptr inbounds %struct.btc_coexist, ptr %btc_context, i32 0, i32 3, i32 34
  %17 = ptrtoint ptr %bt_forb_slot_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bt_forb_slot_val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_buffer) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @halbtc_get_wifi_central_chnl(ptr nocapture noundef readonly %btcoexist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.btc_coexist, ptr %btcoexist, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %2 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp.not, i8 1, i8 %3
  %conv3 = zext i8 %spec.select to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.halbtc_get_wifi_central_chnl, i32 noundef %conv3) #9
  ret i8 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_rx_ampdu_apply(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_lps_leave(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_lps_enter(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !82, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 1359, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 1362, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 824, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 825, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 835, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 836, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 841, i32 16}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 842, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 848, i32 16}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 849, i32 6}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 862, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 863, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 865, i32 29}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 867, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 868, i32 32}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 869, i32 11}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 877, i32 16}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 878, i32 6}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 879, i32 17}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 879, i32 29}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 880, i32 19}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 880, i32 32}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 881, i32 19}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 882, i32 19}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 885, i32 6}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 886, i32 6}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 19, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 20, i32 2}
!56 = !{ptr @gl_btc_wifi_freq_string, !57, !"gl_btc_wifi_freq_string", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 18, i32 26}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 11, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 12, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 13, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 14, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 15, i32 2}
!68 = !{ptr @gl_btc_wifi_bw_string, !69, !"gl_btc_wifi_bw_string", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 10, i32 26}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 240, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 245, i32 3}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 119, i32 2}
!76 = !{ptr @__func__.halbtc_get_wifi_central_chnl, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @halbtc_aggregation_check.pre_time, !78, !"pre_time", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 347, i32 23}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 265, i32 3}
!81 = !{ptr @__func__.halbtc_leave_lps, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c", i32 287, i32 3}
!84 = !{ptr @__func__.halbtc_enter_lps, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_completion.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/completion.h", i32 87, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
!98 = !{!"auto-init"}
