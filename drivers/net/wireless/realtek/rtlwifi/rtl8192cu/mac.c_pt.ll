; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.phy_sts_cck_8192s_t = type { [4 x i8], i8, i8 }
%struct.rx_fwinfo_92c = type { [4 x i8], i8, [4 x i8], [4 x i8], [2 x i8], [4 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8, i8 }

@rtl92c_read_chip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8192cu: Chip version 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92c_read_chip_version\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c\00", [43 x i8] zeroinitializer }, align 32
@rtl92c_read_chip_version._entry_ptr = internal global ptr @rtl92c_read_chip_version._entry, section ".printk_index", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NORMAL_B_CHIP_92C\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NORMAL_TSMC_CHIP_92C\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NORMAL_TSMC_CHIP_88C\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NORMAL_UMC_CHIP_i92C_1T2R_A_CUT\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NORMAL_UMC_CHIP_92C_A_CUT\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NORMAL_UMC_CHIP_88C_A_CUT\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NORMAL_UMC_CHIP_92C_1T2R_B_CUT\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NORMAL_UMC_CHIP_92C_B_CUT\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NORMAL_UMC_CHIP_88C_B_CUT\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST_CHIP_92C\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST_CHIP_88C\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chip Version ID: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_2T2R\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92c_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013rtl8192cu: Failed to polling write LLT done at address %d! _LLT_OP_VALUE(%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl92c_llt_write\00", [47 x i8] zeroinitializer }, align 32
@rtl92c_llt_write._entry_ptr = internal global ptr @rtl92c_llt_write._entry, section ".printk_index", align 4
@rtl92c_init_llt_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192cu: ===> %s #1 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl92c_init_llt_table\00", [42 x i8] zeroinitializer }, align 32
@rtl92c_init_llt_table._entry_ptr = internal global ptr @rtl92c_init_llt_table._entry, section ".printk_index", align 4
@rtl92c_init_llt_table._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192cu: ===> %s #2 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92c_init_llt_table._entry_ptr.26 = internal global ptr @rtl92c_init_llt_table._entry.24, section ".printk_index", align 4
@rtl92c_init_llt_table._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192cu: ===> %s #3 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92c_init_llt_table._entry_ptr.29 = internal global ptr @rtl92c_init_llt_table._entry.27, section ".printk_index", align 4
@rtl92c_init_llt_table._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192cu: ===> %s #4 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92c_init_llt_table._entry_ptr.32 = internal global ptr @rtl92c_init_llt_table._entry.30, section ".printk_index", align 4
@rtl92c_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92c_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl92c_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8192cu: illegal switch case\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl92c_set_key\00", [17 x i8] zeroinitializer }, align 32
@rtl92c_set_key._entry_ptr = internal global ptr @rtl92c_set_key._entry, section ".printk_index", align 4
@rtl92c_set_key._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192cu: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl92c_set_key._entry_ptr.38 = internal global ptr @rtl92c_set_key._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delete one entry\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"The insert KEY length is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"The insert KEY is %x %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pairwise Key content\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Network type %d not supported!\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.rtl92c_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.rtl92c_set_network_type = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 16, i64 17, i64 19, i64 48, i64 49, i64 51, i64 112, i64 113, i64 115]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 55, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 58, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 61, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 64, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 67, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 70, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 73, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 76, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 79, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 82, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 85, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 88, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 91, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 94, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 102, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 110, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 137, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 161, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 168, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 179, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 186, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 202, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 208, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 217, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 242, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 259, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 271, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 278, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 281, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 285, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 288, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 293, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 302, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 385, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 390, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 395, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 400, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 404, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [28 x i8] c"switch.table.rtl92c_set_key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [37 x i8] c"switch.table.rtl92c_set_network_type\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @rtl92c_init_llt_table._entry, ptr @rtl92c_init_llt_table._entry.24, ptr @rtl92c_init_llt_table._entry.27, ptr @rtl92c_init_llt_table._entry.30, ptr @rtl92c_init_llt_table._entry_ptr, ptr @rtl92c_init_llt_table._entry_ptr.26, ptr @rtl92c_init_llt_table._entry_ptr.29, ptr @rtl92c_init_llt_table._entry_ptr.32, ptr @rtl92c_llt_write._entry, ptr @rtl92c_llt_write._entry_ptr, ptr @rtl92c_read_chip_version._entry, ptr @rtl92c_read_chip_version._entry_ptr, ptr @rtl92c_set_key._entry, ptr @rtl92c_set_key._entry.36, ptr @rtl92c_set_key._entry_ptr, ptr @rtl92c_set_key._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @rtl92c_set_key.cam_const_addr, ptr @rtl92c_set_key.cam_const_broad, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.rtl92c_set_key, ptr @switch.table.rtl92c_set_network_type], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_read_chip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_llt_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_llt_table._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_llt_table._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_llt_table._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_set_key._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92c_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92c_set_network_type to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_read_chip_version(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 240) #4
  %and = and i32 %call.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = lshr i32 %call.i, 27
  %and4.lobit = and i32 %and4, 1
  br i1 %tobool.not, label %if.else, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.else:                                          ; preds = %entry
  %and7 = and i32 %call.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %4 = lshr exact i32 %and7, 14
  %and14 = and i32 %call.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %5 = or i1 %tobool8.not, %tobool15.not
  %or17 = select i1 %5, i32 0, i32 64
  %or = or i32 %4, %and4.lobit
  %or10 = or i32 %or, %or17
  %chip_version.0 = or i32 %or10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.lobit)
  %cmp.not = icmp eq i32 %and4.lobit, 0
  br i1 %cmp.not, label %if.else.if.end30_crit_edge, label %if.then23

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32_sync.i, align 4
  %call.i110 = tail call i32 %7(ptr noundef %1, i32 noundef 236) #4
  %8 = and i32 %call.i110, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %8)
  %cmp26 = icmp eq i32 %8, 4194304
  %cond27 = select i1 %cmp26, i32 3, i32 0
  %or28 = or i32 %cond27, %chip_version.0
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.else.if.end30_crit_edge, %entry.if.end30_crit_edge
  %chip_version.1 = phi i32 [ %or28, %if.then23 ], [ %chip_version.0, %if.else.if.end30_crit_edge ], [ %and4.lobit, %entry.if.end30_crit_edge ]
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %chip_version.1, ptr %version, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %chip_version.1) #7
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %sw.default [
    i32 19, label %if.end30.sw.epilog_crit_edge
    i32 17, label %sw.bb33
    i32 16, label %sw.bb34
    i32 51, label %sw.bb35
    i32 49, label %sw.bb36
    i32 48, label %sw.bb37
    i32 115, label %sw.bb38
    i32 113, label %sw.bb39
    i32 112, label %sw.bb40
    i32 1, label %sw.bb41
    i32 0, label %sw.bb42
  ]

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %if.end30.sw.epilog_crit_edge
  %versionid.0 = phi ptr [ @.str.14, %sw.default ], [ @.str.13, %sw.bb42 ], [ @.str.12, %sw.bb41 ], [ @.str.11, %sw.bb40 ], [ @.str.10, %sw.bb39 ], [ @.str.9, %sw.bb38 ], [ @.str.8, %sw.bb37 ], [ @.str.7, %sw.bb36 ], [ @.str.6, %sw.bb35 ], [ @.str.5, %sw.bb34 ], [ @.str.4, %sw.bb33 ], [ @.str.3, %if.end30.sw.epilog_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.15, ptr noundef nonnull %versionid.0) #4
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %and44 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 1
  br i1 %cmp45, label %if.then50, label %sw.epilog.if.end60.thread_crit_edge

sw.epilog.if.end60.thread_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.thread

if.then50:                                        ; preds = %sw.epilog
  %and52 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %17, label %if.then50.if.end60.thread_crit_edge

if.then50.if.end60.thread_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.thread

if.end60.thread:                                  ; preds = %if.then50.if.end60.thread_crit_edge, %sw.epilog.if.end60.thread_crit_edge
  %.sink.ph = phi i8 [ 0, %sw.epilog.if.end60.thread_crit_edge ], [ 1, %if.then50.if.end60.thread_crit_edge ]
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink.ph, ptr %15, align 1
  br label %20

17:                                               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %18, align 1
  br label %20

20:                                               ; preds = %17, %if.end60.thread
  %21 = phi ptr [ %18, %17 ], [ %15, %if.end60.thread ]
  %22 = phi ptr [ @.str.17, %17 ], [ @.str.18, %if.end60.thread ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull %22) #4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp68 = icmp eq i8 %24, 0
  br i1 %cmp68, label %.if.end78_crit_edge, label %if.else71

.if.end78_crit_edge:                              ; preds = %20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.else71:                                        ; preds = %20
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx74 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %25 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx74, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %.if.end78_crit_edge
  %26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %26, align 2
  %28 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %version, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %29) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_llt_write(ptr nocapture noundef readonly %hw, i32 noundef %address, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = shl i32 %address, 8
  %shl = and i32 %and, 65280
  %and1 = and i32 %data, 255
  %or = or i32 %and1, %shl
  %or2 = or i32 %or, 1073741824
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 480, i32 noundef %or2) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 480) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %read32_sync.i19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i19, align 4
  %call.i2022 = tail call i32 %11(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i2022)
  %cmp23 = icmp ult i32 %call.i2022, 1073741824
  br i1 %cmp23, label %rtl_write_dword.exit.do.end12_crit_edge, label %do.body

rtl_write_dword.exit.do.end12_crit_edge:          ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

do.body:                                          ; preds = %rtl_write_dword.exit
  %12 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20 = tail call i32 %13(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20)
  %cmp = icmp ult i32 %call.i20, 1073741824
  br i1 %cmp, label %do.body.do.end12_crit_edge, label %if.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end:                                           ; preds = %do.body
  %14 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.1 = tail call i32 %15(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.1)
  %cmp.1 = icmp ult i32 %call.i20.1, 1073741824
  br i1 %cmp.1, label %if.end.do.end12_crit_edge, label %if.end.1

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.1:                                         ; preds = %if.end
  %16 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.2 = tail call i32 %17(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.2)
  %cmp.2 = icmp ult i32 %call.i20.2, 1073741824
  br i1 %cmp.2, label %if.end.1.do.end12_crit_edge, label %if.end.2

if.end.1.do.end12_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.2:                                         ; preds = %if.end.1
  %18 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.3 = tail call i32 %19(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.3)
  %cmp.3 = icmp ult i32 %call.i20.3, 1073741824
  br i1 %cmp.3, label %if.end.2.do.end12_crit_edge, label %if.end.3

if.end.2.do.end12_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.3:                                         ; preds = %if.end.2
  %20 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.4 = tail call i32 %21(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.4)
  %cmp.4 = icmp ult i32 %call.i20.4, 1073741824
  br i1 %cmp.4, label %if.end.3.do.end12_crit_edge, label %if.end.4

if.end.3.do.end12_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.4:                                         ; preds = %if.end.3
  %22 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.5 = tail call i32 %23(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.5)
  %cmp.5 = icmp ult i32 %call.i20.5, 1073741824
  br i1 %cmp.5, label %if.end.4.do.end12_crit_edge, label %if.end.5

if.end.4.do.end12_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.5:                                         ; preds = %if.end.4
  %24 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.6 = tail call i32 %25(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.6)
  %cmp.6 = icmp ult i32 %call.i20.6, 1073741824
  br i1 %cmp.6, label %if.end.5.do.end12_crit_edge, label %if.end.6

if.end.5.do.end12_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.6:                                         ; preds = %if.end.5
  %26 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.7 = tail call i32 %27(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.7)
  %cmp.7 = icmp ult i32 %call.i20.7, 1073741824
  br i1 %cmp.7, label %if.end.6.do.end12_crit_edge, label %if.end.7

if.end.6.do.end12_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.7:                                         ; preds = %if.end.6
  %28 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.8 = tail call i32 %29(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.8)
  %cmp.8 = icmp ult i32 %call.i20.8, 1073741824
  br i1 %cmp.8, label %if.end.7.do.end12_crit_edge, label %if.end.8

if.end.7.do.end12_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.8:                                         ; preds = %if.end.7
  %30 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.9 = tail call i32 %31(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.9)
  %cmp.9 = icmp ult i32 %call.i20.9, 1073741824
  br i1 %cmp.9, label %if.end.8.do.end12_crit_edge, label %if.end.9

if.end.8.do.end12_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.9:                                         ; preds = %if.end.8
  %32 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.10 = tail call i32 %33(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.10)
  %cmp.10 = icmp ult i32 %call.i20.10, 1073741824
  br i1 %cmp.10, label %if.end.9.do.end12_crit_edge, label %if.end.10

if.end.9.do.end12_crit_edge:                      ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.10:                                        ; preds = %if.end.9
  %34 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.11 = tail call i32 %35(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.11)
  %cmp.11 = icmp ult i32 %call.i20.11, 1073741824
  br i1 %cmp.11, label %if.end.10.do.end12_crit_edge, label %if.end.11

if.end.10.do.end12_crit_edge:                     ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.11:                                        ; preds = %if.end.10
  %36 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.12 = tail call i32 %37(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.12)
  %cmp.12 = icmp ult i32 %call.i20.12, 1073741824
  br i1 %cmp.12, label %if.end.11.do.end12_crit_edge, label %if.end.12

if.end.11.do.end12_crit_edge:                     ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.12:                                        ; preds = %if.end.11
  %38 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.13 = tail call i32 %39(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.13)
  %cmp.13 = icmp ult i32 %call.i20.13, 1073741824
  br i1 %cmp.13, label %if.end.12.do.end12_crit_edge, label %if.end.13

if.end.12.do.end12_crit_edge:                     ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.13:                                        ; preds = %if.end.12
  %40 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.14 = tail call i32 %41(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.14)
  %cmp.14 = icmp ult i32 %call.i20.14, 1073741824
  br i1 %cmp.14, label %if.end.13.do.end12_crit_edge, label %if.end.14

if.end.13.do.end12_crit_edge:                     ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.14:                                        ; preds = %if.end.13
  %42 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.15 = tail call i32 %43(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.15)
  %cmp.15 = icmp ult i32 %call.i20.15, 1073741824
  br i1 %cmp.15, label %if.end.14.do.end12_crit_edge, label %if.end.15

if.end.14.do.end12_crit_edge:                     ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.15:                                        ; preds = %if.end.14
  %44 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.16 = tail call i32 %45(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.16)
  %cmp.16 = icmp ult i32 %call.i20.16, 1073741824
  br i1 %cmp.16, label %if.end.15.do.end12_crit_edge, label %if.end.16

if.end.15.do.end12_crit_edge:                     ; preds = %if.end.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.16:                                        ; preds = %if.end.15
  %46 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.17 = tail call i32 %47(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.17)
  %cmp.17 = icmp ult i32 %call.i20.17, 1073741824
  br i1 %cmp.17, label %if.end.16.do.end12_crit_edge, label %if.end.17

if.end.16.do.end12_crit_edge:                     ; preds = %if.end.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.17:                                        ; preds = %if.end.16
  %48 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.18 = tail call i32 %49(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.18)
  %cmp.18 = icmp ult i32 %call.i20.18, 1073741824
  br i1 %cmp.18, label %if.end.17.do.end12_crit_edge, label %if.end.18

if.end.17.do.end12_crit_edge:                     ; preds = %if.end.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.18:                                        ; preds = %if.end.17
  %50 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.19 = tail call i32 %51(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.19)
  %cmp.19 = icmp ult i32 %call.i20.19, 1073741824
  br i1 %cmp.19, label %if.end.18.do.end12_crit_edge, label %if.end.19

if.end.18.do.end12_crit_edge:                     ; preds = %if.end.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.19:                                        ; preds = %if.end.18
  %52 = ptrtoint ptr %read32_sync.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32_sync.i19, align 4
  %call.i20.20 = tail call i32 %53(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.20)
  %cmp.20 = icmp ult i32 %call.i20.20, 1073741824
  br i1 %cmp.20, label %if.end.19.do.end12_crit_edge, label %if.end.20

if.end.19.do.end12_crit_edge:                     ; preds = %if.end.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

if.end.20:                                        ; preds = %if.end.19
  call void @__sanitizer_cov_trace_pc() #6
  %shr.le = lshr i32 %call.i20.20, 30
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %address, i32 noundef %shr.le) #7
  br label %do.end12

do.end12:                                         ; preds = %if.end.20, %if.end.19.do.end12_crit_edge, %if.end.18.do.end12_crit_edge, %if.end.17.do.end12_crit_edge, %if.end.16.do.end12_crit_edge, %if.end.15.do.end12_crit_edge, %if.end.14.do.end12_crit_edge, %if.end.13.do.end12_crit_edge, %if.end.12.do.end12_crit_edge, %if.end.11.do.end12_crit_edge, %if.end.10.do.end12_crit_edge, %if.end.9.do.end12_crit_edge, %if.end.8.do.end12_crit_edge, %if.end.7.do.end12_crit_edge, %if.end.6.do.end12_crit_edge, %if.end.5.do.end12_crit_edge, %if.end.4.do.end12_crit_edge, %if.end.3.do.end12_crit_edge, %if.end.2.do.end12_crit_edge, %if.end.1.do.end12_crit_edge, %if.end.do.end12_crit_edge, %do.body.do.end12_crit_edge, %rtl_write_dword.exit.do.end12_crit_edge
  %status.0.off0 = phi i1 [ false, %if.end.20 ], [ true, %rtl_write_dword.exit.do.end12_crit_edge ], [ true, %if.end.19.do.end12_crit_edge ], [ true, %if.end.18.do.end12_crit_edge ], [ true, %if.end.17.do.end12_crit_edge ], [ true, %if.end.16.do.end12_crit_edge ], [ true, %if.end.15.do.end12_crit_edge ], [ true, %if.end.14.do.end12_crit_edge ], [ true, %if.end.13.do.end12_crit_edge ], [ true, %if.end.12.do.end12_crit_edge ], [ true, %if.end.11.do.end12_crit_edge ], [ true, %if.end.10.do.end12_crit_edge ], [ true, %if.end.9.do.end12_crit_edge ], [ true, %if.end.8.do.end12_crit_edge ], [ true, %if.end.7.do.end12_crit_edge ], [ true, %if.end.6.do.end12_crit_edge ], [ true, %if.end.5.do.end12_crit_edge ], [ true, %if.end.4.do.end12_crit_edge ], [ true, %if.end.3.do.end12_crit_edge ], [ true, %if.end.2.do.end12_crit_edge ], [ true, %if.end.1.do.end12_crit_edge ], [ true, %if.end.do.end12_crit_edge ], [ true, %do.body.do.end12_crit_edge ]
  ret i1 %status.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_init_llt_table(ptr nocapture noundef readonly %hw, i32 noundef %boundary) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %boundary, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp166.not = icmp eq i32 %sub, 0
  br i1 %cmp166.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %rtl92c_llt_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %rtl92c_llt_write.exit.for.body_crit_edge ]
  %add = add nuw i32 %i.0167, 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %and.i = shl i32 %i.0167, 8
  %shl.i = and i32 %and.i, 65280
  %and1.i = and i32 %add, 255
  %or.i = or i32 %shl.i, %and1.i
  %or2.i = or i32 %or.i, 1073741824
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 480, i32 noundef %or2.i) #4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %for.body.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

for.body.rtl_write_dword.exit.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %1, i32 noundef 480) #4
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %for.body.rtl_write_dword.exit.i_crit_edge
  %read32_sync.i19.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i2022.i = tail call i32 %11(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i2022.i)
  %cmp23.i = icmp ult i32 %call.i2022.i, 1073741824
  br i1 %cmp23.i, label %rtl_write_dword.exit.i.rtl92c_llt_write.exit_crit_edge, label %do.body.i.preheader

rtl_write_dword.exit.i.rtl92c_llt_write.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

do.body.i.preheader:                              ; preds = %rtl_write_dword.exit.i
  %12 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i = tail call i32 %13(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i)
  %cmp.i = icmp ult i32 %call.i20.i, 1073741824
  br i1 %cmp.i, label %do.body.i.preheader.rtl92c_llt_write.exit_crit_edge, label %if.end.i

do.body.i.preheader.rtl92c_llt_write.exit_crit_edge: ; preds = %do.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i:                                         ; preds = %do.body.i.preheader
  %14 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.1 = tail call i32 %15(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.1)
  %cmp.i.1 = icmp ult i32 %call.i20.i.1, 1073741824
  br i1 %cmp.i.1, label %if.end.i.rtl92c_llt_write.exit_crit_edge, label %if.end.i.1

if.end.i.rtl92c_llt_write.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.1:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.2 = tail call i32 %17(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.2)
  %cmp.i.2 = icmp ult i32 %call.i20.i.2, 1073741824
  br i1 %cmp.i.2, label %if.end.i.1.rtl92c_llt_write.exit_crit_edge, label %if.end.i.2

if.end.i.1.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  %18 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.3 = tail call i32 %19(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.3)
  %cmp.i.3 = icmp ult i32 %call.i20.i.3, 1073741824
  br i1 %cmp.i.3, label %if.end.i.2.rtl92c_llt_write.exit_crit_edge, label %if.end.i.3

if.end.i.2.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  %20 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.4 = tail call i32 %21(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.4)
  %cmp.i.4 = icmp ult i32 %call.i20.i.4, 1073741824
  br i1 %cmp.i.4, label %if.end.i.3.rtl92c_llt_write.exit_crit_edge, label %if.end.i.4

if.end.i.3.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  %22 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.5 = tail call i32 %23(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.5)
  %cmp.i.5 = icmp ult i32 %call.i20.i.5, 1073741824
  br i1 %cmp.i.5, label %if.end.i.4.rtl92c_llt_write.exit_crit_edge, label %if.end.i.5

if.end.i.4.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  %24 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.6 = tail call i32 %25(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.6)
  %cmp.i.6 = icmp ult i32 %call.i20.i.6, 1073741824
  br i1 %cmp.i.6, label %if.end.i.5.rtl92c_llt_write.exit_crit_edge, label %if.end.i.6

if.end.i.5.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.6:                                       ; preds = %if.end.i.5
  %26 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.7 = tail call i32 %27(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.7)
  %cmp.i.7 = icmp ult i32 %call.i20.i.7, 1073741824
  br i1 %cmp.i.7, label %if.end.i.6.rtl92c_llt_write.exit_crit_edge, label %if.end.i.7

if.end.i.6.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.7:                                       ; preds = %if.end.i.6
  %28 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.8 = tail call i32 %29(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.8)
  %cmp.i.8 = icmp ult i32 %call.i20.i.8, 1073741824
  br i1 %cmp.i.8, label %if.end.i.7.rtl92c_llt_write.exit_crit_edge, label %if.end.i.8

if.end.i.7.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.8:                                       ; preds = %if.end.i.7
  %30 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.9 = tail call i32 %31(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.9)
  %cmp.i.9 = icmp ult i32 %call.i20.i.9, 1073741824
  br i1 %cmp.i.9, label %if.end.i.8.rtl92c_llt_write.exit_crit_edge, label %if.end.i.9

if.end.i.8.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.9:                                       ; preds = %if.end.i.8
  %32 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.10 = tail call i32 %33(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.10)
  %cmp.i.10 = icmp ult i32 %call.i20.i.10, 1073741824
  br i1 %cmp.i.10, label %if.end.i.9.rtl92c_llt_write.exit_crit_edge, label %if.end.i.10

if.end.i.9.rtl92c_llt_write.exit_crit_edge:       ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.10:                                      ; preds = %if.end.i.9
  %34 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.11 = tail call i32 %35(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.11)
  %cmp.i.11 = icmp ult i32 %call.i20.i.11, 1073741824
  br i1 %cmp.i.11, label %if.end.i.10.rtl92c_llt_write.exit_crit_edge, label %if.end.i.11

if.end.i.10.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.11:                                      ; preds = %if.end.i.10
  %36 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.12 = tail call i32 %37(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.12)
  %cmp.i.12 = icmp ult i32 %call.i20.i.12, 1073741824
  br i1 %cmp.i.12, label %if.end.i.11.rtl92c_llt_write.exit_crit_edge, label %if.end.i.12

if.end.i.11.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.12:                                      ; preds = %if.end.i.11
  %38 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.13 = tail call i32 %39(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.13)
  %cmp.i.13 = icmp ult i32 %call.i20.i.13, 1073741824
  br i1 %cmp.i.13, label %if.end.i.12.rtl92c_llt_write.exit_crit_edge, label %if.end.i.13

if.end.i.12.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.13:                                      ; preds = %if.end.i.12
  %40 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.14 = tail call i32 %41(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.14)
  %cmp.i.14 = icmp ult i32 %call.i20.i.14, 1073741824
  br i1 %cmp.i.14, label %if.end.i.13.rtl92c_llt_write.exit_crit_edge, label %if.end.i.14

if.end.i.13.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.14:                                      ; preds = %if.end.i.13
  %42 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.15 = tail call i32 %43(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.15)
  %cmp.i.15 = icmp ult i32 %call.i20.i.15, 1073741824
  br i1 %cmp.i.15, label %if.end.i.14.rtl92c_llt_write.exit_crit_edge, label %if.end.i.15

if.end.i.14.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.15:                                      ; preds = %if.end.i.14
  %44 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.16 = tail call i32 %45(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.16)
  %cmp.i.16 = icmp ult i32 %call.i20.i.16, 1073741824
  br i1 %cmp.i.16, label %if.end.i.15.rtl92c_llt_write.exit_crit_edge, label %if.end.i.16

if.end.i.15.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.16:                                      ; preds = %if.end.i.15
  %46 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.17 = tail call i32 %47(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.17)
  %cmp.i.17 = icmp ult i32 %call.i20.i.17, 1073741824
  br i1 %cmp.i.17, label %if.end.i.16.rtl92c_llt_write.exit_crit_edge, label %if.end.i.17

if.end.i.16.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.17:                                      ; preds = %if.end.i.16
  %48 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.18 = tail call i32 %49(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.18)
  %cmp.i.18 = icmp ult i32 %call.i20.i.18, 1073741824
  br i1 %cmp.i.18, label %if.end.i.17.rtl92c_llt_write.exit_crit_edge, label %if.end.i.18

if.end.i.17.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.18:                                      ; preds = %if.end.i.17
  %50 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.19 = tail call i32 %51(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.19)
  %cmp.i.19 = icmp ult i32 %call.i20.i.19, 1073741824
  br i1 %cmp.i.19, label %if.end.i.18.rtl92c_llt_write.exit_crit_edge, label %if.end.i.19

if.end.i.18.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

if.end.i.19:                                      ; preds = %if.end.i.18
  %52 = ptrtoint ptr %read32_sync.i19.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32_sync.i19.i, align 4
  %call.i20.i.20 = tail call i32 %53(ptr noundef %1, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i.20)
  %cmp.i.20 = icmp ult i32 %call.i20.i.20, 1073741824
  br i1 %cmp.i.20, label %if.end.i.19.rtl92c_llt_write.exit_crit_edge, label %if.end.i.19.cleanup.sink.split_crit_edge

if.end.i.19.cleanup.sink.split_crit_edge:         ; preds = %if.end.i.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i.19.rtl92c_llt_write.exit_crit_edge:      ; preds = %if.end.i.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit

rtl92c_llt_write.exit:                            ; preds = %if.end.i.19.rtl92c_llt_write.exit_crit_edge, %if.end.i.18.rtl92c_llt_write.exit_crit_edge, %if.end.i.17.rtl92c_llt_write.exit_crit_edge, %if.end.i.16.rtl92c_llt_write.exit_crit_edge, %if.end.i.15.rtl92c_llt_write.exit_crit_edge, %if.end.i.14.rtl92c_llt_write.exit_crit_edge, %if.end.i.13.rtl92c_llt_write.exit_crit_edge, %if.end.i.12.rtl92c_llt_write.exit_crit_edge, %if.end.i.11.rtl92c_llt_write.exit_crit_edge, %if.end.i.10.rtl92c_llt_write.exit_crit_edge, %if.end.i.9.rtl92c_llt_write.exit_crit_edge, %if.end.i.8.rtl92c_llt_write.exit_crit_edge, %if.end.i.7.rtl92c_llt_write.exit_crit_edge, %if.end.i.6.rtl92c_llt_write.exit_crit_edge, %if.end.i.5.rtl92c_llt_write.exit_crit_edge, %if.end.i.4.rtl92c_llt_write.exit_crit_edge, %if.end.i.3.rtl92c_llt_write.exit_crit_edge, %if.end.i.2.rtl92c_llt_write.exit_crit_edge, %if.end.i.1.rtl92c_llt_write.exit_crit_edge, %if.end.i.rtl92c_llt_write.exit_crit_edge, %do.body.i.preheader.rtl92c_llt_write.exit_crit_edge, %rtl_write_dword.exit.i.rtl92c_llt_write.exit_crit_edge
  %exitcond.not = icmp eq i32 %add, %sub
  br i1 %exitcond.not, label %rtl92c_llt_write.exit.for.end_crit_edge, label %rtl92c_llt_write.exit.for.body_crit_edge

rtl92c_llt_write.exit.for.body_crit_edge:         ; preds = %rtl92c_llt_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

rtl92c_llt_write.exit.for.end_crit_edge:          ; preds = %rtl92c_llt_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %rtl92c_llt_write.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %priv.i67 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %54 = ptrtoint ptr %priv.i67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i67, align 8
  %and.i68 = shl i32 %sub, 8
  %shl.i69 = and i32 %and.i68, 65280
  %or2.i71 = or i32 %shl.i69, 1073742079
  %write32_async.i.i72 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 13, i32 7
  %56 = ptrtoint ptr %write32_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32_async.i.i72, align 4
  tail call void %57(ptr noundef %55, i32 noundef 480, i32 noundef %or2.i71) #4
  %cfg.i.i73 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i.i74 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i.i74, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i75 = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i75, label %for.end.rtl_write_dword.exit.i82_crit_edge, label %if.then.i.i78

for.end.rtl_write_dword.exit.i82_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit.i82

if.then.i.i78:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i.i76 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 13, i32 11
  %62 = ptrtoint ptr %read32_sync.i.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32_sync.i.i76, align 4
  %call.i.i77 = tail call i32 %63(ptr noundef %55, i32 noundef 480) #4
  br label %rtl_write_dword.exit.i82

rtl_write_dword.exit.i82:                         ; preds = %if.then.i.i78, %for.end.rtl_write_dword.exit.i82_crit_edge
  %read32_sync.i19.i79 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 13, i32 11
  %64 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i2022.i80 = tail call i32 %65(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i2022.i80)
  %cmp23.i81 = icmp ult i32 %call.i2022.i80, 1073741824
  br i1 %cmp23.i81, label %rtl_write_dword.exit.i82.rtl92c_llt_write.exit95_crit_edge, label %do.body.i86.preheader

rtl_write_dword.exit.i82.rtl92c_llt_write.exit95_crit_edge: ; preds = %rtl_write_dword.exit.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

do.body.i86.preheader:                            ; preds = %rtl_write_dword.exit.i82
  %66 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84 = tail call i32 %67(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84)
  %cmp.i85 = icmp ult i32 %call.i20.i84, 1073741824
  br i1 %cmp.i85, label %do.body.i86.preheader.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90

do.body.i86.preheader.rtl92c_llt_write.exit95_crit_edge: ; preds = %do.body.i86.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90:                                       ; preds = %do.body.i86.preheader
  %68 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.1 = tail call i32 %69(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.1)
  %cmp.i85.1 = icmp ult i32 %call.i20.i84.1, 1073741824
  br i1 %cmp.i85.1, label %if.end.i90.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.1

if.end.i90.rtl92c_llt_write.exit95_crit_edge:     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.1:                                     ; preds = %if.end.i90
  %70 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.2 = tail call i32 %71(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.2)
  %cmp.i85.2 = icmp ult i32 %call.i20.i84.2, 1073741824
  br i1 %cmp.i85.2, label %if.end.i90.1.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.2

if.end.i90.1.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.2:                                     ; preds = %if.end.i90.1
  %72 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.3 = tail call i32 %73(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.3)
  %cmp.i85.3 = icmp ult i32 %call.i20.i84.3, 1073741824
  br i1 %cmp.i85.3, label %if.end.i90.2.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.3

if.end.i90.2.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.3:                                     ; preds = %if.end.i90.2
  %74 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.4 = tail call i32 %75(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.4)
  %cmp.i85.4 = icmp ult i32 %call.i20.i84.4, 1073741824
  br i1 %cmp.i85.4, label %if.end.i90.3.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.4

if.end.i90.3.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.4:                                     ; preds = %if.end.i90.3
  %76 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.5 = tail call i32 %77(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.5)
  %cmp.i85.5 = icmp ult i32 %call.i20.i84.5, 1073741824
  br i1 %cmp.i85.5, label %if.end.i90.4.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.5

if.end.i90.4.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.5:                                     ; preds = %if.end.i90.4
  %78 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.6 = tail call i32 %79(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.6)
  %cmp.i85.6 = icmp ult i32 %call.i20.i84.6, 1073741824
  br i1 %cmp.i85.6, label %if.end.i90.5.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.6

if.end.i90.5.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.6:                                     ; preds = %if.end.i90.5
  %80 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.7 = tail call i32 %81(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.7)
  %cmp.i85.7 = icmp ult i32 %call.i20.i84.7, 1073741824
  br i1 %cmp.i85.7, label %if.end.i90.6.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.7

if.end.i90.6.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.7:                                     ; preds = %if.end.i90.6
  %82 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.8 = tail call i32 %83(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.8)
  %cmp.i85.8 = icmp ult i32 %call.i20.i84.8, 1073741824
  br i1 %cmp.i85.8, label %if.end.i90.7.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.8

if.end.i90.7.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.8:                                     ; preds = %if.end.i90.7
  %84 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.9 = tail call i32 %85(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.9)
  %cmp.i85.9 = icmp ult i32 %call.i20.i84.9, 1073741824
  br i1 %cmp.i85.9, label %if.end.i90.8.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.9

if.end.i90.8.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.9:                                     ; preds = %if.end.i90.8
  %86 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.10 = tail call i32 %87(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.10)
  %cmp.i85.10 = icmp ult i32 %call.i20.i84.10, 1073741824
  br i1 %cmp.i85.10, label %if.end.i90.9.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.10

if.end.i90.9.rtl92c_llt_write.exit95_crit_edge:   ; preds = %if.end.i90.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.10:                                    ; preds = %if.end.i90.9
  %88 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.11 = tail call i32 %89(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.11)
  %cmp.i85.11 = icmp ult i32 %call.i20.i84.11, 1073741824
  br i1 %cmp.i85.11, label %if.end.i90.10.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.11

if.end.i90.10.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.11:                                    ; preds = %if.end.i90.10
  %90 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.12 = tail call i32 %91(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.12)
  %cmp.i85.12 = icmp ult i32 %call.i20.i84.12, 1073741824
  br i1 %cmp.i85.12, label %if.end.i90.11.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.12

if.end.i90.11.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.12:                                    ; preds = %if.end.i90.11
  %92 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.13 = tail call i32 %93(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.13)
  %cmp.i85.13 = icmp ult i32 %call.i20.i84.13, 1073741824
  br i1 %cmp.i85.13, label %if.end.i90.12.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.13

if.end.i90.12.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.13:                                    ; preds = %if.end.i90.12
  %94 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.14 = tail call i32 %95(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.14)
  %cmp.i85.14 = icmp ult i32 %call.i20.i84.14, 1073741824
  br i1 %cmp.i85.14, label %if.end.i90.13.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.14

if.end.i90.13.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.14:                                    ; preds = %if.end.i90.13
  %96 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.15 = tail call i32 %97(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.15)
  %cmp.i85.15 = icmp ult i32 %call.i20.i84.15, 1073741824
  br i1 %cmp.i85.15, label %if.end.i90.14.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.15

if.end.i90.14.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.15:                                    ; preds = %if.end.i90.14
  %98 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.16 = tail call i32 %99(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.16)
  %cmp.i85.16 = icmp ult i32 %call.i20.i84.16, 1073741824
  br i1 %cmp.i85.16, label %if.end.i90.15.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.16

if.end.i90.15.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.16:                                    ; preds = %if.end.i90.15
  %100 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.17 = tail call i32 %101(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.17)
  %cmp.i85.17 = icmp ult i32 %call.i20.i84.17, 1073741824
  br i1 %cmp.i85.17, label %if.end.i90.16.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.17

if.end.i90.16.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.17:                                    ; preds = %if.end.i90.16
  %102 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.18 = tail call i32 %103(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.18)
  %cmp.i85.18 = icmp ult i32 %call.i20.i84.18, 1073741824
  br i1 %cmp.i85.18, label %if.end.i90.17.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.18

if.end.i90.17.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.18:                                    ; preds = %if.end.i90.17
  %104 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.19 = tail call i32 %105(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.19)
  %cmp.i85.19 = icmp ult i32 %call.i20.i84.19, 1073741824
  br i1 %cmp.i85.19, label %if.end.i90.18.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.19

if.end.i90.18.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

if.end.i90.19:                                    ; preds = %if.end.i90.18
  %106 = ptrtoint ptr %read32_sync.i19.i79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read32_sync.i19.i79, align 4
  %call.i20.i84.20 = tail call i32 %107(ptr noundef %55, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i84.20)
  %cmp.i85.20 = icmp ult i32 %call.i20.i84.20, 1073741824
  br i1 %cmp.i85.20, label %if.end.i90.19.rtl92c_llt_write.exit95_crit_edge, label %if.end.i90.19.cleanup.sink.split_crit_edge

if.end.i90.19.cleanup.sink.split_crit_edge:       ; preds = %if.end.i90.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i90.19.rtl92c_llt_write.exit95_crit_edge:  ; preds = %if.end.i90.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit95

rtl92c_llt_write.exit95:                          ; preds = %if.end.i90.19.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.18.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.17.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.16.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.15.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.14.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.13.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.12.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.11.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.10.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.9.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.8.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.7.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.6.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.5.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.4.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.3.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.2.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.1.rtl92c_llt_write.exit95_crit_edge, %if.end.i90.rtl92c_llt_write.exit95_crit_edge, %do.body.i86.preheader.rtl92c_llt_write.exit95_crit_edge, %rtl_write_dword.exit.i82.rtl92c_llt_write.exit95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %boundary)
  %cmp16170 = icmp ult i32 %boundary, 255
  br i1 %cmp16170, label %rtl92c_llt_write.exit95.for.body17_crit_edge, label %rtl92c_llt_write.exit95.for.end32_crit_edge

rtl92c_llt_write.exit95.for.end32_crit_edge:      ; preds = %rtl92c_llt_write.exit95
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

rtl92c_llt_write.exit95.for.body17_crit_edge:     ; preds = %rtl92c_llt_write.exit95
  br label %for.body17

for.body17:                                       ; preds = %rtl92c_llt_write.exit125.for.body17_crit_edge, %rtl92c_llt_write.exit95.for.body17_crit_edge
  %i.1171 = phi i32 [ %add18, %rtl92c_llt_write.exit125.for.body17_crit_edge ], [ %boundary, %rtl92c_llt_write.exit95.for.body17_crit_edge ]
  %add18 = add nuw nsw i32 %i.1171, 1
  %108 = ptrtoint ptr %priv.i67 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv.i67, align 8
  %and.i97 = shl nuw nsw i32 %i.1171, 8
  %shl.i98 = and i32 %and.i97, 65280
  %or.i100 = or i32 %add18, %shl.i98
  %or2.i101 = or i32 %or.i100, 1073741824
  %write32_async.i.i102 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 7
  %110 = ptrtoint ptr %write32_async.i.i102 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32_async.i.i102, align 4
  tail call void %111(ptr noundef %109, i32 noundef 480, i32 noundef %or2.i101) #4
  %cfg.i.i103 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %112 = ptrtoint ptr %cfg.i.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i.i103, align 8
  %write_readback.i.i104 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %write_readback.i.i104 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %write_readback.i.i104, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i105 = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i105, label %for.body17.rtl_write_dword.exit.i112_crit_edge, label %if.then.i.i108

for.body17.rtl_write_dword.exit.i112_crit_edge:   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit.i112

if.then.i.i108:                                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i.i106 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 11
  %116 = ptrtoint ptr %read32_sync.i.i106 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read32_sync.i.i106, align 4
  %call.i.i107 = tail call i32 %117(ptr noundef %109, i32 noundef 480) #4
  br label %rtl_write_dword.exit.i112

rtl_write_dword.exit.i112:                        ; preds = %if.then.i.i108, %for.body17.rtl_write_dword.exit.i112_crit_edge
  %read32_sync.i19.i109 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 11
  %118 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i2022.i110 = tail call i32 %119(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i2022.i110)
  %cmp23.i111 = icmp ult i32 %call.i2022.i110, 1073741824
  br i1 %cmp23.i111, label %rtl_write_dword.exit.i112.rtl92c_llt_write.exit125_crit_edge, label %do.body.i116.preheader

rtl_write_dword.exit.i112.rtl92c_llt_write.exit125_crit_edge: ; preds = %rtl_write_dword.exit.i112
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

do.body.i116.preheader:                           ; preds = %rtl_write_dword.exit.i112
  %120 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114 = tail call i32 %121(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114)
  %cmp.i115 = icmp ult i32 %call.i20.i114, 1073741824
  br i1 %cmp.i115, label %do.body.i116.preheader.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120

do.body.i116.preheader.rtl92c_llt_write.exit125_crit_edge: ; preds = %do.body.i116.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120:                                      ; preds = %do.body.i116.preheader
  %122 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.1 = tail call i32 %123(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.1)
  %cmp.i115.1 = icmp ult i32 %call.i20.i114.1, 1073741824
  br i1 %cmp.i115.1, label %if.end.i120.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.1

if.end.i120.rtl92c_llt_write.exit125_crit_edge:   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.1:                                    ; preds = %if.end.i120
  %124 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.2 = tail call i32 %125(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.2)
  %cmp.i115.2 = icmp ult i32 %call.i20.i114.2, 1073741824
  br i1 %cmp.i115.2, label %if.end.i120.1.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.2

if.end.i120.1.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.2:                                    ; preds = %if.end.i120.1
  %126 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.3 = tail call i32 %127(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.3)
  %cmp.i115.3 = icmp ult i32 %call.i20.i114.3, 1073741824
  br i1 %cmp.i115.3, label %if.end.i120.2.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.3

if.end.i120.2.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.3:                                    ; preds = %if.end.i120.2
  %128 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.4 = tail call i32 %129(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.4)
  %cmp.i115.4 = icmp ult i32 %call.i20.i114.4, 1073741824
  br i1 %cmp.i115.4, label %if.end.i120.3.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.4

if.end.i120.3.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.4:                                    ; preds = %if.end.i120.3
  %130 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.5 = tail call i32 %131(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.5)
  %cmp.i115.5 = icmp ult i32 %call.i20.i114.5, 1073741824
  br i1 %cmp.i115.5, label %if.end.i120.4.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.5

if.end.i120.4.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.5:                                    ; preds = %if.end.i120.4
  %132 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.6 = tail call i32 %133(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.6)
  %cmp.i115.6 = icmp ult i32 %call.i20.i114.6, 1073741824
  br i1 %cmp.i115.6, label %if.end.i120.5.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.6

if.end.i120.5.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.6:                                    ; preds = %if.end.i120.5
  %134 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.7 = tail call i32 %135(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.7)
  %cmp.i115.7 = icmp ult i32 %call.i20.i114.7, 1073741824
  br i1 %cmp.i115.7, label %if.end.i120.6.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.7

if.end.i120.6.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.7:                                    ; preds = %if.end.i120.6
  %136 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.8 = tail call i32 %137(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.8)
  %cmp.i115.8 = icmp ult i32 %call.i20.i114.8, 1073741824
  br i1 %cmp.i115.8, label %if.end.i120.7.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.8

if.end.i120.7.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.8:                                    ; preds = %if.end.i120.7
  %138 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.9 = tail call i32 %139(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.9)
  %cmp.i115.9 = icmp ult i32 %call.i20.i114.9, 1073741824
  br i1 %cmp.i115.9, label %if.end.i120.8.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.9

if.end.i120.8.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.9:                                    ; preds = %if.end.i120.8
  %140 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.10 = tail call i32 %141(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.10)
  %cmp.i115.10 = icmp ult i32 %call.i20.i114.10, 1073741824
  br i1 %cmp.i115.10, label %if.end.i120.9.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.10

if.end.i120.9.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.10:                                   ; preds = %if.end.i120.9
  %142 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.11 = tail call i32 %143(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.11)
  %cmp.i115.11 = icmp ult i32 %call.i20.i114.11, 1073741824
  br i1 %cmp.i115.11, label %if.end.i120.10.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.11

if.end.i120.10.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.11:                                   ; preds = %if.end.i120.10
  %144 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.12 = tail call i32 %145(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.12)
  %cmp.i115.12 = icmp ult i32 %call.i20.i114.12, 1073741824
  br i1 %cmp.i115.12, label %if.end.i120.11.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.12

if.end.i120.11.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.12:                                   ; preds = %if.end.i120.11
  %146 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.13 = tail call i32 %147(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.13)
  %cmp.i115.13 = icmp ult i32 %call.i20.i114.13, 1073741824
  br i1 %cmp.i115.13, label %if.end.i120.12.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.13

if.end.i120.12.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.13:                                   ; preds = %if.end.i120.12
  %148 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.14 = tail call i32 %149(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.14)
  %cmp.i115.14 = icmp ult i32 %call.i20.i114.14, 1073741824
  br i1 %cmp.i115.14, label %if.end.i120.13.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.14

if.end.i120.13.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.14:                                   ; preds = %if.end.i120.13
  %150 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.15 = tail call i32 %151(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.15)
  %cmp.i115.15 = icmp ult i32 %call.i20.i114.15, 1073741824
  br i1 %cmp.i115.15, label %if.end.i120.14.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.15

if.end.i120.14.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.15:                                   ; preds = %if.end.i120.14
  %152 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.16 = tail call i32 %153(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.16)
  %cmp.i115.16 = icmp ult i32 %call.i20.i114.16, 1073741824
  br i1 %cmp.i115.16, label %if.end.i120.15.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.16

if.end.i120.15.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.16:                                   ; preds = %if.end.i120.15
  %154 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.17 = tail call i32 %155(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.17)
  %cmp.i115.17 = icmp ult i32 %call.i20.i114.17, 1073741824
  br i1 %cmp.i115.17, label %if.end.i120.16.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.17

if.end.i120.16.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.17:                                   ; preds = %if.end.i120.16
  %156 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.18 = tail call i32 %157(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.18)
  %cmp.i115.18 = icmp ult i32 %call.i20.i114.18, 1073741824
  br i1 %cmp.i115.18, label %if.end.i120.17.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.18

if.end.i120.17.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.18:                                   ; preds = %if.end.i120.17
  %158 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.19 = tail call i32 %159(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.19)
  %cmp.i115.19 = icmp ult i32 %call.i20.i114.19, 1073741824
  br i1 %cmp.i115.19, label %if.end.i120.18.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.19

if.end.i120.18.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

if.end.i120.19:                                   ; preds = %if.end.i120.18
  %160 = ptrtoint ptr %read32_sync.i19.i109 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read32_sync.i19.i109, align 4
  %call.i20.i114.20 = tail call i32 %161(ptr noundef %109, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i114.20)
  %cmp.i115.20 = icmp ult i32 %call.i20.i114.20, 1073741824
  br i1 %cmp.i115.20, label %if.end.i120.19.rtl92c_llt_write.exit125_crit_edge, label %if.end.i120.19.cleanup.sink.split_crit_edge

if.end.i120.19.cleanup.sink.split_crit_edge:      ; preds = %if.end.i120.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i120.19.rtl92c_llt_write.exit125_crit_edge: ; preds = %if.end.i120.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_llt_write.exit125

rtl92c_llt_write.exit125:                         ; preds = %if.end.i120.19.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.18.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.17.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.16.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.15.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.14.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.13.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.12.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.11.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.10.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.9.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.8.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.7.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.6.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.5.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.4.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.3.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.2.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.1.rtl92c_llt_write.exit125_crit_edge, %if.end.i120.rtl92c_llt_write.exit125_crit_edge, %do.body.i116.preheader.rtl92c_llt_write.exit125_crit_edge, %rtl_write_dword.exit.i112.rtl92c_llt_write.exit125_crit_edge
  %exitcond181.not = icmp eq i32 %add18, 255
  br i1 %exitcond181.not, label %rtl92c_llt_write.exit125.for.end32_crit_edge, label %rtl92c_llt_write.exit125.for.body17_crit_edge

rtl92c_llt_write.exit125.for.body17_crit_edge:    ; preds = %rtl92c_llt_write.exit125
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17

rtl92c_llt_write.exit125.for.end32_crit_edge:     ; preds = %rtl92c_llt_write.exit125
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

for.end32:                                        ; preds = %rtl92c_llt_write.exit125.for.end32_crit_edge, %rtl92c_llt_write.exit95.for.end32_crit_edge
  %162 = ptrtoint ptr %priv.i67 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %priv.i67, align 8
  %and1.i127 = and i32 %boundary, 255
  %or2.i129 = or i32 %and1.i127, 1073807104
  %write32_async.i.i130 = getelementptr inbounds %struct.rtl_priv, ptr %163, i32 0, i32 13, i32 7
  %164 = ptrtoint ptr %write32_async.i.i130 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write32_async.i.i130, align 4
  tail call void %165(ptr noundef %163, i32 noundef 480, i32 noundef %or2.i129) #4
  %cfg.i.i131 = getelementptr inbounds %struct.rtl_priv, ptr %163, i32 0, i32 32
  %166 = ptrtoint ptr %cfg.i.i131 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i.i131, align 8
  %write_readback.i.i132 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write_readback.i.i132 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %write_readback.i.i132, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i.i133 = icmp eq i8 %169, 0
  br i1 %tobool.not.i.i133, label %for.end32.rtl_write_dword.exit.i140_crit_edge, label %if.then.i.i136

for.end32.rtl_write_dword.exit.i140_crit_edge:    ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit.i140

if.then.i.i136:                                   ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i.i134 = getelementptr inbounds %struct.rtl_priv, ptr %163, i32 0, i32 13, i32 11
  %170 = ptrtoint ptr %read32_sync.i.i134 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read32_sync.i.i134, align 4
  %call.i.i135 = tail call i32 %171(ptr noundef %163, i32 noundef 480) #4
  br label %rtl_write_dword.exit.i140

rtl_write_dword.exit.i140:                        ; preds = %if.then.i.i136, %for.end32.rtl_write_dword.exit.i140_crit_edge
  %read32_sync.i19.i137 = getelementptr inbounds %struct.rtl_priv, ptr %163, i32 0, i32 13, i32 11
  %172 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i2022.i138 = tail call i32 %173(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i2022.i138)
  %cmp23.i139 = icmp ult i32 %call.i2022.i138, 1073741824
  br i1 %cmp23.i139, label %rtl_write_dword.exit.i140.cleanup_crit_edge, label %do.body.i144.preheader

rtl_write_dword.exit.i140.cleanup_crit_edge:      ; preds = %rtl_write_dword.exit.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i144.preheader:                           ; preds = %rtl_write_dword.exit.i140
  %174 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142 = tail call i32 %175(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142)
  %cmp.i143 = icmp ult i32 %call.i20.i142, 1073741824
  br i1 %cmp.i143, label %do.body.i144.preheader.cleanup_crit_edge, label %if.end.i148

do.body.i144.preheader.cleanup_crit_edge:         ; preds = %do.body.i144.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148:                                      ; preds = %do.body.i144.preheader
  %176 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.1 = tail call i32 %177(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.1)
  %cmp.i143.1 = icmp ult i32 %call.i20.i142.1, 1073741824
  br i1 %cmp.i143.1, label %if.end.i148.cleanup_crit_edge, label %if.end.i148.1

if.end.i148.cleanup_crit_edge:                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.1:                                    ; preds = %if.end.i148
  %178 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.2 = tail call i32 %179(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.2)
  %cmp.i143.2 = icmp ult i32 %call.i20.i142.2, 1073741824
  br i1 %cmp.i143.2, label %if.end.i148.1.cleanup_crit_edge, label %if.end.i148.2

if.end.i148.1.cleanup_crit_edge:                  ; preds = %if.end.i148.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.2:                                    ; preds = %if.end.i148.1
  %180 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.3 = tail call i32 %181(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.3)
  %cmp.i143.3 = icmp ult i32 %call.i20.i142.3, 1073741824
  br i1 %cmp.i143.3, label %if.end.i148.2.cleanup_crit_edge, label %if.end.i148.3

if.end.i148.2.cleanup_crit_edge:                  ; preds = %if.end.i148.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.3:                                    ; preds = %if.end.i148.2
  %182 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.4 = tail call i32 %183(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.4)
  %cmp.i143.4 = icmp ult i32 %call.i20.i142.4, 1073741824
  br i1 %cmp.i143.4, label %if.end.i148.3.cleanup_crit_edge, label %if.end.i148.4

if.end.i148.3.cleanup_crit_edge:                  ; preds = %if.end.i148.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.4:                                    ; preds = %if.end.i148.3
  %184 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.5 = tail call i32 %185(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.5)
  %cmp.i143.5 = icmp ult i32 %call.i20.i142.5, 1073741824
  br i1 %cmp.i143.5, label %if.end.i148.4.cleanup_crit_edge, label %if.end.i148.5

if.end.i148.4.cleanup_crit_edge:                  ; preds = %if.end.i148.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.5:                                    ; preds = %if.end.i148.4
  %186 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.6 = tail call i32 %187(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.6)
  %cmp.i143.6 = icmp ult i32 %call.i20.i142.6, 1073741824
  br i1 %cmp.i143.6, label %if.end.i148.5.cleanup_crit_edge, label %if.end.i148.6

if.end.i148.5.cleanup_crit_edge:                  ; preds = %if.end.i148.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.6:                                    ; preds = %if.end.i148.5
  %188 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.7 = tail call i32 %189(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.7)
  %cmp.i143.7 = icmp ult i32 %call.i20.i142.7, 1073741824
  br i1 %cmp.i143.7, label %if.end.i148.6.cleanup_crit_edge, label %if.end.i148.7

if.end.i148.6.cleanup_crit_edge:                  ; preds = %if.end.i148.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.7:                                    ; preds = %if.end.i148.6
  %190 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.8 = tail call i32 %191(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.8)
  %cmp.i143.8 = icmp ult i32 %call.i20.i142.8, 1073741824
  br i1 %cmp.i143.8, label %if.end.i148.7.cleanup_crit_edge, label %if.end.i148.8

if.end.i148.7.cleanup_crit_edge:                  ; preds = %if.end.i148.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.8:                                    ; preds = %if.end.i148.7
  %192 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.9 = tail call i32 %193(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.9)
  %cmp.i143.9 = icmp ult i32 %call.i20.i142.9, 1073741824
  br i1 %cmp.i143.9, label %if.end.i148.8.cleanup_crit_edge, label %if.end.i148.9

if.end.i148.8.cleanup_crit_edge:                  ; preds = %if.end.i148.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.9:                                    ; preds = %if.end.i148.8
  %194 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.10 = tail call i32 %195(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.10)
  %cmp.i143.10 = icmp ult i32 %call.i20.i142.10, 1073741824
  br i1 %cmp.i143.10, label %if.end.i148.9.cleanup_crit_edge, label %if.end.i148.10

if.end.i148.9.cleanup_crit_edge:                  ; preds = %if.end.i148.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.10:                                   ; preds = %if.end.i148.9
  %196 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.11 = tail call i32 %197(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.11)
  %cmp.i143.11 = icmp ult i32 %call.i20.i142.11, 1073741824
  br i1 %cmp.i143.11, label %if.end.i148.10.cleanup_crit_edge, label %if.end.i148.11

if.end.i148.10.cleanup_crit_edge:                 ; preds = %if.end.i148.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.11:                                   ; preds = %if.end.i148.10
  %198 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.12 = tail call i32 %199(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.12)
  %cmp.i143.12 = icmp ult i32 %call.i20.i142.12, 1073741824
  br i1 %cmp.i143.12, label %if.end.i148.11.cleanup_crit_edge, label %if.end.i148.12

if.end.i148.11.cleanup_crit_edge:                 ; preds = %if.end.i148.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.12:                                   ; preds = %if.end.i148.11
  %200 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.13 = tail call i32 %201(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.13)
  %cmp.i143.13 = icmp ult i32 %call.i20.i142.13, 1073741824
  br i1 %cmp.i143.13, label %if.end.i148.12.cleanup_crit_edge, label %if.end.i148.13

if.end.i148.12.cleanup_crit_edge:                 ; preds = %if.end.i148.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.13:                                   ; preds = %if.end.i148.12
  %202 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.14 = tail call i32 %203(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.14)
  %cmp.i143.14 = icmp ult i32 %call.i20.i142.14, 1073741824
  br i1 %cmp.i143.14, label %if.end.i148.13.cleanup_crit_edge, label %if.end.i148.14

if.end.i148.13.cleanup_crit_edge:                 ; preds = %if.end.i148.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.14:                                   ; preds = %if.end.i148.13
  %204 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.15 = tail call i32 %205(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.15)
  %cmp.i143.15 = icmp ult i32 %call.i20.i142.15, 1073741824
  br i1 %cmp.i143.15, label %if.end.i148.14.cleanup_crit_edge, label %if.end.i148.15

if.end.i148.14.cleanup_crit_edge:                 ; preds = %if.end.i148.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.15:                                   ; preds = %if.end.i148.14
  %206 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.16 = tail call i32 %207(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.16)
  %cmp.i143.16 = icmp ult i32 %call.i20.i142.16, 1073741824
  br i1 %cmp.i143.16, label %if.end.i148.15.cleanup_crit_edge, label %if.end.i148.16

if.end.i148.15.cleanup_crit_edge:                 ; preds = %if.end.i148.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.16:                                   ; preds = %if.end.i148.15
  %208 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.17 = tail call i32 %209(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.17)
  %cmp.i143.17 = icmp ult i32 %call.i20.i142.17, 1073741824
  br i1 %cmp.i143.17, label %if.end.i148.16.cleanup_crit_edge, label %if.end.i148.17

if.end.i148.16.cleanup_crit_edge:                 ; preds = %if.end.i148.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.17:                                   ; preds = %if.end.i148.16
  %210 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.18 = tail call i32 %211(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.18)
  %cmp.i143.18 = icmp ult i32 %call.i20.i142.18, 1073741824
  br i1 %cmp.i143.18, label %if.end.i148.17.cleanup_crit_edge, label %if.end.i148.18

if.end.i148.17.cleanup_crit_edge:                 ; preds = %if.end.i148.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.18:                                   ; preds = %if.end.i148.17
  %212 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.19 = tail call i32 %213(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.19)
  %cmp.i143.19 = icmp ult i32 %call.i20.i142.19, 1073741824
  br i1 %cmp.i143.19, label %if.end.i148.18.cleanup_crit_edge, label %if.end.i148.19

if.end.i148.18.cleanup_crit_edge:                 ; preds = %if.end.i148.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i148.19:                                   ; preds = %if.end.i148.18
  %214 = ptrtoint ptr %read32_sync.i19.i137 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read32_sync.i19.i137, align 4
  %call.i20.i142.20 = tail call i32 %215(ptr noundef %163, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i20.i142.20)
  %cmp.i143.20 = icmp ult i32 %call.i20.i142.20, 1073741824
  br i1 %cmp.i143.20, label %if.end.i148.19.cleanup_crit_edge, label %if.end.i148.19.cleanup.sink.split_crit_edge

if.end.i148.19.cleanup.sink.split_crit_edge:      ; preds = %if.end.i148.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i148.19.cleanup_crit_edge:                 ; preds = %if.end.i148.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i148.19.cleanup.sink.split_crit_edge, %if.end.i120.19.cleanup.sink.split_crit_edge, %if.end.i90.19.cleanup.sink.split_crit_edge, %if.end.i.19.cleanup.sink.split_crit_edge
  %call.i20.i142.20.sink = phi i32 [ %call.i20.i84.20, %if.end.i90.19.cleanup.sink.split_crit_edge ], [ %call.i20.i142.20, %if.end.i148.19.cleanup.sink.split_crit_edge ], [ %call.i20.i114.20, %if.end.i120.19.cleanup.sink.split_crit_edge ], [ %call.i20.i.20, %if.end.i.19.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ %sub, %if.end.i90.19.cleanup.sink.split_crit_edge ], [ 255, %if.end.i148.19.cleanup.sink.split_crit_edge ], [ %i.1171, %if.end.i120.19.cleanup.sink.split_crit_edge ], [ %i.0167, %if.end.i.19.cleanup.sink.split_crit_edge ]
  %.str.31.sink = phi ptr [ @.str.25, %if.end.i90.19.cleanup.sink.split_crit_edge ], [ @.str.31, %if.end.i148.19.cleanup.sink.split_crit_edge ], [ @.str.28, %if.end.i120.19.cleanup.sink.split_crit_edge ], [ @.str.22, %if.end.i.19.cleanup.sink.split_crit_edge ]
  %shr.le.i149 = lshr i32 %call.i20.i142.20.sink, 30
  %call9.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %.sink, i32 noundef %shr.le.i149) #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink, ptr noundef nonnull @.str.23) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i148.19.cleanup_crit_edge, %if.end.i148.18.cleanup_crit_edge, %if.end.i148.17.cleanup_crit_edge, %if.end.i148.16.cleanup_crit_edge, %if.end.i148.15.cleanup_crit_edge, %if.end.i148.14.cleanup_crit_edge, %if.end.i148.13.cleanup_crit_edge, %if.end.i148.12.cleanup_crit_edge, %if.end.i148.11.cleanup_crit_edge, %if.end.i148.10.cleanup_crit_edge, %if.end.i148.9.cleanup_crit_edge, %if.end.i148.8.cleanup_crit_edge, %if.end.i148.7.cleanup_crit_edge, %if.end.i148.6.cleanup_crit_edge, %if.end.i148.5.cleanup_crit_edge, %if.end.i148.4.cleanup_crit_edge, %if.end.i148.3.cleanup_crit_edge, %if.end.i148.2.cleanup_crit_edge, %if.end.i148.1.cleanup_crit_edge, %if.end.i148.cleanup_crit_edge, %do.body.i144.preheader.cleanup_crit_edge, %rtl_write_dword.exit.i140.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %rtl_write_dword.exit.i140.cleanup_crit_edge ], [ true, %if.end.i148.19.cleanup_crit_edge ], [ true, %if.end.i148.18.cleanup_crit_edge ], [ true, %if.end.i148.17.cleanup_crit_edge ], [ true, %if.end.i148.16.cleanup_crit_edge ], [ true, %if.end.i148.15.cleanup_crit_edge ], [ true, %if.end.i148.14.cleanup_crit_edge ], [ true, %if.end.i148.13.cleanup_crit_edge ], [ true, %if.end.i148.12.cleanup_crit_edge ], [ true, %if.end.i148.11.cleanup_crit_edge ], [ true, %if.end.i148.10.cleanup_crit_edge ], [ true, %if.end.i148.9.cleanup_crit_edge ], [ true, %if.end.i148.8.cleanup_crit_edge ], [ true, %if.end.i148.7.cleanup_crit_edge ], [ true, %if.end.i148.6.cleanup_crit_edge ], [ true, %if.end.i148.5.cleanup_crit_edge ], [ true, %if.end.i148.4.cleanup_crit_edge ], [ true, %if.end.i148.3.cleanup_crit_edge ], [ true, %if.end.i148.2.cleanup_crit_edge ], [ true, %if.end.i148.1.cleanup_crit_edge ], [ true, %if.end.i148.cleanup_crit_edge ], [ true, %do.body.i144.preheader.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %clear_all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.33) #4
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 0) #4
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 0) #4
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 61)
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 0
  %3 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx20, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 1) #4
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 1) #4
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 1
  %4 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 61)
  %arrayidx20.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx20.1, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 2) #4
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 2) #4
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 2
  %6 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 61)
  %arrayidx20.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20.2, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 3) #4
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 3) #4
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 3
  %8 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 61)
  %arrayidx20.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 3
  %9 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx20.3, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 4) #4
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 4) #4
  %arrayidx.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 4
  %10 = call ptr @memset(ptr %arrayidx.4, i32 0, i32 61)
  %arrayidx20.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 4
  %11 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx20.4, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %switch.tableidx = add i8 %enc_algo, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 5
  br i1 %12, label %switch.hole_check, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.else.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl92c_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %enc_algo.addr.0 = phi i32 [ 2, %do.end ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then30_crit_edge, label %lor.lhs.false

sw.epilog.if.then30_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.else33, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %sw.epilog.if.then30_crit_edge
  %arrayidx31 = getelementptr [4 x [6 x i8]], ptr @rtl92c_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end58

if.else33:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else33.if.end58_crit_edge, label %if.else36

if.else33.if.end58_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.else36:                                        ; preds = %if.else33
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %19, label %if.else36.if.end58_crit_edge [
    i32 3, label %if.else36.if.then43_crit_edge
    i32 7, label %if.else36.if.then43_crit_edge191
  ]

if.else36.if.then43_crit_edge191:                 ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.else36.if.then43_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.else36.if.end58_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then43:                                        ; preds = %if.else36.if.then43_crit_edge, %if.else36.if.then43_crit_edge191
  %call44 = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #4
  %conv45 = zext i8 %call44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call44)
  %cmp46 = icmp ugt i8 %call44, 31
  br i1 %cmp46, label %do.end51, label %if.then43.if.end58_crit_edge

if.then43.if.end58_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #7
  br label %cleanup

if.end58:                                         ; preds = %if.then43.if.end58_crit_edge, %if.else36.if.end58_crit_edge, %if.else33.if.end58_crit_edge, %if.then30
  %macaddr.0 = phi ptr [ %arrayidx31, %if.then30 ], [ @rtl92c_set_key.cam_const_broad, %if.else33.if.end58_crit_edge ], [ %p_macaddr, %if.else36.if.end58_crit_edge ], [ %p_macaddr, %if.then43.if.end58_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then30 ], [ %key_index, %if.else33.if.end58_crit_edge ], [ 4, %if.else36.if.end58_crit_edge ], [ %conv45, %if.then43.if.end58_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then30 ], [ false, %if.else33.if.end58_crit_edge ], [ true, %if.else36.if.end58_crit_edge ], [ true, %if.then43.if.end58_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then30 ], [ %key_index, %if.else33.if.end58_crit_edge ], [ 0, %if.else36.if.end58_crit_edge ], [ 0, %if.then43.if.end58_crit_edge ]
  %key_len60 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8
  %arrayidx61 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp63 = icmp eq i8 %22, 0
  br i1 %cmp63, label %if.then65, label %if.else76

if.then65:                                        ; preds = %if.end58
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.39) #4
  %opmode66 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %opmode66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opmode66, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %24, label %if.then65.if.end74_crit_edge [
    i32 3, label %if.then65.if.then73_crit_edge
    i32 7, label %if.then65.if.then73_crit_edge192
  ]

if.then65.if.then73_crit_edge192:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then73

if.then65.if.then73_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then73

if.then65.if.end74_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then73:                                        ; preds = %if.then65.if.then73_crit_edge, %if.then65.if.then73_crit_edge192
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then65.if.end74_crit_edge
  %call75 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #4
  br label %cleanup

if.else76:                                        ; preds = %if.end58
  %26 = ptrtoint ptr %key_len60 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_len60, align 1
  %conv80 = zext i8 %27 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %conv80) #4
  %key_buf82 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7
  %28 = ptrtoint ptr %key_buf82 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_buf82, align 8
  %conv85 = zext i8 %29 to i32
  %arrayidx89 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %31 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %conv85, i32 noundef %conv90) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.42) #4
  br i1 %is_pairwise.0.off0, label %if.then92, label %if.else104

if.then92:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #6
  %pairwise_key = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 9
  %32 = ptrtoint ptr %pairwise_key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pairwise_key, align 8
  %34 = ptrtoint ptr %key_len60 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %key_len60, align 1
  %conv97 = zext i8 %35 to i32
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef %33, i32 noundef %conv97) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.44) #4
  %arrayidx101 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call103 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx101) #4
  br label %cleanup

if.else104:                                       ; preds = %if.else76
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.45) #4
  %opmode105 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %36 = ptrtoint ptr %opmode105 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opmode105, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp106 = icmp eq i32 %37, 1
  br i1 %cmp106, label %if.then108, label %if.else104.if.end116_crit_edge

if.else104.if.end116_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.then108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx113 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call115 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx113) #4
  br label %if.end116

if.end116:                                        ; preds = %if.then108, %if.else104.if.end116_crit_edge
  %arrayidx120 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call122 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx120) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then92, %if.end74, %do.end51, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_mark_invalid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_empty_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_get_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_del_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_cam_delete_one_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_add_one_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92c_get_txdma_status(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 528) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %2 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 288, i32 noundef %5) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_dword.exit_crit_edge, label %if.then.i

if.then.rtl_write_dword.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1, i32 noundef 288) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.then.rtl_write_dword.exit_crit_edge
  %arrayidx9 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef 296, i32 noundef %15) #4
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %write_readback.i27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i27, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i28 = icmp eq i8 %21, 0
  br i1 %tobool.not.i28, label %rtl_write_dword.exit.if.end_crit_edge, label %rtl_write_dword.exit.if.end.sink.split_crit_edge

rtl_write_dword.exit.if.end.sink.split_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

rtl_write_dword.exit.if.end_crit_edge:            ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  %irq_mask11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %irq_mask11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_mask11, align 4
  %write32_async.i33 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %24 = ptrtoint ptr %write32_async.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32_async.i33, align 4
  tail call void %25(ptr noundef %1, i32 noundef 288, i32 noundef %23) #4
  %cfg.i34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i34, align 8
  %write_readback.i35 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i35, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i36 = icmp eq i8 %29, 0
  br i1 %tobool.not.i36, label %if.else.rtl_write_dword.exit40_crit_edge, label %if.then.i39

if.else.rtl_write_dword.exit40_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit40

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i37 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %30 = ptrtoint ptr %read32_sync.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32_sync.i37, align 4
  %call.i38 = tail call i32 %31(ptr noundef %1, i32 noundef 288) #4
  br label %rtl_write_dword.exit40

rtl_write_dword.exit40:                           ; preds = %if.then.i39, %if.else.rtl_write_dword.exit40_crit_edge
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %write32_async.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32_async.i33, align 4
  tail call void %35(ptr noundef %1, i32 noundef 296, i32 noundef %33) #4
  %36 = ptrtoint ptr %cfg.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i34, align 8
  %write_readback.i43 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i43, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i44 = icmp eq i8 %39, 0
  br i1 %tobool.not.i44, label %rtl_write_dword.exit40.if.end_crit_edge, label %rtl_write_dword.exit40.if.end.sink.split_crit_edge

rtl_write_dword.exit40.if.end.sink.split_crit_edge: ; preds = %rtl_write_dword.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

rtl_write_dword.exit40.if.end_crit_edge:          ; preds = %rtl_write_dword.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.sink.split:                                ; preds = %rtl_write_dword.exit40.if.end.sink.split_crit_edge, %rtl_write_dword.exit.if.end.sink.split_crit_edge
  %read32_sync.i45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %40 = ptrtoint ptr %read32_sync.i45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i45, align 4
  %call.i46 = tail call i32 %41(ptr noundef %1, i32 noundef 296) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %rtl_write_dword.exit40.if.end_crit_edge, %rtl_write_dword.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl92c_enable_interrupt(ptr noundef %hw)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 288, i32 noundef 0) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 288) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 296, i32 noundef 0) #4
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i4, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i5 = icmp eq i8 %15, 0
  br i1 %tobool.not.i5, label %rtl_write_dword.exit.rtl_write_dword.exit9_crit_edge, label %if.then.i8

rtl_write_dword.exit.rtl_write_dword.exit9_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit9

if.then.i8:                                       ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i6, align 4
  %call.i7 = tail call i32 %17(ptr noundef %1, i32 noundef 296) #4
  br label %rtl_write_dword.exit9

rtl_write_dword.exit9:                            ; preds = %if.then.i8, %rtl_write_dword.exit.rtl_write_dword.exit9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  %aci.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aci.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %aci, ptr %aci.addr, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  tail call void @rtl92c_dm_init_edca_turbo(ptr noundef %hw) #4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_hw_reg, align 4
  call void %8(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %aci.addr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_driver_info_size(ptr nocapture noundef readonly %hw, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1551, i8 noundef zeroext %size) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 1551) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92c_set_network_type(ptr nocapture noundef readonly %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %2 = icmp ult i32 %type, 4
  br i1 %2, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.50, i32 noundef %type) #4
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rtl92c_set_network_type, i32 0, i32 %type
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.idx.cast = trunc i32 %type to i8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %switch.load) #4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %switch.idx.cast) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %if.then.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 258) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %switch.lookup.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_network_type(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.46) #4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 258, i8 noundef zeroext 0) #4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %entry.rtl92c_set_network_type.exit_crit_edge, label %if.then.i.i

entry.rtl92c_set_network_type.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_set_network_type.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 258) #4
  br label %rtl92c_set_network_type.exit

rtl92c_set_network_type.exit:                     ; preds = %if.then.i.i, %entry.rtl92c_set_network_type.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_adaptive_ctrl(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 1088) #4
  %and = and i32 %call.i, -1048576
  %or = or i32 %and, 1048561
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1088, i32 noundef %or) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i8 = tail call i32 %11(ptr noundef %1, i32 noundef 1088) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %12 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 1064, i16 noundef zeroext 4112) #4
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i10 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i10, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i11 = icmp eq i8 %17, 0
  br i1 %tobool.not.i11, label %rtl_write_dword.exit.rtl_write_word.exit_crit_edge, label %if.then.i13

rtl_write_dword.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit

if.then.i13:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %18 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16_sync.i, align 4
  %call.i12 = tail call zeroext i16 %19(ptr noundef %1, i32 noundef 1064) #4
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i13, %rtl_write_dword.exit.rtl_write_word.exit_crit_edge
  %20 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 1066, i32 noundef 12336) #4
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i16 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i16, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i17 = icmp eq i8 %25, 0
  br i1 %tobool.not.i17, label %rtl_write_word.exit.rtl_write_dword.exit21_crit_edge, label %if.then.i20

rtl_write_word.exit.rtl_write_dword.exit21_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit21

if.then.i20:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i, align 4
  %call.i19 = tail call i32 %27(ptr noundef %1, i32 noundef 1066) #4
  br label %rtl_write_dword.exit21

rtl_write_dword.exit21:                           ; preds = %if.then.i20, %rtl_write_word.exit.rtl_write_dword.exit21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_rate_fallback(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1072, i32 noundef 0) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 1072) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1076, i32 noundef 268960772) #4
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i6, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i7 = icmp eq i8 %15, 0
  br i1 %tobool.not.i7, label %rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge, label %if.then.i10

rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit11

if.then.i10:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i8, align 4
  %call.i9 = tail call i32 %17(ptr noundef %1, i32 noundef 1076) #4
  br label %rtl_write_dword.exit11

rtl_write_dword.exit11:                           ; preds = %if.then.i10, %rtl_write_dword.exit.rtl_write_dword.exit11_crit_edge
  %18 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1080, i32 noundef 67305985) #4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i14 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i14, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i15 = icmp eq i8 %23, 0
  br i1 %tobool.not.i15, label %rtl_write_dword.exit11.rtl_write_dword.exit19_crit_edge, label %if.then.i18

rtl_write_dword.exit11.rtl_write_dword.exit19_crit_edge: ; preds = %rtl_write_dword.exit11
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit19

if.then.i18:                                      ; preds = %rtl_write_dword.exit11
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i16, align 4
  %call.i17 = tail call i32 %25(ptr noundef %1, i32 noundef 1080) #4
  br label %rtl_write_dword.exit19

rtl_write_dword.exit19:                           ; preds = %if.then.i18, %rtl_write_dword.exit11.rtl_write_dword.exit19_crit_edge
  %26 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 1084, i32 noundef 134678021) #4
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i22, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i23 = icmp eq i8 %31, 0
  br i1 %tobool.not.i23, label %rtl_write_dword.exit19.rtl_write_dword.exit27_crit_edge, label %if.then.i26

rtl_write_dword.exit19.rtl_write_dword.exit27_crit_edge: ; preds = %rtl_write_dword.exit19
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit27

if.then.i26:                                      ; preds = %rtl_write_dword.exit19
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %32 = ptrtoint ptr %read32_sync.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32_sync.i24, align 4
  %call.i25 = tail call i32 %33(ptr noundef %1, i32 noundef 1084) #4
  br label %rtl_write_dword.exit27

rtl_write_dword.exit27:                           ; preds = %if.then.i26, %rtl_write_dword.exit19.rtl_write_dword.exit27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_edca_param(ptr nocapture noundef readonly %hw, i16 noundef zeroext %queue, i16 noundef zeroext %txop, i8 noundef zeroext %cw_min, i8 noundef zeroext %cw_max, i8 noundef zeroext %aifs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i8 %aifs to i32
  %2 = and i8 %cw_min, 15
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 8
  %or = or i32 %shl, %conv
  %3 = and i8 %cw_max, 15
  %and3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %and3, 12
  %or5 = or i32 %or, %shl4
  %conv6 = zext i16 %txop to i32
  %shl7 = shl nuw i32 %conv6, 16
  %or8 = or i32 %or5, %shl7
  %conv9 = zext i16 %queue to i32
  %mul = shl nuw nsw i32 %conv9, 2
  %add = add nuw nsw i32 %mul, 1280
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef %add, i32 noundef %or8) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef %add) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_edca(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %2 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %3(ptr noundef %1, i32 noundef 1316) #4
  %4 = or i16 %call.i, 2048
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %5 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write16_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1316, i16 noundef zeroext %4) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16_sync.i, align 4
  %call.i20 = tail call zeroext i16 %12(ptr noundef %1, i32 noundef 1316) #4
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %16(ptr noundef %14, i32 noundef 1300, i8 noundef zeroext 10) #4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %rtl_write_word.exit.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

rtl_write_word.exit.rtl_write_byte.exit.i_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %22(ptr noundef %14, i32 noundef 1300) #4
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %rtl_write_word.exit.rtl_write_byte.exit.i_crit_edge
  %23 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %24(ptr noundef %14, i32 noundef 1301, i8 noundef zeroext 10) #4
  %25 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i3.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i4.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i4.i, label %rtl_write_byte.exit.i.rtl92c_set_cck_sifs.exit_crit_edge, label %if.then.i7.i

rtl_write_byte.exit.i.rtl92c_set_cck_sifs.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_set_cck_sifs.exit

if.then.i7.i:                                     ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i5.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %29 = ptrtoint ptr %read8_sync.i5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i5.i, align 4
  %call.i6.i = tail call zeroext i8 %30(ptr noundef %14, i32 noundef 1301) #4
  br label %rtl92c_set_cck_sifs.exit

rtl92c_set_cck_sifs.exit:                         ; preds = %if.then.i7.i, %rtl_write_byte.exit.i.rtl92c_set_cck_sifs.exit_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %write8_async.i.i22 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 5
  %33 = ptrtoint ptr %write8_async.i.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i.i22, align 4
  tail call void %34(ptr noundef %32, i32 noundef 1302, i8 noundef zeroext 14) #4
  %cfg.i.i23 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i23, align 8
  %write_readback.i.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.i24 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.i24, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i25 = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i25, label %rtl92c_set_cck_sifs.exit.rtl_write_byte.exit.i31_crit_edge, label %if.then.i.i28

rtl92c_set_cck_sifs.exit.rtl_write_byte.exit.i31_crit_edge: ; preds = %rtl92c_set_cck_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit.i31

if.then.i.i28:                                    ; preds = %rtl92c_set_cck_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i.i26 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 9
  %39 = ptrtoint ptr %read8_sync.i.i26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i26, align 4
  %call.i.i27 = tail call zeroext i8 %40(ptr noundef %32, i32 noundef 1302) #4
  br label %rtl_write_byte.exit.i31

rtl_write_byte.exit.i31:                          ; preds = %if.then.i.i28, %rtl92c_set_cck_sifs.exit.rtl_write_byte.exit.i31_crit_edge
  %41 = ptrtoint ptr %write8_async.i.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8_async.i.i22, align 4
  tail call void %42(ptr noundef %32, i32 noundef 1303, i8 noundef zeroext 14) #4
  %43 = ptrtoint ptr %cfg.i.i23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i23, align 8
  %write_readback.i3.i29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i3.i29 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i3.i29, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i4.i30 = icmp eq i8 %46, 0
  br i1 %tobool.not.i4.i30, label %rtl_write_byte.exit.i31.rtl92c_set_ofdm_sifs.exit_crit_edge, label %if.then.i7.i34

rtl_write_byte.exit.i31.rtl92c_set_ofdm_sifs.exit_crit_edge: ; preds = %rtl_write_byte.exit.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl92c_set_ofdm_sifs.exit

if.then.i7.i34:                                   ; preds = %rtl_write_byte.exit.i31
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i5.i32 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 9
  %47 = ptrtoint ptr %read8_sync.i5.i32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i5.i32, align 4
  %call.i6.i33 = tail call zeroext i8 %48(ptr noundef %32, i32 noundef 1303) #4
  br label %rtl92c_set_ofdm_sifs.exit

rtl92c_set_ofdm_sifs.exit:                        ; preds = %if.then.i7.i34, %rtl_write_byte.exit.i31.rtl92c_set_ofdm_sifs.exit_crit_edge
  %49 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16_async.i, align 4
  tail call void %50(ptr noundef %1, i32 noundef 1300, i16 noundef zeroext 2570) #4
  %51 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i, align 8
  %write_readback.i37 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i37 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i37, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i38 = icmp eq i8 %54, 0
  br i1 %tobool.not.i38, label %rtl92c_set_ofdm_sifs.exit.rtl_write_word.exit42_crit_edge, label %if.then.i41

rtl92c_set_ofdm_sifs.exit.rtl_write_word.exit42_crit_edge: ; preds = %rtl92c_set_ofdm_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit42

if.then.i41:                                      ; preds = %rtl92c_set_ofdm_sifs.exit
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read16_sync.i, align 4
  %call.i40 = tail call zeroext i16 %56(ptr noundef %1, i32 noundef 1300) #4
  br label %rtl_write_word.exit42

rtl_write_word.exit42:                            ; preds = %if.then.i41, %rtl92c_set_ofdm_sifs.exit.rtl_write_word.exit42_crit_edge
  %57 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write16_async.i, align 4
  tail call void %58(ptr noundef %1, i32 noundef 1302, i16 noundef zeroext 4112) #4
  %59 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i, align 8
  %write_readback.i45 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i45 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i45, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i46 = icmp eq i8 %62, 0
  br i1 %tobool.not.i46, label %rtl_write_word.exit42.rtl_write_word.exit50_crit_edge, label %if.then.i49

rtl_write_word.exit42.rtl_write_word.exit50_crit_edge: ; preds = %rtl_write_word.exit42
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit50

if.then.i49:                                      ; preds = %rtl_write_word.exit42
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read16_sync.i, align 4
  %call.i48 = tail call zeroext i16 %64(ptr noundef %1, i32 noundef 1302) #4
  br label %rtl_write_word.exit50

rtl_write_word.exit50:                            ; preds = %if.then.i49, %rtl_write_word.exit42.rtl_write_word.exit50_crit_edge
  %65 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write16_async.i, align 4
  tail call void %66(ptr noundef %1, i32 noundef 1224, i16 noundef zeroext 516) #4
  %67 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i, align 8
  %write_readback.i53 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_readback.i53 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_readback.i53, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i54 = icmp eq i8 %70, 0
  br i1 %tobool.not.i54, label %rtl_write_word.exit50.rtl_write_word.exit58_crit_edge, label %if.then.i57

rtl_write_word.exit50.rtl_write_word.exit58_crit_edge: ; preds = %rtl_write_word.exit50
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit58

if.then.i57:                                      ; preds = %rtl_write_word.exit50
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read16_sync.i, align 4
  %call.i56 = tail call zeroext i16 %72(ptr noundef %1, i32 noundef 1224) #4
  br label %rtl_write_word.exit58

rtl_write_word.exit58:                            ; preds = %if.then.i57, %rtl_write_word.exit50.rtl_write_word.exit58_crit_edge
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %73 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32_async.i, align 4
  tail call void %74(ptr noundef %1, i32 noundef 1228, i32 noundef 81924) #4
  %75 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i, align 8
  %write_readback.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i60 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i60, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i61 = icmp eq i8 %78, 0
  br i1 %tobool.not.i61, label %rtl_write_word.exit58.rtl_write_dword.exit_crit_edge, label %if.then.i63

rtl_write_word.exit58.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_word.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i63:                                      ; preds = %rtl_write_word.exit58
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %79 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32_sync.i, align 4
  %call.i62 = tail call i32 %80(ptr noundef %1, i32 noundef 1228) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i63, %rtl_write_word.exit58.rtl_write_dword.exit_crit_edge
  %81 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32_async.i, align 4
  tail call void %82(ptr noundef %1, i32 noundef 1288, i32 noundef 6202411) #4
  %83 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %write_readback.i66, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i67 = icmp eq i8 %86, 0
  br i1 %tobool.not.i67, label %rtl_write_dword.exit.rtl_write_dword.exit71_crit_edge, label %if.then.i70

rtl_write_dword.exit.rtl_write_dword.exit71_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit71

if.then.i70:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i68 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %87 = ptrtoint ptr %read32_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read32_sync.i68, align 4
  %call.i69 = tail call i32 %88(ptr noundef %1, i32 noundef 1288) #4
  br label %rtl_write_dword.exit71

rtl_write_dword.exit71:                           ; preds = %if.then.i70, %rtl_write_dword.exit.rtl_write_dword.exit71_crit_edge
  %89 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32_async.i, align 4
  tail call void %90(ptr noundef %1, i32 noundef 1292, i32 noundef 42063) #4
  %91 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i, align 8
  %write_readback.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_readback.i74 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %write_readback.i74, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i75 = icmp eq i8 %94, 0
  br i1 %tobool.not.i75, label %rtl_write_dword.exit71.rtl_write_dword.exit79_crit_edge, label %if.then.i78

rtl_write_dword.exit71.rtl_write_dword.exit79_crit_edge: ; preds = %rtl_write_dword.exit71
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit79

if.then.i78:                                      ; preds = %rtl_write_dword.exit71
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i76 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %95 = ptrtoint ptr %read32_sync.i76 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32_sync.i76, align 4
  %call.i77 = tail call i32 %96(ptr noundef %1, i32 noundef 1292) #4
  br label %rtl_write_dword.exit79

rtl_write_dword.exit79:                           ; preds = %if.then.i78, %rtl_write_dword.exit71.rtl_write_dword.exit79_crit_edge
  %97 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write32_async.i, align 4
  tail call void %98(ptr noundef %1, i32 noundef 1284, i32 noundef 6202148) #4
  %99 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i, align 8
  %write_readback.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i82 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i82, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i83 = icmp eq i8 %102, 0
  br i1 %tobool.not.i83, label %rtl_write_dword.exit79.rtl_write_dword.exit87_crit_edge, label %if.then.i86

rtl_write_dword.exit79.rtl_write_dword.exit87_crit_edge: ; preds = %rtl_write_dword.exit79
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit87

if.then.i86:                                      ; preds = %rtl_write_dword.exit79
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i84 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %103 = ptrtoint ptr %read32_sync.i84 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32_sync.i84, align 4
  %call.i85 = tail call i32 %104(ptr noundef %1, i32 noundef 1284) #4
  br label %rtl_write_dword.exit87

rtl_write_dword.exit87:                           ; preds = %if.then.i86, %rtl_write_dword.exit79.rtl_write_dword.exit87_crit_edge
  %105 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write32_async.i, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1280, i32 noundef 3121702) #4
  %107 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i, align 8
  %write_readback.i90 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i90 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i90, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i91 = icmp eq i8 %110, 0
  br i1 %tobool.not.i91, label %rtl_write_dword.exit87.rtl_write_dword.exit95_crit_edge, label %if.then.i94

rtl_write_dword.exit87.rtl_write_dword.exit95_crit_edge: ; preds = %rtl_write_dword.exit87
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit95

if.then.i94:                                      ; preds = %rtl_write_dword.exit87
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i92 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %111 = ptrtoint ptr %read32_sync.i92 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read32_sync.i92, align 4
  %call.i93 = tail call i32 %112(ptr noundef %1, i32 noundef 1280) #4
  br label %rtl_write_dword.exit95

rtl_write_dword.exit95:                           ; preds = %if.then.i94, %rtl_write_dword.exit87.rtl_write_dword.exit95_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %113 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write8_async.i, align 4
  tail call void %114(ptr noundef %1, i32 noundef 1298, i8 noundef zeroext 28) #4
  %115 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i97, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i98 = icmp eq i8 %118, 0
  br i1 %tobool.not.i98, label %rtl_write_dword.exit95.rtl_write_byte.exit_crit_edge, label %if.then.i100

rtl_write_dword.exit95.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit95
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i100:                                     ; preds = %rtl_write_dword.exit95
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %119 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i, align 4
  %call.i99 = tail call zeroext i8 %120(ptr noundef %1, i32 noundef 1298) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i100, %rtl_write_dword.exit95.rtl_write_byte.exit_crit_edge
  %121 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i, align 4
  tail call void %122(ptr noundef %1, i32 noundef 1306, i8 noundef zeroext 22) #4
  %123 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i, align 8
  %write_readback.i103 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i103 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i103, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i104 = icmp eq i8 %126, 0
  br i1 %tobool.not.i104, label %rtl_write_byte.exit.rtl_write_byte.exit108_crit_edge, label %if.then.i107

rtl_write_byte.exit.rtl_write_byte.exit108_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit108

if.then.i107:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i105 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %127 = ptrtoint ptr %read8_sync.i105 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i105, align 4
  %call.i106 = tail call zeroext i8 %128(ptr noundef %1, i32 noundef 1306) #4
  br label %rtl_write_byte.exit108

rtl_write_byte.exit108:                           ; preds = %if.then.i107, %rtl_write_byte.exit.rtl_write_byte.exit108_crit_edge
  %129 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write16_async.i, align 4
  tail call void %130(ptr noundef %1, i32 noundef 1350, i16 noundef zeroext 64) #4
  %131 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i, align 8
  %write_readback.i111 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_readback.i111 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %write_readback.i111, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i112 = icmp eq i8 %134, 0
  br i1 %tobool.not.i112, label %rtl_write_byte.exit108.rtl_write_word.exit116_crit_edge, label %if.then.i115

rtl_write_byte.exit108.rtl_write_word.exit116_crit_edge: ; preds = %rtl_write_byte.exit108
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit116

if.then.i115:                                     ; preds = %rtl_write_byte.exit108
  call void @__sanitizer_cov_trace_pc() #6
  %135 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read16_sync.i, align 4
  %call.i114 = tail call zeroext i16 %136(ptr noundef %1, i32 noundef 1350) #4
  br label %rtl_write_word.exit116

rtl_write_word.exit116:                           ; preds = %if.then.i115, %rtl_write_byte.exit108.rtl_write_word.exit116_crit_edge
  %137 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write8_async.i, align 4
  tail call void %138(ptr noundef %1, i32 noundef 1369, i8 noundef zeroext 2) #4
  %139 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cfg.i, align 8
  %write_readback.i119 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_readback.i119 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %write_readback.i119, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i120 = icmp eq i8 %142, 0
  br i1 %tobool.not.i120, label %rtl_write_word.exit116.rtl_write_byte.exit124_crit_edge, label %if.then.i123

rtl_write_word.exit116.rtl_write_byte.exit124_crit_edge: ; preds = %rtl_write_word.exit116
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit124

if.then.i123:                                     ; preds = %rtl_write_word.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i121 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %143 = ptrtoint ptr %read8_sync.i121 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read8_sync.i121, align 4
  %call.i122 = tail call zeroext i8 %144(ptr noundef %1, i32 noundef 1369) #4
  br label %rtl_write_byte.exit124

rtl_write_byte.exit124:                           ; preds = %if.then.i123, %rtl_write_word.exit116.rtl_write_byte.exit124_crit_edge
  %145 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1370, i8 noundef zeroext 2) #4
  %147 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i, align 8
  %write_readback.i127 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i127 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i127, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i128 = icmp eq i8 %150, 0
  br i1 %tobool.not.i128, label %rtl_write_byte.exit124.rtl_write_byte.exit132_crit_edge, label %if.then.i131

rtl_write_byte.exit124.rtl_write_byte.exit132_crit_edge: ; preds = %rtl_write_byte.exit124
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit132

if.then.i131:                                     ; preds = %rtl_write_byte.exit124
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i129 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %151 = ptrtoint ptr %read8_sync.i129 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i129, align 4
  %call.i130 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1370) #4
  br label %rtl_write_byte.exit132

rtl_write_byte.exit132:                           ; preds = %if.then.i131, %rtl_write_byte.exit124.rtl_write_byte.exit132_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_ampdu_aggregation(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1112, i32 noundef -1717995983) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 1112) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %10 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1306, i8 noundef zeroext 22) #4
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i4, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i5 = icmp eq i8 %15, 0
  br i1 %tobool.not.i5, label %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge, label %if.then.i7

rtl_write_dword.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i7:                                       ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %16 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i, align 4
  %call.i6 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 1306) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i7, %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1226, i16 noundef zeroext 1800) #4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i9 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i9, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i10 = icmp eq i8 %23, 0
  br i1 %tobool.not.i10, label %rtl_write_byte.exit.rtl_write_word.exit_crit_edge, label %if.then.i12

rtl_write_byte.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit

if.then.i12:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %24 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16_sync.i, align 4
  %call.i11 = tail call zeroext i16 %25(ptr noundef %1, i32 noundef 1226) #4
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i12, %rtl_write_byte.exit.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_beacon_max_error(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1373, i8 noundef zeroext -1) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 1373) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_rdg_setting(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1316, i8 noundef zeroext -1) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 1316) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %10 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1348, i16 noundef zeroext 512) #4
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i4, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i5 = icmp eq i8 %15, 0
  br i1 %tobool.not.i5, label %rtl_write_byte.exit.rtl_write_word.exit_crit_edge, label %if.then.i7

rtl_write_byte.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit

if.then.i7:                                       ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %16 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16_sync.i, align 4
  %call.i6 = tail call zeroext i16 %17(ptr noundef %1, i32 noundef 1348) #4
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i7, %rtl_write_byte.exit.rtl_write_word.exit_crit_edge
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1123, i8 noundef zeroext 5) #4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i10 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i10, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i11 = icmp eq i8 %23, 0
  br i1 %tobool.not.i11, label %rtl_write_word.exit.rtl_write_byte.exit15_crit_edge, label %if.then.i14

rtl_write_word.exit.rtl_write_byte.exit15_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit15

if.then.i14:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i12, align 4
  %call.i13 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 1123) #4
  br label %rtl_write_byte.exit15

rtl_write_byte.exit15:                            ; preds = %if.then.i14, %rtl_write_word.exit.rtl_write_byte.exit15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_init_retry_function(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1056) #4
  %4 = or i8 %call.i, -128
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1056, i8 noundef zeroext %4) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i6 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 1056) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1600, i8 noundef zeroext 64) #4
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i9 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i9, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i10 = icmp eq i8 %18, 0
  br i1 %tobool.not.i10, label %rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge, label %if.then.i13

rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit14

if.then.i13:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i12 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1600) #4
  br label %rtl_write_byte.exit14

rtl_write_byte.exit14:                            ; preds = %if.then.i13, %rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_disable_fast_edca(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1120, i16 noundef zeroext 0) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef 1120) #4
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_set_min_space(ptr nocapture noundef readonly %hw, i1 noundef zeroext %is2T) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = select i1 %is2T, i8 19, i8 10
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %conv) #4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 1116) #4
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92c_translate_rx_signal_stuff(ptr noundef %hw, ptr nocapture noundef readonly %skb, ptr noundef %pstats, ptr nocapture noundef readonly %pdesc, ptr nocapture noundef readonly %p_drvinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rx_drvinfo_size = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 23
  %4 = ptrtoint ptr %rx_drvinfo_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_drvinfo_size, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %rx_bufshift = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 24
  %6 = ptrtoint ptr %rx_bufshift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_bufshift, align 2
  %conv2 = zext i8 %7 to i32
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %conv2
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr3, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv4 = zext i16 %10 to i32
  %and = and i16 %10, 12
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and)
  %cmp.not = icmp eq i16 %and, 4
  br i1 %cmp.not, label %entry.land.end41_crit_edge, label %land.lhs.true

entry.land.end41_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41

land.lhs.true:                                    ; preds = %entry
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %and10 = and i32 %conv4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true.cond.end20_crit_edge

land.lhs.true.cond.end20_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end20

cond.false:                                       ; preds = %land.lhs.true
  %and14 = and i32 %conv4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cond.false18, label %cond.true16

cond.true16:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3, i32 0, i32 3
  br label %cond.end20

cond.false18:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr3, i32 0, i32 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true16, %land.lhs.true.cond.end20_crit_edge
  %cond21 = phi ptr [ %addr2, %cond.true16 ], [ %addr3, %cond.false18 ], [ %addr1, %land.lhs.true.cond.end20_crit_edge ]
  %11 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bssid, align 4
  %13 = ptrtoint ptr %cond21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cond21, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %cond21, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true23, label %cond.end20.land.end41_crit_edge

cond.end20.land.end41_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41

land.lhs.true23:                                  ; preds = %cond.end20
  %hwerror = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 19
  %19 = ptrtoint ptr %hwerror to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %hwerror, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load)
  %20 = icmp ult i8 %bf.load, 32
  br i1 %20, label %land.rhs37, label %land.lhs.true23.land.end41_crit_edge

land.lhs.true23.land.end41_crit_edge:             ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end41

land.rhs37:                                       ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %21 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr1, align 4
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_addr, align 4
  %xor.i65 = xor i32 %24, %22
  %add.ptr.i66 = getelementptr i8, ptr %addr1, i32 4
  %25 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i66, align 2
  %add.ptr1.i67 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 4
  %27 = ptrtoint ptr %add.ptr1.i67 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i67, align 2
  %xor37.i68 = xor i16 %28, %26
  %xor3.i69 = zext i16 %xor37.i68 to i32
  %or.i70 = or i32 %xor.i65, %xor3.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i70)
  %cmp.i71 = icmp eq i32 %or.i70, 0
  br label %land.end41

land.end41:                                       ; preds = %land.rhs37, %land.lhs.true23.land.end41_crit_edge, %cond.end20.land.end41_crit_edge, %entry.land.end41_crit_edge
  %29 = phi i1 [ true, %land.rhs37 ], [ false, %land.lhs.true23.land.end41_crit_edge ], [ false, %cond.end20.land.end41_crit_edge ], [ false, %entry.land.end41_crit_edge ]
  %30 = phi i1 [ %cmp.i71, %land.rhs37 ], [ false, %land.lhs.true23.land.end41_crit_edge ], [ false, %cond.end20.land.end41_crit_edge ], [ false, %entry.land.end41_crit_edge ]
  %31 = and i16 %9, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %31)
  %cmp.i72 = icmp eq i16 %31, -32768
  %frombool.i = zext i1 %29 to i8
  %frombool1.i = zext i1 %30 to i8
  %frombool2.i = zext i1 %cmp.i72 to i8
  %32 = ptrtoint ptr %pdesc to i32
  call void @__asan_loadN_noabort(i32 %32, i32 16)
  %bf.load.i = load i128, ptr %pdesc, align 1
  %33 = trunc i128 %bf.load.i to i32
  %34 = lshr i32 %33, 26
  %.fr.i = freeze i32 %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %.fr.i)
  %cmp.i73 = icmp ult i32 %.fr.i, 67108864
  %.off.i = add nsw i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %or.cond.i = select i1 %cmp.i73, i1 true, i1 %switch.i
  %frombool19.i = zext i1 %or.cond.i to i8
  %packet_matchbssid.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 40
  %35 = ptrtoint ptr %packet_matchbssid.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool.i, ptr %packet_matchbssid.i, align 2
  %packet_toself22.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 43
  %36 = ptrtoint ptr %packet_toself22.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool1.i, ptr %packet_toself22.i, align 1
  %packet_beacon25.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 44
  %37 = ptrtoint ptr %packet_beacon25.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool2.i, ptr %packet_beacon25.i, align 2
  %is_cck.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 41
  %38 = ptrtoint ptr %is_cck.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool19.i, ptr %is_cck.i, align 1
  %rx_mimo_sig_qual.i = getelementptr %struct.rtl_stats, ptr %pstats, i32 0, i32 35
  %39 = ptrtoint ptr %rx_mimo_sig_qual.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %rx_mimo_sig_qual.i, align 4
  %arrayidx30.i = getelementptr %struct.rtl_stats, ptr %pstats, i32 0, i32 35, i32 1
  %40 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %arrayidx30.i, align 1
  br i1 %or.cond.i, label %if.end.i, label %if.else126.i

if.end.i:                                         ; preds = %land.end41
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 39
  %41 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cck_high_power.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool34.not.i = icmp eq i8 %42, 0
  %cck_agc_rpt36.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %p_drvinfo, i32 0, i32 2
  %43 = ptrtoint ptr %cck_agc_rpt36.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cck_agc_rpt36.i, align 1
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else60.i

if.then35.i:                                      ; preds = %if.end.i
  %45 = lshr i8 %44, 6
  %conv41.i = zext i8 %45 to i32
  %46 = zext i32 %conv41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %conv41.i, label %if.then35.unreachabledefault.i [
    i32 3, label %if.then35.i.if.end95.i_crit_edge
    i32 2, label %sw.bb45.i
    i32 1, label %sw.bb50.i
    i32 0, label %sw.bb55.i
  ]

if.then35.i.if.end95.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95.i

sw.bb45.i:                                        ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95.i

sw.bb50.i:                                        ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95.i

sw.bb55.i:                                        ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95.i

if.then35.unreachabledefault.i:                   ; preds = %if.then35.i
  unreachable

if.else60.i:                                      ; preds = %if.end.i
  %47 = lshr i8 %44, 5
  %48 = and i8 %47, 3
  %conv70.i = zext i8 %48 to i32
  %49 = zext i32 %conv70.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %conv70.i, label %if.else60.unreachabledefault.i [
    i32 3, label %sw.bb71.i
    i32 2, label %sw.bb76.i
    i32 1, label %sw.bb82.i
    i32 0, label %sw.bb88.i
  ]

sw.bb71.i:                                        ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = shl i8 %44, 1
  br label %if.end95.i

sw.bb76.i:                                        ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #6
  %51 = shl i8 %44, 1
  br label %if.end95.i

sw.bb82.i:                                        ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = shl i8 %44, 1
  br label %if.end95.i

sw.bb88.i:                                        ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = shl i8 %44, 1
  br label %if.end95.i

if.else60.unreachabledefault.i:                   ; preds = %if.else60.i
  unreachable

if.end95.i:                                       ; preds = %sw.bb88.i, %sw.bb82.i, %sw.bb76.i, %sw.bb71.i, %sw.bb55.i, %sw.bb50.i, %sw.bb45.i, %if.then35.i.if.end95.i_crit_edge
  %.sink340.i = phi i8 [ %50, %sw.bb71.i ], [ %51, %sw.bb76.i ], [ %52, %sw.bb82.i ], [ %53, %sw.bb88.i ], [ %44, %sw.bb45.i ], [ %44, %sw.bb50.i ], [ %44, %sw.bb55.i ], [ %44, %if.then35.i.if.end95.i_crit_edge ]
  %.sink.i = phi i8 [ -46, %sw.bb71.i ], [ -26, %sw.bb76.i ], [ -12, %sw.bb82.i ], [ 16, %sw.bb88.i ], [ -26, %sw.bb45.i ], [ -12, %sw.bb50.i ], [ 16, %sw.bb55.i ], [ -46, %if.then35.i.if.end95.i_crit_edge ]
  %54 = and i8 %.sink340.i, 62
  %sub74.i = sub nsw i8 %.sink.i, %54
  %call.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub74.i) #4
  %conv96.i = zext i8 %call.i to i32
  %rx_pwdb_all.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 29
  %55 = ptrtoint ptr %rx_pwdb_all.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv96.i, ptr %rx_pwdb_all.i, align 4
  %conv97.i = sext i8 %sub74.i to i32
  %recvsignalpower.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 16
  %56 = ptrtoint ptr %recvsignalpower.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv97.i, ptr %recvsignalpower.i, align 4
  br i1 %29, label %if.then99.i, label %if.end95.i._rtl92c_query_rxphystatus.exit_crit_edge

if.end95.i._rtl92c_query_rxphystatus.exit_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92c_query_rxphystatus.exit

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %call.i)
  %cmp101.i = icmp ugt i8 %call.i, 40
  br i1 %cmp101.i, label %if.then99.i.if.end120.i_crit_edge, label %if.else104.i

if.then99.i.if.end120.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120.i

if.else104.i:                                     ; preds = %if.then99.i
  %sq_rpt.i = getelementptr inbounds %struct.phy_sts_cck_8192s_t, ptr %p_drvinfo, i32 0, i32 1
  %57 = ptrtoint ptr %sq_rpt.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sq_rpt.i, align 1
  %conv105.i = zext i8 %58 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %58)
  %cmp106.i = icmp ugt i8 %58, 64
  br i1 %cmp106.i, label %if.else104.i.if.end120.i_crit_edge, label %if.else109.i

if.else104.i.if.end120.i_crit_edge:               ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120.i

if.else109.i:                                     ; preds = %if.else104.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %58)
  %cmp111.i = icmp ult i8 %58, 20
  br i1 %cmp111.i, label %if.else109.i.if.end120.i_crit_edge, label %if.else114.i

if.else109.i.if.end120.i_crit_edge:               ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end120.i

if.else114.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub116.i = sub nsw i16 64, %conv105.i
  %mul.i = mul nsw i16 %sub116.i, 100
  %div328.i = sdiv i16 %mul.i, 44
  %conv117.i = trunc i16 %div328.i to i8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else114.i, %if.else109.i.if.end120.i_crit_edge, %if.else104.i.if.end120.i_crit_edge, %if.then99.i.if.end120.i_crit_edge
  %sq.0.i = phi i8 [ %conv117.i, %if.else114.i ], [ 100, %if.then99.i.if.end120.i_crit_edge ], [ 0, %if.else104.i.if.end120.i_crit_edge ], [ 100, %if.else109.i.if.end120.i_crit_edge ]
  %signalquality.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 15
  %59 = ptrtoint ptr %signalquality.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %sq.0.i, ptr %signalquality.i, align 8
  %60 = ptrtoint ptr %rx_mimo_sig_qual.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %sq.0.i, ptr %rx_mimo_sig_qual.i, align 4
  %61 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %arrayidx30.i, align 1
  br label %_rtl92c_query_rxphystatus.exit

if.else126.i:                                     ; preds = %land.end41
  %rfpath_rxenable.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %arrayidx127.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %62 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx127.i, align 1
  %63 = ptrtoint ptr %rfpath_rxenable.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %rfpath_rxenable.i, align 2
  %64 = ptrtoint ptr %p_drvinfo to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %p_drvinfo, align 1
  %66 = shl i8 %65, 1
  %67 = and i8 %66, 126
  %sub145.i = add nsw i8 %67, -110
  %call151.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub145.i) #4
  %conv152.i = zext i8 %call151.i to i32
  %arrayidx154.i = getelementptr %struct.rx_fwinfo_92c, ptr %p_drvinfo, i32 0, i32 5, i32 0
  %68 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx154.i, align 1
  %70 = sdiv i8 %69, 2
  %div156.i = sext i8 %70 to i32
  %arrayidx158.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 10, i32 0
  %71 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div156.i, ptr %arrayidx158.i, align 4
  br i1 %29, label %if.then160.i, label %if.else126.i.for.inc.i_crit_edge

if.else126.i.for.inc.i_crit_edge:                 ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then160.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx163.i = getelementptr %struct.rtl_stats, ptr %pstats, i32 0, i32 30, i32 0
  %72 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %call151.i, ptr %arrayidx163.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then160.i, %if.else126.i.for.inc.i_crit_edge
  %73 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx127.i, align 1, !range !108
  %spec.select.1.i = add nuw nsw i8 %74, 1
  %arrayidx141.1.i = getelementptr [4 x i8], ptr %p_drvinfo, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx141.1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx141.1.i, align 1
  %77 = shl i8 %76, 1
  %78 = and i8 %77, 126
  %sub145.1.i = add nsw i8 %78, -110
  %call151.1.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub145.1.i) #4
  %conv152.1.i = zext i8 %call151.1.i to i32
  %add.1.i = add nuw nsw i32 %conv152.1.i, %conv152.i
  %arrayidx154.1.i = getelementptr %struct.rx_fwinfo_92c, ptr %p_drvinfo, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %arrayidx154.1.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx154.1.i, align 1
  %81 = sdiv i8 %80, 2
  %div156.1.i = sext i8 %81 to i32
  %arrayidx158.1.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 24, i32 10, i32 1
  %82 = ptrtoint ptr %arrayidx158.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div156.1.i, ptr %arrayidx158.1.i, align 4
  br i1 %29, label %if.then160.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

if.then160.1.i:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx163.1.i = getelementptr %struct.rtl_stats, ptr %pstats, i32 0, i32 30, i32 1
  %83 = ptrtoint ptr %arrayidx163.1.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call151.1.i, ptr %arrayidx163.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then160.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %pwdb_all166.i = getelementptr inbounds %struct.rx_fwinfo_92c, ptr %p_drvinfo, i32 0, i32 1
  %84 = ptrtoint ptr %pwdb_all166.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pwdb_all166.i, align 1
  %86 = lshr i8 %85, 1
  %sub170.i = add nsw i8 %86, -110
  %call172.i = tail call zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %sub170.i) #4
  %conv173.i = zext i8 %call172.i to i32
  %rx_pwdb_all174.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 29
  %87 = ptrtoint ptr %rx_pwdb_all174.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv173.i, ptr %rx_pwdb_all174.i, align 4
  %rxpower.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 17
  %88 = ptrtoint ptr %rxpower.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %sub170.i, ptr %rxpower.i, align 8
  %conv175.i = sext i8 %sub170.i to i32
  %recvsignalpower176.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 16
  %89 = ptrtoint ptr %recvsignalpower176.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv175.i, ptr %recvsignalpower176.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %pdesc, i32 3
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i, align 4
  %92 = lshr i32 %91, 24
  %and.i.i.i = and i32 %92, 63
  %93 = add nsw i32 %and.i.i.i, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %93)
  %94 = icmp ult i32 %93, 8
  %max_spatial_stream.0.i = select i1 %94, i32 2, i32 1
  %arrayidx196.peel.i = getelementptr %struct.rx_fwinfo_92c, ptr %p_drvinfo, i32 0, i32 4, i32 0
  %95 = ptrtoint ptr %arrayidx196.peel.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx196.peel.i, align 1
  %call197.peel.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %96) #4
  br i1 %29, label %if.end208.peel.i, label %for.inc.1.i.for.inc216.peel.i_crit_edge

for.inc.1.i.for.inc216.peel.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc216.peel.i

if.end208.peel.i:                                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %signalquality207.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 15
  %97 = ptrtoint ptr %signalquality207.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %call197.peel.i, ptr %signalquality207.i, align 8
  %98 = ptrtoint ptr %rx_mimo_sig_qual.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %call197.peel.i, ptr %rx_mimo_sig_qual.i, align 1
  br label %for.inc216.peel.i

for.inc216.peel.i:                                ; preds = %if.end208.peel.i, %for.inc.1.i.for.inc216.peel.i_crit_edge
  br i1 %94, label %for.inc216.peel.i.for.body194.i_crit_edge, label %for.inc216.peel.i.if.then229.i_crit_edge

for.inc216.peel.i.if.then229.i_crit_edge:         ; preds = %for.inc216.peel.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then229.i

for.inc216.peel.i.for.body194.i_crit_edge:        ; preds = %for.inc216.peel.i
  br label %for.body194.i

for.body194.i:                                    ; preds = %for.inc216.i.for.body194.i_crit_edge, %for.inc216.peel.i.for.body194.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc216.i.for.body194.i_crit_edge ], [ 1, %for.inc216.peel.i.for.body194.i_crit_edge ]
  %arrayidx196.i = getelementptr %struct.rx_fwinfo_92c, ptr %p_drvinfo, i32 0, i32 4, i32 %indvars.iv.i
  %99 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx196.i, align 1
  %call197.i = tail call zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %100) #4
  br i1 %29, label %if.end208.i, label %for.body194.i.for.inc216.i_crit_edge

for.body194.i.for.inc216.i_crit_edge:             ; preds = %for.body194.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc216.i

if.end208.i:                                      ; preds = %for.body194.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx214.i = getelementptr %struct.rtl_stats, ptr %pstats, i32 0, i32 35, i32 %indvars.iv.i
  %101 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %call197.i, ptr %arrayidx214.i, align 1
  br label %for.inc216.i

for.inc216.i:                                     ; preds = %if.end208.i, %for.body194.i.for.inc216.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %max_spatial_stream.0.i
  br i1 %exitcond.not.i, label %for.inc216.i.if.then229.i_crit_edge, label %for.inc216.i.for.body194.i_crit_edge, !llvm.loop !109

for.inc216.i.for.body194.i_crit_edge:             ; preds = %for.inc216.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body194.i

for.inc216.i.if.then229.i_crit_edge:              ; preds = %for.inc216.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then229.i

if.then229.i:                                     ; preds = %for.inc216.i.if.then229.i_crit_edge, %for.inc216.peel.i.if.then229.i_crit_edge
  %conv226.i = zext i8 %spec.select.1.i to i32
  %div231.i = udiv i32 %add.1.i, %conv226.i
  br label %_rtl92c_query_rxphystatus.exit

_rtl92c_query_rxphystatus.exit:                   ; preds = %if.then229.i, %if.end120.i, %if.end95.i._rtl92c_query_rxphystatus.exit_crit_edge
  %div231.sink.i = phi i32 [ %div231.i, %if.then229.i ], [ %conv96.i, %if.end120.i ], [ %conv96.i, %if.end95.i._rtl92c_query_rxphystatus.exit_crit_edge ]
  %call232.i = tail call i32 @rtl_signal_scale_mapping(ptr noundef %hw, i32 noundef %div231.sink.i) #4
  %conv233.i = trunc i32 %call232.i to i8
  %signalstrength234.i = getelementptr inbounds %struct.rtl_stats, ptr %pstats, i32 0, i32 18
  %102 = ptrtoint ptr %signalstrength234.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv233.i, ptr %signalstrength234.i, align 1
  tail call void @rtl_process_phyinfo(ptr noundef %hw, ptr noundef %add.ptr3, ptr noundef %pstats) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_process_phyinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_signal_scale_mapping(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92c_read_chip_version._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92c_read_chip_version._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 58, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 61, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 64, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 67, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 70, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 73, i32 15}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 76, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 79, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 82, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 85, i32 15}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 88, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 91, i32 15}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 94, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 102, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 110, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 137, i32 4}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rtl92c_llt_write._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtl92c_llt_write._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 161, i32 4}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtl92c_init_llt_table._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rtl92c_init_llt_table._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 168, i32 3}
!50 = !{ptr @rtl92c_init_llt_table._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rtl92c_init_llt_table._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 179, i32 4}
!54 = !{ptr @rtl92c_init_llt_table._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rtl92c_init_llt_table._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 186, i32 3}
!58 = !{ptr @rtl92c_init_llt_table._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtl92c_init_llt_table._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @rtl92c_set_key.cam_const_addr, !61, !"cam_const_addr", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 202, i32 12}
!62 = !{ptr @rtl92c_set_key.cam_const_broad, !63, !"cam_const_broad", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 208, i32 12}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 217, i32 3}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 242, i32 4}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rtl92c_set_key._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtl92c_set_key._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 259, i32 7}
!73 = !{ptr @rtl92c_set_key._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtl92c_set_key._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 271, i32 4}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 278, i32 4}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 281, i32 4}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 285, i32 4}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 288, i32 5}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 293, i32 5}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 302, i32 5}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 385, i32 3}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 390, i32 3}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 395, i32 3}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 400, i32 3}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/mac.c", i32 404, i32 3}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
