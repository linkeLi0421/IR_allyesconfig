; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rc.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
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
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>

@rtl_rate_ops = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 0, ptr @.str, ptr @rtl_rate_alloc, ptr null, ptr @rtl_rate_free, ptr @rtl_rate_alloc_sta, ptr @rtl_rate_init, ptr @rtl_rate_update, ptr @rtl_rate_free_sta, ptr null, ptr @rtl_tx_status, ptr @rtl_get_rate, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtl_rc\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.rtl_get_rate = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0F\07\07\07\0F\07\0F", [25 x i8] zeroinitializer }, align 32
@switch.table.rtl_get_rate.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\10\00\00\00 \000", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 128]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 32, i64 64]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 32]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 16, i64 64, i64 128, i64 256]
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"rtl_rate_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 298, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [45 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rc.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 299, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"switch.table.rtl_get_rate\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [28 x i8] c"switch.table.rtl_get_rate.2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @rtl_rate_ops, ptr @.str, ptr @switch.table.rtl_get_rate, ptr @switch.table.rtl_get_rate.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_rate_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl_get_rate to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl_get_rate.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_rate_control_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @rtl_rate_ops) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_rate_control_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @rtl_rate_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rtl_rate_alloc(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl_rate_free(ptr nocapture noundef %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rtl_rate_alloc_sta(ptr nocapture noundef writeonly %ppriv, ptr nocapture noundef readnone %sta, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !15

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rate_priv1 = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 27
  %2 = ptrtoint ptr %rate_priv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %rate_priv1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl_rate_init(ptr nocapture noundef %ppriv, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %priv_sta) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl_rate_update(ptr nocapture noundef %ppriv, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %priv_sta, i32 noundef %changed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_rate_free_sta(ptr nocapture noundef readnone %rtlpriv, ptr nocapture noundef readnone %sta, ptr noundef %priv_sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv_sta) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_tx_status(ptr nocapture noundef readonly %ppriv, ptr nocapture noundef readnone %sband, ptr noundef %sta, ptr noundef readnone %priv_sta, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %tobool.not = icmp ne ptr %priv_sta, null
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.i = icmp eq i16 %4, 2048
  %or.cond59 = select i1 %tobool.not, i1 %cmp.i, i1 false
  br i1 %or.cond59, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 9, i32 6
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %call3 = tail call zeroext i8 @rtl_is_special_data(ptr noundef %6, ptr noundef %skb, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %tobool4.not = icmp eq i8 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i.not.i = icmp eq i16 %9, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %lor.lhs.false9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end6
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %retval.0.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i, i32 2
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %16, %14
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i, i32 4
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i53 = icmp eq i16 %and510.i, -1
  %tobool14.not = icmp eq ptr %sta, null
  %or.cond = or i1 %tobool14.not, %cmp.i53
  br i1 %or.cond, label %lor.lhs.false9.cleanup_crit_edge, label %if.then15

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %lor.lhs.false9
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ht_supported, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %land.lhs.true

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %22)
  %cmp = icmp ne i16 %22, -30578
  %23 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %23)
  %cmp.i54 = icmp eq i16 %23, -30720
  %or.cond60 = select i1 %cmp, i1 %cmp.i54, i1 false
  br i1 %or.cond60, label %if.then20, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp.i.i.i.i = icmp eq i16 %28, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %25, i32 %retval.0.v.i.i.i
  %29 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %retval.0.i.i.i, align 1
  %31 = and i8 %30, 15
  %conv.i = zext i8 %31 to i16
  %act_scanning.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 9, i32 20
  %32 = ptrtoint ptr %act_scanning.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %act_scanning.i, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i56 = icmp eq i32 %35, 2
  br i1 %cmp.i56, label %land.lhs.true.i, label %if.end.i._rtl_tx_aggr_check.exit_crit_edge

if.end.i._rtl_tx_aggr_check.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_tx_aggr_check.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %cnt_after_linked.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 9, i32 21
  %36 = ptrtoint ptr %cnt_after_linked.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cnt_after_linked.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp1.i = icmp ult i8 %37, 3
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i._rtl_tx_aggr_check.exit_crit_edge

land.lhs.true.i._rtl_tx_aggr_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_tx_aggr_check.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

_rtl_tx_aggr_check.exit:                          ; preds = %land.lhs.true.i._rtl_tx_aggr_check.exit_crit_edge, %if.end.i._rtl_tx_aggr_check.exit_crit_edge
  %idxprom.i = zext i8 %31 to i32
  %agg_state.i = getelementptr %struct.rtl_sta_info, ptr %drv_priv, i32 0, i32 1, i32 %idxprom.i, i32 0, i32 5
  %38 = ptrtoint ptr %agg_state.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %agg_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp6.i = icmp eq i8 %39, 0
  br i1 %cmp6.i, label %if.then25, label %_rtl_tx_aggr_check.exit.cleanup_crit_edge

_rtl_tx_aggr_check.exit.cleanup_crit_edge:        ; preds = %_rtl_tx_aggr_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %_rtl_tx_aggr_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tids = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %agg_state = getelementptr [9 x %struct.rtl_tid_data], ptr %tids, i32 0, i32 %idxprom.i, i32 0, i32 5
  %40 = ptrtoint ptr %agg_state to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %agg_state, align 1
  %call27 = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef nonnull %sta, i16 noundef zeroext %conv.i, i16 noundef zeroext 5000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %_rtl_tx_aggr_check.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_get_rate(ptr nocapture noundef readonly %ppriv, ptr noundef %sta, ptr nocapture noundef readnone %priv_sta, ptr nocapture noundef readonly %txrc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %7 = and i16 %6, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp.i = icmp eq i16 %7, 2048
  %lnot = xor i1 %cmp.i, true
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_type.i.i, align 1
  %switch.tableidx = add i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 7
  br i1 %10, label %switch.lookup, label %entry.sw.epilog.i_crit_edge

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.rtl_get_rate, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep34 = getelementptr inbounds [7 x i8], ptr @switch.table.rtl_get_rate.2, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %entry.sw.epilog.i_crit_edge
  %cmp56.i = phi i8 [ %switch.load, %switch.lookup ], [ 7, %entry.sw.epilog.i_crit_edge ]
  %nss.0.i = phi i8 [ %switch.load35, %switch.lookup ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %if.then.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode4.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %15 = ptrtoint ptr %wireless_mode4.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wireless_mode4.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  %wireless_mode.0.i = phi i16 [ %16, %if.then.i ], [ 0, %sw.epilog.i.if.end.i_crit_edge ]
  %hw.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 8
  %call5.i = tail call zeroext i8 @rtl_is_special_data(ptr noundef %18, ptr noundef %1, i8 noundef zeroext 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call5.i)
  %tobool7.not.i = icmp eq i8 %call5.i, 0
  %19 = and i1 %cmp.i, %tobool7.not.i
  br i1 %19, label %if.else.i, label %if.end.i._rtl_rc_get_highest_rix.exit_crit_edge

if.end.i._rtl_rc_get_highest_rix.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.else.i:                                        ; preds = %if.end.i
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %ppriv, i32 0, i32 10, i32 53
  %20 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i31 = icmp eq i32 %21, 0
  br i1 %cmp.i31, label %if.then12.i, label %if.else45.i

if.then12.i:                                      ; preds = %if.else.i
  %22 = zext i16 %wireless_mode.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %wireless_mode.0.i, label %if.end44.i [
    i16 2, label %if.then12.i._rtl_rc_get_highest_rix.exit_crit_edge
    i16 4, label %if.then21.i
    i16 16, label %if.then26.i
    i16 128, label %if.then36.i
  ]

if.then12.i._rtl_rc_get_highest_rix.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.then21.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.then26.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.then36.i:                                      ; preds = %if.then12.i
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %23 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp37.i = icmp eq i32 %24, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else40.i

if.then39.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i.i = or i8 %nss.0.i, 8
  br label %_rtl_rc_get_highest_rix.exit

if.else40.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i100.i = or i8 %nss.0.i, 9
  br label %_rtl_rc_get_highest_rix.exit

if.end44.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.else45.i:                                      ; preds = %if.else.i
  %25 = zext i16 %wireless_mode.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %wireless_mode.0.i, label %if.end72.i [
    i16 1, label %if.else45.i._rtl_rc_get_highest_rix.exit_crit_edge
    i16 32, label %if.then54.i
    i16 64, label %if.then64.i
  ]

if.else45.i._rtl_rc_get_highest_rix.exit_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.then54.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

if.then64.i:                                      ; preds = %if.else45.i
  %bandwidth65.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %26 = ptrtoint ptr %bandwidth65.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bandwidth65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp66.i = icmp eq i32 %27, 0
  br i1 %cmp66.i, label %if.then68.i, label %if.else69.i

if.then68.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i107.i = or i8 %nss.0.i, 8
  br label %_rtl_rc_get_highest_rix.exit

if.else69.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i114.i = or i8 %nss.0.i, 9
  br label %_rtl_rc_get_highest_rix.exit

if.end72.i:                                       ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rc_get_highest_rix.exit

_rtl_rc_get_highest_rix.exit:                     ; preds = %if.end72.i, %if.else69.i, %if.then68.i, %if.then54.i, %if.else45.i._rtl_rc_get_highest_rix.exit_crit_edge, %if.end44.i, %if.else40.i, %if.then39.i, %if.then26.i, %if.then21.i, %if.then12.i._rtl_rc_get_highest_rix.exit_crit_edge, %if.end.i._rtl_rc_get_highest_rix.exit_crit_edge
  %retval.0.i = phi i8 [ 11, %if.then21.i ], [ 0, %if.end44.i ], [ 0, %if.end72.i ], [ 0, %if.end.i._rtl_rc_get_highest_rix.exit_crit_edge ], [ 3, %if.then12.i._rtl_rc_get_highest_rix.exit_crit_edge ], [ %cmp56.i, %if.then26.i ], [ 7, %if.else45.i._rtl_rc_get_highest_rix.exit_crit_edge ], [ %cmp56.i, %if.then54.i ], [ %conv56.i.i, %if.then39.i ], [ %conv56.i100.i, %if.else40.i ], [ %conv56.i107.i, %if.then68.i ], [ %conv56.i114.i, %if.else69.i ]
  tail call fastcc void @_rtl_rc_rate_set_series(ptr noundef %ppriv, ptr noundef %sta, ptr noundef %2, ptr noundef %txrc, i8 noundef zeroext 1, i8 noundef signext %retval.0.i, i1 noundef zeroext %lnot)
  br i1 %cmp.i, label %for.body.preheader, label %_rtl_rc_get_highest_rix.exit.if.end_crit_edge

_rtl_rc_get_highest_rix.exit.if.end_crit_edge:    ; preds = %_rtl_rc_get_highest_rix.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.preheader:                               ; preds = %_rtl_rc_get_highest_rix.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 11
  %sub = add nsw i8 %retval.0.i, -1
  tail call fastcc void @_rtl_rc_rate_set_series(ptr noundef %ppriv, ptr noundef %sta, ptr noundef %arrayidx9, ptr noundef %txrc, i8 noundef zeroext 1, i8 noundef signext %sub, i1 noundef zeroext false)
  %arrayidx9.1 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %sub.1 = add nsw i8 %retval.0.i, -2
  tail call fastcc void @_rtl_rc_rate_set_series(ptr noundef %ppriv, ptr noundef %sta, ptr noundef %arrayidx9.1, ptr noundef %txrc, i8 noundef zeroext 2, i8 noundef signext %sub.1, i1 noundef zeroext false)
  %arrayidx9.2 = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 17
  %sub.2 = add nsw i8 %retval.0.i, -3
  tail call fastcc void @_rtl_rc_rate_set_series(ptr noundef %ppriv, ptr noundef %sta, ptr noundef %arrayidx9.2, ptr noundef %txrc, i8 noundef zeroext 3, i8 noundef signext %sub.2, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %_rtl_rc_get_highest_rix.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_is_special_data(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @_rtl_rc_rate_set_series(ptr nocapture noundef readonly %rtlpriv, ptr noundef readonly %sta, ptr nocapture noundef %rate, ptr nocapture noundef readonly %txrc, i8 noundef zeroext %tries, i8 noundef signext %rix, i1 noundef zeroext %not_data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %0 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ht_cap, align 4
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32
  %and5 = and i32 %conv, 64
  %cap7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %cap7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap7, align 4
  %and8 = and i32 %3, 32
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode10 = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv, i32 0, i32 4
  %4 = ptrtoint ptr %wireless_mode10 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wireless_mode10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wireless_mode.0 = phi i16 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sgi_20.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sgi_40.0 = phi i32 [ %and5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sgi_80.0 = phi i32 [ %and8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %count = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %rate, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.value = zext i8 %tries to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count, align 1
  %7 = tail call i8 @llvm.smax.i8(i8 %rix, i8 0)
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rate, align 1
  br i1 %not_data, label %if.end.if.end173_crit_edge, label %if.then17

if.end.if.end173_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

if.then17:                                        ; preds = %if.end
  %short_preamble = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 6
  %9 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %short_preamble, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.not = icmp eq i8 %10, 0
  br i1 %tobool18.not, label %if.then17.if.end28_crit_edge, label %if.then19

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear21 = and i16 %bf.load, 2043
  %11 = or i16 %bf.shl, %bf.clear21
  %bf.set27 = or i16 %11, 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %bf.set27, ptr %count, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.then17.if.end28_crit_edge
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opmode, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %14, label %if.else [
    i32 3, label %if.end28.if.then34_crit_edge
    i32 1, label %if.end28.if.then34_crit_edge7
  ]

if.end28.if.then34_crit_edge7:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end28.if.then34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %if.end28.if.then34_crit_edge, %if.end28.if.then34_crit_edge7
  br i1 %tobool.not, label %if.then34.if.end97_crit_edge, label %land.lhs.true

if.then34.if.end97_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

land.lhs.true:                                    ; preds = %if.then34
  %ht_cap36 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %16 = ptrtoint ptr %ht_cap36 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ht_cap36, align 4
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool40.not = icmp eq i16 %18, 0
  br i1 %tobool40.not, label %land.lhs.true.land.lhs.true54_crit_edge, label %if.then41

land.lhs.true.land.lhs.true54_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load43 = load i16, ptr %count, align 1
  %bf.set51 = or i16 %bf.load43, 32
  store i16 %bf.set51, ptr %count, align 1
  br label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.then41, %land.lhs.true.land.lhs.true54_crit_edge
  %vht_cap55 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %20 = ptrtoint ptr %vht_cap55 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vht_cap55, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool56.not = icmp eq i8 %21, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end97_crit_edge, label %land.lhs.true54.if.end97.sink.split_crit_edge

land.lhs.true54.if.end97.sink.split_crit_edge:    ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.sink.split

land.lhs.true54.if.end97_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.else:                                          ; preds = %if.end28
  %bw_80 = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 9, i32 27
  %22 = ptrtoint ptr %bw_80 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bw_80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool70.not = icmp eq i8 %23, 0
  br i1 %tobool70.not, label %if.else82, label %if.else.if.end97.sink.split_crit_edge

if.else.if.end97.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.sink.split

if.else82:                                        ; preds = %if.else
  %bw_40 = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 9, i32 41
  %24 = ptrtoint ptr %bw_40 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bw_40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool83.not = icmp eq i8 %25, 0
  br i1 %tobool83.not, label %if.else82.if.end97_crit_edge, label %if.else82.if.end97.sink.split_crit_edge

if.else82.if.end97.sink.split_crit_edge:          ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.sink.split

if.else82.if.end97_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.end97.sink.split:                              ; preds = %if.else82.if.end97.sink.split_crit_edge, %if.else.if.end97.sink.split_crit_edge, %land.lhs.true54.if.end97.sink.split_crit_edge
  %.sink = phi i16 [ 512, %land.lhs.true54.if.end97.sink.split_crit_edge ], [ 512, %if.else.if.end97.sink.split_crit_edge ], [ 32, %if.else82.if.end97.sink.split_crit_edge ]
  %26 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %bf.load73 = load i16, ptr %count, align 1
  %bf.set81 = or i16 %bf.load73, %.sink
  store i16 %bf.set81, ptr %count, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.end97.sink.split, %if.else82.if.end97_crit_edge, %land.lhs.true54.if.end97_crit_edge, %if.then34.if.end97_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgi_20.0)
  %tobool99.not = icmp eq i32 %sgi_20.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgi_40.0)
  %tobool102.not = icmp eq i32 %sgi_40.0, 0
  %or.cond = select i1 %tobool99.not, i1 %tobool102.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgi_80.0)
  %tobool105.not = icmp eq i32 %sgi_80.0, 0
  %or.cond2 = select i1 %or.cond, i1 %tobool105.not, i1 false
  br i1 %or.cond2, label %if.end97.if.end117_crit_edge, label %if.then106

if.end97.if.end117_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then106:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load108 = load i16, ptr %count, align 1
  %bf.set116 = or i16 %bf.load108, 128
  store i16 %bf.set116, ptr %count, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then106, %if.end97.if.end117_crit_edge
  br i1 %tobool.not, label %if.end117.if.end173_crit_edge, label %land.lhs.true119

if.end117.if.end173_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

land.lhs.true119:                                 ; preds = %if.end117
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ht_supported, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool121.not = icmp eq i8 %29, 0
  br i1 %tobool121.not, label %land.lhs.true119.land.lhs.true144_crit_edge, label %land.lhs.true123

land.lhs.true119.land.lhs.true144_crit_edge:      ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true144

land.lhs.true123:                                 ; preds = %land.lhs.true119
  %30 = zext i16 %wireless_mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %wireless_mode.0, label %land.lhs.true123.land.lhs.true144_crit_edge [
    i16 32, label %land.lhs.true123.if.then131_crit_edge
    i16 16, label %land.lhs.true123.if.then131_crit_edge8
  ]

land.lhs.true123.if.then131_crit_edge8:           ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131

land.lhs.true123.if.then131_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131

land.lhs.true123.land.lhs.true144_crit_edge:      ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true144

if.then131:                                       ; preds = %land.lhs.true123.if.then131_crit_edge, %land.lhs.true123.if.then131_crit_edge8
  %31 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load133 = load i16, ptr %count, align 1
  %bf.set141 = or i16 %bf.load133, 8
  store i16 %bf.set141, ptr %count, align 1
  br label %land.lhs.true144

land.lhs.true144:                                 ; preds = %if.then131, %land.lhs.true123.land.lhs.true144_crit_edge, %land.lhs.true119.land.lhs.true144_crit_edge
  %vht_cap145 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %32 = ptrtoint ptr %vht_cap145 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vht_cap145, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool147.not = icmp eq i8 %33, 0
  br i1 %tobool147.not, label %land.lhs.true144.if.end173_crit_edge, label %land.lhs.true149

land.lhs.true144.if.end173_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

land.lhs.true149:                                 ; preds = %land.lhs.true144
  %34 = zext i16 %wireless_mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %wireless_mode.0, label %land.lhs.true149.if.end173_crit_edge [
    i16 64, label %land.lhs.true149.if.then161_crit_edge
    i16 128, label %land.lhs.true149.if.then161_crit_edge9
    i16 256, label %land.lhs.true149.if.then161_crit_edge10
  ]

land.lhs.true149.if.then161_crit_edge10:          ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then161

land.lhs.true149.if.then161_crit_edge9:           ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then161

land.lhs.true149.if.then161_crit_edge:            ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then161

land.lhs.true149.if.end173_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

if.then161:                                       ; preds = %land.lhs.true149.if.then161_crit_edge, %land.lhs.true149.if.then161_crit_edge9, %land.lhs.true149.if.then161_crit_edge10
  %35 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %bf.load163 = load i16, ptr %count, align 1
  %bf.set171 = or i16 %bf.load163, 256
  store i16 %bf.set171, ptr %count, align 1
  br label %if.end173

if.end173:                                        ; preds = %if.then161, %land.lhs.true149.if.end173_crit_edge, %land.lhs.true144.if.end173_crit_edge, %if.end117.if.end173_crit_edge, %if.end.if.end173_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rc.c", i32 299, i32 10}
!2 = !{ptr @rtl_rate_ops, !3, !"rtl_rate_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rc.c", i32 298, i32 38}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/net/mac80211.h", i32 996, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
