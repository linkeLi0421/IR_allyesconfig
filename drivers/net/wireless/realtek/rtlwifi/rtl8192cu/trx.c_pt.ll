; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c"
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
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
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
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.133 }
%union.anon.133 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rtl_tcb_desc = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i32], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@rtl8192cu_mq_to_hwq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rtl8192cu: QSLT_BE queue, skb_queue:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable RDG function\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"==>\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H2C Tx Cmd Content\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB typical Setting.....\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB 3EP Setting for WMM.....\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Got probe response frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Got beacon frame\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Got data frame\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Fram: fc = 0x%X addr1 = 0x%02X:0x%02X:0x%02X:0x%02X:0x%02X:0x%02X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VO queue, set qsel = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VI queue, set qsel = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BK queue, set qsel = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BE queue, set qsel = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 226, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 573, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 600, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 660, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 95, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 401, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 404, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 406, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 407, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 251, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 256, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 261, i32 3 }
@___asan_gen_.66 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 267, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 695, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 723, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8192cu_endpoint_mapping(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !51

if.then:                                          ; preds = %entry
  %out_queue_sel.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %out_queue_sel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %out_queue_sel.i, align 1
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %5 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %6(ptr noundef %1, i32 noundef 65126) #7
  %7 = and i8 %call.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %out_queue_sel.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %out_queue_sel.i, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %out_queue_sel.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %ep_nums.0.i = phi i8 [ 1, %if.then.i ], [ 0, %if.then.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %call.i.i)
  %tobool8.not.i = icmp ult i8 %call.i.i, 16
  br i1 %tobool8.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then9.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %out_queue_sel.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %out_queue_sel.i, align 1
  %13 = or i8 %12, 4
  store i8 %13, ptr %out_queue_sel.i, align 1
  %inc14.i = add nuw nsw i8 %ep_nums.0.i, 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end.i.if.end15.i_crit_edge
  %ep_nums.1.i = phi i8 [ %inc14.i, %if.then9.i ], [ %ep_nums.0.i, %if.end.i.if.end15.i_crit_edge ]
  %14 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i42.i = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 65127) #7
  %16 = and i8 %call.i42.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not.i = icmp eq i8 %16, 0
  br i1 %tobool19.not.i, label %if.end15.i.configvernoutep.exit_crit_edge, label %if.then20.i

if.end15.i.configvernoutep.exit_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %configvernoutep.exit

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %out_queue_sel.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %out_queue_sel.i, align 1
  %19 = or i8 %18, 2
  store i8 %19, ptr %out_queue_sel.i, align 1
  %inc25.i = add nuw nsw i8 %ep_nums.1.i, 1
  br label %configvernoutep.exit

configvernoutep.exit:                             ; preds = %if.then20.i, %if.end15.i.configvernoutep.exit_crit_edge
  %ep_nums.2.i = phi i8 [ %inc25.i, %if.then20.i ], [ %ep_nums.1.i, %if.end15.i.configvernoutep.exit_crit_edge ]
  %out_ep_nums.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %20 = ptrtoint ptr %out_ep_nums.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %out_ep_nums.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %ep_nums.2.i)
  %cmp.i = icmp eq i8 %21, %ep_nums.2.i
  br i1 %cmp.i, label %configvernoutep.exit.if.end8_crit_edge, label %configvernoutep.exit.err_out_crit_edge

configvernoutep.exit.err_out_crit_edge:           ; preds = %configvernoutep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

configvernoutep.exit.if.end8_crit_edge:           ; preds = %configvernoutep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @configvertoutep(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %configvernoutep.exit.if.end8_crit_edge
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %ep_map4.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %out_ep_nums.i18 = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %24 = ptrtoint ptr %out_ep_nums.i18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %out_ep_nums.i18, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %if.end8.err_out_crit_edge [
    i8 2, label %if.end8.err_out.sink.split.sink.split.i_crit_edge
    i8 3, label %sw.bb8.i
    i8 1, label %if.end8.err_out.sink.split.i_crit_edge
  ]

if.end8.err_out.sink.split.i_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.sink.split.i

if.end8.err_out.sink.split.sink.split.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.sink.split.sink.split.i

if.end8.err_out_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

sw.bb8.i:                                         ; preds = %if.end8
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 10, i32 13
  %27 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i, align 4
  %and.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i19, label %sw.bb8.i.err_out_crit_edge, label %sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge

sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.sink.split.sink.split.i

sw.bb8.i.err_out_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

err_out.sink.split.sink.split.i:                  ; preds = %sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge, %if.end8.err_out.sink.split.sink.split.i_crit_edge
  %.str.7.sink.i = phi ptr [ @.str.6, %if.end8.err_out.sink.split.sink.split.i_crit_edge ], [ @.str.7, %sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge ]
  %.sink29.ph.i = phi i32 [ 3, %if.end8.err_out.sink.split.sink.split.i_crit_edge ], [ 5, %sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 2, %if.end8.err_out.sink.split.sink.split.i_crit_edge ], [ 3, %sw.bb8.i.err_out.sink.split.sink.split.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %23, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.7.sink.i) #7
  br label %err_out.sink.split.i

err_out.sink.split.i:                             ; preds = %err_out.sink.split.sink.split.i, %if.end8.err_out.sink.split.i_crit_edge
  %.sink29.i = phi i32 [ 2, %if.end8.err_out.sink.split.i_crit_edge ], [ %.sink29.ph.i, %err_out.sink.split.sink.split.i ]
  %.sink28.i = phi i32 [ 2, %if.end8.err_out.sink.split.i_crit_edge ], [ 3, %err_out.sink.split.sink.split.i ]
  %.sink.i = phi i32 [ 2, %if.end8.err_out.sink.split.i_crit_edge ], [ %.sink.ph.i, %err_out.sink.split.sink.split.i ]
  %arrayidx15.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 1, i32 4, i32 7
  %29 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink29.i, ptr %arrayidx15.i.i, align 4
  %30 = ptrtoint ptr %ep_map4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink28.i, ptr %ep_map4.i, align 4
  %arrayidx19.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %arrayidx19.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %arrayidx21.i.i, align 4
  %arrayidx23.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %arrayidx23.i.i, align 4
  %arrayidx25.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %arrayidx25.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %arrayidx27.i.i, align 4
  br label %err_out

err_out:                                          ; preds = %err_out.sink.split.i, %sw.bb8.i.err_out_crit_edge, %if.end8.err_out_crit_edge, %if.end.err_out_crit_edge, %configvernoutep.exit.err_out_crit_edge
  %error.1 = phi i32 [ %call5, %if.end.err_out_crit_edge ], [ -22, %sw.bb8.i.err_out_crit_edge ], [ -22, %if.end8.err_out_crit_edge ], [ 0, %err_out.sink.split.i ], [ -22, %configvernoutep.exit.err_out_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configvertoutep(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %out_queue_sel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 4
  %2 = ptrtoint ptr %out_queue_sel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %out_queue_sel, align 1
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %1, i32 noundef 65124) #7
  %5 = lshr i8 %call.i, 4
  %6 = and i8 %5, 3
  %conv4 = zext i8 %6 to i32
  %conv4.off = add nsw i32 %conv4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv4.off)
  %switch = icmp ult i32 %conv4.off, 2
  br i1 %switch, label %sw.bb6, label %entry.sw.epilog.sink.split_crit_edge

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i30 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 65096) #7
  %conv8 = zext i8 %call.i30 to i32
  %and9 = and i32 %conv8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.else, label %sw.bb6.sw.epilog.sink.split_crit_edge

sw.bb6.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb6
  %and12 = and i32 %conv8, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.sw.epilog_crit_edge, label %if.else.sw.epilog.sink.split_crit_edge

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.else.sw.epilog.sink.split_crit_edge, %sw.bb6.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 3, %entry.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb6.sw.epilog.sink.split_crit_edge ], [ 2, %if.else.sw.epilog.sink.split_crit_edge ]
  %ep_nums.0.ph = phi i32 [ 2, %entry.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb6.sw.epilog.sink.split_crit_edge ], [ 1, %if.else.sw.epilog.sink.split_crit_edge ]
  %9 = ptrtoint ptr %out_queue_sel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %out_queue_sel, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else.sw.epilog_crit_edge
  %ep_nums.0 = phi i32 [ 1, %if.else.sw.epilog_crit_edge ], [ %ep_nums.0.ph, %sw.epilog.sink.split ]
  %out_ep_nums = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %10 = ptrtoint ptr %out_ep_nums to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out_ep_nums, align 4
  %conv17 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ep_nums.0, i32 %conv17)
  %cmp = icmp eq i32 %ep_nums.0, %conv17
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl8192cu_mq_to_hwq(i16 noundef zeroext %fc, i16 noundef zeroext %mac80211_queue_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %fc, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %0)
  %cmp.i = icmp eq i16 %0, -32768
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end, !prof !51

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %1 = and i16 %fc, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i55 = icmp eq i16 %1, 0
  br i1 %cmp.i55, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %conv = zext i16 %mac80211_queue_index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %mac80211_queue_index)
  %2 = icmp ult i16 %mac80211_queue_index, 4
  br i1 %2, label %switch.lookup, label %land.end

land.end:                                         ; preds = %if.end4
  %.b54 = load i1, ptr @rtl8192cu_mq_to_hwq.__already_done, align 1
  br i1 %.b54, label %land.end.out_crit_edge, label %if.then19, !prof !52

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then19:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl8192cu_mq_to_hwq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  br label %out

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.offset = sub i16 3, %mac80211_queue_index
  br label %out

out:                                              ; preds = %switch.lookup, %if.then19, %land.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %hw_queue_index.0 = phi i16 [ 4, %entry.out_crit_edge ], [ 5, %if.end.out_crit_edge ], [ 1, %if.then19 ], [ 1, %land.end.out_crit_edge ], [ %switch.offset, %switch.lookup ]
  ret i16 %hw_queue_index.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_rx_query_desc(ptr noundef %hw, ptr noundef %stats, ptr nocapture noundef %rx_status, ptr noundef %pdesc8, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdesc8, align 4
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %conv = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 14
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 2
  %5 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdesc8, align 4
  %sh.diff = lshr i32 %6, 5
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %conv5 = and i8 %tr.sh.diff, 120
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 23
  %7 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %rx_drvinfo_size, align 1
  %8 = load i32, ptr %pdesc8, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 3
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 24
  %11 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rx_bufshift, align 2
  %12 = load i32, ptr %pdesc8, align 4
  %icv = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 19
  %13 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %icv, align 2
  %sh.diff213 = lshr i32 %12, 18
  %tr.sh.diff214 = trunc i32 %sh.diff213 to i8
  %bf.value = and i8 %tr.sh.diff214, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.value, %bf.clear
  store i8 %bf.set, ptr %icv, align 2
  %14 = load i32, ptr %pdesc8, align 4
  %sum.shift.i = lshr i32 %14, 22
  %15 = trunc i32 %sum.shift.i to i8
  %16 = shl i8 %15, 6
  %bf.value13 = and i8 %16, 64
  %bf.clear15 = and i8 %bf.set, 63
  %bf.lshr24 = lshr exact i8 %bf.value, 5
  %17 = or i8 %bf.lshr24, %15
  %bf.shl31 = shl i8 %17, 7
  %bf.clear32 = or i8 %bf.clear15, %bf.value13
  %bf.set33 = or i8 %bf.clear32, %bf.shl31
  store i8 %bf.set33, ptr %icv, align 2
  %18 = load i32, ptr %pdesc8, align 4
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 4
  %bf.clear40 = and i8 %bf.set33, -5
  %22 = or i8 %bf.clear40, %21
  %bf.set41 = xor i8 %22, 4
  store i8 %bf.set41, ptr %icv, align 2
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 3
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  %conv44 = and i8 %26, 63
  %rate = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 5
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv44, ptr %rate, align 1
  %28 = load i32, ptr %add.ptr.i, align 4
  %sh.diff215 = lshr i32 %28, 12
  %tr.sh.diff216 = trunc i32 %sh.diff215 to i8
  %bf.value48 = and i8 %tr.sh.diff216, 16
  %bf.clear50 = and i8 %bf.set41, -17
  %bf.set51 = or i8 %bf.clear50, %bf.value48
  store i8 %bf.set51, ptr %icv, align 2
  %add.ptr.i189 = getelementptr i32, ptr %pdesc8, i32 1
  %29 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i189, align 4
  %isampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 25
  %31 = lshr i32 %30, 22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %isampdu to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %isampdu, align 1
  %35 = load i32, ptr %add.ptr.i189, align 4
  %36 = and i32 %35, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %36)
  %37 = icmp eq i32 %36, 12582912
  %isfirst_ampdu = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 26
  %frombool61 = zext i1 %37 to i8
  %38 = ptrtoint ptr %isfirst_ampdu to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool61, ptr %isfirst_ampdu, align 8
  %add.ptr.i196 = getelementptr i32, ptr %pdesc8, i32 5
  %39 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i196, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %timestamp_low = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 20
  %42 = ptrtoint ptr %timestamp_low to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %timestamp_low, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %rx_is40mhzpacket = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 27
  %45 = lshr i32 %44, 17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %rx_is40mhzpacket to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %rx_is40mhzpacket, align 1
  %49 = load i32, ptr %add.ptr.i, align 4
  %is_ht = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 42
  %50 = lshr i32 %49, 30
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %is_ht to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %is_ht, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %54 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %center_freq, align 4
  %conv69 = trunc i32 %57 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %58 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load70 = load i16, ptr %freq, align 4
  %bf.shl72 = shl i16 %conv69, 3
  %bf.clear73 = and i16 %bf.load70, 7
  %bf.set74 = or i16 %bf.clear73, %bf.shl72
  store i16 %bf.set74, ptr %freq, align 4
  %59 = load ptr, ptr %chandef, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %conv78 = trunc i32 %61 to i8
  %band79 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %62 = ptrtoint ptr %band79 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv78, ptr %band79, align 4
  %63 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pdesc8, align 4
  %65 = and i32 %64, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool81.not = icmp eq i32 %65, 0
  br i1 %tobool81.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %66 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flag, align 8
  %or82 = or i32 %67, 32
  store i32 %or82, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %68 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pdesc8, align 4
  %70 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool84.not = icmp eq i32 %70, 0
  br i1 %tobool84.not, label %if.then85, label %if.end.if.end88_crit_edge

if.end.if.end88_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flag86 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %71 = ptrtoint ptr %flag86 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flag86, align 8
  %or87 = or i32 %72, 2
  store i32 %or87, ptr %flag86, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end.if.end88_crit_edge
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 4
  %75 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool90.not = icmp eq i32 %75, 0
  br i1 %tobool90.not, label %if.end88.if.end95_crit_edge, label %if.then91

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %76 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %bf.load92 = load i16, ptr %bw, align 1
  %bf.clear93 = and i16 %bf.load92, -14337
  %bf.set94 = or i16 %bf.clear93, 6144
  store i16 %bf.set94, ptr %bw, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end88.if.end95_crit_edge
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i, align 4
  %79 = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool97.not = icmp eq i32 %79, 0
  br i1 %tobool97.not, label %if.end95.if.end102_crit_edge, label %if.then98

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %80 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %bf.load99 = load i16, ptr %encoding, align 1
  %bf.clear100 = and i16 %bf.load99, 16383
  %bf.set101 = or i16 %bf.clear100, 16384
  store i16 %bf.set101, ptr %encoding, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end95.if.end102_crit_edge
  %flag103 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %81 = ptrtoint ptr %flag103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flag103, align 8
  %or104 = or i32 %82, 128
  store i32 %or104, ptr %flag103, align 8
  %83 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load106 = load i8, ptr %icv, align 2
  %84 = and i8 %bf.load106, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool110.not = icmp eq i8 %84, 0
  br i1 %tobool110.not, label %if.end102.if.end114_crit_edge, label %if.then111

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then111:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %or113 = or i32 %82, 130
  %85 = ptrtoint ptr %flag103 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or113, ptr %flag103, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end102.if.end114_crit_edge
  %86 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_ht, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool116 = icmp ne i8 %87, 0
  %88 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rate, align 1
  %call118 = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool116, i1 noundef zeroext false, i8 noundef zeroext %89) #7
  %conv119 = trunc i32 %call118 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %90 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv119, ptr %rate_idx, align 1
  %91 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i196, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %conv121 = zext i32 %93 to i64
  %94 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv121, ptr %rx_status, align 8
  %95 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool122.not = icmp eq i32 %95, 0
  br i1 %tobool122.not, label %if.end114.if.end126_crit_edge, label %if.then123

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then123:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %98 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_bufshift, align 2
  %conv125 = zext i8 %99 to i32
  %add.ptr = getelementptr i8, ptr %97, i32 %conv125
  tail call void @rtl92c_translate_rx_signal_stuff(ptr noundef %hw, ptr noundef %skb, ptr noundef %stats, ptr noundef %pdesc8, ptr noundef %add.ptr) #7
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end114.if.end126_crit_edge
  %recvsignalpower = getelementptr inbounds %struct.rtl_stats, ptr %stats, i32 0, i32 16
  %100 = ptrtoint ptr %recvsignalpower to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %recvsignalpower, align 4
  %102 = trunc i32 %101 to i8
  %conv127 = add i8 %102, 10
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %103 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv127, ptr %signal, align 2
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtlwifi_rate_mapping(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_translate_rx_signal_stuff(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192cu_rx_hdl(ptr noundef %hw, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %stats.i = alloca %struct.rtl_stats, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %stats.i) #7
  %2 = call ptr @memset(ptr %stats.i, i32 0, i32 152)
  %3 = call ptr @memset(ptr %cb.i.i, i32 0, i32 48)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = lshr i32 %9, 5
  %mul.i = and i32 %10, 120
  %11 = and i32 %9, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %add.i = add nuw nsw i32 %mul.i, 24
  %add3.i = add nuw nsw i32 %add.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add3.i)
  %cmp.i = icmp ult i32 %7, %add3.i
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !51

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 359, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, -12648448
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %conv.i = trunc i32 %16 to i16
  %length.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 14
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %length.i, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %sh.diff.i = lshr i32 %19, 5
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %conv27.i = and i8 %tr.sh.diff.i, 120
  %rx_drvinfo_size.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 23
  %20 = ptrtoint ptr %rx_drvinfo_size.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv27.i, ptr %rx_drvinfo_size.i, align 1
  %21 = load i32, ptr %5, align 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 3
  %rx_bufshift.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 24
  %24 = ptrtoint ptr %rx_bufshift.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %rx_bufshift.i, align 2
  %25 = load i32, ptr %5, align 4
  %icv.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 19
  %26 = ptrtoint ptr %icv.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %icv.i, align 2
  %sh.diff250.i = lshr i32 %25, 18
  %tr.sh.diff251.i = trunc i32 %sh.diff250.i to i8
  %bf.value.i = and i8 %tr.sh.diff251.i, 32
  %bf.clear.i = and i8 %bf.load.i, 11
  %bf.set.i = or i8 %bf.value.i, %bf.clear.i
  %sum.shift.i.i = lshr i32 %25, 22
  %27 = trunc i32 %sum.shift.i.i to i8
  %28 = shl i8 %27, 6
  %bf.value35.i = and i8 %28, 64
  %bf.lshr46.i = lshr exact i8 %bf.value.i, 5
  %29 = or i8 %bf.lshr46.i, %27
  %bf.shl53.i = shl i8 %29, 7
  %30 = trunc i32 %25 to i8
  %31 = lshr i8 %30, 1
  %32 = and i8 %31, 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 3
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %35 = lshr i32 %34, 24
  %36 = trunc i32 %35 to i8
  %conv69.i = and i8 %36, 63
  %rate.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 5
  %37 = ptrtoint ptr %rate.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv69.i, ptr %rate.i, align 1
  %38 = load i32, ptr %add.ptr.i.i, align 4
  %sh.diff252.i = lshr i32 %38, 12
  %tr.sh.diff253.i = trunc i32 %sh.diff252.i to i8
  %bf.value73.i = and i8 %tr.sh.diff253.i, 16
  %bf.clear54.i = or i8 %bf.set.i, %32
  %bf.set55.i = or i8 %bf.clear54.i, %bf.value35.i
  %39 = or i8 %bf.set55.i, %bf.shl53.i
  %40 = or i8 %39, %bf.value73.i
  %bf.set76.i = xor i8 %40, 4
  store i8 %bf.set76.i, ptr %icv.i, align 2
  %add.ptr.i226.i = getelementptr i32, ptr %5, i32 1
  %41 = ptrtoint ptr %add.ptr.i226.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i226.i, align 4
  %43 = and i32 %42, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %43)
  %44 = icmp eq i32 %43, 12582912
  %isampdu.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 25
  %frombool.i = zext i1 %44 to i8
  %45 = ptrtoint ptr %isampdu.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %isampdu.i, align 1
  %add.ptr.i230.i = getelementptr i32, ptr %5, i32 5
  %46 = ptrtoint ptr %add.ptr.i230.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i230.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %timestamp_low.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 20
  %49 = ptrtoint ptr %timestamp_low.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %timestamp_low.i, align 4
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i, align 4
  %rx_is40mhzpacket.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 27
  %52 = lshr i32 %51, 17
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = ptrtoint ptr %rx_is40mhzpacket.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %rx_is40mhzpacket.i, align 1
  %56 = load i32, ptr %add.ptr.i.i, align 4
  %57 = and i32 %56, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool89.i = icmp ne i32 %57, 0
  %is_ht.i = getelementptr inbounds %struct.rtl_stats, ptr %stats.i, i32 0, i32 42
  %.lobit.i = lshr exact i32 %57, 30
  %58 = trunc i32 %.lobit.i to i8
  %59 = ptrtoint ptr %is_ht.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %is_ht.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %60 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %center_freq.i, align 4
  %conv91.i = trunc i32 %63 to i16
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %64 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load92.i = load i16, ptr %freq.i, align 4
  %bf.shl94.i = shl i16 %conv91.i, 3
  %bf.clear95.i = and i16 %bf.load92.i, 7
  %bf.set96.i = or i16 %bf.clear95.i, %bf.shl94.i
  store i16 %bf.set96.i, ptr %freq.i, align 4
  %65 = load ptr, ptr %chandef.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %conv100.i = trunc i32 %67 to i8
  %band101.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %68 = ptrtoint ptr %band101.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv100.i, ptr %band101.i, align 4
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %5, align 4
  %71 = and i32 %70, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool103.not.i = icmp eq i32 %71, 0
  br i1 %tobool103.not.i, label %if.end.i.if.end106.i_crit_edge, label %if.then104.i

if.end.i.if.end106.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

if.then104.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %72 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flag.i, align 8
  %or105.i = or i32 %73, 32
  store i32 %or105.i, ptr %flag.i, align 8
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i, %if.end.i.if.end106.i_crit_edge
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %5, align 4
  %76 = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool108.not.i = icmp eq i32 %76, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %if.end106.i.if.end112.i_crit_edge

if.end106.i.if.end112.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %flag110.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %77 = ptrtoint ptr %flag110.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flag110.i, align 8
  %or111.i = or i32 %78, 2
  store i32 %or111.i, ptr %flag110.i, align 8
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then109.i, %if.end106.i.if.end112.i_crit_edge
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i, align 4
  %81 = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool114.not.i = icmp eq i32 %81, 0
  br i1 %tobool114.not.i, label %if.end112.i.if.end119.i_crit_edge, label %if.then115.i

if.end112.i.if.end119.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  %bw.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %82 = ptrtoint ptr %bw.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %bf.load116.i = load i16, ptr %bw.i, align 1
  %bf.clear117.i = and i16 %bf.load116.i, -14337
  %bf.set118.i = or i16 %bf.clear117.i, 6144
  store i16 %bf.set118.i, ptr %bw.i, align 1
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.end112.i.if.end119.i_crit_edge
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i, align 4
  %85 = and i32 %84, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool121.not.i = icmp eq i32 %85, 0
  br i1 %tobool121.not.i, label %if.end119.i.if.end126.i_crit_edge, label %if.then122.i

if.end119.i.if.end126.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.i

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoding.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %86 = ptrtoint ptr %encoding.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %bf.load123.i = load i16, ptr %encoding.i, align 1
  %bf.clear124.i = and i16 %bf.load123.i, 16383
  %bf.set125.i = or i16 %bf.clear124.i, 16384
  store i16 %bf.set125.i, ptr %encoding.i, align 1
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then122.i, %if.end119.i.if.end126.i_crit_edge
  %call130.i = tail call i32 @rtlwifi_rate_mapping(ptr noundef %hw, i1 noundef zeroext %tobool89.i, i1 noundef zeroext false, i8 noundef zeroext %conv69.i) #7
  %conv131.i = trunc i32 %call130.i to i8
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %87 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv131.i, ptr %rate_idx.i, align 1
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %5, align 4
  %90 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool133.not.i = icmp eq i32 %90, 0
  br i1 %tobool133.not.i, label %if.end126.i.if.end135.i_crit_edge, label %if.then134.i

if.end126.i.if.end135.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.then134.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i32, ptr %5, i32 24
  call void @rtl92c_translate_rx_signal_stuff(ptr noundef %hw, ptr noundef %skb, ptr noundef nonnull %stats.i, ptr noundef %5, ptr noundef %add.ptr.i) #7
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then134.i, %if.end126.i.if.end135.i_crit_edge
  %call137.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %add.i) #7
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 2
  %95 = and i16 %94, -1024
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %95, label %if.end135.i.if.end146.i_crit_edge [
    i16 20480, label %if.end135.i.if.end146.sink.split.i_crit_edge
    i16 -32768, label %if.then145.i
  ]

if.end135.i.if.end146.sink.split.i_crit_edge:     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.sink.split.i

if.end135.i.if.end146.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then145.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.sink.split.i

if.end146.sink.split.i:                           ; preds = %if.then145.i, %if.end135.i.if.end146.sink.split.i_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.10, %if.then145.i ], [ @.str.9, %if.end135.i.if.end146.sink.split.i_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.9.sink.i) #7
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.end146.sink.split.i, %if.end135.i.if.end146.i_crit_edge
  %97 = and i16 %94, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %97)
  %cmp.i248.i = icmp eq i16 %97, 2048
  br i1 %cmp.i248.i, label %if.then148.i, label %if.end146.i._rtl_rx_process.exit_crit_edge

if.end146.i._rtl_rx_process.exit_crit_edge:       ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl_rx_process.exit

if.then148.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.11) #7
  br label %_rtl_rx_process.exit

_rtl_rx_process.exit:                             ; preds = %if.then148.i, %if.end146.i._rtl_rx_process.exit_crit_edge
  %conv150.i = zext i16 %94 to i32
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %92, i32 0, i32 2
  %98 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %addr1.i, align 2
  %conv151.i = zext i8 %99 to i32
  %arrayidx153.i = getelementptr %struct.ieee80211_hdr, ptr %92, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx153.i, align 1
  %conv154.i = zext i8 %101 to i32
  %arrayidx156.i = getelementptr %struct.ieee80211_hdr, ptr %92, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx156.i, align 2
  %conv157.i = zext i8 %103 to i32
  %arrayidx159.i = getelementptr %struct.ieee80211_hdr, ptr %92, i32 0, i32 2, i32 3
  %104 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx159.i, align 1
  %conv160.i = zext i8 %105 to i32
  %arrayidx162.i = getelementptr %struct.ieee80211_hdr, ptr %92, i32 0, i32 2, i32 4
  %106 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx162.i, align 2
  %conv163.i = zext i8 %107 to i32
  %arrayidx165.i = getelementptr %struct.ieee80211_hdr, ptr %92, i32 0, i32 2, i32 5
  %108 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx165.i, align 1
  %conv166.i = zext i8 %109 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %conv150.i, i32 noundef %conv151.i, i32 noundef %conv154.i, i32 noundef %conv157.i, i32 noundef %conv160.i, i32 noundef %conv163.i, i32 noundef %conv166.i) #7
  call void @ieee80211_rx_napi(ptr noundef %hw, ptr noundef null, ptr noundef %skb, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %stats.i) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8192c_tx_cleanup(ptr nocapture noundef %hw, ptr nocapture noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtl8192c_tx_post_hdl(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %urb, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtl8192c_tx_aggregate_hdl(ptr nocapture noundef readnone %hw, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_dequeue(ptr noundef %list) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_tx_fill_desc(ptr noundef %hw, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readnone %pdesc_tx, ptr nocapture noundef readnone %pbd_desc_tx, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, i8 noundef zeroext %queue_index, ptr noundef %tcb_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdr, align 2
  %4 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp.i.i = icmp eq i16 %4, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %retval.0.i, align 1
  %7 = and i8 %6, 15
  %8 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_mapping.i, align 8
  %14 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp.i.i269 = icmp eq i16 %14, -32768
  br i1 %cmp.i.i269, label %entry._rtl8192cu_mq_to_descq.exit_crit_edge, label %if.end.i, !prof !51

entry._rtl8192cu_mq_to_descq.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8192cu_mq_to_descq.exit

if.end.i:                                         ; preds = %entry
  %15 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i12.i = icmp eq i16 %15, 0
  br i1 %cmp.i12.i, label %if.end.i._rtl8192cu_mq_to_descq.exit_crit_edge, label %if.end4.i

if.end.i._rtl8192cu_mq_to_descq.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8192cu_mq_to_descq.exit

if.end4.i:                                        ; preds = %if.end.i
  %16 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %13, label %sw.default.i [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb5.i
    i16 3, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 536870912, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 7) #7
  br label %_rtl8192cu_mq_to_descq.exit

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 536870912, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef 5) #7
  br label %_rtl8192cu_mq_to_descq.exit

sw.bb6.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 536870912, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef 2) #7
  br label %_rtl8192cu_mq_to_descq.exit

sw.default.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 536870912, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef 0) #7
  br label %_rtl8192cu_mq_to_descq.exit

_rtl8192cu_mq_to_descq.exit:                      ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb.i, %if.end.i._rtl8192cu_mq_to_descq.exit_crit_edge, %entry._rtl8192cu_mq_to_descq.exit_crit_edge
  %qsel.0.i = phi i32 [ 0, %sw.default.i ], [ 131072, %sw.bb6.i ], [ 327680, %sw.bb5.i ], [ 458752, %sw.bb.i ], [ 1048576, %entry._rtl8192cu_mq_to_descq.exit_crit_edge ], [ 1179648, %if.end.i._rtl8192cu_mq_to_descq.exit_crit_edge ]
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 5
  %17 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %seq_ctrl, align 2
  %19 = and i16 %18, -3841
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = lshr exact i16 %20, 4
  tail call void @rtl_get_tcb_desc(ptr noundef %hw, ptr noundef %info, ptr noundef %sta, ptr noundef %skb, ptr noundef %tcb_desc) #7
  %call12 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 32) #7
  %22 = getelementptr inbounds i8, ptr %call12, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 24)
  %conv13 = and i32 %11, 65535
  %add.ptr.i = getelementptr i32, ptr %call12, i32 1
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %add.ptr.i, align 4
  %25 = or i32 %conv13, 2097152
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call12, align 4
  %add.ptr.i274 = getelementptr i32, ptr %call12, i32 5
  %hw_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 5
  %28 = ptrtoint ptr %hw_rate to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hw_rate, align 2
  %conv14 = zext i8 %29 to i32
  %30 = shl nuw i32 %conv14, 24
  %31 = and i32 %30, 1056964608
  %32 = ptrtoint ptr %add.ptr.i274 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i274, align 4
  %use_shortgi = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 2
  %33 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load15 = load i8, ptr %use_shortgi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load15)
  %34 = icmp ult i8 %bf.load15, 64
  br i1 %34, label %_rtl8192cu_mq_to_descq.exit.if.end_crit_edge, label %if.then

_rtl8192cu_mq_to_descq.exit.if.end_crit_edge:     ; preds = %_rtl8192cu_mq_to_descq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %_rtl8192cu_mq_to_descq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i278 = or i32 %31, 1073741824
  %35 = ptrtoint ptr %add.ptr.i274 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i.i278, ptr %add.ptr.i274, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %_rtl8192cu_mq_to_descq.exit.if.end_crit_edge
  %idxprom = zext i8 %7 to i32
  %agg_state = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 9, i32 %idxprom, i32 0, i32 5
  %36 = ptrtoint ptr %agg_state to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %agg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp = icmp eq i8 %37, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %info, align 8
  %and26 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %or.i.i280 = or i32 %41, 536870912
  store i32 %or.i.i280, ptr %add.ptr.i, align 4
  %add.ptr.i281 = getelementptr i32, ptr %call12, i32 6
  %42 = ptrtoint ptr %add.ptr.i281 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i281, align 4
  %and.i.i282 = and i32 %43, -16252929
  %or.i.i283 = or i32 %and.i.i282, 10485760
  store i32 %or.i.i283, ptr %add.ptr.i281, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %or.i.i285 = or i32 %45, 1073741824
  store i32 %or.i.i285, ptr %add.ptr.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  %add.ptr.i286 = getelementptr i32, ptr %call12, i32 3
  %46 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i286, align 4
  %and.i.i287 = and i32 %47, -65296
  %48 = tail call i16 @llvm.bswap.i16(i16 %21)
  %49 = zext i16 %48 to i32
  %or.i.i288 = or i32 %and.i.i287, %49
  %50 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i288, ptr %add.ptr.i286, align 4
  %51 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load31 = load i16, ptr %tcb_desc, align 4
  %52 = and i16 %bf.load31, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %52)
  %53 = icmp eq i16 %52, 1024
  %add.ptr.i289 = getelementptr i32, ptr %call12, i32 4
  %54 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i289, align 4
  %and.i.i290 = and i32 %55, -1048577
  %56 = select i1 %53, i32 1048576, i32 0
  %or.i.i291 = or i32 %56, %and.i.i290
  store i32 %or.i.i291, ptr %add.ptr.i289, align 4
  %57 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load41 = load i16, ptr %tcb_desc, align 4
  %58 = and i16 %bf.load41, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %.not = icmp eq i16 %58, 0
  %and.i.i293 = and i32 %or.i.i291, -2097153
  %59 = select i1 %.not, i32 0, i32 2097152
  %or.i.i294 = or i32 %59, %and.i.i293
  %60 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i294, ptr %add.ptr.i289, align 4
  %61 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load54 = load i16, ptr %tcb_desc, align 4
  %62 = lshr i16 %bf.load54, 9
  %63 = zext i16 %62 to i32
  %and.i.i296 = and i32 %or.i.i294, -524289
  %64 = shl nuw nsw i32 %63, 19
  %65 = and i32 %64, 524288
  %or.i.i297 = or i32 %65, %and.i.i296
  store i32 %or.i.i297, ptr %add.ptr.i289, align 4
  %bf.load61 = load i16, ptr %tcb_desc, align 4
  %and.i.i299 = and i32 %or.i.i297, -193
  %66 = lshr i16 %bf.load61, 5
  %67 = and i16 %66, 64
  %68 = zext i16 %67 to i32
  %or.i.i300 = or i32 %and.i.i299, %68
  store i32 %or.i.i300, ptr %add.ptr.i289, align 4
  %rts_rate = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 1
  %69 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rts_rate, align 2
  %conv68 = zext i8 %70 to i32
  %and.i.i304 = and i32 %or.i.i300, -520093833
  %71 = shl nuw i32 %conv68, 24
  %72 = and i32 %71, 520093696
  %or.i.i305 = or i32 %and.i.i304, %72
  store i32 %or.i.i305, ptr %add.ptr.i289, align 4
  %bf.load69 = load i16, ptr %tcb_desc, align 4
  %and.i.i309 = and i32 %or.i.i305, -185
  %73 = lshr i16 %bf.load69, 2
  %74 = and i16 %73, 16
  %75 = zext i16 %74 to i32
  %or.i.i310 = or i32 %and.i.i309, %75
  store i32 %or.i.i310, ptr %add.ptr.i289, align 4
  %76 = load i8, ptr %rts_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %76)
  %cmp76 = icmp ult i8 %76, 12
  %77 = ptrtoint ptr %tcb_desc to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load78 = load i16, ptr %tcb_desc, align 4
  %. = select i1 %cmp76, i16 8, i16 7
  %78 = lshr i16 %bf.load78, %.
  %and.i.i312 = and i32 %or.i.i310, -173
  %cond92.in = shl nuw nsw i16 %78, 2
  %79 = and i16 %cond92.in, 4
  %80 = zext i16 %79 to i32
  %or.i.i313 = or i32 %and.i.i312, %80
  %81 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i.i313, ptr %add.ptr.i289, align 4
  %bw_40 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %82 = ptrtoint ptr %bw_40 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bw_40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool93.not = icmp eq i8 %83, 0
  br i1 %tobool93.not, label %if.else108, label %if.then94

if.then94:                                        ; preds = %if.end29
  %84 = and i16 %bf.load, 255
  %conv95 = zext i16 %84 to i32
  %and96 = and i32 %conv95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else99, label %if.then98

if.then98:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i319 = or i32 %or.i.i313, 12290
  br label %if.end109

if.else99:                                        ; preds = %if.then94
  %and101 = and i32 %conv95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else105, label %if.then103

if.then103:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i322 = or i32 %or.i.i313, 2
  %85 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i.i322, ptr %add.ptr.i289, align 4
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %86 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cur_40_prime_sc, align 1
  %conv104 = zext i8 %87 to i32
  %and.i.i326 = and i32 %or.i.i322, -12457
  %88 = shl nuw nsw i32 %conv104, 12
  %89 = and i32 %88, 12288
  %or.i.i327 = or i32 %89, %and.i.i326
  br label %if.end109

if.else105:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i331 = and i32 %or.i.i313, -12459
  br label %if.end109

if.else108:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i335 = and i32 %or.i.i313, -12459
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.else105, %if.then103, %if.then98
  %or.i.i319.sink = phi i32 [ %or.i.i319, %if.then98 ], [ %and.i.i331, %if.else105 ], [ %or.i.i327, %if.then103 ], [ %and.i.i335, %if.else108 ]
  %90 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i.i319.sink, ptr %add.ptr.i289, align 4
  %91 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %94, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end109.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end109.rcu_read_lock.exit_crit_edge:           ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end109
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end109.rcu_read_lock.exit_crit_edge
  %vif = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 7
  %95 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vif, align 4
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %call110 = tail call ptr @ieee80211_find_sta(ptr noundef %96, ptr noundef %bssid) #7
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %rcu_read_lock.exit.if.end115_crit_edge, label %set_tx_desc_ampdu_density.exit

rcu_read_lock.exit.if.end115_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

set_tx_desc_ampdu_density.exit:                   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i336 = getelementptr i32, ptr %call12, i32 2
  %97 = ptrtoint ptr %add.ptr.i336 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i336, align 4
  %ampdu_density113 = getelementptr inbounds %struct.ieee80211_sta, ptr %call110, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %ampdu_density113 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ampdu_density113, align 4
  %conv114 = zext i8 %100 to i32
  %and.i.i339 = and i32 %98, -28673
  %101 = shl nuw nsw i32 %conv114, 12
  %102 = and i32 %101, 28672
  %or.i.i340 = or i32 %102, %and.i.i339
  store i32 %or.i.i340, ptr %add.ptr.i336, align 4
  br label %if.end115

if.end115:                                        ; preds = %set_tx_desc_ampdu_density.exit, %rcu_read_lock.exit.if.end115_crit_edge
  %call.i341 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i341, label %if.end115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i344

if.end115.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i344:                               ; preds = %if.end115
  %call1.i342 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i342)
  %tobool.not.i343 = icmp eq i32 %call1.i342, 0
  br i1 %tobool.not.i343, label %land.lhs.true.i344.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i346

land.lhs.true.i344.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i346:                              ; preds = %land.lhs.true.i344
  %.b4.i345 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i345, label %land.lhs.true2.i346.rcu_read_unlock.exit_crit_edge, label %if.then.i347

land.lhs.true2.i346.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i346
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i347:                                     ; preds = %land.lhs.true2.i346
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i347, %land.lhs.true2.i346.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i344.rcu_read_unlock.exit_crit_edge, %if.end115.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %103 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i348 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i348 to ptr
  %preempt_count.i.i.i.i349 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i.i349 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i.i349, align 4
  %sub.i.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i349, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %hw_key = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 12
  %107 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_key, align 4
  %tobool116.not = icmp eq ptr %108, null
  br i1 %tobool116.not, label %rcu_read_unlock.exit.if.end120_crit_edge, label %if.then117

rcu_read_unlock.exit.if.end120_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then117:                                       ; preds = %rcu_read_unlock.exit
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cipher, align 8
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %110, label %sw.default [
    i32 1027073, label %if.then117.sw.bb_crit_edge
    i32 1027077, label %if.then117.sw.bb_crit_edge415
    i32 1027074, label %if.then117.sw.bb_crit_edge416
    i32 1027076, label %sw.bb119
  ]

if.then117.sw.bb_crit_edge416:                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then117.sw.bb_crit_edge415:                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then117.sw.bb_crit_edge:                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.then117.sw.bb_crit_edge, %if.then117.sw.bb_crit_edge415, %if.then117.sw.bb_crit_edge416
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i, align 4
  %and.i.i351 = and i32 %113, -49153
  %or.i.i352 = or i32 %and.i.i351, 16384
  br label %if.end120.sink.split

sw.bb119:                                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i, align 4
  %or.i.i355 = or i32 %115, 49152
  br label %if.end120.sink.split

sw.default:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i, align 4
  %and.i.i357 = and i32 %117, -49153
  br label %if.end120.sink.split

if.end120.sink.split:                             ; preds = %sw.default, %sw.bb119, %sw.bb
  %or.i.i352.sink = phi i32 [ %or.i.i352, %sw.bb ], [ %or.i.i355, %sw.bb119 ], [ %and.i.i357, %sw.default ]
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i.i352.sink, ptr %add.ptr.i, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end120.sink.split, %rcu_read_unlock.exit.if.end120_crit_edge
  %119 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i286, align 4
  %and.i.i359 = and i32 %120, -241
  store i32 %and.i.i359, ptr %add.ptr.i286, align 4
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr.i, align 4
  %and.i.i361 = and i32 %122, -2031617
  %or.i.i362 = or i32 %and.i.i361, %qsel.0.i
  store i32 %or.i.i362, ptr %add.ptr.i, align 4
  %123 = ptrtoint ptr %add.ptr.i274 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr.i274, align 4
  %or.i.i366 = or i32 %124, 16711936
  store i32 %or.i.i366, ptr %add.ptr.i274, align 4
  %125 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i289, align 4
  %and.i.i368 = and i32 %126, -262145
  store i32 %and.i.i368, ptr %add.ptr.i289, align 4
  %127 = ptrtoint ptr %use_shortgi to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load121 = load i8, ptr %use_shortgi, align 1
  %128 = lshr i8 %bf.load121, 5
  %129 = zext i8 %128 to i32
  %and.i.i370 = and i32 %126, -327681
  %130 = shl nuw nsw i32 %129, 16
  %131 = and i32 %130, 65536
  %or.i.i371 = or i32 %131, %and.i.i370
  store i32 %or.i.i371, ptr %add.ptr.i289, align 4
  %132 = and i16 %3, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %132)
  %cmp.i = icmp eq i16 %132, -30720
  br i1 %cmp.i, label %if.then128, label %if.end120.if.end132_crit_edge

if.end120.if.end132_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then128:                                       ; preds = %if.end120
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %133 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rdg_en, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool129.not = icmp eq i8 %134, 0
  br i1 %tobool129.not, label %if.then128.if.end132_crit_edge, label %if.then130

if.then128.if.end132_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then130:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.2) #7
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr.i, align 4
  %or.i.i373 = or i32 %136, -2147483648
  store i32 %or.i.i373, ptr %add.ptr.i, align 4
  %137 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %call12, align 4
  %or.i.i374 = or i32 %138, 2
  store i32 %or.i.i374, ptr %call12, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.then128.if.end132_crit_edge, %if.end120.if.end132_crit_edge
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %139 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %useramask, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool133.not = icmp eq i8 %140, 0
  %ratr_index138 = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 3
  %141 = ptrtoint ptr %ratr_index138 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ratr_index138, align 4
  %conv139 = zext i8 %142 to i32
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i, align 4
  %and.i.i388 = and i32 %144, -3841
  %add = shl nuw nsw i32 %conv139, 8
  br i1 %tobool133.not, label %set_tx_desc_rate_id.exit390, label %set_tx_desc_rate_id.exit

set_tx_desc_rate_id.exit:                         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %145 = and i32 %add, 3840
  %or.i.i379 = or i32 %145, %and.i.i388
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or.i.i379, ptr %add.ptr.i, align 4
  %mac_id = getelementptr inbounds %struct.rtl_tcb_desc, ptr %tcb_desc, i32 0, i32 4
  br label %if.end142

set_tx_desc_rate_id.exit390:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %147 = add nuw nsw i32 %add, 3072
  %148 = and i32 %147, 3840
  %or.i.i389 = or i32 %148, %and.i.i388
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or.i.i389, ptr %add.ptr.i, align 4
  br label %if.end142

if.end142:                                        ; preds = %set_tx_desc_rate_id.exit390, %set_tx_desc_rate_id.exit
  %or.i.i389.sink = phi i32 [ %or.i.i379, %set_tx_desc_rate_id.exit ], [ %or.i.i389, %set_tx_desc_rate_id.exit390 ]
  %conv141.sink.in.in = phi ptr [ %mac_id, %set_tx_desc_rate_id.exit ], [ %ratr_index138, %set_tx_desc_rate_id.exit390 ]
  %150 = ptrtoint ptr %conv141.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %150)
  %conv141.sink.in = load i8, ptr %conv141.sink.in.in, align 1
  %conv141.sink = zext i8 %conv141.sink.in to i32
  %and.i.i394 = and i32 %or.i.i389.sink, -520093697
  %151 = shl nuw i32 %conv141.sink, 24
  %152 = and i32 %151, 520093696
  %or.i.i395 = or i32 %152, %and.i.i394
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i.i395, ptr %add.ptr.i, align 4
  br i1 %cmp.i, label %if.end142.if.end154_crit_edge, label %land.lhs.true144

if.end142.if.end154_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

land.lhs.true144:                                 ; preds = %if.end142
  %leisure_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 9
  %154 = ptrtoint ptr %leisure_ps to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %leisure_ps, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool145.not = icmp eq i8 %155, 0
  br i1 %tobool145.not, label %land.lhs.true144.if.end154_crit_edge, label %land.lhs.true147

land.lhs.true144.if.end154_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

land.lhs.true147:                                 ; preds = %land.lhs.true144
  %fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %156 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %fwctrl_lps, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool148.not = icmp eq i8 %157, 0
  br i1 %tobool148.not, label %land.lhs.true147.if.end154_crit_edge, label %if.then150

land.lhs.true147.if.end154_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

if.then150:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i289, align 4
  %or.i.i399 = or i32 %159, -2147483648
  store i32 %or.i.i399, ptr %add.ptr.i289, align 4
  %160 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %add.ptr.i286, align 4
  %and.i.i401 = and i32 %161, -241
  %or.i.i402 = or i32 %and.i.i401, 128
  store i32 %or.i.i402, ptr %add.ptr.i286, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %land.lhs.true147.if.end154_crit_edge, %land.lhs.true144.if.end154_crit_edge, %if.end142.if.end154_crit_edge
  %162 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %cmp.i403.not = icmp eq i16 %162, 0
  br i1 %cmp.i403.not, label %if.end154.if.end157_crit_edge, label %if.then156

if.end154.if.end157_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i404 = getelementptr i32, ptr %call12, i32 2
  %163 = ptrtoint ptr %add.ptr.i404 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i404, align 4
  %or.i.i405 = or i32 %164, 512
  store i32 %or.i.i405, ptr %add.ptr.i404, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end154.if.end157_crit_edge
  %165 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %hdr, align 2
  %167 = and i16 %166, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp.i.not.i = icmp eq i16 %167, 0
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %retval.0.i406 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i
  %168 = ptrtoint ptr %retval.0.i406 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %retval.0.i406, align 4
  %170 = and i32 %169, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.i.not = icmp eq i32 %170, 0
  br i1 %tobool.i.not, label %lor.lhs.false161, label %if.end157.if.then165_crit_edge

if.end157.if.then165_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then165

lor.lhs.false161:                                 ; preds = %if.end157
  %171 = ptrtoint ptr %retval.0.i406 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %retval.0.i406, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i406, i32 2
  %173 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %174, %172
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i406, i32 4
  %175 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %176
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i411 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i411, label %lor.lhs.false161.if.then165_crit_edge, label %lor.lhs.false161.if.end166_crit_edge

lor.lhs.false161.if.end166_crit_edge:             ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

lor.lhs.false161.if.then165_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then165

if.then165:                                       ; preds = %lor.lhs.false161.if.then165_crit_edge, %if.end157.if.then165_crit_edge
  %177 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %call12, align 4
  %or.i.i412 = or i32 %178, 1
  store i32 %or.i.i412, ptr %call12, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %lor.lhs.false161.if.end166_crit_edge
  %179 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %call12, align 4
  %or.i.i4.i = or i32 %180, 140
  store i32 %or.i.i4.i, ptr %call12, align 4
  %add.ptr.i.i = getelementptr i32, ptr %call12, i32 7
  %181 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i.i = and i32 %182, 65535
  %183 = lshr i32 %180, 16
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %add.ptr.i, align 2
  %add.ptr.3.i = getelementptr i16, ptr %call12, i32 3
  %186 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %call12, i32 4
  %188 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %call12, i32 5
  %190 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %add.ptr.5.i, align 2
  %192 = ptrtoint ptr %add.ptr.i286 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %add.ptr.i286, align 2
  %add.ptr.7.i = getelementptr i16, ptr %call12, i32 7
  %194 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.7.i, align 2
  %196 = ptrtoint ptr %add.ptr.i289 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %add.ptr.i289, align 2
  %add.ptr.9.i = getelementptr i16, ptr %call12, i32 9
  %198 = ptrtoint ptr %add.ptr.9.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %add.ptr.9.i, align 2
  %200 = ptrtoint ptr %add.ptr.i274 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %add.ptr.i274, align 2
  %add.ptr.11.i = getelementptr i16, ptr %call12, i32 11
  %202 = ptrtoint ptr %add.ptr.11.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %add.ptr.11.i, align 2
  %add.ptr.12.i = getelementptr i16, ptr %call12, i32 12
  %204 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %call12, i32 13
  %206 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %add.ptr.13.i, align 2
  %208 = xor i32 %183, %182
  %209 = xor i32 %208, %or.i.i4.i
  %210 = trunc i32 %209 to i16
  %211 = xor i16 %185, %210
  %212 = xor i16 %211, %187
  %213 = xor i16 %212, %189
  %214 = xor i16 %213, %191
  %215 = xor i16 %214, %193
  %216 = xor i16 %215, %195
  %217 = xor i16 %216, %197
  %218 = xor i16 %217, %199
  %219 = xor i16 %218, %201
  %220 = xor i16 %219, %203
  %221 = xor i16 %220, %205
  %222 = xor i16 %221, %207
  %223 = tail call i16 @llvm.bswap.i16(i16 %222) #7
  %xor.15.i = zext i16 %223 to i32
  %224 = tail call i32 @llvm.bswap.i32(i32 %xor.15.i) #7
  %or.i.i.i = or i32 %224, %and.i.i.i
  %225 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or.i.i.i, ptr %add.ptr.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.3) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_get_tcb_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_fill_fake_txdesc(ptr nocapture noundef readnone %hw, ptr noundef %pdesc8, i32 noundef %buffer_len, i1 noundef zeroext %is_pspoll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %pdesc8, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8204, ptr %pdesc8, align 4
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %and.i.i17 = and i32 %4, -2031617
  %or.i.i18 = or i32 %and.i.i17, 1179648
  store i32 %or.i.i18, ptr %add.ptr.i, align 4
  br i1 %is_pspoll, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i20 = or i32 %and.i.i17, 1183744
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i20, ptr %add.ptr.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i21 = getelementptr i32, ptr %pdesc8, i32 4
  %6 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i21, align 4
  %or.i.i22 = or i32 %7, -2147483648
  store i32 %or.i.i22, ptr %add.ptr.i21, align 4
  %add.ptr.i23 = getelementptr i32, ptr %pdesc8, i32 3
  %8 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i23, align 4
  %and.i.i24 = and i32 %9, -241
  %or.i.i25 = or i32 %and.i.i24, 128
  store i32 %or.i.i25, ptr %add.ptr.i23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = and i32 %buffer_len, 65535
  %11 = or i32 %10, 203423744
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr.i26 = getelementptr i32, ptr %pdesc8, i32 4
  %13 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i26, align 4
  %or.i.i28 = or i32 %14, 65536
  store i32 %or.i.i28, ptr %add.ptr.i26, align 4
  %or.i.i29 = or i32 %12, 128
  %15 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i29, ptr %pdesc8, align 4
  %add.ptr.i30 = getelementptr i32, ptr %pdesc8, i32 5
  %16 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i30, align 4
  %and.i.i31 = and i32 %17, -1056964609
  store i32 %and.i.i31, ptr %add.ptr.i30, align 4
  %add.ptr.i.i = getelementptr i32, ptr %pdesc8, i32 7
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i.i = and i32 %19, 65535
  %20 = lshr i32 %12, 16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr.3.i = getelementptr i16, ptr %pdesc8, i32 3
  %23 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.3.i, align 2
  %add.ptr.4.i = getelementptr i16, ptr %pdesc8, i32 4
  %25 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.4.i, align 2
  %add.ptr.5.i = getelementptr i16, ptr %pdesc8, i32 5
  %27 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.5.i, align 2
  %add.ptr.6.i = getelementptr i16, ptr %pdesc8, i32 6
  %29 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.6.i, align 2
  %add.ptr.7.i = getelementptr i16, ptr %pdesc8, i32 7
  %31 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.7.i, align 2
  %33 = lshr i32 %or.i.i28, 16
  %34 = trunc i32 %33 to i16
  %35 = trunc i32 %14 to i16
  %36 = lshr i32 %and.i.i31, 16
  %37 = trunc i32 %36 to i16
  %38 = trunc i32 %17 to i16
  %add.ptr.12.i = getelementptr i16, ptr %pdesc8, i32 12
  %39 = ptrtoint ptr %add.ptr.12.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.12.i, align 2
  %add.ptr.13.i = getelementptr i16, ptr %pdesc8, i32 13
  %41 = ptrtoint ptr %add.ptr.13.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.13.i, align 2
  %43 = xor i32 %20, %19
  %44 = trunc i32 %43 to i16
  %45 = xor i16 %22, %44
  %46 = xor i16 %45, %24
  %47 = xor i16 %46, %26
  %48 = xor i16 %47, %28
  %49 = xor i16 %48, %30
  %50 = xor i16 %49, %32
  %51 = xor i16 %50, %34
  %52 = xor i16 %51, %35
  %53 = xor i16 %52, %37
  %54 = xor i16 %53, %38
  %55 = xor i16 %54, %40
  %56 = xor i16 %55, %42
  %57 = xor i16 %56, 8332
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #7
  %xor.15.i = zext i16 %58 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %xor.15.i) #7
  %or.i.i.i = or i32 %59, %and.i.i.i
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i.i, ptr %add.ptr.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_tx_fill_cmddesc(ptr nocapture noundef readonly %hw, ptr noundef %pdesc8, i1 noundef zeroext %firstseg, i1 noundef zeroext %lastseg, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = call ptr @memset(ptr %pdesc8, i32 0, i32 32)
  br i1 %firstseg, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdesc8, align 4
  %and.i.i = and i32 %8, -65281
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %pdesc8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i32, ptr %pdesc8, i32 5
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %and.i.i25 = and i32 %10, -1056964609
  store i32 %and.i.i25, ptr %add.ptr.i, align 4
  %add.ptr.i26 = getelementptr i32, ptr %pdesc8, i32 3
  %11 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i26, align 4
  %and.i.i27 = and i32 %12, -65296
  store i32 %and.i.i27, ptr %add.ptr.i26, align 4
  %13 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdesc8, align 4
  %and.i.i28 = and i32 %14, -157
  %add.ptr.i29 = getelementptr i32, ptr %pdesc8, i32 1
  %15 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i29, align 4
  %or.i.i31 = and i32 %16, -522129153
  %or.i.i36 = or i32 %or.i.i31, 1050368
  store i32 %or.i.i36, ptr %add.ptr.i29, align 4
  %or.i.i39 = or i32 %and.i.i28, 140
  store i32 %or.i.i39, ptr %pdesc8, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %conv3 = and i32 %18, 65535
  %and.i.i40 = and i32 %or.i.i39, 239
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv3) #7
  %or.i.i41 = or i32 %and.i.i40, %19
  %or.i.i45 = or i32 %or.i.i41, 8192
  %20 = ptrtoint ptr %pdesc8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i45, ptr %pdesc8, align 4
  %add.ptr.i46 = getelementptr i32, ptr %pdesc8, i32 4
  %21 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i46, align 4
  %or.i.i48 = or i32 %22, 65536
  store i32 %or.i.i48, ptr %add.ptr.i46, align 4
  %23 = and i16 %5, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %23)
  %cmp.i = icmp eq i16 %23, -30720
  br i1 %cmp.i, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i50 = or i32 %22, -2147418112
  %24 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i50, ptr %add.ptr.i46, align 4
  %and.i.i52 = and i32 %12, -65536
  %or.i.i53 = or i32 %and.i.i52, 128
  %25 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i53, ptr %add.ptr.i26, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef %pdesc8, i32 noundef 32) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 226, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 573, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 600, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 660, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 85, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 95, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 113, i32 3}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 123, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 401, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 404, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 406, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 407, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 251, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 256, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 261, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/trx.c", i32 267, i32 3}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
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
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i8 0, i8 2}
!54 = !{i64 2149339179}
!55 = !{i64 2149339445}
