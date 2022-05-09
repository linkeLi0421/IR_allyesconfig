; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Boot from %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EERROM\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EFUSE\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OK!!\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERR!!\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open sw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92cu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8192cu: init mac failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92cu_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92cu_hw_init._entry_ptr = internal global ptr @rtl92cu_hw_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SetBeaconRelatedRegisters8192CUsb(): Set TCR(%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92cu_get_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.11, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192cu: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92cu_get_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl92cu_get_hw_reg._entry_ptr = internal global ptr @rtl92cu_get_hw_reg._entry, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HW_VAR_SIFS\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"queue:%x, ac_param:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl92cu_set_hw_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8192cu: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"### Set RCR(0x%08x) ###\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Set HW_VAR_RETRY_LIMIT(0x%08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl92cu_set_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.26, ptr @.str.11, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92cu_set_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl92cu_set_hw_reg._entry_ptr = internal global ptr @rtl92cu_set_hw_reg._entry, section ".printk_index", align 4
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwrdown, 0x5c(BIT7)=%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GPIO_IN=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"N-SS RF =%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GPIOChangeRF  - HW Radio OFF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"pHalData->bHwRadioOff and eRfPowerStateToSet do not match: pHalData->bHwRadioOff %x, eRfPowerStateToSet %x\0A\00", [52 x i8] zeroinitializer }, align 32
@__const._rtl92cu_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 10, i32 12, i32 14, i32 16, i32 22, i32 117, i32 126, i32 127, i32 0], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF(%d) EEPROM CCK Area(%d) = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RF(%d) EEPROM HT40 1S Area(%d) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RF(%d) EEPROM HT40 2S Diff Area(%d) = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S / HT40_2S] = [0x%x / 0x%x / 0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht20[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht40[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-A Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-A Legacy to Ht40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-B Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-B Legacy to HT40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TSSI_A = 0x%x, TSSI_B = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@_rtl92cu_read_board_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.11, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016rtl8192cu: Board Type %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_rtl92cu_read_board_type\00", [39 x i8] zeroinitializer }, align 32
@_rtl92cu_read_board_type._entry_ptr = internal global ptr @_rtl92cu_read_board_type._entry, section ".printk_index", align 4
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92cu_init_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.11, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013rtl8192cu: Failed to init power on!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtl92cu_init_mac\00", [46 x i8] zeroinitializer }, align 32
@_rtl92cu_init_mac._entry_ptr = internal global ptr @_rtl92cu_init_mac._entry, section ".printk_index", align 4
@_rtl92cu_init_mac._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.11, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192cu: Failed to init LLT Table!\0A\00", [56 x i8] zeroinitializer }, align 32
@_rtl92cu_init_mac._entry_ptr.53 = internal global ptr @_rtl92cu_init_mac._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Autoload Done!\0A\00", [16 x i8] zeroinitializer }, align 32
@_rtl92cu_init_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.11, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8192cu: Failed to polling REG_APS_FSMCO[PFM_ALDN] done!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92cu_init_power_on\00", [41 x i8] zeroinitializer }, align 32
@_rtl92cu_init_power_on._entry_ptr = internal global ptr @_rtl92cu_init_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" power-on :REG_LDOV12D_CTRL Reg0x21:0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl92cu_init_power_on._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str.11, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8192cu: MAC auto ON okay!\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92cu_init_power_on._entry_ptr.60 = internal global ptr @_rtl92cu_init_power_on._entry.58, section ".printk_index", align 4
@_rtl92cu_init_power_on._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.11, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rtl8192cu: Failed to polling REG_APS_FSMCO[APFM_ONMAC] done!\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92cu_init_power_on._entry_ptr.63 = internal global ptr @_rtl92cu_init_power_on._entry.61, section ".printk_index", align 4
@_rtl92cu_init_chipn_one_out_ep_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.11, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016rtl8192cu: Tx queue select: 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"_rtl92cu_init_chipn_one_out_ep_priority\00", [56 x i8] zeroinitializer }, align 32
@_rtl92cu_init_chipn_one_out_ep_priority._entry_ptr = internal global ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry, section ".printk_index", align 4
@_rtl92cu_init_chipn_two_out_ep_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.66, ptr @.str.11, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"_rtl92cu_init_chipn_two_out_ep_priority\00", [56 x i8] zeroinitializer }, align 32
@_rtl92cu_init_chipn_two_out_ep_priority._entry_ptr = internal global ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry, section ".printk_index", align 4
@_rtl92cu_init_chipn_three_out_ep_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.11, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016rtl8192cu: Tx queue select :0x%02x..\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"_rtl92cu_init_chipn_three_out_ep_priority\00", [54 x i8] zeroinitializer }, align 32
@_rtl92cu_init_chipn_three_out_ep_priority._entry_ptr = internal global ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry, section ".printk_index", align 4
@_rtl92cu_init_chipt_queue_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.69, ptr @.str.11, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_rtl92cu_init_chipt_queue_priority\00", [61 x i8] zeroinitializer }, align 32
@_rtl92cu_init_chipt_queue_priority._entry_ptr = internal global ptr @_rtl92cu_init_chipt_queue_priority._entry, section ".printk_index", align 4
@RTL8192CUMAC_2T_ARRAY = external dso_local global [172 x i32], align 4
@RTL8192CUPHY_REG_ARRAY_PG_HP = external dso_local global [336 x i32], align 4
@RTL8192CUPHY_REG_ARRAY_PG = external dso_local global [336 x i32], align 4
@RTL8192CUPHY_REG_2TARRAY = external dso_local global [374 x i32], align 4
@RTL8192CURADIOA_2TARRAY = external dso_local global [282 x i32], align 4
@RTL8192CU_RADIOB_2TARRAY = external dso_local global [78 x i32], align 4
@RTL8192CUAGCTAB_2TARRAY = external dso_local global [320 x i32], align 4
@RTL8192CUPHY_REG_1T_HPARRAY = external dso_local global [378 x i32], align 4
@RTL8192CURADIOA_1T_HPARRAY = external dso_local global [282 x i32], align 4
@RTL8192CU_RADIOB_1TARRAY = external dso_local global [1 x i32], align 4
@RTL8192CUAGCTAB_1T_HPARRAY = external dso_local global [320 x i32], align 4
@RTL8192CUPHY_REG_1TARRAY = external dso_local global [374 x i32], align 4
@RTL8192CU_RADIOA_1TARRAY = external dso_local global [282 x i32], align 4
@RTL8192CUAGCTAB_1TARRAY = external dso_local global [320 x i32], align 4
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Set HW_VAR_MEDIA_STATUS:No such media status(%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92cu_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.11, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8192cu: Network type %d not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92cu_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl92cu_set_media_status._entry_ptr = internal global ptr @_rtl92cu_set_media_status._entry, section ".printk_index", align 4
@_resetdigitalprocedure1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.11, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rtl8192cu: 8051 reset failed!.........................\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_resetdigitalprocedure1\00", [40 x i8] zeroinitializer }, align 32
@_resetdigitalprocedure1._entry_ptr = internal global ptr @_resetdigitalprocedure1._entry, section ".printk_index", align 4
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Rate_index:%x, ratr_val:%x, %5phC\0A\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.rtl92cu_set_hw_reg = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\06\06\07\00\06", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 13]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.90 = internal global [29 x i64] [i64 27, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 65, i64 72, i64 82, i64 84, i64 87, i64 94, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.93 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 406, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 409, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 863, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 868, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 880, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 956, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 961, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1442, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1462, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1528, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1603, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1611, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1676, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1691, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1725, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1744, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1765, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1774, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1784, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1902, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2198, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2207, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2210, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2214, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2220, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2225, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 139, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 146, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 153, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 182, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 218, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 222, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 253, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 257, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 261, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 265, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 272, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 281, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 296, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 316, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 389, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 821, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 832, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 427, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 432, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 446, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 461, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 465, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 613, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 657, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 682, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 741, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1284, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1292, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1297, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1303, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1308, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1312, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1071, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2125, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 2130, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 1991, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [32 x i8] c"switch.table.rtl92cu_set_hw_reg\00", align 1
@llvm.compiler.used = appending global [107 x ptr] [ptr @_resetdigitalprocedure1._entry, ptr @_resetdigitalprocedure1._entry_ptr, ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry, ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry_ptr, ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry, ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry_ptr, ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry, ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry_ptr, ptr @_rtl92cu_init_chipt_queue_priority._entry, ptr @_rtl92cu_init_chipt_queue_priority._entry_ptr, ptr @_rtl92cu_init_mac._entry, ptr @_rtl92cu_init_mac._entry.51, ptr @_rtl92cu_init_mac._entry_ptr, ptr @_rtl92cu_init_mac._entry_ptr.53, ptr @_rtl92cu_init_power_on._entry, ptr @_rtl92cu_init_power_on._entry.58, ptr @_rtl92cu_init_power_on._entry.61, ptr @_rtl92cu_init_power_on._entry_ptr, ptr @_rtl92cu_init_power_on._entry_ptr.60, ptr @_rtl92cu_init_power_on._entry_ptr.63, ptr @_rtl92cu_read_board_type._entry, ptr @_rtl92cu_read_board_type._entry_ptr, ptr @_rtl92cu_set_media_status._entry, ptr @_rtl92cu_set_media_status._entry_ptr, ptr @rtl92cu_get_hw_reg._entry, ptr @rtl92cu_get_hw_reg._entry_ptr, ptr @rtl92cu_hw_init._entry, ptr @rtl92cu_hw_init._entry_ptr, ptr @rtl92cu_set_hw_reg._entry, ptr @rtl92cu_set_hw_reg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.rtl92cu_set_hw_reg], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_get_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_set_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_read_board_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_mac._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_power_on._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_power_on._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_init_chipt_queue_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_resetdigitalprocedure1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92cu_set_hw_reg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca [10 x i32], align 4
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
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 10) #7
  %conv = zext i8 %call.i to i32
  %and4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %6 = lshr exact i32 %and4, 3
  %7 = trunc i32 %6 to i16
  %conv6 = xor i16 %7, 2
  %epromtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %8 = ptrtoint ptr %epromtype to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %epromtype, align 2
  %cond10 = select i1 %tobool5.not, ptr @.str.2, ptr @.str.1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull %cond10) #7
  %and12 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and12.lobit = lshr exact i32 %and12, 5
  %9 = trunc i32 %and12.lobit to i8
  %10 = xor i8 %9, 1
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %11 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %autoload_failflag, align 1
  %cond19 = select i1 %tobool13.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond19) #7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #7
  %14 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl92cu_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 128) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end._rtl92cu_read_adapter_info.exit_crit_edge, label %if.end.i

if.end._rtl92cu_read_adapter_info.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_read_adapter_info.exit

if.end.i:                                         ; preds = %if.end
  %call4.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %13, i32 noundef 128, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.exit.i_crit_edge

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end7.i:                                        ; preds = %if.end.i
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 7
  %16 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  br i1 %tobool8.not.i, label %if.then43.2.i.i, label %if.end48.1.thread.i.i

if.end48.1.thread.i.i:                            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 0
  %20 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 0
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 34, ptr %20, align 1
  %22 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 34, ptr %22, align 1
  %24 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 34, ptr %24, align 1
  %26 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 0
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 34, ptr %26, align 1
  %28 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 34, ptr %28, align 1
  %30 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 34, ptr %30, align 1
  %eprom_chnl_txpwr_ht40_2sdf925.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31
  %32 = call ptr @memset(ptr %arrayidx28.i.i, i32 34, i32 6)
  %33 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf925.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %eprom_chnl_txpwr_ht40_2sdf925.i.i, align 1
  %arrayidx60930.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 0
  %34 = ptrtoint ptr %arrayidx60930.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx60930.i.i, align 1
  %arrayidx53.1937.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx53.1937.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx53.1937.i.i, align 1
  %arrayidx60.1938.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx60.1938.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx60.1938.i.i, align 1
  br label %if.end48.2.i.i

if.then43.2.i.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 90
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 2
  %arrayidx13.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 0
  %39 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx13.i.i, align 1
  %arrayidx19.i.i = getelementptr i8, ptr %call7.i.i.i, i32 96
  %40 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx19.i.i, align 8
  %42 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 0
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %42, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 91
  %44 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx13.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx13.1.i.i, align 1
  %arrayidx19.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 97
  %47 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx19.1.i.i, align 1
  %49 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %49, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 92
  %51 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.2.i.i, align 4
  %arrayidx13.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx13.2.i.i, align 1
  %arrayidx19.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 98
  %54 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx19.2.i.i, align 2
  %56 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %56, align 1
  %arrayidx.1860.i.i = getelementptr i8, ptr %call7.i.i.i, i32 93
  %58 = ptrtoint ptr %arrayidx.1860.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.1860.i.i, align 1
  %arrayidx13.1861.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 0
  %60 = ptrtoint ptr %arrayidx13.1861.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx13.1861.i.i, align 1
  %arrayidx19.1863.i.i = getelementptr i8, ptr %call7.i.i.i, i32 99
  %61 = ptrtoint ptr %arrayidx19.1863.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx19.1863.i.i, align 1
  %63 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 0
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %63, align 1
  %arrayidx.1.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 94
  %65 = ptrtoint ptr %arrayidx.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.1.1.i.i, align 2
  %arrayidx13.1.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx13.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx13.1.1.i.i, align 1
  %arrayidx19.1.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 100
  %68 = ptrtoint ptr %arrayidx19.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx19.1.1.i.i, align 4
  %70 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %70, align 1
  %arrayidx.2.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 95
  %72 = ptrtoint ptr %arrayidx.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.2.1.i.i, align 1
  %arrayidx13.2.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 2
  %74 = ptrtoint ptr %arrayidx13.2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx13.2.1.i.i, align 1
  %arrayidx19.2.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 101
  %75 = ptrtoint ptr %arrayidx19.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.2.1.i.i, align 1
  %77 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %76, ptr %77, align 1
  %eprom_chnl_txpwr_ht40_2sdf.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31
  %arrayidx46.i.i = getelementptr i8, ptr %call7.i.i.i, i32 102
  %79 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx46.i.i, align 2
  %and.i.i = and i8 %80, 15
  %81 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %and.i.i, ptr %eprom_chnl_txpwr_ht40_2sdf.i.i, align 1
  %82 = lshr i8 %80, 4
  %arrayidx60.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 0
  %83 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx60.i.i, align 1
  %arrayidx46.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 103
  %84 = ptrtoint ptr %arrayidx46.1.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx46.1.i.i, align 1
  %and.1.i.i = and i8 %85, 15
  %arrayidx53.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %and.1.i.i, ptr %arrayidx53.1.i.i, align 1
  %87 = lshr i8 %85, 4
  %arrayidx60.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx60.1.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx60.1.i.i, align 1
  %arrayidx46.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 104
  %89 = ptrtoint ptr %arrayidx46.2.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx46.2.i.i, align 8
  br label %if.end48.2.i.i

if.end48.2.i.i:                                   ; preds = %if.then43.2.i.i, %if.end48.1.thread.i.i
  %arrayidx60.1941.i.i = phi ptr [ %arrayidx60.1.i.i, %if.then43.2.i.i ], [ %arrayidx60.1938.i.i, %if.end48.1.thread.i.i ]
  %eprom_chnl_txpwr_ht40_2sdf926931940.i.i = phi ptr [ %eprom_chnl_txpwr_ht40_2sdf.i.i, %if.then43.2.i.i ], [ %eprom_chnl_txpwr_ht40_2sdf925.i.i, %if.end48.1.thread.i.i ]
  %91 = phi ptr [ %77, %if.then43.2.i.i ], [ %30, %if.end48.1.thread.i.i ]
  %92 = phi ptr [ %63, %if.then43.2.i.i ], [ %26, %if.end48.1.thread.i.i ]
  %93 = phi ptr [ %49, %if.then43.2.i.i ], [ %22, %if.end48.1.thread.i.i ]
  %94 = phi ptr [ %42, %if.then43.2.i.i ], [ %20, %if.end48.1.thread.i.i ]
  %95 = phi ptr [ %56, %if.then43.2.i.i ], [ %24, %if.end48.1.thread.i.i ]
  %96 = phi ptr [ %70, %if.then43.2.i.i ], [ %28, %if.end48.1.thread.i.i ]
  %arrayidx60932939.i.i = phi ptr [ %arrayidx60.i.i, %if.then43.2.i.i ], [ %arrayidx60930.i.i, %if.end48.1.thread.i.i ]
  %tempval.0.2.i.i = phi i8 [ %90, %if.then43.2.i.i ], [ 0, %if.end48.1.thread.i.i ]
  %and.2.i.i = and i8 %tempval.0.2.i.i, 15
  %arrayidx53.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %and.2.i.i, ptr %arrayidx53.2.i.i, align 1
  %98 = lshr i8 %tempval.0.2.i.i, 4
  %arrayidx60.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 2
  %99 = ptrtoint ptr %arrayidx60.2.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx60.2.i.i, align 1
  %arrayidx80.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 0
  %100 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx80.i.i, align 1
  %conv81.i.i = zext i8 %101 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef %conv81.i.i) #7
  %arrayidx80.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx80.1.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx80.1.i.i, align 1
  %conv81.1.i.i = zext i8 %103 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 1, i32 noundef %conv81.1.i.i) #7
  %arrayidx80.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx80.2.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx80.2.i.i, align 1
  %conv81.2.i.i = zext i8 %105 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 2, i32 noundef %conv81.2.i.i) #7
  %arrayidx80.1870.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 0
  %106 = ptrtoint ptr %arrayidx80.1870.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx80.1870.i.i, align 1
  %conv81.1871.i.i = zext i8 %107 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 0, i32 noundef %conv81.1871.i.i) #7
  %arrayidx80.1.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 1
  %108 = ptrtoint ptr %arrayidx80.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx80.1.1.i.i, align 1
  %conv81.1.1.i.i = zext i8 %109 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 1, i32 noundef %conv81.1.1.i.i) #7
  %arrayidx80.2.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 2
  %110 = ptrtoint ptr %arrayidx80.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx80.2.1.i.i, align 1
  %conv81.2.1.i.i = zext i8 %111 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 2, i32 noundef %conv81.2.1.i.i) #7
  %112 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %94, align 1
  %conv105.i.i = zext i8 %113 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i32 noundef %conv105.i.i) #7
  %114 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %93, align 1
  %conv105.1.i.i = zext i8 %115 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 1, i32 noundef %conv105.1.i.i) #7
  %116 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %95, align 1
  %conv105.2.i.i = zext i8 %117 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 2, i32 noundef %conv105.2.i.i) #7
  %118 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %92, align 1
  %conv105.1873.i.i = zext i8 %119 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 0, i32 noundef %conv105.1873.i.i) #7
  %120 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %96, align 1
  %conv105.1.1.i.i = zext i8 %121 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 1, i32 noundef %conv105.1.1.i.i) #7
  %122 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %91, align 1
  %conv105.2.1.i.i = zext i8 %123 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 1, i32 noundef 2, i32 noundef %conv105.2.1.i.i) #7
  %124 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf926931940.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %eprom_chnl_txpwr_ht40_2sdf926931940.i.i, align 1
  %conv129.i.i = zext i8 %125 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0, i32 noundef %conv129.i.i) #7
  %arrayidx128.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx128.1.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx128.1.i.i, align 1
  %conv129.1.i.i = zext i8 %127 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 1, i32 noundef %conv129.1.i.i) #7
  %128 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx53.2.i.i, align 1
  %conv129.2.i.i = zext i8 %129 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 2, i32 noundef %conv129.2.i.i) #7
  %130 = ptrtoint ptr %arrayidx60932939.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx60932939.i.i, align 1
  %conv129.1875.i.i = zext i8 %131 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 0, i32 noundef %conv129.1875.i.i) #7
  %132 = ptrtoint ptr %arrayidx60.1941.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx60.1941.i.i, align 1
  %conv129.1.1.i.i = zext i8 %133 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 1, i32 noundef %conv129.1.1.i.i) #7
  %134 = ptrtoint ptr %arrayidx60.2.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx60.2.i.i, align 1
  %conv129.2.1.i.i = zext i8 %135 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 2, i32 noundef %conv129.2.1.i.i) #7
  br label %for.body145.i.i

for.body145.i.i:                                  ; preds = %for.body145.i.i.for.body145.i.i_crit_edge, %if.end48.2.i.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end48.2.i.i ], [ %indvars.iv.next.i.i, %for.body145.i.i.for.body145.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.i.i)
  %136 = icmp ult i32 %indvars.iv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i.i)
  %137 = icmp ult i32 %indvars.iv.i.i, 9
  %..i.i.i = select i1 %137, i32 1, i32 2
  %group.0.i.i.i = select i1 %136, i32 0, i32 %..i.i.i
  %arrayidx151.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 0, i32 %group.0.i.i.i
  %138 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx151.i.i, align 1
  %arrayidx155.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv.i.i
  %140 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx155.i.i, align 1
  %arrayidx160.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 0, i32 %group.0.i.i.i
  %141 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx160.i.i, align 1
  %arrayidx164.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv.i.i
  %143 = ptrtoint ptr %arrayidx164.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx164.i.i, align 1
  %conv170.i.i = zext i8 %142 to i32
  %arrayidx175.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 0, i32 %group.0.i.i.i
  %144 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx175.i.i, align 1
  %conv176.i.i = zext i8 %145 to i32
  %sub.i.i = sub nsw i32 %conv170.i.i, %conv176.i.i
  %146 = call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #7
  %147 = trunc i32 %146 to i8
  %148 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv.i.i
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %147, ptr %148, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 14
  br i1 %exitcond.not.i.i, label %for.body145.i.i.for.body212.i.i_crit_edge, label %for.body145.i.i.for.body145.i.i_crit_edge

for.body145.i.i.for.body145.i.i_crit_edge:        ; preds = %for.body145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145.i.i

for.body145.i.i.for.body212.i.i_crit_edge:        ; preds = %for.body145.i.i
  br label %for.body212.i.i

for.body212.i.i:                                  ; preds = %for.body212.i.i.for.body212.i.i_crit_edge, %for.body145.i.i.for.body212.i.i_crit_edge
  %indvars.iv877.i.i = phi i32 [ %indvars.iv.next878.i.i, %for.body212.i.i.for.body212.i.i_crit_edge ], [ 0, %for.body145.i.i.for.body212.i.i_crit_edge ]
  %arrayidx219.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv877.i.i
  %150 = ptrtoint ptr %arrayidx219.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx219.i.i, align 1
  %conv220.i.i = zext i8 %151 to i32
  %arrayidx225.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv877.i.i
  %152 = ptrtoint ptr %arrayidx225.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx225.i.i, align 1
  %conv226.i.i = zext i8 %153 to i32
  %arrayidx231.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv877.i.i
  %154 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx231.i.i, align 1
  %conv232.i.i = zext i8 %155 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef %indvars.iv877.i.i, i32 noundef %conv220.i.i, i32 noundef %conv226.i.i, i32 noundef %conv232.i.i) #7
  %indvars.iv.next878.i.i = add nuw nsw i32 %indvars.iv877.i.i, 1
  %exitcond879.not.i.i = icmp eq i32 %indvars.iv.next878.i.i, 14
  br i1 %exitcond879.not.i.i, label %for.body212.i.i.for.body145.1.i.i_crit_edge, label %for.body212.i.i.for.body212.i.i_crit_edge

for.body212.i.i.for.body212.i.i_crit_edge:        ; preds = %for.body212.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body212.i.i

for.body212.i.i.for.body145.1.i.i_crit_edge:      ; preds = %for.body212.i.i
  br label %for.body145.1.i.i

for.body145.1.i.i:                                ; preds = %for.body145.1.i.i.for.body145.1.i.i_crit_edge, %for.body212.i.i.for.body145.1.i.i_crit_edge
  %indvars.iv.1.i.i = phi i32 [ %indvars.iv.next.1.i.i, %for.body145.1.i.i.for.body145.1.i.i_crit_edge ], [ 0, %for.body212.i.i.for.body145.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.1.i.i)
  %156 = icmp ult i32 %indvars.iv.1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.1.i.i)
  %157 = icmp ult i32 %indvars.iv.1.i.i, 9
  %..i.1.i.i = select i1 %157, i32 1, i32 2
  %group.0.i.1.i.i = select i1 %156, i32 0, i32 %..i.1.i.i
  %arrayidx151.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 29, i32 1, i32 %group.0.i.1.i.i
  %158 = ptrtoint ptr %arrayidx151.1.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx151.1.i.i, align 1
  %arrayidx155.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv.1.i.i
  %160 = ptrtoint ptr %arrayidx155.1.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx155.1.i.i, align 1
  %arrayidx160.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 30, i32 1, i32 %group.0.i.1.i.i
  %161 = ptrtoint ptr %arrayidx160.1.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx160.1.i.i, align 1
  %arrayidx164.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv.1.i.i
  %163 = ptrtoint ptr %arrayidx164.1.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx164.1.i.i, align 1
  %conv170.1.i.i = zext i8 %162 to i32
  %arrayidx175.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 31, i32 1, i32 %group.0.i.1.i.i
  %164 = ptrtoint ptr %arrayidx175.1.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx175.1.i.i, align 1
  %conv176.1.i.i = zext i8 %165 to i32
  %sub.1.i.i = sub nsw i32 %conv170.1.i.i, %conv176.1.i.i
  %166 = call i32 @llvm.smax.i32(i32 %sub.1.i.i, i32 0) #7
  %167 = trunc i32 %166 to i8
  %168 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv.1.i.i
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %167, ptr %168, align 1
  %indvars.iv.next.1.i.i = add nuw nsw i32 %indvars.iv.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %indvars.iv.next.1.i.i, 14
  br i1 %exitcond.1.not.i.i, label %for.body145.1.i.i.for.body212.1.i.i_crit_edge, label %for.body145.1.i.i.for.body145.1.i.i_crit_edge

for.body145.1.i.i.for.body145.1.i.i_crit_edge:    ; preds = %for.body145.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145.1.i.i

for.body145.1.i.i.for.body212.1.i.i_crit_edge:    ; preds = %for.body145.1.i.i
  br label %for.body212.1.i.i

for.body212.1.i.i:                                ; preds = %for.body212.1.i.i.for.body212.1.i.i_crit_edge, %for.body145.1.i.i.for.body212.1.i.i_crit_edge
  %indvars.iv877.1.i.i = phi i32 [ %indvars.iv.next878.1.i.i, %for.body212.1.i.i.for.body212.1.i.i_crit_edge ], [ 0, %for.body145.1.i.i.for.body212.1.i.i_crit_edge ]
  %arrayidx219.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv877.1.i.i
  %170 = ptrtoint ptr %arrayidx219.1.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx219.1.i.i, align 1
  %conv220.1.i.i = zext i8 %171 to i32
  %arrayidx225.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv877.1.i.i
  %172 = ptrtoint ptr %arrayidx225.1.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx225.1.i.i, align 1
  %conv226.1.i.i = zext i8 %173 to i32
  %arrayidx231.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv877.1.i.i
  %174 = ptrtoint ptr %arrayidx231.1.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx231.1.i.i, align 1
  %conv232.1.i.i = zext i8 %175 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef %indvars.iv877.1.i.i, i32 noundef %conv220.1.i.i, i32 noundef %conv226.1.i.i, i32 noundef %conv232.1.i.i) #7
  %indvars.iv.next878.1.i.i = add nuw nsw i32 %indvars.iv877.1.i.i, 1
  %exitcond879.1.not.i.i = icmp eq i32 %indvars.iv.next878.1.i.i, 14
  br i1 %exitcond879.1.not.i.i, label %for.inc236.1.i.i, label %for.body212.1.i.i.for.body212.1.i.i_crit_edge

for.body212.1.i.i.for.body212.1.i.i_crit_edge:    ; preds = %for.body212.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body212.1.i.i

for.inc236.1.i.i:                                 ; preds = %for.body212.1.i.i
  br i1 %tobool8.not.i, label %if.then245.2.i.i, label %if.else256.2.i.i

if.then245.2.i.i:                                 ; preds = %for.inc236.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx248.i.i = getelementptr i8, ptr %call7.i.i.i, i32 111
  %176 = ptrtoint ptr %arrayidx248.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx248.i.i, align 1
  %arrayidx250.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 0
  %178 = ptrtoint ptr %arrayidx250.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx250.i.i, align 1
  %arrayidx253.i.i = getelementptr i8, ptr %call7.i.i.i, i32 114
  %179 = ptrtoint ptr %arrayidx253.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx253.i.i, align 2
  %181 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 0
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %180, ptr %181, align 1
  %arrayidx248.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 112
  %183 = ptrtoint ptr %arrayidx248.1.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx248.1.i.i, align 8
  %arrayidx250.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 1
  %185 = ptrtoint ptr %arrayidx250.1.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx250.1.i.i, align 1
  %arrayidx253.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 115
  %186 = ptrtoint ptr %arrayidx253.1.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx253.1.i.i, align 1
  %188 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 1
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %187, ptr %188, align 1
  %arrayidx248.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 113
  %190 = ptrtoint ptr %arrayidx248.2.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx248.2.i.i, align 1
  %arrayidx250.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 2
  %192 = ptrtoint ptr %arrayidx250.2.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx250.2.i.i, align 1
  %arrayidx253.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 116
  %193 = ptrtoint ptr %arrayidx253.2.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx253.2.i.i, align 4
  br label %for.inc264.2.i.i

if.else256.2.i.i:                                 ; preds = %for.inc236.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx259.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 0
  %195 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx259.i.i, align 1
  %196 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 0
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %196, align 1
  %arrayidx259.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 1
  %198 = ptrtoint ptr %arrayidx259.1.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %arrayidx259.1.i.i, align 1
  %199 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 1
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %199, align 1
  %arrayidx259.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 2
  %201 = ptrtoint ptr %arrayidx259.2.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %arrayidx259.2.i.i, align 1
  br label %for.inc264.2.i.i

for.inc264.2.i.i:                                 ; preds = %if.else256.2.i.i, %if.then245.2.i.i
  %.sink918.i.i = phi i8 [ 0, %if.else256.2.i.i ], [ %194, %if.then245.2.i.i ]
  %202 = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 2
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %.sink918.i.i, ptr %202, align 1
  %pwrgroup_ht20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 36
  %pwrgroup_ht40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 37
  br label %if.end333.i.i

if.end333.i.i:                                    ; preds = %if.end333.i.i.if.end333.i.i_crit_edge, %for.inc264.2.i.i
  %indvars.iv887.i.i = phi i32 [ 0, %for.inc264.2.i.i ], [ %indvars.iv.next888.i.i, %if.end333.i.i.if.end333.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv887.i.i)
  %204 = icmp ult i32 %indvars.iv887.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv887.i.i)
  %205 = icmp ult i32 %indvars.iv887.i.i, 9
  %206 = select i1 %205, i32 1, i32 2
  %idxprom284.i.i = select i1 %204, i32 0, i32 %206
  %arrayidx285.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 %idxprom284.i.i
  %207 = ptrtoint ptr %arrayidx285.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx285.i.i, align 1
  %209 = and i8 %208, 15
  %arrayidx292.i.i = getelementptr [59 x i8], ptr %pwrgroup_ht20.i.i, i32 0, i32 %indvars.iv887.i.i
  %210 = ptrtoint ptr %arrayidx292.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx292.i.i, align 1
  %arrayidx295.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 %idxprom284.i.i
  %211 = ptrtoint ptr %arrayidx295.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx295.i.i, align 1
  %213 = and i8 %212, 15
  %arrayidx302.i.i = getelementptr [59 x i8], ptr %pwrgroup_ht40.i.i, i32 0, i32 %indvars.iv887.i.i
  %214 = ptrtoint ptr %arrayidx302.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx302.i.i, align 1
  %conv341.i.i = zext i8 %209 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef %indvars.iv887.i.i, i32 noundef %conv341.i.i) #7
  %arrayidx348.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 37, i32 0, i32 %indvars.iv887.i.i
  %215 = ptrtoint ptr %arrayidx348.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx348.i.i, align 1
  %conv349.i.i = zext i8 %216 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef %indvars.iv887.i.i, i32 noundef %conv349.i.i) #7
  %indvars.iv.next888.i.i = add nuw nsw i32 %indvars.iv887.i.i, 1
  %exitcond889.not.i.i = icmp eq i32 %indvars.iv.next888.i.i, 14
  br i1 %exitcond889.not.i.i, label %if.end333.i.i.if.end333.1.i.i_crit_edge, label %if.end333.i.i.if.end333.i.i_crit_edge

if.end333.i.i.if.end333.i.i_crit_edge:            ; preds = %if.end333.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end333.i.i

if.end333.i.i.if.end333.1.i.i_crit_edge:          ; preds = %if.end333.i.i
  br label %if.end333.1.i.i

if.end333.1.i.i:                                  ; preds = %if.end333.1.i.i.if.end333.1.i.i_crit_edge, %if.end333.i.i.if.end333.1.i.i_crit_edge
  %indvars.iv887.1.i.i = phi i32 [ %indvars.iv.next888.1.i.i, %if.end333.1.i.i.if.end333.1.i.i_crit_edge ], [ 0, %if.end333.i.i.if.end333.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv887.1.i.i)
  %217 = icmp ult i32 %indvars.iv887.1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv887.1.i.i)
  %218 = icmp ult i32 %indvars.iv887.1.i.i, 9
  %219 = select i1 %218, i32 1, i32 2
  %idxprom309.1.i.i = select i1 %217, i32 0, i32 %219
  %arrayidx310.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 27, i32 %idxprom309.1.i.i
  %220 = ptrtoint ptr %arrayidx310.1.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx310.1.i.i, align 1
  %222 = lshr i8 %221, 4
  %arrayidx319.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 36, i32 1, i32 %indvars.iv887.1.i.i
  %223 = ptrtoint ptr %arrayidx319.1.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %arrayidx319.1.i.i, align 1
  %arrayidx322.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 28, i32 %idxprom309.1.i.i
  %224 = ptrtoint ptr %arrayidx322.1.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx322.1.i.i, align 1
  %226 = lshr i8 %225, 4
  %arrayidx331.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 37, i32 1, i32 %indvars.iv887.1.i.i
  %227 = ptrtoint ptr %arrayidx331.1.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %arrayidx331.1.i.i, align 1
  %conv341.1.i.i = zext i8 %222 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 1, i32 noundef %indvars.iv887.1.i.i, i32 noundef %conv341.1.i.i) #7
  %228 = ptrtoint ptr %arrayidx331.1.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx331.1.i.i, align 1
  %conv349.1.i.i = zext i8 %229 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef %indvars.iv887.1.i.i, i32 noundef %conv349.1.i.i) #7
  %indvars.iv.next888.1.i.i = add nuw nsw i32 %indvars.iv887.1.i.i, 1
  %exitcond889.1.not.i.i = icmp eq i32 %indvars.iv.next888.1.i.i, 14
  br i1 %exitcond889.1.not.i.i, label %for.inc353.1.i.i, label %if.end333.1.i.i.if.end333.1.i.i_crit_edge

if.end333.1.i.i.if.end333.1.i.i_crit_edge:        ; preds = %if.end333.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end333.1.i.i

for.inc353.1.i.i:                                 ; preds = %if.end333.1.i.i
  %txpwr_ht20diff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42
  %txpwr_legacyhtdiff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44
  br label %for.body360.i.i

for.body360.i.i:                                  ; preds = %if.end423.i.i.for.body360.i.i_crit_edge, %for.inc353.1.i.i
  %indvars.iv894.i.i = phi i32 [ 0, %for.inc353.1.i.i ], [ %indvars.iv.next895.i.i, %if.end423.i.i.for.body360.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv894.i.i)
  %230 = icmp ult i32 %indvars.iv894.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv894.i.i)
  %231 = icmp ult i32 %indvars.iv894.i.i, 9
  %..i821.i.i = select i1 %231, i8 1, i8 2
  %group.0.i822.i.i = select i1 %230, i8 0, i8 %..i821.i.i
  br i1 %tobool8.not.i, label %if.then364.i.i, label %for.body360.i.i.if.end369.i.i_crit_edge

for.body360.i.i.if.end369.i.i_crit_edge:          ; preds = %for.body360.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end369.i.i

if.then364.i.i:                                   ; preds = %for.body360.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %narrow.i.i = add nuw nsw i8 %group.0.i822.i.i, 105
  %add366.i.i = zext i8 %narrow.i.i to i32
  %arrayidx367.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add366.i.i
  %232 = ptrtoint ptr %arrayidx367.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx367.i.i, align 1
  br label %if.end369.i.i

if.end369.i.i:                                    ; preds = %if.then364.i.i, %for.body360.i.i.if.end369.i.i_crit_edge
  %tempval.1.i.i = phi i8 [ %233, %if.then364.i.i ], [ 2, %for.body360.i.i.if.end369.i.i_crit_edge ]
  %and371.i.i = and i8 %tempval.1.i.i, 15
  %arrayidx375.i.i = getelementptr [59 x i8], ptr %txpwr_ht20diff.i.i, i32 0, i32 %indvars.iv894.i.i
  %234 = ptrtoint ptr %arrayidx375.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %and371.i.i, ptr %arrayidx375.i.i, align 1
  %235 = lshr i8 %tempval.1.i.i, 4
  %arrayidx383.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 %indvars.iv894.i.i
  %236 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx383.i.i, align 1
  %237 = and i8 %tempval.1.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool390.not.i.i = icmp eq i8 %237, 0
  br i1 %tobool390.not.i.i, label %if.end369.i.i.if.end398.i.i_crit_edge, label %if.then391.i.i

if.end369.i.i.if.end398.i.i_crit_edge:            ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end398.i.i

if.then391.i.i:                                   ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i8 %tempval.1.i.i, -16
  %238 = ptrtoint ptr %arrayidx375.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %or.i.i, ptr %arrayidx375.i.i, align 1
  br label %if.end398.i.i

if.end398.i.i:                                    ; preds = %if.then391.i.i, %if.end369.i.i.if.end398.i.i_crit_edge
  %239 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx383.i.i, align 1
  %241 = and i8 %240, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool405.not.i.i = icmp eq i8 %241, 0
  br i1 %tobool405.not.i.i, label %if.end398.i.i.if.end414.i.i_crit_edge, label %if.then406.i.i

if.end398.i.i.if.end414.i.i_crit_edge:            ; preds = %if.end398.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end414.i.i

if.then406.i.i:                                   ; preds = %if.end398.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or412.i.i = or i8 %240, -16
  %242 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %or412.i.i, ptr %arrayidx383.i.i, align 1
  br label %if.end414.i.i

if.end414.i.i:                                    ; preds = %if.then406.i.i, %if.end398.i.i.if.end414.i.i_crit_edge
  br i1 %tobool8.not.i, label %if.then418.i.i, label %if.end414.i.i.if.end423.i.i_crit_edge

if.end414.i.i.if.end423.i.i_crit_edge:            ; preds = %if.end414.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end423.i.i

if.then418.i.i:                                   ; preds = %if.end414.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = or i8 %group.0.i822.i.i, 108
  %add420.i.i = zext i8 %243 to i32
  %arrayidx421.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add420.i.i
  %244 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx421.i.i, align 1
  br label %if.end423.i.i

if.end423.i.i:                                    ; preds = %if.then418.i.i, %if.end414.i.i.if.end423.i.i_crit_edge
  %tempval.2.i.i = phi i8 [ %245, %if.then418.i.i ], [ 3, %if.end414.i.i.if.end423.i.i_crit_edge ]
  %and425.i.i = and i8 %tempval.2.i.i, 15
  %arrayidx429.i.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i.i, i32 0, i32 %indvars.iv894.i.i
  %246 = ptrtoint ptr %arrayidx429.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %and425.i.i, ptr %arrayidx429.i.i, align 1
  %247 = lshr i8 %tempval.2.i.i, 4
  %arrayidx437.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 %indvars.iv894.i.i
  %248 = ptrtoint ptr %arrayidx437.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx437.i.i, align 1
  %indvars.iv.next895.i.i = add nuw nsw i32 %indvars.iv894.i.i, 1
  %exitcond896.not.i.i = icmp eq i32 %indvars.iv.next895.i.i, 14
  br i1 %exitcond896.not.i.i, label %for.end440.i.i, label %if.end423.i.i.for.body360.i.i_crit_edge

if.end423.i.i.for.body360.i.i_crit_edge:          ; preds = %if.end423.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body360.i.i

for.end440.i.i:                                   ; preds = %if.end423.i.i
  %arrayidx443.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 7
  %249 = ptrtoint ptr %arrayidx443.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx443.i.i, align 1
  %legacy_ht_txpowerdiff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 61
  %251 = ptrtoint ptr %legacy_ht_txpowerdiff.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %legacy_ht_txpowerdiff.i.i, align 1
  %252 = ptrtoint ptr %txpwr_ht20diff.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %txpwr_ht20diff.i.i, align 1
  %conv454.i.i = sext i8 %253 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef %conv454.i.i) #7
  %arrayidx453.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 1
  %254 = ptrtoint ptr %arrayidx453.1.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx453.1.i.i, align 1
  %conv454.1.i.i = sext i8 %255 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef %conv454.1.i.i) #7
  %arrayidx453.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 2
  %256 = ptrtoint ptr %arrayidx453.2.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx453.2.i.i, align 1
  %conv454.2.i.i = sext i8 %257 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef %conv454.2.i.i) #7
  %arrayidx453.3.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 3
  %258 = ptrtoint ptr %arrayidx453.3.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx453.3.i.i, align 1
  %conv454.3.i.i = sext i8 %259 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 3, i32 noundef %conv454.3.i.i) #7
  %arrayidx453.4.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 4
  %260 = ptrtoint ptr %arrayidx453.4.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx453.4.i.i, align 1
  %conv454.4.i.i = sext i8 %261 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 4, i32 noundef %conv454.4.i.i) #7
  %arrayidx453.5.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 5
  %262 = ptrtoint ptr %arrayidx453.5.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx453.5.i.i, align 1
  %conv454.5.i.i = sext i8 %263 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 5, i32 noundef %conv454.5.i.i) #7
  %arrayidx453.6.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 6
  %264 = ptrtoint ptr %arrayidx453.6.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx453.6.i.i, align 1
  %conv454.6.i.i = sext i8 %265 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 6, i32 noundef %conv454.6.i.i) #7
  %arrayidx453.7.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 7
  %266 = ptrtoint ptr %arrayidx453.7.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx453.7.i.i, align 1
  %conv454.7.i.i = sext i8 %267 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 7, i32 noundef %conv454.7.i.i) #7
  %arrayidx453.8.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 8
  %268 = ptrtoint ptr %arrayidx453.8.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx453.8.i.i, align 1
  %conv454.8.i.i = sext i8 %269 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 8, i32 noundef %conv454.8.i.i) #7
  %arrayidx453.9.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 9
  %270 = ptrtoint ptr %arrayidx453.9.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx453.9.i.i, align 1
  %conv454.9.i.i = sext i8 %271 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 9, i32 noundef %conv454.9.i.i) #7
  %arrayidx453.10.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 10
  %272 = ptrtoint ptr %arrayidx453.10.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx453.10.i.i, align 1
  %conv454.10.i.i = sext i8 %273 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 10, i32 noundef %conv454.10.i.i) #7
  %arrayidx453.11.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 11
  %274 = ptrtoint ptr %arrayidx453.11.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx453.11.i.i, align 1
  %conv454.11.i.i = sext i8 %275 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 11, i32 noundef %conv454.11.i.i) #7
  %arrayidx453.12.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 12
  %276 = ptrtoint ptr %arrayidx453.12.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx453.12.i.i, align 1
  %conv454.12.i.i = sext i8 %277 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 12, i32 noundef %conv454.12.i.i) #7
  %arrayidx453.13.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 0, i32 13
  %278 = ptrtoint ptr %arrayidx453.13.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx453.13.i.i, align 1
  %conv454.13.i.i = sext i8 %279 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef 13, i32 noundef %conv454.13.i.i) #7
  %280 = ptrtoint ptr %txpwr_legacyhtdiff.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %txpwr_legacyhtdiff.i.i, align 1
  %conv468.i.i = sext i8 %281 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %conv468.i.i) #7
  %arrayidx467.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 1
  %282 = ptrtoint ptr %arrayidx467.1.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx467.1.i.i, align 1
  %conv468.1.i.i = sext i8 %283 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %conv468.1.i.i) #7
  %arrayidx467.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 2
  %284 = ptrtoint ptr %arrayidx467.2.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx467.2.i.i, align 1
  %conv468.2.i.i = sext i8 %285 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 2, i32 noundef %conv468.2.i.i) #7
  %arrayidx467.3.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 3
  %286 = ptrtoint ptr %arrayidx467.3.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx467.3.i.i, align 1
  %conv468.3.i.i = sext i8 %287 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 3, i32 noundef %conv468.3.i.i) #7
  %arrayidx467.4.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 4
  %288 = ptrtoint ptr %arrayidx467.4.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx467.4.i.i, align 1
  %conv468.4.i.i = sext i8 %289 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 4, i32 noundef %conv468.4.i.i) #7
  %arrayidx467.5.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 5
  %290 = ptrtoint ptr %arrayidx467.5.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx467.5.i.i, align 1
  %conv468.5.i.i = sext i8 %291 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 5, i32 noundef %conv468.5.i.i) #7
  %arrayidx467.6.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 6
  %292 = ptrtoint ptr %arrayidx467.6.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx467.6.i.i, align 1
  %conv468.6.i.i = sext i8 %293 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 6, i32 noundef %conv468.6.i.i) #7
  %294 = ptrtoint ptr %arrayidx443.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx443.i.i, align 1
  %conv468.7.i.i = sext i8 %295 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 7, i32 noundef %conv468.7.i.i) #7
  %arrayidx467.8.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 8
  %296 = ptrtoint ptr %arrayidx467.8.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx467.8.i.i, align 1
  %conv468.8.i.i = sext i8 %297 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 8, i32 noundef %conv468.8.i.i) #7
  %arrayidx467.9.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 9
  %298 = ptrtoint ptr %arrayidx467.9.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx467.9.i.i, align 1
  %conv468.9.i.i = sext i8 %299 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 9, i32 noundef %conv468.9.i.i) #7
  %arrayidx467.10.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 10
  %300 = ptrtoint ptr %arrayidx467.10.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx467.10.i.i, align 1
  %conv468.10.i.i = sext i8 %301 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 10, i32 noundef %conv468.10.i.i) #7
  %arrayidx467.11.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 11
  %302 = ptrtoint ptr %arrayidx467.11.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx467.11.i.i, align 1
  %conv468.11.i.i = sext i8 %303 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 11, i32 noundef %conv468.11.i.i) #7
  %arrayidx467.12.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 12
  %304 = ptrtoint ptr %arrayidx467.12.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx467.12.i.i, align 1
  %conv468.12.i.i = sext i8 %305 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 12, i32 noundef %conv468.12.i.i) #7
  %arrayidx467.13.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 0, i32 13
  %306 = ptrtoint ptr %arrayidx467.13.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx467.13.i.i, align 1
  %conv468.13.i.i = sext i8 %307 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef 13, i32 noundef %conv468.13.i.i) #7
  %arrayidx481.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 0
  %308 = ptrtoint ptr %arrayidx481.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx481.i.i, align 1
  %conv482.i.i = sext i8 %309 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %conv482.i.i) #7
  %arrayidx481.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 1
  %310 = ptrtoint ptr %arrayidx481.1.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx481.1.i.i, align 1
  %conv482.1.i.i = sext i8 %311 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %conv482.1.i.i) #7
  %arrayidx481.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 2
  %312 = ptrtoint ptr %arrayidx481.2.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx481.2.i.i, align 1
  %conv482.2.i.i = sext i8 %313 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 2, i32 noundef %conv482.2.i.i) #7
  %arrayidx481.3.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 3
  %314 = ptrtoint ptr %arrayidx481.3.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx481.3.i.i, align 1
  %conv482.3.i.i = sext i8 %315 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 3, i32 noundef %conv482.3.i.i) #7
  %arrayidx481.4.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 4
  %316 = ptrtoint ptr %arrayidx481.4.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx481.4.i.i, align 1
  %conv482.4.i.i = sext i8 %317 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef %conv482.4.i.i) #7
  %arrayidx481.5.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 5
  %318 = ptrtoint ptr %arrayidx481.5.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx481.5.i.i, align 1
  %conv482.5.i.i = sext i8 %319 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 5, i32 noundef %conv482.5.i.i) #7
  %arrayidx481.6.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 6
  %320 = ptrtoint ptr %arrayidx481.6.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx481.6.i.i, align 1
  %conv482.6.i.i = sext i8 %321 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 6, i32 noundef %conv482.6.i.i) #7
  %arrayidx481.7.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 7
  %322 = ptrtoint ptr %arrayidx481.7.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx481.7.i.i, align 1
  %conv482.7.i.i = sext i8 %323 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 7, i32 noundef %conv482.7.i.i) #7
  %arrayidx481.8.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 8
  %324 = ptrtoint ptr %arrayidx481.8.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx481.8.i.i, align 1
  %conv482.8.i.i = sext i8 %325 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 8, i32 noundef %conv482.8.i.i) #7
  %arrayidx481.9.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 9
  %326 = ptrtoint ptr %arrayidx481.9.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx481.9.i.i, align 1
  %conv482.9.i.i = sext i8 %327 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 9, i32 noundef %conv482.9.i.i) #7
  %arrayidx481.10.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 10
  %328 = ptrtoint ptr %arrayidx481.10.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx481.10.i.i, align 1
  %conv482.10.i.i = sext i8 %329 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 10, i32 noundef %conv482.10.i.i) #7
  %arrayidx481.11.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 11
  %330 = ptrtoint ptr %arrayidx481.11.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx481.11.i.i, align 1
  %conv482.11.i.i = sext i8 %331 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 11, i32 noundef %conv482.11.i.i) #7
  %arrayidx481.12.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 12
  %332 = ptrtoint ptr %arrayidx481.12.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx481.12.i.i, align 1
  %conv482.12.i.i = sext i8 %333 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 12, i32 noundef %conv482.12.i.i) #7
  %arrayidx481.13.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 42, i32 1, i32 13
  %334 = ptrtoint ptr %arrayidx481.13.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx481.13.i.i, align 1
  %conv482.13.i.i = sext i8 %335 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef 13, i32 noundef %conv482.13.i.i) #7
  %arrayidx495.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 0
  %336 = ptrtoint ptr %arrayidx495.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx495.i.i, align 1
  %conv496.i.i = sext i8 %337 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %conv496.i.i) #7
  %arrayidx495.1.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 1
  %338 = ptrtoint ptr %arrayidx495.1.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx495.1.i.i, align 1
  %conv496.1.i.i = sext i8 %339 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %conv496.1.i.i) #7
  %arrayidx495.2.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 2
  %340 = ptrtoint ptr %arrayidx495.2.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx495.2.i.i, align 1
  %conv496.2.i.i = sext i8 %341 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef %conv496.2.i.i) #7
  %arrayidx495.3.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 3
  %342 = ptrtoint ptr %arrayidx495.3.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx495.3.i.i, align 1
  %conv496.3.i.i = sext i8 %343 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 3, i32 noundef %conv496.3.i.i) #7
  %arrayidx495.4.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 4
  %344 = ptrtoint ptr %arrayidx495.4.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx495.4.i.i, align 1
  %conv496.4.i.i = sext i8 %345 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 4, i32 noundef %conv496.4.i.i) #7
  %arrayidx495.5.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 5
  %346 = ptrtoint ptr %arrayidx495.5.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx495.5.i.i, align 1
  %conv496.5.i.i = sext i8 %347 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 5, i32 noundef %conv496.5.i.i) #7
  %arrayidx495.6.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 6
  %348 = ptrtoint ptr %arrayidx495.6.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx495.6.i.i, align 1
  %conv496.6.i.i = sext i8 %349 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef %conv496.6.i.i) #7
  %arrayidx495.7.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 7
  %350 = ptrtoint ptr %arrayidx495.7.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx495.7.i.i, align 1
  %conv496.7.i.i = sext i8 %351 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 7, i32 noundef %conv496.7.i.i) #7
  %arrayidx495.8.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 8
  %352 = ptrtoint ptr %arrayidx495.8.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx495.8.i.i, align 1
  %conv496.8.i.i = sext i8 %353 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 8, i32 noundef %conv496.8.i.i) #7
  %arrayidx495.9.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 9
  %354 = ptrtoint ptr %arrayidx495.9.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx495.9.i.i, align 1
  %conv496.9.i.i = sext i8 %355 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 9, i32 noundef %conv496.9.i.i) #7
  %arrayidx495.10.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 10
  %356 = ptrtoint ptr %arrayidx495.10.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx495.10.i.i, align 1
  %conv496.10.i.i = sext i8 %357 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 10, i32 noundef %conv496.10.i.i) #7
  %arrayidx495.11.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 11
  %358 = ptrtoint ptr %arrayidx495.11.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx495.11.i.i, align 1
  %conv496.11.i.i = sext i8 %359 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 11, i32 noundef %conv496.11.i.i) #7
  %arrayidx495.12.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 12
  %360 = ptrtoint ptr %arrayidx495.12.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx495.12.i.i, align 1
  %conv496.12.i.i = sext i8 %361 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 12, i32 noundef %conv496.12.i.i) #7
  %arrayidx495.13.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 44, i32 1, i32 13
  %362 = ptrtoint ptr %arrayidx495.13.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx495.13.i.i, align 1
  %conv496.13.i.i = sext i8 %363 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef 13, i32 noundef %conv496.13.i.i) #7
  br i1 %tobool8.not.i, label %if.end534.i.i, label %if.then556.i.i

if.end534.i.i:                                    ; preds = %for.end440.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx502.i.i = getelementptr i8, ptr %call7.i.i.i, i32 121
  %364 = ptrtoint ptr %arrayidx502.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx502.i.i, align 1
  %366 = and i8 %365, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 54
  %367 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %eeprom_regulatory.i.i, align 1
  %conv510.c810.i.i = zext i8 %366 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %conv510.c810.i.i) #7
  %arrayidx513.i.i = getelementptr i8, ptr %call7.i.i.i, i32 118
  %368 = ptrtoint ptr %arrayidx513.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx513.i.i, align 2
  %eeprom_tssi.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 25
  %370 = ptrtoint ptr %eeprom_tssi.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %369, ptr %eeprom_tssi.i.i, align 2
  %arrayidx515.i.i = getelementptr i8, ptr %call7.i.i.i, i32 119
  %371 = ptrtoint ptr %arrayidx515.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx515.i.i, align 1
  %arrayidx517.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 25, i32 1
  %373 = ptrtoint ptr %arrayidx517.i.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %372, ptr %arrayidx517.i.i, align 1
  %conv526.c812.i.i = zext i8 %369 to i32
  %conv529.c814.i.i = zext i8 %372 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %conv526.c812.i.i, i32 noundef %conv529.c814.i.i) #7
  %arrayidx532.i.i = getelementptr i8, ptr %call7.i.i.i, i32 120
  %374 = ptrtoint ptr %arrayidx532.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx532.i.i, align 8
  %376 = and i8 %375, 31
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 55
  %377 = add nsw i8 %376, -29
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %377)
  %378 = icmp ult i8 %377, -23
  %spec.store.select.i.i = select i1 %378, i8 18, i8 %376
  %379 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %spec.store.select.i.i, ptr %eeprom_thermalmeter.i.i, align 4
  br label %_rtl92cu_read_txpower_info_from_hwpg.exit.i

if.then556.i.i:                                   ; preds = %for.end440.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_regulatory507.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 54
  %380 = ptrtoint ptr %eeprom_regulatory507.i.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %eeprom_regulatory507.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef 0) #7
  %eeprom_tssi519.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 25
  %381 = ptrtoint ptr %eeprom_tssi519.i.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 0, ptr %eeprom_tssi519.i.i, align 2
  %arrayidx522.i.i = getelementptr %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 25, i32 1
  %382 = ptrtoint ptr %arrayidx522.i.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 0, ptr %arrayidx522.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0) #7
  %eeprom_thermalmeter945.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 55
  %383 = ptrtoint ptr %eeprom_thermalmeter945.i.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 18, ptr %eeprom_thermalmeter945.i.i, align 4
  %apk_thermalmeterignore.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 62
  %384 = ptrtoint ptr %apk_thermalmeterignore.i.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 1, ptr %apk_thermalmeterignore.i.i, align 2
  br label %_rtl92cu_read_txpower_info_from_hwpg.exit.i

_rtl92cu_read_txpower_info_from_hwpg.exit.i:      ; preds = %if.then556.i.i, %if.end534.i.i
  %eeprom_thermalmeter947.i.i = phi ptr [ %eeprom_thermalmeter.i.i, %if.end534.i.i ], [ %eeprom_thermalmeter945.i.i, %if.then556.i.i ]
  %385 = ptrtoint ptr %eeprom_thermalmeter947.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %eeprom_thermalmeter947.i.i, align 4
  %thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 17, i32 56
  %387 = ptrtoint ptr %thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %386, ptr %thermalmeter.i.i, align 1
  %conv561.i.i = zext i8 %386 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.45, i32 noundef %conv561.i.i) #7
  %388 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %priv, align 8
  %version.i.i = getelementptr inbounds %struct.rtl_priv, ptr %389, i32 0, i32 10, i32 13
  %390 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %version.i.i, align 4
  %and.i61.i = and i32 %391, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i.i = icmp eq i32 %and.i61.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %_rtl92cu_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i62.i = getelementptr i8, ptr %call7.i.i.i, i32 121
  %392 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx.i62.i, align 1
  %394 = lshr i8 %393, 5
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %_rtl92cu_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i.i = getelementptr i8, ptr %call7.i.i.i, i32 124
  %395 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx5.i.i, align 4
  %397 = and i8 %396, 15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %boardtype.0.i.i = phi i8 [ %394, %if.then.i.i ], [ %397, %if.else.i.i ]
  %board_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %389, i32 0, i32 17, i32 17
  %398 = ptrtoint ptr %board_type.i.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %boardtype.0.i.i, ptr %board_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %boardtype.0.i.i)
  %cmp.i.i = icmp eq i8 %boardtype.0.i.i, 1
  br i1 %cmp.i.i, label %if.then14.i.i, label %if.end.i.i._rtl92cu_read_board_type.exit.i_crit_edge

if.end.i.i._rtl92cu_read_board_type.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_read_board_type.exit.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %external_pa.i.i = getelementptr inbounds %struct.rtl_priv, ptr %389, i32 0, i32 17, i32 18
  %399 = ptrtoint ptr %external_pa.i.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 1, ptr %external_pa.i.i, align 2
  br label %_rtl92cu_read_board_type.exit.i

_rtl92cu_read_board_type.exit.i:                  ; preds = %if.then14.i.i, %if.end.i.i._rtl92cu_read_board_type.exit.i_crit_edge
  %400 = ptrtoint ptr %board_type.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %board_type.i.i, align 1
  %conv17.i.i = zext i8 %401 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv17.i.i) #11
  %txpwr_fromeprom.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 23
  %402 = ptrtoint ptr %txpwr_fromeprom.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 1, ptr %txpwr_fromeprom.i, align 4
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 10, i32 12
  %403 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %cmp.i = icmp eq i8 %404, 0
  br i1 %cmp.i, label %if.then10.i, label %_rtl92cu_read_board_type.exit.i.exit.i_crit_edge

_rtl92cu_read_board_type.exit.i.exit.i_crit_edge: ; preds = %_rtl92cu_read_board_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.then10.i:                                      ; preds = %_rtl92cu_read_board_type.exit.i
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 14
  %405 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %eeprom_oemid.i, align 4
  %407 = zext i8 %406 to i64
  call void @__sanitizer_cov_trace_switch(i64 %407, ptr @__sancov_gen_cov_switch_values)
  switch i8 %406, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 4, label %if.then10.i.exit.sink.split.i_crit_edge
    i8 13, label %sw.bb31.i
  ]

if.then10.i.exit.sink.split.i_crit_edge:          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.bb.i:                                          ; preds = %if.then10.i
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 11
  %408 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %eeprom_did.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32394, i16 %409)
  %cmp13.i = icmp eq i16 %409, -32394
  br i1 %cmp13.i, label %if.then15.i, label %sw.bb.i.exit.sink.split.i_crit_edge

sw.bb.i.exit.sink.split.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.then15.i:                                      ; preds = %sw.bb.i
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 12
  %410 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %eeprom_svid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4156, i16 %411)
  %cmp17.i = icmp eq i16 %411, 4156
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.then15.i.if.else.i_crit_edge

if.then15.i.if.else.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then15.i
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 17, i32 13
  %412 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %eeprom_smid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5673, i16 %413)
  %cmp20.i = icmp eq i16 %413, 5673
  br i1 %cmp20.i, label %land.lhs.true.i.exit.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.exit.sink.split.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then15.i.if.else.i_crit_edge
  br label %exit.sink.split.i

sw.bb31.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.default.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %sw.default.i, %sw.bb31.i, %if.else.i, %land.lhs.true.i.exit.sink.split.i_crit_edge, %sw.bb.i.exit.sink.split.i_crit_edge, %if.then10.i.exit.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 0, %sw.default.i ], [ 19, %sw.bb31.i ], [ 27, %land.lhs.true.i.exit.sink.split.i_crit_edge ], [ 0, %sw.bb.i.exit.sink.split.i_crit_edge ], [ 9, %if.then10.i.exit.sink.split.i_crit_edge ]
  %414 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %.sink.i, ptr %oem_id.i, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %_rtl92cu_read_board_type.exit.i.exit.i_crit_edge, %if.end.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %_rtl92cu_read_adapter_info.exit

_rtl92cu_read_adapter_info.exit:                  ; preds = %exit.i, %if.end._rtl92cu_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #7
  %415 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %priv, align 8
  %oem_id.i34 = getelementptr inbounds %struct.rtl_priv, ptr %416, i32 0, i32 10, i32 12
  %417 = ptrtoint ptr %oem_id.i34 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %oem_id.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %418)
  %cond.i = icmp eq i8 %418, 27
  br i1 %cond.i, label %sw.bb.i35, label %_rtl92cu_read_adapter_info.exit._rtl92cu_hal_customized_behavior.exit_crit_edge

_rtl92cu_read_adapter_info.exit._rtl92cu_hal_customized_behavior.exit_crit_edge: ; preds = %_rtl92cu_read_adapter_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_hal_customized_behavior.exit

sw.bb.i35:                                        ; preds = %_rtl92cu_read_adapter_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %416, i32 0, i32 18
  %419 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 1, ptr %ledctl.i, align 8
  br label %_rtl92cu_hal_customized_behavior.exit

_rtl92cu_hal_customized_behavior.exit:            ; preds = %sw.bb.i35, %_rtl92cu_read_adapter_info.exit._rtl92cu_hal_customized_behavior.exit_crit_edge
  %conv5.i = zext i8 %418 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %416, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef %conv5.i) #7
  br label %cleanup

cleanup:                                          ; preds = %_rtl92cu_hal_customized_behavior.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sec_reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sec_reg_value) #7
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pairwise_enc_algorithm, align 4
  %group_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group_enc_algorithm, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5) #7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod_params, align 4
  %sw_crypto = getelementptr inbounds %struct.rtl_mod_params, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sw_crypto to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sw_crypto, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sec = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  %spec.store.select = select i1 %tobool6.not, i8 12, i8 15
  %16 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.store.select, ptr %sec_reg_value, align 1
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %17 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = or i8 %spec.store.select, -64
  %20 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %sec_reg_value, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 2) #7
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end18.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end18.rtl_write_byte.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end18.rtl_write_byte.exit_crit_edge
  %29 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sec_reg_value, align 1
  %conv19 = zext i8 %30 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv19) #7
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_hw_reg, align 4
  call void %36(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92cu_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %value16.i.i = alloca i16, align 2
  %value32.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !179
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !180
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %3 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_ready, align 2
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %4 = ptrtoint ptr %hw_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 5, ptr %hw_type, align 8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %out_ep_nums5.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  %7 = ptrtoint ptr %out_ep_nums5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %out_ep_nums5.i, align 4
  %out_queue_sel.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 7, i32 0, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %out_queue_sel.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %out_queue_sel.i, align 1
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 13, i32 9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %pollingcount.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %12(ptr noundef %6, i32 noundef 4) #7
  %13 = and i8 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.54) #7
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %15(ptr noundef %6, i32 noundef 28, i8 noundef zeroext 0) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.rtl_write_byte.exit.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i109.i.i = tail call zeroext i8 %21(ptr noundef %6, i32 noundef 28) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then.i.i.rtl_write_byte.exit.i.i_crit_edge
  %22 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %23(ptr noundef %6, i32 noundef 17, i8 noundef zeroext 43) #7
  %24 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i112.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i112.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i112.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i113.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i113.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit117.i.i_crit_edge, label %if.then.i116.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit117.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit117.i.i

if.then.i116.i.i:                                 ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i115.i.i = tail call zeroext i8 %29(ptr noundef %6, i32 noundef 17) #7
  br label %rtl_write_byte.exit117.i.i

rtl_write_byte.exit117.i.i:                       ; preds = %if.then.i116.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit117.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 21474800) #7
  %31 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i119.i.i = tail call zeroext i8 %32(ptr noundef %6, i32 noundef 33) #7
  %33 = and i8 %call.i119.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp11.i.i = icmp eq i8 %33, 0
  br i1 %cmp11.i.i, label %if.then13.i.i, label %rtl_write_byte.exit117.i.i.if.end21.i.i_crit_edge

rtl_write_byte.exit117.i.i.if.end21.i.i_crit_edge: ; preds = %rtl_write_byte.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %pollingcount.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 102
  br i1 %exitcond.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then13.i.i:                                    ; preds = %rtl_write_byte.exit117.i.i
  %or.i.i = or i8 %call.i119.i.i, 1
  %34 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %35(ptr noundef %6, i32 noundef 33, i8 noundef zeroext %or.i.i) #7
  %36 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i122.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i122.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i122.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i123.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i123.i.i, label %if.then13.i.i.rtl_write_byte.exit127.i.i_crit_edge, label %if.then.i126.i.i

if.then13.i.i.rtl_write_byte.exit127.i.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit127.i.i

if.then.i126.i.i:                                 ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i125.i.i = tail call zeroext i8 %41(ptr noundef %6, i32 noundef 33) #7
  br label %rtl_write_byte.exit127.i.i

rtl_write_byte.exit127.i.i:                       ; preds = %if.then.i126.i.i, %if.then13.i.i.rtl_write_byte.exit127.i.i_crit_edge
  %conv16.i.i = zext i8 %or.i.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.57, i32 noundef %conv16.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 21474800) #7
  %43 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i129.i.i = tail call zeroext i8 %44(ptr noundef %6, i32 noundef 0) #7
  %45 = and i8 %call.i129.i.i, -2
  %46 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %47(ptr noundef %6, i32 noundef 0, i8 noundef zeroext %45) #7
  %48 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i132.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_readback.i132.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %write_readback.i132.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i133.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i133.i.i, label %rtl_write_byte.exit127.i.i.if.end21.i.i_crit_edge, label %if.then.i136.i.i

rtl_write_byte.exit127.i.i.if.end21.i.i_crit_edge: ; preds = %rtl_write_byte.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then.i136.i.i:                                 ; preds = %rtl_write_byte.exit127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i135.i.i = tail call zeroext i8 %53(ptr noundef %6, i32 noundef 0) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then.i136.i.i, %rtl_write_byte.exit127.i.i.if.end21.i.i_crit_edge, %rtl_write_byte.exit117.i.i.if.end21.i.i_crit_edge
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 13, i32 10
  %54 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i138.i.i = tail call zeroext i16 %55(ptr noundef %6, i32 noundef 4) #7
  %56 = or i16 %call.i138.i.i, 256
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 13, i32 6
  %57 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %58(ptr noundef %6, i32 noundef 4, i16 noundef zeroext %56) #7
  %59 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i140.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i140.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i140.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i141.i.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i141.i.i, label %if.end21.i.i.do.body26.i.i.preheader_crit_edge, label %if.then.i144.i.i

if.end21.i.i.do.body26.i.i.preheader_crit_edge:   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i.i.preheader

if.then.i144.i.i:                                 ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i143.i.i = tail call zeroext i16 %64(ptr noundef %6, i32 noundef 4) #7
  br label %do.body26.i.i.preheader

do.body26.i.i.preheader:                          ; preds = %if.then.i144.i.i, %if.end21.i.i.do.body26.i.i.preheader_crit_edge
  br label %do.body26.i.i

do.body26.i.i:                                    ; preds = %if.end37.i.i.do.body26.i.i_crit_edge, %do.body26.i.i.preheader
  %pollingcount.1.i.i = phi i32 [ %inc38.i.i, %if.end37.i.i.do.body26.i.i_crit_edge ], [ 0, %do.body26.i.i.preheader ]
  %65 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i146.i.i = tail call zeroext i16 %66(ptr noundef %6, i32 noundef 4) #7
  %67 = and i16 %call.i146.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool30.not.i.i = icmp eq i16 %67, 0
  br i1 %tobool30.not.i.i, label %do.end34.i.i, label %if.end37.i.i

do.end34.i.i:                                     ; preds = %do.body26.i.i
  %call36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  %68 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %69(ptr noundef %6, i32 noundef 4, i16 noundef zeroext 2066) #7
  %70 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i149.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i149.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i149.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i150.i.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i150.i.i, label %do.end34.i.i.rtl_write_word.exit154.i.i_crit_edge, label %if.then.i153.i.i

do.end34.i.i.rtl_write_word.exit154.i.i_crit_edge: ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit154.i.i

if.then.i153.i.i:                                 ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i152.i.i = tail call zeroext i16 %75(ptr noundef %6, i32 noundef 4) #7
  br label %rtl_write_word.exit154.i.i

rtl_write_word.exit154.i.i:                       ; preds = %if.then.i153.i.i, %do.end34.i.i.rtl_write_word.exit154.i.i_crit_edge
  %76 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i156.i.i = tail call zeroext i16 %77(ptr noundef %6, i32 noundef 0) #7
  %78 = and i16 %call.i156.i.i, -513
  %79 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %80(ptr noundef %6, i32 noundef 0, i16 noundef zeroext %78) #7
  %81 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i159.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %write_readback.i159.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %write_readback.i159.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i160.i.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i160.i.i, label %rtl_write_word.exit154.i.i.rtl_write_word.exit164.i.i_crit_edge, label %if.then.i163.i.i

rtl_write_word.exit154.i.i.rtl_write_word.exit164.i.i_crit_edge: ; preds = %rtl_write_word.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit164.i.i

if.then.i163.i.i:                                 ; preds = %rtl_write_word.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i162.i.i = tail call zeroext i16 %86(ptr noundef %6, i32 noundef 0) #7
  br label %rtl_write_word.exit164.i.i

rtl_write_word.exit164.i.i:                       ; preds = %if.then.i163.i.i, %rtl_write_word.exit154.i.i.rtl_write_word.exit164.i.i_crit_edge
  %87 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i166.i.i = tail call zeroext i8 %88(ptr noundef %6, i32 noundef 1536) #7
  %89 = and i8 %call.i166.i.i, -65
  %90 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %91(ptr noundef %6, i32 noundef 1536, i8 noundef zeroext %89) #7
  %92 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i169.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %write_readback.i169.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %write_readback.i169.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i170.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i170.i.i, label %rtl_write_word.exit164.i.i.do.body58.i.i.preheader_crit_edge, label %if.then.i173.i.i

rtl_write_word.exit164.i.i.do.body58.i.i.preheader_crit_edge: ; preds = %rtl_write_word.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i.i.preheader

do.body58.i.i.preheader:                          ; preds = %if.then.i173.i.i, %rtl_write_word.exit164.i.i.do.body58.i.i.preheader_crit_edge
  br label %do.body58.i.i

if.then.i173.i.i:                                 ; preds = %rtl_write_word.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i172.i.i = tail call zeroext i8 %97(ptr noundef %6, i32 noundef 1536) #7
  br label %do.body58.i.i.preheader

if.end37.i.i:                                     ; preds = %do.body26.i.i
  %inc38.i.i = add nuw nsw i32 %pollingcount.1.i.i, 1
  %exitcond191.i.i = icmp eq i32 %inc38.i.i, 1002
  br i1 %exitcond191.i.i, label %if.end37.i.i.do.end.i_crit_edge, label %if.end37.i.i.do.body26.i.i_crit_edge

if.end37.i.i.do.body26.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i.i

if.end37.i.i.do.end.i_crit_edge:                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body58.i.i:                                    ; preds = %land.rhs.i.i.do.body58.i.i_crit_edge, %do.body58.i.i.preheader
  %pollingcount.2.i.i = phi i32 [ %inc59.i.i, %land.rhs.i.i.do.body58.i.i_crit_edge ], [ 0, %do.body58.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %pollingcount.2.i.i)
  %exitcond192.not.i.i = icmp eq i32 %pollingcount.2.i.i, 199
  br i1 %exitcond192.not.i.i, label %do.body58.i.i.do.end67.i.i_crit_edge, label %land.rhs.i.i

do.body58.i.i.do.end67.i.i_crit_edge:             ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i.i

land.rhs.i.i:                                     ; preds = %do.body58.i.i
  %inc59.i.i = add nuw nsw i32 %pollingcount.2.i.i, 1
  %98 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i176.i.i = tail call zeroext i8 %99(ptr noundef %6, i32 noundef 1536) #7
  %tobool66.not.i.i = icmp sgt i8 %call.i176.i.i, -1
  br i1 %tobool66.not.i.i, label %land.rhs.i.i.do.end67.i.i_crit_edge, label %land.rhs.i.i.do.body58.i.i_crit_edge

land.rhs.i.i.do.body58.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i.i

land.rhs.i.i.do.end67.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i.i

do.end67.i.i:                                     ; preds = %land.rhs.i.i.do.end67.i.i_crit_edge, %do.body58.i.i.do.end67.i.i_crit_edge
  %100 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i178.i.i = tail call zeroext i16 %101(ptr noundef %6, i32 noundef 256) #7
  %102 = or i16 %call.i178.i.i, 767
  %103 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %104(ptr noundef %6, i32 noundef 256, i16 noundef zeroext %102) #7
  %105 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i181.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i181.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i181.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i182.i.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i182.i.i, label %do.end67.i.i.if.end12.i_crit_edge, label %if.then.i185.i.i

do.end67.i.i.if.end12.i_crit_edge:                ; preds = %do.end67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i185.i.i:                                 ; preds = %do.end67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i184.i.i = tail call zeroext i16 %110(ptr noundef %6, i32 noundef 256) #7
  br label %if.end12.i

do.end.i:                                         ; preds = %if.end37.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge
  %.str.62.sink.i = phi ptr [ @.str.62, %if.end37.i.i.do.end.i_crit_edge ], [ @.str.55, %if.end.i.i.do.end.i_crit_edge ]
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.62.sink.i) #11
  br label %do.end11

if.end12.i:                                       ; preds = %if.then.i185.i.i, %do.end67.i.i.if.end12.i_crit_edge
  %call13.i = tail call zeroext i1 @rtl92c_init_llt_table(ptr noundef %hw, i32 noundef 249) #7
  br i1 %call13.i, label %if.end20.i, label %if.end12.i.do.end11_crit_edge

if.end12.i.do.end11_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end20.i:                                       ; preds = %if.end12.i
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 8
  %version.i.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 10, i32 13
  %113 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %version.i.i, align 4
  %and.i.i = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i68.i = icmp eq i32 %and.i.i, 0
  %cond8.i.i = select i1 %tobool.not.i68.i, i32 126, i32 231
  %115 = trunc i32 %cond8.i.i to i8
  %div.lhs.trunc.i.i = sub nuw i8 -8, %115
  %div.lhs.trunc.i.i.frozen = freeze i8 %div.lhs.trunc.i.i
  %.frozen = freeze i8 %8
  %div8.i.i = udiv i8 %div.lhs.trunc.i.i.frozen, %.frozen
  %div.zext.i.i = zext i8 %div8.i.i to i32
  %116 = mul i8 %div8.i.i, %.frozen
  %rem9.i.i.decomposed = sub i8 %div.lhs.trunc.i.i.frozen, %116
  %rem.zext.i.i = zext i8 %rem9.i.i.decomposed to i32
  %conv9.i.i = zext i8 %10 to i32
  %and10.i.i = and i32 %conv9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %numhq.0.i.i = select i1 %tobool11.not.i.i, i32 0, i32 %div.zext.i.i
  %and14.i.i = and i32 %conv9.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %phi.bo.i.i = shl nuw nsw i32 %div.zext.i.i, 8
  %numlq.0.i.i = select i1 %tobool15.not.i.i, i32 0, i32 %phi.bo.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.i.i = icmp ult i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem9.i.i.decomposed)
  %tobool19.not.i.i = icmp eq i8 %rem9.i.i.decomposed, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool19.not.i.i
  %add.i.i = select i1 %or.cond.i.i, i32 0, i32 %rem.zext.i.i
  %numhq.1.i.i = add nuw nsw i32 %add.i.i, %numhq.0.i.i
  br i1 %tobool.not.i68.i, label %if.end20.i.if.end61.i.i_crit_edge, label %if.then23.i.i

if.end20.i.if.end61.i.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then23.i.i:                                    ; preds = %if.end20.i
  %and25.i.i = and i32 %conv9.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  %spec.select.i.i = select i1 %tobool26.not.i.i, i8 0, i8 %div8.i.i
  %write8_async.i.i69.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 13, i32 5
  %117 = ptrtoint ptr %write8_async.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write8_async.i.i69.i, align 4
  tail call void %118(ptr noundef %112, i32 noundef 532, i8 noundef zeroext %spec.select.i.i) #7
  %cfg.i.i70.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 32
  %119 = ptrtoint ptr %cfg.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i.i70.i, align 8
  %write_readback.i.i71.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i.i71.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i.i71.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i.i72.i = icmp eq i8 %122, 0
  br i1 %tobool.not.i.i72.i, label %if.then23.i.i.if.end61.i.i_crit_edge, label %if.then.i.i75.i

if.then23.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then.i.i75.i:                                  ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i73.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 13, i32 9
  %123 = ptrtoint ptr %read8_sync.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8_sync.i.i73.i, align 4
  %call.i.i74.i = tail call zeroext i8 %124(ptr noundef %112, i32 noundef 532) #7
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.then.i.i75.i, %if.then23.i.i.if.end61.i.i_crit_edge, %if.end20.i.if.end61.i.i_crit_edge
  %or.i76.i = or i32 %numlq.0.i.i, %numhq.1.i.i
  %shl65.i.i = shl nuw nsw i32 %cond8.i.i, 16
  %or66.i.i = or i32 %or.i76.i, %shl65.i.i
  %or67.i.i = or i32 %or66.i.i, -2147483648
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 13, i32 7
  %125 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %126(ptr noundef %112, i32 noundef 512, i32 noundef %or67.i.i) #7
  %cfg.i3.i.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 32
  %127 = ptrtoint ptr %cfg.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i3.i.i, align 8
  %write_readback.i4.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i4.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i5.i.i = icmp eq i8 %130, 0
  br i1 %tobool.not.i5.i.i, label %if.end61.i.i._rtl92cu_init_queue_reserved_page.exit.i_crit_edge, label %if.then.i7.i.i

if.end61.i.i._rtl92cu_init_queue_reserved_page.exit.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_init_queue_reserved_page.exit.i

if.then.i7.i.i:                                   ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %112, i32 0, i32 13, i32 11
  %131 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i6.i.i = tail call i32 %132(ptr noundef %112, i32 noundef 512) #7
  br label %_rtl92cu_init_queue_reserved_page.exit.i

_rtl92cu_init_queue_reserved_page.exit.i:         ; preds = %if.then.i7.i.i, %if.end61.i.i._rtl92cu_init_queue_reserved_page.exit.i_crit_edge
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 8
  %write8_async.i.i78.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 5
  %135 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %136(ptr noundef %134, i32 noundef 1060, i8 noundef zeroext -7) #7
  %cfg.i.i79.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 32
  %137 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i.i80.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i.i80.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i.i80.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i.i81.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i.i81.i, label %_rtl92cu_init_queue_reserved_page.exit.i.rtl_write_byte.exit.i85.i_crit_edge, label %if.then.i.i84.i

_rtl92cu_init_queue_reserved_page.exit.i.rtl_write_byte.exit.i85.i_crit_edge: ; preds = %_rtl92cu_init_queue_reserved_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i85.i

if.then.i.i84.i:                                  ; preds = %_rtl92cu_init_queue_reserved_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i82.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %141 = ptrtoint ptr %read8_sync.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i.i82.i, align 4
  %call.i.i83.i = tail call zeroext i8 %142(ptr noundef %134, i32 noundef 1060) #7
  br label %rtl_write_byte.exit.i85.i

rtl_write_byte.exit.i85.i:                        ; preds = %if.then.i.i84.i, %_rtl92cu_init_queue_reserved_page.exit.i.rtl_write_byte.exit.i85.i_crit_edge
  %143 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %144(ptr noundef %134, i32 noundef 1061, i8 noundef zeroext -7) #7
  %145 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i3.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write_readback.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %write_readback.i3.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i4.i.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i4.i.i, label %rtl_write_byte.exit.i85.i.rtl_write_byte.exit8.i.i_crit_edge, label %if.then.i7.i87.i

rtl_write_byte.exit.i85.i.rtl_write_byte.exit8.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit8.i.i

if.then.i7.i87.i:                                 ; preds = %rtl_write_byte.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %149 = ptrtoint ptr %read8_sync.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read8_sync.i5.i.i, align 4
  %call.i6.i86.i = tail call zeroext i8 %150(ptr noundef %134, i32 noundef 1061) #7
  br label %rtl_write_byte.exit8.i.i

rtl_write_byte.exit8.i.i:                         ; preds = %if.then.i7.i87.i, %rtl_write_byte.exit.i85.i.rtl_write_byte.exit8.i.i_crit_edge
  %151 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %152(ptr noundef %134, i32 noundef 1117, i8 noundef zeroext -7) #7
  %153 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i11.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %write_readback.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %write_readback.i11.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i12.i.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i12.i.i, label %rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge, label %if.then.i15.i.i

rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge: ; preds = %rtl_write_byte.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit16.i.i

if.then.i15.i.i:                                  ; preds = %rtl_write_byte.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i13.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %157 = ptrtoint ptr %read8_sync.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read8_sync.i13.i.i, align 4
  %call.i14.i.i = tail call zeroext i8 %158(ptr noundef %134, i32 noundef 1117) #7
  br label %rtl_write_byte.exit16.i.i

rtl_write_byte.exit16.i.i:                        ; preds = %if.then.i15.i.i, %rtl_write_byte.exit8.i.i.rtl_write_byte.exit16.i.i_crit_edge
  %159 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %160(ptr noundef %134, i32 noundef 276, i8 noundef zeroext -7) #7
  %161 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i19.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_readback.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %write_readback.i19.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i20.i.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i20.i.i, label %rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge, label %if.then.i23.i.i

rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge: ; preds = %rtl_write_byte.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit24.i.i

if.then.i23.i.i:                                  ; preds = %rtl_write_byte.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i21.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %165 = ptrtoint ptr %read8_sync.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read8_sync.i21.i.i, align 4
  %call.i22.i.i = tail call zeroext i8 %166(ptr noundef %134, i32 noundef 276) #7
  br label %rtl_write_byte.exit24.i.i

rtl_write_byte.exit24.i.i:                        ; preds = %if.then.i23.i.i, %rtl_write_byte.exit16.i.i.rtl_write_byte.exit24.i.i_crit_edge
  %167 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %168(ptr noundef %134, i32 noundef 521, i8 noundef zeroext -7) #7
  %169 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i27.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %write_readback.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %write_readback.i27.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i28.i.i = icmp eq i8 %172, 0
  br i1 %tobool.not.i28.i.i, label %rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge, label %if.then.i31.i.i

rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge: ; preds = %rtl_write_byte.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit32.i.i

if.then.i31.i.i:                                  ; preds = %rtl_write_byte.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i29.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %173 = ptrtoint ptr %read8_sync.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read8_sync.i29.i.i, align 4
  %call.i30.i.i = tail call zeroext i8 %174(ptr noundef %134, i32 noundef 521) #7
  br label %rtl_write_byte.exit32.i.i

rtl_write_byte.exit32.i.i:                        ; preds = %if.then.i31.i.i, %rtl_write_byte.exit24.i.i.rtl_write_byte.exit32.i.i_crit_edge
  %write16_async.i.i88.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 6
  %175 = ptrtoint ptr %write16_async.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write16_async.i.i88.i, align 4
  tail call void %176(ptr noundef %134, i32 noundef 278, i16 noundef zeroext 10239) #7
  %177 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i34.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i34.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i35.i.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i35.i.i, label %rtl_write_byte.exit32.i.i.rtl_write_word.exit.i90.i_crit_edge, label %if.then.i37.i.i

rtl_write_byte.exit32.i.i.rtl_write_word.exit.i90.i_crit_edge: ; preds = %rtl_write_byte.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i90.i

if.then.i37.i.i:                                  ; preds = %rtl_write_byte.exit32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 10
  %181 = ptrtoint ptr %read16_sync.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read16_sync.i.i89.i, align 4
  %call.i36.i.i = tail call zeroext i16 %182(ptr noundef %134, i32 noundef 278) #7
  br label %rtl_write_word.exit.i90.i

rtl_write_word.exit.i90.i:                        ; preds = %if.then.i37.i.i, %rtl_write_byte.exit32.i.i.rtl_write_word.exit.i90.i_crit_edge
  %183 = ptrtoint ptr %write8_async.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write8_async.i.i78.i, align 4
  tail call void %184(ptr noundef %134, i32 noundef 260, i8 noundef zeroext 17) #7
  %185 = ptrtoint ptr %cfg.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cfg.i.i79.i, align 8
  %write_readback.i40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %write_readback.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %write_readback.i40.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i41.i.i = icmp eq i8 %188, 0
  br i1 %tobool.not.i41.i.i, label %rtl_write_word.exit.i90.i._rtl92c_init_trx_buffer.exit.i_crit_edge, label %if.then.i44.i.i

rtl_write_word.exit.i90.i._rtl92c_init_trx_buffer.exit.i_crit_edge: ; preds = %rtl_write_word.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92c_init_trx_buffer.exit.i

if.then.i44.i.i:                                  ; preds = %rtl_write_word.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i42.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 13, i32 9
  %189 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i43.i.i = tail call zeroext i8 %190(ptr noundef %134, i32 noundef 260) #7
  br label %_rtl92c_init_trx_buffer.exit.i

_rtl92c_init_trx_buffer.exit.i:                   ; preds = %if.then.i44.i.i, %rtl_write_word.exit.i90.i._rtl92c_init_trx_buffer.exit.i_crit_edge
  %191 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %priv, align 8
  %version.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 10, i32 13
  %193 = ptrtoint ptr %version.i92.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %version.i92.i, align 4
  %and.i93.i = and i32 %194, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i)
  %tobool.not.i94.i = icmp eq i32 %and.i93.i, 0
  br i1 %tobool.not.i94.i, label %if.else.i.i, label %if.then.i95.i

if.then.i95.i:                                    ; preds = %_rtl92c_init_trx_buffer.exit.i
  %195 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %8, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb3.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then.i95.i
  %196 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %10, label %do.end.i.i.i.i [
    i8 1, label %sw.bb.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i8 2, label %sw.bb1.i.i.i.i
    i8 4, label %sw.bb2.i.i.i.i
  ]

sw.bb.i.i.i.sw.epilog.i.i.i.i_crit_edge:          ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

sw.bb2.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 608, i32 noundef 9, ptr noundef null) #7
  br label %_rtl92cu_init_queue_priority.exit.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %value.0.i.i.i.i = phi i16 [ 2, %sw.bb2.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i ], [ 3, %sw.bb.i.i.i.sw.epilog.i.i.i.i_crit_edge ]
  %read16_sync.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 10
  %197 = ptrtoint ptr %read16_sync.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read16_sync.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i16 %198(ptr noundef %192, i32 noundef 268) #7
  %199 = and i16 %call.i.i.i.i.i.i, 7
  %or1831.i.i.i.i.i = mul nuw nsw i16 %value.0.i.i.i.i, 5456
  %200 = shl nuw i16 %value.0.i.i.i.i, 14
  %or2232.i.i.i.i.i = or i16 %199, %200
  %or2433.i.i.i.i.i = or i16 %or2232.i.i.i.i.i, %or1831.i.i.i.i.i
  %write16_async.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 6
  %201 = ptrtoint ptr %write16_async.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write16_async.i.i.i.i.i.i, align 4
  tail call void %202(ptr noundef %192, i32 noundef 268, i16 noundef zeroext %or2433.i.i.i.i.i) #7
  %cfg.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 32
  %203 = ptrtoint ptr %cfg.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cfg.i.i.i.i.i.i, align 8
  %write_readback.i.i.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %write_readback.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %write_readback.i.i.i.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %206, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %sw.epilog.i.i.i.i._rtl92c_init_chipn_reg_priority.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

sw.epilog.i.i.i.i._rtl92c_init_chipn_reg_priority.exit.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92c_init_chipn_reg_priority.exit.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %read16_sync.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read16_sync.i.i.i.i.i.i, align 4
  %call.i35.i.i.i.i.i = tail call zeroext i16 %208(ptr noundef %192, i32 noundef 268) #7
  br label %_rtl92c_init_chipn_reg_priority.exit.i.i.i.i

_rtl92c_init_chipn_reg_priority.exit.i.i.i.i:     ; preds = %if.then.i.i.i.i.i.i, %sw.epilog.i.i.i.i._rtl92c_init_chipn_reg_priority.exit.i.i.i.i_crit_edge
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv9.i.i) #11
  br label %_rtl92cu_init_queue_priority.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i95.i
  %209 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %10, label %do.end.i3.i.i.i [
    i8 3, label %sw.bb1.i.i.i.if.end19.i.i.i.i_crit_edge
    i8 6, label %sw.bb1.i1.i.i.i
    i8 5, label %sw.bb2.i2.i.i.i
  ]

sw.bb1.i.i.i.if.end19.i.i.i.i_crit_edge:          ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i.i

sw.bb1.i1.i.i.i:                                  ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i.i

sw.bb2.i2.i.i.i:                                  ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i.i

do.end.i3.i.i.i:                                  ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 638, i32 noundef 9, ptr noundef null) #7
  br label %if.end19.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %do.end.i3.i.i.i, %sw.bb2.i2.i.i.i, %sw.bb1.i1.i.i.i, %sw.bb1.i.i.i.if.end19.i.i.i.i_crit_edge
  %valuehi.0.i.i.i.i = phi i16 [ -1, %do.end.i3.i.i.i ], [ 3, %sw.bb2.i2.i.i.i ], [ 2, %sw.bb1.i1.i.i.i ], [ 3, %sw.bb1.i.i.i.if.end19.i.i.i.i_crit_edge ]
  %valuelow.0.i.i.i.i = phi i16 [ -1, %do.end.i3.i.i.i ], [ 2, %sw.bb2.i2.i.i.i ], [ 1, %sw.bb1.i1.i.i.i ], [ 1, %sw.bb1.i.i.i.if.end19.i.i.i.i_crit_edge ]
  %210 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %priv, align 8
  %read16_sync.i.i.i5.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %211, i32 0, i32 13, i32 10
  %212 = ptrtoint ptr %read16_sync.i.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read16_sync.i.i.i5.i.i.i, align 4
  %call.i.i.i6.i.i.i = tail call zeroext i16 %213(ptr noundef %211, i32 noundef 268) #7
  %214 = and i16 %call.i.i.i6.i.i.i, 7
  %215 = shl nsw i16 %valuelow.0.i.i.i.i, 8
  %216 = and i16 %215, 768
  %217 = shl nsw i16 %valuelow.0.i.i.i.i, 10
  %218 = and i16 %217, 3072
  %219 = shl nsw i16 %valuehi.0.i.i.i.i, 6
  %220 = and i16 %219, 192
  %221 = shl nsw i16 %valuehi.0.i.i.i.i, 4
  %222 = and i16 %221, 48
  %223 = shl nsw i16 %valuehi.0.i.i.i.i, 12
  %224 = and i16 %223, 12288
  %225 = shl i16 %valuehi.0.i.i.i.i, 14
  %or1430.i.i.i.i.i = or i16 %220, %225
  %or1831.i.i7.i.i.i = or i16 %or1430.i.i.i.i.i, %222
  %or1029.i.i.i.i.i = or i16 %or1831.i.i7.i.i.i, %224
  %or28.i.i.i.i.i = or i16 %or1029.i.i.i.i.i, %216
  %or2232.i.i8.i.i.i = or i16 %or28.i.i.i.i.i, %218
  %or2433.i.i9.i.i.i = or i16 %or2232.i.i8.i.i.i, %214
  %write16_async.i.i.i10.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %211, i32 0, i32 13, i32 6
  %226 = ptrtoint ptr %write16_async.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write16_async.i.i.i10.i.i.i, align 4
  tail call void %227(ptr noundef %211, i32 noundef 268, i16 noundef zeroext %or2433.i.i9.i.i.i) #7
  %cfg.i.i.i11.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %211, i32 0, i32 32
  %228 = ptrtoint ptr %cfg.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg.i.i.i11.i.i.i, align 8
  %write_readback.i.i.i12.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %write_readback.i.i.i12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %write_readback.i.i.i12.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i.i.i13.i.i.i = icmp eq i8 %231, 0
  br i1 %tobool.not.i.i.i13.i.i.i, label %if.end19.i.i.i.i._rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i_crit_edge, label %if.then.i.i.i15.i.i.i

if.end19.i.i.i.i._rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i_crit_edge: ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i

if.then.i.i.i15.i.i.i:                            ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = ptrtoint ptr %read16_sync.i.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read16_sync.i.i.i5.i.i.i, align 4
  %call.i35.i.i14.i.i.i = tail call zeroext i16 %233(ptr noundef %211, i32 noundef 268) #7
  br label %_rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i

_rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i: ; preds = %if.then.i.i.i15.i.i.i, %if.end19.i.i.i.i._rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i_crit_edge
  %call.i17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv9.i.i) #11
  br label %_rtl92cu_init_queue_priority.exit.i

sw.bb3.i.i.i:                                     ; preds = %if.then.i95.i
  %read16_sync.i.i.i20.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 10
  %234 = ptrtoint ptr %read16_sync.i.i.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read16_sync.i.i.i20.i.i.i, align 4
  %call.i.i.i21.i.i.i = tail call zeroext i16 %235(ptr noundef %192, i32 noundef 268) #7
  %236 = and i16 %call.i.i.i21.i.i.i, 7
  %or2433.i.i22.i.i.i = or i16 %236, -2640
  %write16_async.i.i.i23.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 6
  %237 = ptrtoint ptr %write16_async.i.i.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write16_async.i.i.i23.i.i.i, align 4
  tail call void %238(ptr noundef %192, i32 noundef 268, i16 noundef zeroext %or2433.i.i22.i.i.i) #7
  %cfg.i.i.i24.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 32
  %239 = ptrtoint ptr %cfg.i.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cfg.i.i.i24.i.i.i, align 8
  %write_readback.i.i.i25.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %write_readback.i.i.i25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %write_readback.i.i.i25.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i.i.i26.i.i.i = icmp eq i8 %242, 0
  br i1 %tobool.not.i.i.i26.i.i.i, label %sw.bb3.i.i.i._rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i_crit_edge, label %if.then.i.i.i28.i.i.i

sw.bb3.i.i.i._rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i_crit_edge: ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i

if.then.i.i.i28.i.i.i:                            ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %read16_sync.i.i.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %read16_sync.i.i.i20.i.i.i, align 4
  %call.i35.i.i27.i.i.i = tail call zeroext i16 %244(ptr noundef %192, i32 noundef 268) #7
  br label %_rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i

_rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i: ; preds = %if.then.i.i.i28.i.i.i, %sw.bb3.i.i.i._rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i_crit_edge
  %call.i30.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv9.i.i) #11
  br label %_rtl92cu_init_queue_priority.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 704, i32 noundef 9, ptr noundef null) #7
  br label %_rtl92cu_init_queue_priority.exit.i

if.else.i.i:                                      ; preds = %_rtl92c_init_trx_buffer.exit.i
  %245 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %8, label %do.end.i2.i.i [
    i8 2, label %if.else.i.i.sw.epilog.i.i.i_crit_edge
    i8 1, label %sw.bb1.i1.i.i
  ]

if.else.i.i.sw.epilog.i.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb1.i1.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cond.i.i.i = icmp eq i8 %10, 1
  %spec.select.i.i.i = select i1 %cond.i.i.i, i8 63, i8 0
  br label %sw.epilog.i.i.i

do.end.i2.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 737, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %do.end.i2.i.i, %sw.bb1.i1.i.i, %if.else.i.i.sw.epilog.i.i.i_crit_edge
  %hq_sele.0.i.i.i = phi i8 [ 0, %do.end.i2.i.i ], [ 51, %if.else.i.i.sw.epilog.i.i.i_crit_edge ], [ %spec.select.i.i.i, %sw.bb1.i1.i.i ]
  %write8_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 5
  %246 = ptrtoint ptr %write8_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write8_async.i.i.i.i, align 4
  tail call void %247(ptr noundef %192, i32 noundef 269, i8 noundef zeroext %hq_sele.0.i.i.i) #7
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 32
  %248 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i.i.i.i = icmp eq i8 %251, 0
  br i1 %tobool.not.i.i.i.i, label %sw.epilog.i.i.i._rtl92cu_init_chipt_queue_priority.exit.i.i_crit_edge, label %if.then.i.i.i.i

sw.epilog.i.i.i._rtl92cu_init_chipt_queue_priority.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_init_chipt_queue_priority.exit.i.i

if.then.i.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %192, i32 0, i32 13, i32 9
  %252 = ptrtoint ptr %read8_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read8_sync.i.i.i.i, align 4
  %call.i.i3.i.i = tail call zeroext i8 %253(ptr noundef %192, i32 noundef 269) #7
  br label %_rtl92cu_init_chipt_queue_priority.exit.i.i

_rtl92cu_init_chipt_queue_priority.exit.i.i:      ; preds = %if.then.i.i.i.i, %sw.epilog.i.i.i._rtl92cu_init_chipt_queue_priority.exit.i.i_crit_edge
  %conv33.i.i.i = zext i8 %hq_sele.0.i.i.i to i32
  %call.i.i96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv33.i.i.i) #11
  br label %_rtl92cu_init_queue_priority.exit.i

_rtl92cu_init_queue_priority.exit.i:              ; preds = %_rtl92cu_init_chipt_queue_priority.exit.i.i, %do.end.i.i.i, %_rtl92cu_init_chipn_three_out_ep_priority.exit.i.i.i, %_rtl92cu_init_chipn_two_out_ep_priority.exit.i.i.i, %_rtl92c_init_chipn_reg_priority.exit.i.i.i.i, %do.end.i.i.i.i
  tail call void @rtl92c_init_driver_info_size(ptr noundef %hw, i8 noundef zeroext 4) #7
  tail call void @rtl92c_init_interrupt(ptr noundef %hw) #7
  tail call void @rtl92c_init_network_type(ptr noundef %hw) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value16.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value32.i.i) #7
  %254 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %priv, align 8
  %256 = ptrtoint ptr %value32.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 -268408562, ptr %value32.i.i, align 4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 32
  %257 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %258, i32 0, i32 4
  %259 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ops.i.i, align 4
  %set_hw_reg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %260, i32 0, i32 20
  %261 = ptrtoint ptr %set_hw_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %set_hw_reg.i.i, align 4
  call void %262(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %value32.i.i) #7
  %write32_async.i.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 13, i32 7
  %263 = ptrtoint ptr %write32_async.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write32_async.i.i99.i, align 4
  call void %264(ptr noundef %255, i32 noundef 1568, i32 noundef -1) #7
  %265 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %write_readback.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %write_readback.i.i100.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.not.i.i101.i = icmp eq i8 %268, 0
  br i1 %tobool.not.i.i101.i, label %_rtl92cu_init_queue_priority.exit.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i.i104.i

_rtl92cu_init_queue_priority.exit.i.rtl_write_dword.exit.i.i_crit_edge: ; preds = %_rtl92cu_init_queue_priority.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i

if.then.i.i104.i:                                 ; preds = %_rtl92cu_init_queue_priority.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i102.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 13, i32 11
  %269 = ptrtoint ptr %read32_sync.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read32_sync.i.i102.i, align 4
  %call.i.i103.i = call i32 %270(ptr noundef %255, i32 noundef 1568) #7
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i.i104.i, %_rtl92cu_init_queue_priority.exit.i.rtl_write_dword.exit.i.i_crit_edge
  %271 = ptrtoint ptr %write32_async.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write32_async.i.i99.i, align 4
  call void %272(ptr noundef %255, i32 noundef 1572, i32 noundef -1) #7
  %273 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i21.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %write_readback.i21.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %write_readback.i21.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool.not.i22.i.i = icmp eq i8 %276, 0
  br i1 %tobool.not.i22.i.i, label %rtl_write_dword.exit.i.i.if.end_crit_edge, label %if.then.i25.i.i

rtl_write_dword.exit.i.i.if.end_crit_edge:        ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i25.i.i:                                  ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 13, i32 11
  %277 = ptrtoint ptr %read32_sync.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read32_sync.i23.i.i, align 4
  %call.i24.i.i = call i32 %278(ptr noundef %255, i32 noundef 1572) #7
  br label %if.end

do.end11:                                         ; preds = %if.end12.i.do.end11_crit_edge, %do.end.i
  %.str.49.sink = phi ptr [ @.str.49, %do.end.i ], [ @.str.52, %if.end12.i.do.end11_crit_edge ]
  %retval.0.i.ph = phi i32 [ -19, %do.end.i ], [ -22, %if.end12.i.do.end11_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink) #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %do.body53

if.end:                                           ; preds = %if.then.i25.i.i, %rtl_write_dword.exit.i.i.if.end_crit_edge
  %279 = ptrtoint ptr %value16.i.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 -1, ptr %value16.i.i, align 2
  %280 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cfg.i.i, align 8
  %ops2.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %ops2.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ops2.i.i, align 4
  %set_hw_reg3.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %283, i32 0, i32 20
  %284 = ptrtoint ptr %set_hw_reg3.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %set_hw_reg3.i.i, align 4
  call void %285(ptr noundef %hw, i8 noundef zeroext 96, ptr noundef nonnull %value16.i.i) #7
  %286 = ptrtoint ptr %value16.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %value16.i.i, align 2
  %287 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cfg.i.i, align 8
  %ops5.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %ops5.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ops5.i.i, align 4
  %set_hw_reg6.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %290, i32 0, i32 20
  %291 = ptrtoint ptr %set_hw_reg6.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %set_hw_reg6.i.i, align 4
  call void %292(ptr noundef %hw, i8 noundef zeroext 97, ptr noundef nonnull %value16.i.i) #7
  %293 = ptrtoint ptr %value16.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 -1, ptr %value16.i.i, align 2
  %294 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i.i, align 8
  %ops8.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %ops8.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops8.i.i, align 4
  %set_hw_reg9.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %297, i32 0, i32 20
  %298 = ptrtoint ptr %set_hw_reg9.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %set_hw_reg9.i.i, align 4
  call void %299(ptr noundef %hw, i8 noundef zeroext 98, ptr noundef nonnull %value16.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value32.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value16.i.i) #7
  call void @rtl92c_init_adaptive_ctrl(ptr noundef %hw) #7
  call void @rtl92c_init_edca(ptr noundef %hw) #7
  call void @rtl92c_init_rate_fallback(ptr noundef %hw) #7
  call void @rtl92c_init_retry_function(ptr noundef %hw) #7
  %300 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ops.i, align 4
  %set_bw_mode.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %303, i32 0, i32 13
  %304 = ptrtoint ptr %set_bw_mode.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %set_bw_mode.i, align 4
  call void %305(ptr noundef %hw, i32 noundef 1) #7
  %version24.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 13
  %306 = ptrtoint ptr %version24.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %version24.i, align 4
  %and25.i = and i32 %307, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and25.i)
  %cmp.i = icmp eq i32 %and25.i, 1
  call void @rtl92c_set_min_space(ptr noundef %hw, i1 noundef zeroext %cmp.i) #7
  call fastcc void @_rtl92cu_init_beacon_parameters(ptr noundef %hw) #7
  call void @rtl92c_init_ampdu_aggregation(ptr noundef %hw) #7
  call void @rtl92c_init_beacon_max_error(ptr noundef %hw) #7
  %call14 = call i32 @rtl92c_download_fw(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12) #7
  br label %do.body53

if.end17:                                         ; preds = %if.end
  %308 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 1, ptr %fw_ready, align 2
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %309 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %last_hmeboxnum, align 1
  %310 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %priv, align 8
  %hwparam_tables.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 7
  %312 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 172, ptr %arrayidx.i, align 4
  %pdata.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 7, i32 1
  %313 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr @RTL8192CUMAC_2T_ARRAY, ptr %pdata.i, align 4
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 17, i32 17
  %314 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %board_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %315)
  %cmp.i135 = icmp eq i8 %315, 1
  %spec.select.i = select i1 %cmp.i135, ptr @RTL8192CUPHY_REG_ARRAY_PG_HP, ptr @RTL8192CUPHY_REG_ARRAY_PG
  %316 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 2
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 336, ptr %316, align 4
  %318 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 2, i32 1
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %spec.select.i, ptr %318, align 4
  %320 = ptrtoint ptr %hwparam_tables.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 374, ptr %hwparam_tables.i, align 4
  %pdata21.i = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 0, i32 1
  %321 = ptrtoint ptr %pdata21.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr @RTL8192CUPHY_REG_2TARRAY, ptr %pdata21.i, align 4
  %arrayidx23.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 3
  %322 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 282, ptr %arrayidx23.i, align 4
  %pdata27.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 3, i32 1
  %323 = ptrtoint ptr %pdata27.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr @RTL8192CURADIOA_2TARRAY, ptr %pdata27.i, align 4
  %arrayidx29.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 4
  %324 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 78, ptr %arrayidx29.i, align 4
  %pdata33.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 4, i32 1
  %325 = ptrtoint ptr %pdata33.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr @RTL8192CU_RADIOB_2TARRAY, ptr %pdata33.i, align 4
  %arrayidx35.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 8
  %326 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 320, ptr %arrayidx35.i, align 4
  %pdata39.i = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 8, i32 1
  %327 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr @RTL8192CUAGCTAB_2TARRAY, ptr %pdata39.i, align 4
  br i1 %cmp.i135, label %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge, label %if.else71.i

if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_phy_param_tab_init.exit

if.else71.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_phy_param_tab_init.exit

_rtl92cu_phy_param_tab_init.exit:                 ; preds = %if.else71.i, %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge
  %.sink.i = phi i16 [ 374, %if.else71.i ], [ 378, %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge ]
  %RTL8192CUPHY_REG_1TARRAY.sink.i = phi ptr [ @RTL8192CUPHY_REG_1TARRAY, %if.else71.i ], [ @RTL8192CUPHY_REG_1T_HPARRAY, %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge ]
  %RTL8192CU_RADIOA_1TARRAY.sink.i = phi ptr [ @RTL8192CU_RADIOA_1TARRAY, %if.else71.i ], [ @RTL8192CURADIOA_1T_HPARRAY, %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge ]
  %RTL8192CUAGCTAB_1TARRAY.sink.i = phi ptr [ @RTL8192CUAGCTAB_1TARRAY, %if.else71.i ], [ @RTL8192CUAGCTAB_1T_HPARRAY, %if.end17._rtl92cu_phy_param_tab_init.exit_crit_edge ]
  %328 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 1
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %.sink.i, ptr %328, align 4
  %330 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 1, i32 1
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %RTL8192CUPHY_REG_1TARRAY.sink.i, ptr %330, align 4
  %332 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 5
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 282, ptr %332, align 4
  %334 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 5, i32 1
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %RTL8192CU_RADIOA_1TARRAY.sink.i, ptr %334, align 4
  %336 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 6
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 1, ptr %336, align 4
  %338 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 6, i32 1
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr @RTL8192CU_RADIOB_1TARRAY, ptr %338, align 4
  %340 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 9
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 320, ptr %340, align 4
  %342 = getelementptr %struct.rtl_priv, ptr %311, i32 0, i32 14, i32 59, i32 9, i32 1
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %RTL8192CUAGCTAB_1TARRAY.sink.i, ptr %342, align 4
  %call19 = call zeroext i1 @rtl92cu_phy_mac_config(ptr noundef %hw) #7
  %call20 = call zeroext i1 @rtl92cu_phy_bb_config(ptr noundef %hw) #7
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %344 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 0, ptr %rf_mode, align 4
  %call21 = call zeroext i1 @rtl92c_phy_rf_config(ptr noundef %hw) #7
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %345 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %version, align 4
  %347 = and i32 %346, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %347)
  %348 = icmp ne i32 %347, 32
  %and31 = and i32 %346, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 1
  %or.cond133 = or i1 %348, %cmp32
  br i1 %or.cond133, label %_rtl92cu_phy_param_tab_init.exit.if.end39_crit_edge, label %if.then38

_rtl92cu_phy_param_tab_init.exit.if.end39_crit_edge: ; preds = %_rtl92cu_phy_param_tab_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %_rtl92cu_phy_param_tab_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %349 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %350, i32 0, i32 32
  %351 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %cfg.i, align 8
  %ops.i137 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %352, i32 0, i32 4
  %353 = ptrtoint ptr %ops.i137 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %ops.i137, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %354, i32 0, i32 48
  %355 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %set_rfreg.i, align 4
  call void %356(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef -1, i32 noundef 197205) #7
  %357 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %priv, align 8
  %cfg.i139 = getelementptr inbounds %struct.rtl_priv, ptr %358, i32 0, i32 32
  %359 = ptrtoint ptr %cfg.i139 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cfg.i139, align 8
  %ops.i140 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %ops.i140 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ops.i140, align 4
  %set_rfreg.i141 = getelementptr inbounds %struct.rtl_hal_ops, ptr %362, i32 0, i32 48
  %363 = ptrtoint ptr %set_rfreg.i141 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %set_rfreg.i141, align 4
  call void %364(ptr noundef %hw, i32 noundef 0, i32 noundef 27, i32 noundef -1, i32 noundef 330240) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %_rtl92cu_phy_param_tab_init.exit.if.end39_crit_edge
  %365 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %priv, align 8
  %cfg.i143 = getelementptr inbounds %struct.rtl_priv, ptr %366, i32 0, i32 32
  %367 = ptrtoint ptr %cfg.i143 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cfg.i143, align 8
  %ops.i144 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %368, i32 0, i32 4
  %369 = ptrtoint ptr %ops.i144 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ops.i144, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %370, i32 0, i32 47
  %371 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = call i32 %372(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %373 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %call.i, ptr %rfreg_chnlval, align 4
  %374 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %priv, align 8
  %cfg.i146 = getelementptr inbounds %struct.rtl_priv, ptr %375, i32 0, i32 32
  %376 = ptrtoint ptr %cfg.i146 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %cfg.i146, align 8
  %ops.i147 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %377, i32 0, i32 4
  %378 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ops.i147, align 4
  %get_rfreg.i148 = getelementptr inbounds %struct.rtl_hal_ops, ptr %379, i32 0, i32 47
  %380 = ptrtoint ptr %get_rfreg.i148 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %get_rfreg.i148, align 4
  %call.i149 = call i32 %381(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #7
  %arrayidx43 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %382 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %call.i149, ptr %arrayidx43, align 4
  call void @rtl92cu_bb_block_on(ptr noundef %hw) #7
  call void @rtl_cam_reset_all_entry(ptr noundef %hw) #7
  call void @rtl92cu_enable_hw_security_config(ptr noundef %hw)
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %383 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 0, ptr %rfpwr_state, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %384 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %385, i32 0, i32 4
  %386 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %387, i32 0, i32 20
  %388 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %set_hw_reg, align 4
  call void %389(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #7
  %390 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %cmp45 = icmp eq i32 %391, 0
  br i1 %cmp45, label %if.then47, label %if.end39.if.end52_crit_edge

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then47:                                        ; preds = %if.end39
  call void @rtl92c_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext true) #7
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %392 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %iqk_initialized, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool48.not = icmp eq i8 %393, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92c_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext true) #7
  br label %if.end51

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92c_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #7
  %394 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  call void @rtl92c_dm_check_txpower_tracking(ptr noundef %hw) #7
  call void @rtl92c_phy_lc_calibrate(ptr noundef %hw) #7
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end39.if.end52_crit_edge
  %395 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 5
  %397 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %write8_async.i.i, align 4
  call void %398(ptr noundef %396, i32 noundef 34, i8 noundef zeroext 15) #7
  %cfg.i.i151 = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 32
  %399 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %400, i32 0, i32 1
  %401 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %write_readback.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.i.i152 = icmp eq i8 %402, 0
  br i1 %tobool.not.i.i152, label %if.end52.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i153

if.end52.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i153:                                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %403 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %404(ptr noundef %396, i32 noundef 34) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i153, %if.end52.rtl_write_byte.exit.i_crit_edge
  %405 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %write8_async.i.i, align 4
  call void %406(ptr noundef %396, i32 noundef 21, i8 noundef zeroext -23) #7
  %407 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i14.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %write_readback.i14.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %write_readback.i14.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool.not.i15.i = icmp eq i8 %410, 0
  br i1 %tobool.not.i15.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit19.i_crit_edge, label %if.then.i18.i

rtl_write_byte.exit.i.rtl_write_byte.exit19.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit19.i

if.then.i18.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i16.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %411 = ptrtoint ptr %read8_sync.i16.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %read8_sync.i16.i, align 4
  %call.i17.i = call zeroext i8 %412(ptr noundef %396, i32 noundef 21) #7
  br label %rtl_write_byte.exit19.i

rtl_write_byte.exit19.i:                          ; preds = %if.then.i18.i, %rtl_write_byte.exit.i.rtl_write_byte.exit19.i_crit_edge
  %413 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write8_async.i.i, align 4
  call void %414(ptr noundef %396, i32 noundef 1059, i8 noundef zeroext -1) #7
  %415 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i22.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %write_readback.i22.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %write_readback.i22.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool.not.i23.i = icmp eq i8 %418, 0
  br i1 %tobool.not.i23.i, label %rtl_write_byte.exit19.i.rtl_write_byte.exit27.i_crit_edge, label %if.then.i26.i

rtl_write_byte.exit19.i.rtl_write_byte.exit27.i_crit_edge: ; preds = %rtl_write_byte.exit19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit27.i

if.then.i26.i:                                    ; preds = %rtl_write_byte.exit19.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %419 = ptrtoint ptr %read8_sync.i24.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %read8_sync.i24.i, align 4
  %call.i25.i = call zeroext i8 %420(ptr noundef %396, i32 noundef 1059) #7
  br label %rtl_write_byte.exit27.i

rtl_write_byte.exit27.i:                          ; preds = %if.then.i26.i, %rtl_write_byte.exit19.i.rtl_write_byte.exit27.i_crit_edge
  %421 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %write8_async.i.i, align 4
  call void %422(ptr noundef %396, i32 noundef 65088, i8 noundef zeroext -32) #7
  %423 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i30.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %424, i32 0, i32 1
  %425 = ptrtoint ptr %write_readback.i30.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %write_readback.i30.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i31.i = icmp eq i8 %426, 0
  br i1 %tobool.not.i31.i, label %rtl_write_byte.exit27.i.rtl_write_byte.exit35.i_crit_edge, label %if.then.i34.i

rtl_write_byte.exit27.i.rtl_write_byte.exit35.i_crit_edge: ; preds = %rtl_write_byte.exit27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit35.i

if.then.i34.i:                                    ; preds = %rtl_write_byte.exit27.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i32.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %427 = ptrtoint ptr %read8_sync.i32.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read8_sync.i32.i, align 4
  %call.i33.i = call zeroext i8 %428(ptr noundef %396, i32 noundef 65088) #7
  br label %rtl_write_byte.exit35.i

rtl_write_byte.exit35.i:                          ; preds = %if.then.i34.i, %rtl_write_byte.exit27.i.rtl_write_byte.exit35.i_crit_edge
  %429 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %write8_async.i.i, align 4
  call void %430(ptr noundef %396, i32 noundef 65089, i8 noundef zeroext -115) #7
  %431 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %write_readback.i38.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %write_readback.i38.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool.not.i39.i = icmp eq i8 %434, 0
  br i1 %tobool.not.i39.i, label %rtl_write_byte.exit35.i.rtl_write_byte.exit43.i_crit_edge, label %if.then.i42.i

rtl_write_byte.exit35.i.rtl_write_byte.exit43.i_crit_edge: ; preds = %rtl_write_byte.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit43.i

if.then.i42.i:                                    ; preds = %rtl_write_byte.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %435 = ptrtoint ptr %read8_sync.i40.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %read8_sync.i40.i, align 4
  %call.i41.i = call zeroext i8 %436(ptr noundef %396, i32 noundef 65089) #7
  br label %rtl_write_byte.exit43.i

rtl_write_byte.exit43.i:                          ; preds = %if.then.i42.i, %rtl_write_byte.exit35.i.rtl_write_byte.exit43.i_crit_edge
  %437 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write8_async.i.i, align 4
  call void %438(ptr noundef %396, i32 noundef 65090, i8 noundef zeroext -128) #7
  %439 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i46.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %write_readback.i46.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %write_readback.i46.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %442)
  %tobool.not.i47.i = icmp eq i8 %442, 0
  br i1 %tobool.not.i47.i, label %rtl_write_byte.exit43.i.rtl_write_byte.exit51.i_crit_edge, label %if.then.i50.i

rtl_write_byte.exit43.i.rtl_write_byte.exit51.i_crit_edge: ; preds = %rtl_write_byte.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit51.i

if.then.i50.i:                                    ; preds = %rtl_write_byte.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i48.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %443 = ptrtoint ptr %read8_sync.i48.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %read8_sync.i48.i, align 4
  %call.i49.i = call zeroext i8 %444(ptr noundef %396, i32 noundef 65090) #7
  br label %rtl_write_byte.exit51.i

rtl_write_byte.exit51.i:                          ; preds = %if.then.i50.i, %rtl_write_byte.exit43.i.rtl_write_byte.exit51.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 1, i32 7, i32 0, i32 1, i32 1
  %445 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 24, ptr %reg_bcn_ctrl_val.i, align 4
  %446 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write8_async.i.i, align 4
  call void %447(ptr noundef %396, i32 noundef 1360, i8 noundef zeroext 24) #7
  %448 = ptrtoint ptr %cfg.i.i151 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cfg.i.i151, align 8
  %write_readback.i54.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %write_readback.i54.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %write_readback.i54.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i55.i = icmp eq i8 %451, 0
  br i1 %tobool.not.i55.i, label %rtl_write_byte.exit51.i._rtl92cu_hw_configure.exit_crit_edge, label %if.then.i58.i

rtl_write_byte.exit51.i._rtl92cu_hw_configure.exit_crit_edge: ; preds = %rtl_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_hw_configure.exit

if.then.i58.i:                                    ; preds = %rtl_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i56.i = getelementptr inbounds %struct.rtl_priv, ptr %396, i32 0, i32 13, i32 9
  %452 = ptrtoint ptr %read8_sync.i56.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %read8_sync.i56.i, align 4
  %call.i57.i = call zeroext i8 %453(ptr noundef %396, i32 noundef 1360) #7
  br label %_rtl92cu_hw_configure.exit

_rtl92cu_hw_configure.exit:                       ; preds = %if.then.i58.i, %rtl_write_byte.exit51.i._rtl92cu_hw_configure.exit_crit_edge
  %454 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %priv, align 8
  %call.i155 = call zeroext i8 @efuse_read_1byte(ptr noundef %hw, i16 noundef zeroext 506) #7
  %conv.i = zext i8 %call.i155 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %_rtl92cu_hw_configure.exit.if.end.i_crit_edge

_rtl92cu_hw_configure.exit.if.end.i_crit_edge:    ; preds = %_rtl92cu_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %_rtl92cu_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %456 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %priv, align 8
  %cfg.i.i156 = getelementptr inbounds %struct.rtl_priv, ptr %457, i32 0, i32 32
  %458 = ptrtoint ptr %cfg.i.i156 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cfg.i.i156, align 8
  %ops.i.i157 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %459, i32 0, i32 4
  %460 = ptrtoint ptr %ops.i.i157 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %ops.i.i157, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %461, i32 0, i32 48
  %462 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %set_rfreg.i.i, align 4
  call void %463(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 1048575, i32 noundef 62470) #7
  %464 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %priv, align 8
  %cfg.i46.i = getelementptr inbounds %struct.rtl_priv, ptr %465, i32 0, i32 32
  %466 = ptrtoint ptr %cfg.i46.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %cfg.i46.i, align 8
  %ops.i47.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %467, i32 0, i32 4
  %468 = ptrtoint ptr %ops.i47.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %ops.i47.i, align 4
  %set_rfreg.i48.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %469, i32 0, i32 48
  %470 = ptrtoint ptr %set_rfreg.i48.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %set_rfreg.i48.i, align 4
  call void %471(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 1048575, i32 noundef 324614) #7
  %472 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %priv, align 8
  %cfg.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %473, i32 0, i32 32
  %474 = ptrtoint ptr %cfg.i50.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %cfg.i50.i, align 8
  %ops.i51.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %475, i32 0, i32 4
  %476 = ptrtoint ptr %ops.i51.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %ops.i51.i, align 4
  %set_rfreg.i52.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %477, i32 0, i32 48
  %478 = ptrtoint ptr %set_rfreg.i52.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %set_rfreg.i52.i, align 4
  call void %479(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 1048575, i32 noundef 586758) #7
  %480 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %priv, align 8
  %cfg.i54.i = getelementptr inbounds %struct.rtl_priv, ptr %481, i32 0, i32 32
  %482 = ptrtoint ptr %cfg.i54.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %cfg.i54.i, align 8
  %ops.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %483, i32 0, i32 4
  %484 = ptrtoint ptr %ops.i55.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %ops.i55.i, align 4
  %set_rfreg.i56.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %485, i32 0, i32 48
  %486 = ptrtoint ptr %set_rfreg.i56.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %set_rfreg.i56.i, align 4
  call void %487(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 1048575, i32 noundef 848902) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %_rtl92cu_hw_configure.exit.if.end.i_crit_edge
  %and4.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 10, i32 13
  %488 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %version.i, align 4
  %490 = and i32 %489, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %490)
  %491 = icmp eq i32 %490, 17
  br i1 %491, label %if.then16.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %492 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %priv, align 8
  %cfg.i58.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 32
  %494 = ptrtoint ptr %cfg.i58.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %cfg.i58.i, align 8
  %ops.i59.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %495, i32 0, i32 4
  %496 = ptrtoint ptr %ops.i59.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %ops.i59.i, align 4
  %set_rfreg.i60.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %497, i32 0, i32 48
  %498 = ptrtoint ptr %set_rfreg.i60.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %set_rfreg.i60.i, align 4
  call void %499(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 1048575, i32 noundef 62470) #7
  %500 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %priv, align 8
  %cfg.i62.i = getelementptr inbounds %struct.rtl_priv, ptr %501, i32 0, i32 32
  %502 = ptrtoint ptr %cfg.i62.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cfg.i62.i, align 8
  %ops.i63.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %503, i32 0, i32 4
  %504 = ptrtoint ptr %ops.i63.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %ops.i63.i, align 4
  %set_rfreg.i64.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %505, i32 0, i32 48
  %506 = ptrtoint ptr %set_rfreg.i64.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %set_rfreg.i64.i, align 4
  call void %507(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 1048575, i32 noundef 324614) #7
  %508 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %priv, align 8
  %cfg.i66.i = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 32
  %510 = ptrtoint ptr %cfg.i66.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %cfg.i66.i, align 8
  %ops.i67.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %511, i32 0, i32 4
  %512 = ptrtoint ptr %ops.i67.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ops.i67.i, align 4
  %set_rfreg.i68.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %513, i32 0, i32 48
  %514 = ptrtoint ptr %set_rfreg.i68.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %set_rfreg.i68.i, align 4
  call void %515(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 1048575, i32 noundef 586758) #7
  %516 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %priv, align 8
  %cfg.i70.i = getelementptr inbounds %struct.rtl_priv, ptr %517, i32 0, i32 32
  %518 = ptrtoint ptr %cfg.i70.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %cfg.i70.i, align 8
  %ops.i71.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %519, i32 0, i32 4
  %520 = ptrtoint ptr %ops.i71.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %ops.i71.i, align 4
  %set_rfreg.i72.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %521, i32 0, i32 48
  %522 = ptrtoint ptr %set_rfreg.i72.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %set_rfreg.i72.i, align 4
  call void %523(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 1048575, i32 noundef 848902) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %land.lhs.true.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %and19.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end17.i._initpabias.exit_crit_edge

if.end17.i._initpabias.exit_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_initpabias.exit

if.then21.i:                                      ; preds = %if.end17.i
  %read8_sync.i.i158 = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 13, i32 9
  %524 = ptrtoint ptr %read8_sync.i.i158 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %read8_sync.i.i158, align 4
  %call.i.i159 = call zeroext i8 %525(ptr noundef %455, i32 noundef 22) #7
  %526 = and i8 %call.i.i159, 15
  %527 = or i8 %526, -112
  %write8_async.i.i160 = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 13, i32 5
  %528 = ptrtoint ptr %write8_async.i.i160 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write8_async.i.i160, align 4
  call void %529(ptr noundef %455, i32 noundef 22, i8 noundef zeroext %527) #7
  %cfg.i73.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 32
  %530 = ptrtoint ptr %cfg.i73.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %cfg.i73.i, align 8
  %write_readback.i.i161 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %531, i32 0, i32 1
  %532 = ptrtoint ptr %write_readback.i.i161 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %write_readback.i.i161, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool.not.i.i162 = icmp eq i8 %533, 0
  br i1 %tobool.not.i.i162, label %if.then21.i._initpabias.exit_crit_edge, label %if.then.i.i163

if.then21.i._initpabias.exit_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_initpabias.exit

if.then.i.i163:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %534 = ptrtoint ptr %read8_sync.i.i158 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %read8_sync.i.i158, align 4
  %call.i75.i = call zeroext i8 %535(ptr noundef %455, i32 noundef 22) #7
  br label %_initpabias.exit

_initpabias.exit:                                 ; preds = %if.then.i.i163, %if.then21.i._initpabias.exit_crit_edge, %if.end17.i._initpabias.exit_crit_edge
  call void @rtl92c_dm_init(ptr noundef %hw) #7
  br label %do.body53

do.body53:                                        ; preds = %_initpabias.exit, %if.then16, %do.end11
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end11 ], [ 1, %if.then16 ], [ 0, %_initpabias.exit ]
  %536 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !179
  %and.i.i164 = and i32 %536, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i164)
  %tobool55.not = icmp eq i32 %and.i.i164, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #7, !srcloc !181
  br i1 %tobool55.not, label %if.then57, label %do.body53.if.end58_crit_edge

do.body53.if.end58_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %do.body53.if.end58_crit_edge
  %and.i165 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool69.not = icmp eq i32 %and.i165, 0
  br i1 %tobool69.not, label %if.then70, label %if.end58.do.body72_crit_edge

if.end58.do.body72_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

if.then70:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body72

do.body72:                                        ; preds = %if.then70, %if.end58.do.body72_crit_edge
  %537 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !179
  %and.i.i166 = and i32 %537, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i166)
  %tobool80.not = icmp eq i32 %and.i.i166, 0
  br i1 %tobool80.not, label %if.then84, label %do.body72.do.end87_crit_edge, !prof !182

do.body72.do.end87_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %do.body72.do.end87_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !183
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92c_download_fw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_phy_mac_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_phy_bb_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_rf_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_bb_block_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_rfpath_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_check_txpower_tracking(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_lc_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl92cu_set_media_status(ptr noundef %hw, i32 noundef 0)
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %6, i32 0, i32 36
  %7 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led_control, align 4
  tail call void %8(ptr noundef %hw, i32 noundef 7) #7
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %9 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %10, 8
  store i32 %or, ptr %cur_ps_level, align 4
  %disablehwsm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %disablehwsm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disablehwsm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  tail call fastcc void @disable_rfafeandresetbb(ptr noundef %hw) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @_resetdigitalprocedure1(ptr noundef %hw, i1 noundef zeroext false) #7
  tail call fastcc void @_disablegpio(ptr noundef %hw) #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %write8_async.i21.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i21.i.i, align 4
  tail call void %16(ptr noundef %14, i32 noundef 17, i8 noundef zeroext 35) #7
  %cfg.i22.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i22.i.i, align 8
  %write_readback.i23.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i23.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i24.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i24.i.i, label %if.then.rtl_write_byte.exit28.i.i_crit_edge, label %if.then.i27.i.i

if.then.rtl_write_byte.exit28.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit28.i.i

if.then.i27.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %read8_sync.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i25.i.i, align 4
  %call.i26.i.i = tail call zeroext i8 %22(ptr noundef %14, i32 noundef 17) #7
  br label %rtl_write_byte.exit28.i.i

rtl_write_byte.exit28.i.i:                        ; preds = %if.then.i27.i.i, %if.then.rtl_write_byte.exit28.i.i_crit_edge
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 6
  %23 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %24(ptr noundef %14, i32 noundef 4, i16 noundef zeroext 18434) #7
  %25 = ptrtoint ptr %cfg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i22.i.i, align 8
  %write_readback.i30.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i30.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i31.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i31.i.i, label %rtl_write_byte.exit28.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i33.i.i

rtl_write_byte.exit28.i.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i.i

if.then.i33.i.i:                                  ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i32.i.i = tail call zeroext i16 %30(ptr noundef %14, i32 noundef 4) #7
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i33.i.i, %rtl_write_byte.exit28.i.i.rtl_write_word.exit.i.i_crit_edge
  %31 = ptrtoint ptr %write8_async.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8_async.i21.i.i, align 4
  tail call void %32(ptr noundef %14, i32 noundef 28, i8 noundef zeroext 14) #7
  %33 = ptrtoint ptr %cfg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i22.i.i, align 8
  %write_readback.i36.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i36.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i37.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i37.i.i, label %rtl_write_word.exit.i.i.if.end_crit_edge, label %if.then.i40.i.i

rtl_write_word.exit.i.i.if.end_crit_edge:         ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i40.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i38.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  tail call fastcc void @_resetdigitalprocedure1(ptr noundef %hw, i1 noundef zeroext true) #7
  tail call fastcc void @_disablegpio(ptr noundef %hw) #7
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %write16_async.i.i.i14 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 13, i32 6
  %39 = ptrtoint ptr %write16_async.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16_async.i.i.i14, align 4
  tail call void %40(ptr noundef %38, i32 noundef 8, i16 noundef zeroext 28835) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i.i, label %if.else.rtl_write_word.exit.i.i16_crit_edge, label %if.then.i.i.i

if.else.rtl_write_word.exit.i.i16_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i.i16

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i.i15 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 13, i32 10
  %45 = ptrtoint ptr %read16_sync.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read16_sync.i.i.i15, align 4
  %call.i.i.i = tail call zeroext i16 %46(ptr noundef %38, i32 noundef 8) #7
  br label %rtl_write_word.exit.i.i16

rtl_write_word.exit.i.i16:                        ; preds = %if.then.i.i.i, %if.else.rtl_write_word.exit.i.i16_crit_edge
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 13, i32 5
  %47 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %48(ptr noundef %38, i32 noundef 1, i8 noundef zeroext -126) #7
  %49 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i3.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i3.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i4.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i4.i.i, label %rtl_write_word.exit.i.i16._resetdigitalprocedure2.exit.i_crit_edge, label %if.then.i6.i.i

rtl_write_word.exit.i.i16._resetdigitalprocedure2.exit.i_crit_edge: ; preds = %rtl_write_word.exit.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %_resetdigitalprocedure2.exit.i

if.then.i6.i.i:                                   ; preds = %rtl_write_word.exit.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 13, i32 9
  %53 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i5.i.i = tail call zeroext i8 %54(ptr noundef %38, i32 noundef 1) #7
  br label %_resetdigitalprocedure2.exit.i

_resetdigitalprocedure2.exit.i:                   ; preds = %if.then.i6.i.i, %rtl_write_word.exit.i.i16._resetdigitalprocedure2.exit.i_crit_edge
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %write8_async.i.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 13, i32 5
  %57 = ptrtoint ptr %write8_async.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i.i6.i, align 4
  tail call void %58(ptr noundef %56, i32 noundef 32, i8 noundef zeroext 4) #7
  %cfg.i.i7.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 32
  %59 = ptrtoint ptr %cfg.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i.i7.i, align 8
  %write_readback.i.i8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i.i8.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i9.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i9.i, label %_resetdigitalprocedure2.exit.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i12.i

_resetdigitalprocedure2.exit.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %_resetdigitalprocedure2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i12.i:                                  ; preds = %_resetdigitalprocedure2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %read8_sync.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i.i10.i, align 4
  %call.i.i11.i = tail call zeroext i8 %64(ptr noundef %56, i32 noundef 32) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i12.i, %_resetdigitalprocedure2.exit.i.rtl_write_byte.exit.i.i_crit_edge
  %read8_sync.i11.i.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 13, i32 9
  %65 = ptrtoint ptr %read8_sync.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read8_sync.i11.i.i, align 4
  %call.i12.i.i = tail call zeroext i8 %66(ptr noundef %56, i32 noundef 33) #7
  %67 = and i8 %call.i12.i.i, -2
  %68 = ptrtoint ptr %write8_async.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write8_async.i.i6.i, align 4
  tail call void %69(ptr noundef %56, i32 noundef 33, i8 noundef zeroext %67) #7
  %70 = ptrtoint ptr %cfg.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i7.i, align 8
  %write_readback.i15.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i15.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i16.i.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i16.i.i, label %rtl_write_byte.exit.i.i.if.end.i.i_crit_edge, label %if.then.i19.i.i

rtl_write_byte.exit.i.i.if.end.i.i_crit_edge:     ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i19.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %read8_sync.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i11.i.i, align 4
  %call.i18.i.i = tail call zeroext i8 %75(ptr noundef %56, i32 noundef 33) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i19.i.i, %rtl_write_byte.exit.i.i.if.end.i.i_crit_edge
  %76 = ptrtoint ptr %write8_async.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8_async.i.i6.i, align 4
  tail call void %77(ptr noundef %56, i32 noundef 17, i8 noundef zeroext 35) #7
  %78 = ptrtoint ptr %cfg.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i7.i, align 8
  %write_readback.i23.i.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i23.i.i17 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i23.i.i17, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i24.i.i18 = icmp eq i8 %81, 0
  br i1 %tobool.not.i24.i.i18, label %if.end.i.i.rtl_write_byte.exit28.i.i23_crit_edge, label %if.then.i27.i.i20

if.end.i.i.rtl_write_byte.exit28.i.i23_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit28.i.i23

if.then.i27.i.i20:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %read8_sync.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i11.i.i, align 4
  %call.i26.i.i19 = tail call zeroext i8 %83(ptr noundef %56, i32 noundef 17) #7
  br label %rtl_write_byte.exit28.i.i23

rtl_write_byte.exit28.i.i23:                      ; preds = %if.then.i27.i.i20, %if.end.i.i.rtl_write_byte.exit28.i.i23_crit_edge
  %write16_async.i.i13.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 13, i32 6
  %84 = ptrtoint ptr %write16_async.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16_async.i.i13.i, align 4
  tail call void %85(ptr noundef %56, i32 noundef 4, i16 noundef zeroext 18434) #7
  %86 = ptrtoint ptr %cfg.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i.i7.i, align 8
  %write_readback.i30.i.i21 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i30.i.i21 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i30.i.i21, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i31.i.i22 = icmp eq i8 %89, 0
  br i1 %tobool.not.i31.i.i22, label %rtl_write_byte.exit28.i.i23.rtl_write_word.exit.i15.i_crit_edge, label %if.then.i33.i.i25

rtl_write_byte.exit28.i.i23.rtl_write_word.exit.i15.i_crit_edge: ; preds = %rtl_write_byte.exit28.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i15.i

if.then.i33.i.i25:                                ; preds = %rtl_write_byte.exit28.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 13, i32 10
  %90 = ptrtoint ptr %read16_sync.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read16_sync.i.i14.i, align 4
  %call.i32.i.i24 = tail call zeroext i16 %91(ptr noundef %56, i32 noundef 4) #7
  br label %rtl_write_word.exit.i15.i

rtl_write_word.exit.i15.i:                        ; preds = %if.then.i33.i.i25, %rtl_write_byte.exit28.i.i23.rtl_write_word.exit.i15.i_crit_edge
  %92 = ptrtoint ptr %write8_async.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i.i6.i, align 4
  tail call void %93(ptr noundef %56, i32 noundef 28, i8 noundef zeroext 14) #7
  %94 = ptrtoint ptr %cfg.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i.i7.i, align 8
  %write_readback.i36.i.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i36.i.i26 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i36.i.i26, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i37.i.i27 = icmp eq i8 %97, 0
  br i1 %tobool.not.i37.i.i27, label %rtl_write_word.exit.i15.i.if.end_crit_edge, label %rtl_write_word.exit.i15.i.if.end.sink.split_crit_edge

rtl_write_word.exit.i15.i.if.end.sink.split_crit_edge: ; preds = %rtl_write_word.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

rtl_write_word.exit.i15.i.if.end_crit_edge:       ; preds = %rtl_write_word.exit.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %rtl_write_word.exit.i15.i.if.end.sink.split_crit_edge, %if.then.i40.i.i
  %read8_sync.i11.i.i.sink = phi ptr [ %read8_sync.i38.i.i, %if.then.i40.i.i ], [ %read8_sync.i11.i.i, %rtl_write_word.exit.i15.i.if.end.sink.split_crit_edge ]
  %.sink = phi ptr [ %14, %if.then.i40.i.i ], [ %56, %rtl_write_word.exit.i15.i.if.end.sink.split_crit_edge ]
  %98 = ptrtoint ptr %read8_sync.i11.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i11.i.i.sink, align 4
  %call.i39.i.i28 = tail call zeroext i8 %99(ptr noundef %.sink, i32 noundef 28) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %rtl_write_word.exit.i15.i.if.end_crit_edge, %rtl_write_word.exit.i.i.if.end_crit_edge
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %100 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %iqk_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92cu_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 258) #7
  %4 = and i8 %call.i, -4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %type, label %if.else11 [
    i32 0, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge103
    i32 1, label %entry.if.then10_crit_edge
    i32 3, label %entry.if.then10_crit_edge104
  ]

entry.if.then10_crit_edge104:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

entry.if.then_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge103
  tail call fastcc void @_rtl92cu_stop_tx_beacon(ptr noundef %hw)
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 13
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %reg_bcn_ctrl_val.i5.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 7, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_bcn_ctrl_val.i5.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %and.i.i = and i32 %11, -3
  %12 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i5.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 5
  %13 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %14(ptr noundef %7, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %15 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end12_crit_edge, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else.i:                                        ; preds = %if.then
  %and.i6.i = and i32 %11, -17
  %19 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i6.i, ptr %reg_bcn_ctrl_val.i5.i, align 4
  %conv6.i7.i = trunc i32 %and.i6.i to i8
  %write8_async.i.i8.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %write8_async.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8_async.i.i8.i, align 4
  tail call void %21(ptr noundef %7, i32 noundef 1360, i8 noundef zeroext %conv6.i7.i) #7
  %cfg.i.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %22 = ptrtoint ptr %cfg.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i.i9.i, align 8
  %write_readback.i.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i.i10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i.i10.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i11.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i11.i, label %if.else.i.if.end12_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.else.i.if.end12_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %read8_sync.i.i12.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i.i12.i, align 4
  %call.i.i13.i = tail call zeroext i8 %27(ptr noundef %7, i32 noundef 1360) #7
  br label %if.end12

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge104
  tail call fastcc void @_rtl92cu_resume_tx_beacon(ptr noundef %hw)
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %version.i64 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 10, i32 13
  %30 = ptrtoint ptr %version.i64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i64, align 4
  %and.i65 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  %reg_bcn_ctrl_val.i5.i67 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 1, i32 7, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_bcn_ctrl_val.i5.i67, align 4
  br i1 %tobool.not.i66, label %if.else.i79, label %if.then.i73

if.then.i73:                                      ; preds = %if.then10
  %or.i.i = or i32 %33, 2
  %34 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i5.i67, align 4
  %conv6.i.i68 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i69 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 13, i32 5
  %35 = ptrtoint ptr %write8_async.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i.i.i69, align 4
  tail call void %36(ptr noundef %29, i32 noundef 1360, i8 noundef zeroext %conv6.i.i68) #7
  %cfg.i.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i.i70, align 8
  %write_readback.i.i.i71 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i.i.i71 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i.i.i71, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i72 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i.i72, label %if.then.i73.if.end12_crit_edge, label %if.then.i73.if.end.sink.split.i82_crit_edge

if.then.i73.if.end.sink.split.i82_crit_edge:      ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i82

if.then.i73.if.end12_crit_edge:                   ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else.i79:                                      ; preds = %if.then10
  %or.i6.i = or i32 %33, 16
  %41 = ptrtoint ptr %reg_bcn_ctrl_val.i5.i67 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i6.i, ptr %reg_bcn_ctrl_val.i5.i67, align 4
  %conv6.i7.i74 = trunc i32 %or.i6.i to i8
  %write8_async.i.i8.i75 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 13, i32 5
  %42 = ptrtoint ptr %write8_async.i.i8.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i.i8.i75, align 4
  tail call void %43(ptr noundef %29, i32 noundef 1360, i8 noundef zeroext %conv6.i7.i74) #7
  %cfg.i.i9.i76 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i.i9.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i.i9.i76, align 8
  %write_readback.i.i10.i77 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i.i10.i77 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i.i10.i77, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i11.i78 = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i11.i78, label %if.else.i79.if.end12_crit_edge, label %if.else.i79.if.end.sink.split.i82_crit_edge

if.else.i79.if.end.sink.split.i82_crit_edge:      ; preds = %if.else.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i82

if.else.i79.if.end12_crit_edge:                   ; preds = %if.else.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.sink.split.i82:                            ; preds = %if.else.i79.if.end.sink.split.i82_crit_edge, %if.then.i73.if.end.sink.split.i82_crit_edge
  %read8_sync.i.i12.i80 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 13, i32 9
  %48 = ptrtoint ptr %read8_sync.i.i12.i80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i.i12.i80, align 4
  %call.i.i13.i81 = tail call zeroext i8 %49(ptr noundef %29, i32 noundef 1360) #7
  br label %if.end12

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %type) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.end.sink.split.i82, %if.else.i79.if.end12_crit_edge, %if.then.i73.if.end12_crit_edge, %if.end.sink.split.i, %if.else.i.if.end12_crit_edge, %if.then.i.if.end12_crit_edge
  %50 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %type, label %do.end [
    i32 0, label %if.end12.sw.epilog_crit_edge
    i32 1, label %sw.bb15
    i32 2, label %sw.bb19
    i32 3, label %sw.bb23
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %51 = or i8 %4, 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %52 = or i8 %4, 2
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %53 = or i8 %call.i, 3
  br label %sw.epilog

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %type) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb19, %sw.bb15, %if.end12.sw.epilog_crit_edge
  %.str.74.sink = phi ptr [ @.str.74, %sw.bb23 ], [ @.str.73, %sw.bb19 ], [ @.str.72, %sw.bb15 ], [ @.str.71, %if.end12.sw.epilog_crit_edge ]
  %bt_msr.0 = phi i8 [ %53, %sw.bb23 ], [ %52, %sw.bb19 ], [ %51, %sw.bb15 ], [ %4, %if.end12.sw.epilog_crit_edge ]
  %ledaction.0 = phi i32 [ 3, %sw.bb23 ], [ 2, %sw.bb19 ], [ 3, %sw.bb15 ], [ 2, %if.end12.sw.epilog_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.74.sink) #7
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %54 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write8_async.i, align 4
  tail call void %55(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %bt_msr.0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i83 = icmp eq i8 %59, 0
  br i1 %tobool.not.i83, label %sw.epilog.rtl_write_byte.exit_crit_edge, label %if.then.i86

sw.epilog.rtl_write_byte.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i86:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %61(ptr noundef %1, i32 noundef 258) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i86, %sw.epilog.rtl_write_byte.exit_crit_edge
  %62 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %65, i32 0, i32 36
  %66 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %led_control, align 4
  tail call void %67(ptr noundef %hw, i32 noundef %ledaction.0) #7
  %68 = and i8 %bt_msr.0, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %68)
  %cmp30 = icmp eq i8 %68, 3
  %69 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %rtl_write_byte.exit
  tail call void %70(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #7
  %71 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i, align 8
  %write_readback.i89 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i89 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i89, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i90 = icmp eq i8 %74, 0
  br i1 %tobool.not.i90, label %if.then32.cleanup_crit_edge, label %if.then.i93

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i93:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8_sync.i, align 4
  %call.i92 = tail call zeroext i8 %76(ptr noundef %1, i32 noundef 1297) #7
  br label %cleanup

if.else33:                                        ; preds = %rtl_write_byte.exit
  tail call void %70(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #7
  %77 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i97, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i98 = icmp eq i8 %80, 0
  br i1 %tobool.not.i98, label %if.else33.cleanup_crit_edge, label %if.then.i101

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i101:                                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i, align 4
  %call.i100 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1297) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i101, %if.else33.cleanup_crit_edge, %if.then.i93, %if.then32.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then32.cleanup_crit_edge ], [ 0, %if.then.i93 ], [ 0, %if.else33.cleanup_crit_edge ], [ 0, %if.then.i101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #7
  %2 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_rcr, align 4, !annotation !184
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %3 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_hw_reg, align 4
  call void %10(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %13 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_rcr, align 4
  br i1 %check_bssid, label %if.then2, label %if.else9

if.then2:                                         ; preds = %if.end
  %. = select i1 %tobool3.not, i32 64, i32 192
  %.54 = select i1 %tobool3.not, i32 -49, i32 -17
  %or5 = or i32 %14, %.
  %15 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or5, ptr %reg_rcr, align 4
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 8
  %ops8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops8, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_hw_reg, align 4
  call void %21(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 1, i32 7, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %25, %.54
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 13, i32 5
  %26 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i.i, align 4
  call void %27(ptr noundef %23, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else9:                                         ; preds = %if.end
  %.56 = select i1 %tobool3.not, i32 48, i32 16
  %and21 = and i32 %14, -193
  %32 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and21, ptr %reg_rcr, align 4
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg, align 8
  %ops23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops23, align 4
  %set_hw_reg24 = getelementptr inbounds %struct.rtl_hal_ops, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %set_hw_reg24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_hw_reg24, align 4
  call void %38(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i40 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 1, i32 7, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %reg_bcn_ctrl_val.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_bcn_ctrl_val.i40, align 4
  %or.i = or i32 %42, %.56
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i40, align 4
  %conv6.i41 = trunc i32 %or.i to i8
  %write8_async.i.i42 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 13, i32 5
  %43 = ptrtoint ptr %write8_async.i.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i.i42, align 4
  call void %44(ptr noundef %40, i32 noundef 1360, i8 noundef zeroext %conv6.i41) #7
  %cfg.i.i43 = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 32
  %45 = ptrtoint ptr %cfg.i.i43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i.i43, align 8
  %write_readback.i.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i.i44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i.i44, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i45 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i45, label %if.else9.cleanup_crit_edge, label %if.else9.cleanup.sink.split_crit_edge

if.else9.cleanup.sink.split_crit_edge:            ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else9.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.sink53 = phi ptr [ %23, %if.then2.cleanup.sink.split_crit_edge ], [ %40, %if.else9.cleanup.sink.split_crit_edge ]
  %read8_sync.i.i46 = getelementptr inbounds %struct.rtl_priv, ptr %.sink53, i32 0, i32 13, i32 9
  %49 = ptrtoint ptr %read8_sync.i.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i.i46, align 4
  %call.i.i47 = call zeroext i8 %50(ptr noundef %.sink53, i32 noundef 1360) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else9.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92cu_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i10 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl92cu_set_media_status(ptr noundef %hw, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp2.not = icmp eq i32 %type, 3
  br i1 %cmp2.not, label %if.then1.cleanup_crit_edge, label %if.then3

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  %6 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_rcr.i, align 4, !annotation !184
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.rtl92cu_set_check_bssid.exit_crit_edge

if.then3.rtl92cu_set_check_bssid.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %get_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %get_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_hw_reg.i, align 4
  call void %14(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 10, i32 13
  %15 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i, align 4
  %and.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %17 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_rcr.i, align 4
  %..i = select i1 %tobool3.not.i, i32 64, i32 192
  %.54.i = select i1 %tobool3.not.i, i32 -49, i32 -17
  %or5.i = or i32 %..i, %18
  store i32 %or5.i, ptr %reg_rcr.i, align 4
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i, align 8
  %ops8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops8.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_hw_reg.i, align 4
  call void %24(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %28, %.54.i
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %30(ptr noundef %26, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl92cu_set_check_bssid.exit_crit_edge, label %cleanup.sink.split.i

if.end.i.rtl92cu_set_check_bssid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_set_check_bssid.exit

cleanup.sink.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i46.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 9
  %35 = ptrtoint ptr %read8_sync.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i.i46.i, align 4
  %call.i.i47.i = call zeroext i8 %36(ptr noundef %26, i32 noundef 1360) #7
  br label %rtl92cu_set_check_bssid.exit

rtl92cu_set_check_bssid.exit:                     ; preds = %cleanup.sink.split.i, %if.end.i.rtl92cu_set_check_bssid.exit_crit_edge, %if.then3.rtl92cu_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  %39 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %reg_rcr.i10, align 4, !annotation !184
  %rfpwr_state.i12 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 21, i32 24
  %40 = ptrtoint ptr %rfpwr_state.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rfpwr_state.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i13 = icmp eq i32 %41, 0
  br i1 %cmp.not.i13, label %if.end.i20, label %if.else.rtl92cu_set_check_bssid.exit24_crit_edge

if.else.rtl92cu_set_check_bssid.exit24_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_set_check_bssid.exit24

if.end.i20:                                       ; preds = %if.else
  %cfg.i14 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i14, align 8
  %ops.i15 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i15, align 4
  %get_hw_reg.i16 = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %get_hw_reg.i16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_hw_reg.i16, align 4
  call void %47(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #7
  %version.i17 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 10, i32 13
  %48 = ptrtoint ptr %version.i17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version.i17, align 4
  %and.i18 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool3.not.i19 = icmp eq i32 %and.i18, 0
  %50 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_rcr.i10, align 4
  %.56.i = select i1 %tobool3.not.i19, i32 48, i32 16
  %and21.i = and i32 %51, -193
  store i32 %and21.i, ptr %reg_rcr.i10, align 4
  %52 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i14, align 8
  %ops23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ops23.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops23.i, align 4
  %set_hw_reg24.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %set_hw_reg24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_hw_reg24.i, align 4
  call void %57(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #7
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 1, i32 7, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %reg_bcn_ctrl_val.i40.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg_bcn_ctrl_val.i40.i, align 4
  %or.i.i = or i32 %61, %.56.i
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i40.i, align 4
  %conv6.i41.i = trunc i32 %or.i.i to i8
  %write8_async.i.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 13, i32 5
  %62 = ptrtoint ptr %write8_async.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i.i42.i, align 4
  call void %63(ptr noundef %59, i32 noundef 1360, i8 noundef zeroext %conv6.i41.i) #7
  %cfg.i.i43.i = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i.i43.i, align 8
  %write_readback.i.i44.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i.i44.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i.i44.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i45.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i45.i, label %if.end.i20.rtl92cu_set_check_bssid.exit24_crit_edge, label %cleanup.sink.split.i23

if.end.i20.rtl92cu_set_check_bssid.exit24_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_set_check_bssid.exit24

cleanup.sink.split.i23:                           ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i46.i21 = getelementptr inbounds %struct.rtl_priv, ptr %59, i32 0, i32 13, i32 9
  %68 = ptrtoint ptr %read8_sync.i.i46.i21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i.i46.i21, align 4
  %call.i.i47.i22 = call zeroext i8 %69(ptr noundef %59, i32 noundef 1360) #7
  br label %rtl92cu_set_check_bssid.exit24

rtl92cu_set_check_bssid.exit24:                   ; preds = %cleanup.sink.split.i23, %if.end.i20.rtl92cu_set_check_bssid.exit24_crit_edge, %if.else.rtl92cu_set_check_bssid.exit24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl92cu_set_check_bssid.exit24, %rtl92cu_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %rtl92cu_set_check_bssid.exit ], [ 0, %rtl92cu_set_check_bssid.exit24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %beacon_interval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_interval, align 8
  %conv = trunc i32 %3 to i16
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1370, i16 noundef zeroext 2) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %10 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 1370) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %12 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i30 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i30, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i31 = icmp eq i8 %17, 0
  br i1 %tobool.not.i31, label %rtl_write_word.exit.rtl_write_word.exit35_crit_edge, label %if.then.i34

rtl_write_word.exit.rtl_write_word.exit35_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit35

if.then.i34:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %18 = ptrtoint ptr %read16_sync.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16_sync.i32, align 4
  %call.i33 = tail call zeroext i16 %19(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit35

rtl_write_word.exit35:                            ; preds = %if.then.i34, %rtl_write_word.exit.rtl_write_word.exit35_crit_edge
  tail call fastcc void @_rtl92cu_init_beacon_parameters(ptr noundef %hw)
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext 9) #7
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i37 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i37, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i38 = icmp eq i8 %25, 0
  br i1 %tobool.not.i38, label %rtl_write_word.exit35.rtl_write_byte.exit_crit_edge, label %if.then.i40

rtl_write_word.exit35.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i40:                                      ; preds = %rtl_write_word.exit35
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i, align 4
  %call.i39 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 1307) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i40, %rtl_write_word.exit35.rtl_write_byte.exit_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %28 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i, align 4
  %call.i41 = tail call i32 %29(ptr noundef %1, i32 noundef 1540) #7
  %and = and i32 %call.i41, -2
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %30 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32_async.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef 1540, i32 noundef %and) #7
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i, align 8
  %write_readback.i43 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write_readback.i43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %write_readback.i43, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i44 = icmp eq i8 %35, 0
  br i1 %tobool.not.i44, label %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge, label %if.then.i47

rtl_write_byte.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i47:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32_sync.i, align 4
  %call.i46 = tail call i32 %37(ptr noundef %1, i32 noundef 1540) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i47, %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge
  %or = or i32 %call.i41, 1
  %38 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32_async.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef 1540, i32 noundef %or) #7
  %40 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i, align 8
  %write_readback.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i50 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i50, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i51 = icmp eq i8 %43, 0
  br i1 %tobool.not.i51, label %rtl_write_dword.exit.rtl_write_dword.exit55_crit_edge, label %if.then.i54

rtl_write_dword.exit.rtl_write_dword.exit55_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit55

if.then.i54:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32_sync.i, align 4
  %call.i53 = tail call i32 %45(ptr noundef %1, i32 noundef 1540) #7
  br label %rtl_write_dword.exit55

rtl_write_dword.exit55:                           ; preds = %if.then.i54, %rtl_write_dword.exit.rtl_write_dword.exit55_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1028, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %or) #7
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %46 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opmode, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %47, label %rtl_write_dword.exit55.if.end_crit_edge [
    i32 1, label %rtl_write_dword.exit55.if.then_crit_edge
    i32 7, label %rtl_write_dword.exit55.if.then_crit_edge72
    i32 3, label %rtl_write_dword.exit55.if.then_crit_edge73
  ]

rtl_write_dword.exit55.if.then_crit_edge73:       ; preds = %rtl_write_dword.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rtl_write_dword.exit55.if.then_crit_edge72:       ; preds = %rtl_write_dword.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rtl_write_dword.exit55.if.then_crit_edge:         ; preds = %rtl_write_dword.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

rtl_write_dword.exit55.if.end_crit_edge:          ; preds = %rtl_write_dword.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %rtl_write_dword.exit55.if.then_crit_edge, %rtl_write_dword.exit55.if.then_crit_edge72, %rtl_write_dword.exit55.if.then_crit_edge73
  %49 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write8_async.i, align 4
  tail call void %50(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 80) #7
  %51 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i, align 8
  %write_readback.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i58 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i58, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i59 = icmp eq i8 %54, 0
  br i1 %tobool.not.i59, label %if.then.rtl_write_byte.exit63_crit_edge, label %if.then.i62

if.then.rtl_write_byte.exit63_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit63

if.then.i62:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i60 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %55 = ptrtoint ptr %read8_sync.i60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i60, align 4
  %call.i61 = tail call zeroext i8 %56(ptr noundef %1, i32 noundef 1374) #7
  br label %rtl_write_byte.exit63

rtl_write_byte.exit63:                            ; preds = %if.then.i62, %if.then.rtl_write_byte.exit63_crit_edge
  %57 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i, align 4
  tail call void %58(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 80) #7
  %59 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i66, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i67 = icmp eq i8 %62, 0
  br i1 %tobool.not.i67, label %rtl_write_byte.exit63.if.end_crit_edge, label %if.then.i70

rtl_write_byte.exit63.if.end_crit_edge:           ; preds = %rtl_write_byte.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i70:                                      ; preds = %rtl_write_byte.exit63
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i68 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i68, align 4
  %call.i69 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 1375) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i70, %rtl_write_byte.exit63.if.end_crit_edge, %rtl_write_dword.exit55.if.end_crit_edge
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 1, i32 7, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %or.i.i = or i32 %68, 26
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %or.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 13, i32 5
  %69 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %70(ptr noundef %66, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.i.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i.i.i, label %if.end._rtl92cu_set_bcn_ctrl_reg.exit.i_crit_edge, label %if.then.i.i.i

if.end._rtl92cu_set_bcn_ctrl_reg.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 13, i32 9
  %75 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %76(ptr noundef %66, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit.i

_rtl92cu_set_bcn_ctrl_reg.exit.i:                 ; preds = %if.then.i.i.i, %if.end._rtl92cu_set_bcn_ctrl_reg.exit.i_crit_edge
  %77 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %78(ptr noundef %66, i32 noundef 1317, i8 noundef zeroext 111) #7
  %79 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i, label %_rtl92cu_set_bcn_ctrl_reg.exit.i._beacon_function_enable.exit_crit_edge, label %if.then.i.i

_rtl92cu_set_bcn_ctrl_reg.exit.i._beacon_function_enable.exit_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_beacon_function_enable.exit

if.then.i.i:                                      ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 13, i32 9
  %83 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %84(ptr noundef %66, i32 noundef 1317) #7
  br label %_beacon_function_enable.exit

_beacon_function_enable.exit:                     ; preds = %if.then.i.i, %_rtl92cu_set_bcn_ctrl_reg.exit.i._beacon_function_enable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92cu_init_beacon_parameters(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1360, i16 noundef zeroext 4112) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef 1360) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %10 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1344, i16 noundef zeroext 25604) #7
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i10 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i10, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i11 = icmp eq i8 %15, 0
  br i1 %tobool.not.i11, label %rtl_write_word.exit.rtl_write_word.exit15_crit_edge, label %if.then.i14

rtl_write_word.exit.rtl_write_word.exit15_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit15

if.then.i14:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %16 = ptrtoint ptr %read16_sync.i12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16_sync.i12, align 4
  %call.i13 = tail call zeroext i16 %17(ptr noundef %1, i32 noundef 1344) #7
  br label %rtl_write_word.exit15

rtl_write_word.exit15:                            ; preds = %if.then.i14, %rtl_write_word.exit.rtl_write_word.exit15_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1368, i8 noundef zeroext 5) #7
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i17, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i18 = icmp eq i8 %23, 0
  br i1 %tobool.not.i18, label %rtl_write_word.exit15.rtl_write_byte.exit_crit_edge, label %if.then.i20

rtl_write_word.exit15.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i20:                                      ; preds = %rtl_write_word.exit15
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i19 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 1368) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i20, %rtl_write_word.exit15.rtl_write_byte.exit_crit_edge
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 1369, i8 noundef zeroext 2) #7
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i23, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i24 = icmp eq i8 %31, 0
  br i1 %tobool.not.i24, label %rtl_write_byte.exit.rtl_write_byte.exit28_crit_edge, label %if.then.i27

rtl_write_byte.exit.rtl_write_byte.exit28_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit28

if.then.i27:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %read8_sync.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i25, align 4
  %call.i26 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 1369) #7
  br label %rtl_write_byte.exit28

rtl_write_byte.exit28:                            ; preds = %if.then.i27, %rtl_write_byte.exit.rtl_write_byte.exit28_crit_edge
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %34 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version, align 4
  %and = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %36 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write16_async.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rtl_write_byte.exit28
  tail call void %37(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #7
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i, align 8
  %write_readback.i31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_readback.i31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_readback.i31, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i32 = icmp eq i8 %41, 0
  br i1 %tobool.not.i32, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %rtl_write_byte.exit28
  tail call void %37(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26367) #7
  %42 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i, align 8
  %write_readback.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i39 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i39, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i40 = icmp eq i8 %45, 0
  br i1 %tobool.not.i40, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %read16_sync.i41 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %46 = ptrtoint ptr %read16_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read16_sync.i41, align 4
  %call.i42 = tail call zeroext i16 %47(ptr noundef %1, i32 noundef 1296) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %beacon_interval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beacon_interval, align 8
  %conv = trunc i32 %3 to i16
  %conv2 = and i32 %3, 65535
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %conv2) #7
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %10 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92cu_update_interrupt_mask(ptr nocapture noundef %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %rfstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %variable, label %do.end [
    i8 44, label %sw.bb
    i8 40, label %sw.bb3
    i8 86, label %sw.bb4
    i8 65, label %sw.bb9
    i8 84, label %sw.bb11
    i8 96, label %sw.bb14
    i8 97, label %sw.bb16
    i8 98, label %sw.bb18
    i8 92, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_conf = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 16
  %3 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_conf, align 8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfstate) #7
  %9 = ptrtoint ptr %rfstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rfstate, align 4, !annotation !184
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rfstate) #7
  %16 = ptrtoint ptr %rfstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %sw.bb4.if.end8_crit_edge, label %if.else

sw.bb4.if.end8_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %19(ptr noundef %1, i32 noundef 1544) #7
  %and = and i32 %call.i, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool.not to i8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %sw.bb4.if.end8_crit_edge
  %.sink = phi i8 [ 1, %sw.bb4.if.end8_crit_edge ], [ %., %if.else ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfstate) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !178
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i43, align 4
  %call.i44 = tail call i32 %25(ptr noundef %1, i32 noundef 1380) #7
  %26 = ptrtoint ptr %read32_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i43, align 4
  %call.i46 = tail call i32 %27(ptr noundef %1, i32 noundef 1376) #7
  %tsf.sroa.5.0.insert.ext = zext i32 %call.i44 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call.i46 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %tsf.sroa.0.0.insert.insert, ptr %val, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i, align 4
  %call.i47 = tail call zeroext i16 %30(ptr noundef %1, i32 noundef 1696) #7
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %call.i47, ptr %val, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i48 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %32 = ptrtoint ptr %read16_sync.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read16_sync.i48, align 4
  %call.i49 = tail call zeroext i16 %33(ptr noundef %1, i32 noundef 1698) #7
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call.i49, ptr %val, align 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i50, align 4
  %call.i51 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1700) #7
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %call.i51, ptr %val, align 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb11, %sw.bb9, %if.end8, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %e_aci = alloca i8, align 1
  %array = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %variable, label %do.end362 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb10
    i8 3, label %for.cond30.preheader
    i8 14, label %sw.bb42
    i8 18, label %sw.bb49
    i8 19, label %sw.bb76
    i8 28, label %sw.bb85
    i8 29, label %sw.bb108
    i8 30, label %sw.bb124
    i8 32, label %sw.bb190
    i8 44, label %sw.bb263
    i8 53, label %sw.bb267
    i8 87, label %sw.bb276
    i8 57, label %sw.bb277
    i8 56, label %sw.bb278
    i8 72, label %sw.bb279
    i8 27, label %sw.bb280
    i8 60, label %sw.bb281
    i8 61, label %sw.bb292
    i8 65, label %sw.bb303
    i8 62, label %sw.bb305
    i8 82, label %sw.bb329
    i8 84, label %sw.bb338
    i8 96, label %sw.bb352
    i8 97, label %sw.bb353
    i8 98, label %sw.bb354
    i8 94, label %sw.bb355
  ]

for.cond30.preheader:                             ; preds = %entry
  %write8_async.i601 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i602 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i605 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i601, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #7
  %7 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i603 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i603, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i604 = icmp eq i8 %10, 0
  br i1 %tobool.not.i604, label %for.cond30.preheader.rtl_write_byte.exit608_crit_edge, label %if.then.i607

for.cond30.preheader.rtl_write_byte.exit608_crit_edge: ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit608

for.cond.preheader:                               ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1552, i8 noundef zeroext %12) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.cond.preheader.rtl_write_byte.exit_crit_edge, label %if.then.i

for.cond.preheader.rtl_write_byte.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1552) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.cond.preheader.rtl_write_byte.exit_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %val, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1553, i8 noundef zeroext %22) #7
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.1 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.1, label %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge, label %if.then.i.1

rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.1

if.then.i.1:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i.1 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1553) #7
  br label %rtl_write_byte.exit.1

rtl_write_byte.exit.1:                            ; preds = %if.then.i.1, %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %val, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %33 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1554, i8 noundef zeroext %32) #7
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.2 = icmp eq i8 %38, 0
  br i1 %tobool.not.i.2, label %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge, label %if.then.i.2

rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge: ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.2

if.then.i.2:                                      ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i, align 4
  %call.i.2 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 1554) #7
  br label %rtl_write_byte.exit.2

rtl_write_byte.exit.2:                            ; preds = %if.then.i.2, %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %val, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3, align 1
  %43 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1555, i8 noundef zeroext %42) #7
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.3 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.3, label %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge, label %if.then.i.3

rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge: ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.3

if.then.i.3:                                      ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i, align 4
  %call.i.3 = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 1555) #7
  br label %rtl_write_byte.exit.3

rtl_write_byte.exit.3:                            ; preds = %if.then.i.3, %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %val, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4, align 1
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1556, i8 noundef zeroext %52) #7
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.4 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.4, label %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge, label %if.then.i.4

rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge: ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.4

if.then.i.4:                                      ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i.4 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1556) #7
  br label %rtl_write_byte.exit.4

rtl_write_byte.exit.4:                            ; preds = %if.then.i.4, %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %val, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5, align 1
  %63 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 1557, i8 noundef zeroext %62) #7
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog366_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog366_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #7
  br label %sw.epilog366

sw.bb10:                                          ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 350
  %74 = or i16 %73, 1
  %conv18 = trunc i16 %74 to i8
  %write8_async.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i577 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i577, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv18) #7
  %cfg.i578 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i578 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i578, align 8
  %write_readback.i579 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i579 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i579, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i580 = icmp eq i8 %80, 0
  br i1 %tobool.not.i580, label %sw.bb10.rtl_write_byte.exit584_crit_edge, label %if.then.i583

sw.bb10.rtl_write_byte.exit584_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit584

if.then.i583:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i581 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i581 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i581, align 4
  %call.i582 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #7
  br label %rtl_write_byte.exit584

rtl_write_byte.exit584:                           ; preds = %if.then.i583, %sw.bb10.rtl_write_byte.exit584_crit_edge
  %83 = lshr i16 %73, 8
  %conv21 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i577 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i577, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv21) #7
  %86 = ptrtoint ptr %cfg.i578 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i578, align 8
  %write_readback.i587 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i587 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i587, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i588 = icmp eq i8 %89, 0
  br i1 %tobool.not.i588, label %rtl_write_byte.exit584.rtl_write_byte.exit592_crit_edge, label %if.then.i591

rtl_write_byte.exit584.rtl_write_byte.exit592_crit_edge: ; preds = %rtl_write_byte.exit584
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit592

if.then.i591:                                     ; preds = %rtl_write_byte.exit584
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i589 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i589 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i589, align 4
  %call.i590 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #7
  br label %rtl_write_byte.exit592

rtl_write_byte.exit592:                           ; preds = %if.then.i591, %rtl_write_byte.exit584.rtl_write_byte.exit592_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp23960.not = icmp eq i16 %73, 0
  br i1 %cmp23960.not, label %rtl_write_byte.exit592.while.end_crit_edge, label %rtl_write_byte.exit592.while.body_crit_edge

rtl_write_byte.exit592.while.body_crit_edge:      ; preds = %rtl_write_byte.exit592
  br label %while.body

rtl_write_byte.exit592.while.end_crit_edge:       ; preds = %rtl_write_byte.exit592
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit592.while.body_crit_edge
  %rate_cfg.0962 = phi i16 [ %92, %while.body.while.body_crit_edge ], [ %74, %rtl_write_byte.exit592.while.body_crit_edge ]
  %rate_index.0961 = phi i8 [ %inc28, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit592.while.body_crit_edge ]
  %92 = lshr i16 %rate_cfg.0962, 1
  %inc28 = add nuw nsw i8 %rate_index.0961, 1
  %cmp23 = icmp ugt i16 %rate_cfg.0962, 3
  br i1 %cmp23, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit592.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit592.while.end_crit_edge ], [ %inc28, %while.body.while.end_crit_edge ]
  %93 = ptrtoint ptr %write8_async.i577 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i577, align 4
  tail call void %94(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #7
  %95 = ptrtoint ptr %cfg.i578 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i578, align 8
  %write_readback.i595 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i595 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i595, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i596 = icmp eq i8 %98, 0
  br i1 %tobool.not.i596, label %while.end.sw.epilog366_crit_edge, label %if.then.i599

while.end.sw.epilog366_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i599:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i597 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i597 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i597, align 4
  %call.i598 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 1152) #7
  br label %sw.epilog366

if.then.i607:                                     ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 1560) #7
  br label %rtl_write_byte.exit608

rtl_write_byte.exit608:                           ; preds = %if.then.i607, %for.cond30.preheader.rtl_write_byte.exit608_crit_edge
  %arrayidx38.1 = getelementptr i8, ptr %val, i32 1
  %103 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx38.1, align 1
  %105 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i601, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %104) #7
  %107 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i603.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i603.1, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i604.1 = icmp eq i8 %110, 0
  br i1 %tobool.not.i604.1, label %rtl_write_byte.exit608.rtl_write_byte.exit608.1_crit_edge, label %if.then.i607.1

rtl_write_byte.exit608.rtl_write_byte.exit608.1_crit_edge: ; preds = %rtl_write_byte.exit608
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit608.1

if.then.i607.1:                                   ; preds = %rtl_write_byte.exit608
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606.1 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 1561) #7
  br label %rtl_write_byte.exit608.1

rtl_write_byte.exit608.1:                         ; preds = %if.then.i607.1, %rtl_write_byte.exit608.rtl_write_byte.exit608.1_crit_edge
  %arrayidx38.2 = getelementptr i8, ptr %val, i32 2
  %113 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx38.2, align 1
  %115 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8_async.i601, align 4
  tail call void %116(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %114) #7
  %117 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i603.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i603.2, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i604.2 = icmp eq i8 %120, 0
  br i1 %tobool.not.i604.2, label %rtl_write_byte.exit608.1.rtl_write_byte.exit608.2_crit_edge, label %if.then.i607.2

rtl_write_byte.exit608.1.rtl_write_byte.exit608.2_crit_edge: ; preds = %rtl_write_byte.exit608.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit608.2

if.then.i607.2:                                   ; preds = %rtl_write_byte.exit608.1
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606.2 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 1562) #7
  br label %rtl_write_byte.exit608.2

rtl_write_byte.exit608.2:                         ; preds = %if.then.i607.2, %rtl_write_byte.exit608.1.rtl_write_byte.exit608.2_crit_edge
  %arrayidx38.3 = getelementptr i8, ptr %val, i32 3
  %123 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx38.3, align 1
  %125 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i601, align 4
  tail call void %126(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %124) #7
  %127 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i603.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i603.3, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i604.3 = icmp eq i8 %130, 0
  br i1 %tobool.not.i604.3, label %rtl_write_byte.exit608.2.rtl_write_byte.exit608.3_crit_edge, label %if.then.i607.3

rtl_write_byte.exit608.2.rtl_write_byte.exit608.3_crit_edge: ; preds = %rtl_write_byte.exit608.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit608.3

if.then.i607.3:                                   ; preds = %rtl_write_byte.exit608.2
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606.3 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1563) #7
  br label %rtl_write_byte.exit608.3

rtl_write_byte.exit608.3:                         ; preds = %if.then.i607.3, %rtl_write_byte.exit608.2.rtl_write_byte.exit608.3_crit_edge
  %arrayidx38.4 = getelementptr i8, ptr %val, i32 4
  %133 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx38.4, align 1
  %135 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i601, align 4
  tail call void %136(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %134) #7
  %137 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i603.4 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i603.4, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i604.4 = icmp eq i8 %140, 0
  br i1 %tobool.not.i604.4, label %rtl_write_byte.exit608.3.rtl_write_byte.exit608.4_crit_edge, label %if.then.i607.4

rtl_write_byte.exit608.3.rtl_write_byte.exit608.4_crit_edge: ; preds = %rtl_write_byte.exit608.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit608.4

if.then.i607.4:                                   ; preds = %rtl_write_byte.exit608.3
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606.4 = tail call zeroext i8 %142(ptr noundef %1, i32 noundef 1564) #7
  br label %rtl_write_byte.exit608.4

rtl_write_byte.exit608.4:                         ; preds = %if.then.i607.4, %rtl_write_byte.exit608.3.rtl_write_byte.exit608.4_crit_edge
  %arrayidx38.5 = getelementptr i8, ptr %val, i32 5
  %143 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx38.5, align 1
  %145 = ptrtoint ptr %write8_async.i601 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i601, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %144) #7
  %147 = ptrtoint ptr %cfg.i602 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i602, align 8
  %write_readback.i603.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i603.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i603.5, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i604.5 = icmp eq i8 %150, 0
  br i1 %tobool.not.i604.5, label %rtl_write_byte.exit608.4.sw.epilog366_crit_edge, label %if.then.i607.5

rtl_write_byte.exit608.4.sw.epilog366_crit_edge:  ; preds = %rtl_write_byte.exit608.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i607.5:                                   ; preds = %rtl_write_byte.exit608.4
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %read8_sync.i605 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i605, align 4
  %call.i606.5 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1565) #7
  br label %sw.epilog366

sw.bb42:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %write8_async.i609 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i609, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %154) #7
  %cfg.i610 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i611 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i611 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i611, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i612 = icmp eq i8 %160, 0
  br i1 %tobool.not.i612, label %sw.bb42.rtl_write_byte.exit616_crit_edge, label %if.then.i615

sw.bb42.rtl_write_byte.exit616_crit_edge:         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit616

if.then.i615:                                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i613 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %161 = ptrtoint ptr %read8_sync.i613 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8_sync.i613, align 4
  %call.i614 = tail call zeroext i8 %162(ptr noundef %1, i32 noundef 1301) #7
  br label %rtl_write_byte.exit616

rtl_write_byte.exit616:                           ; preds = %if.then.i615, %sw.bb42.rtl_write_byte.exit616_crit_edge
  %arrayidx44 = getelementptr i8, ptr %val, i32 1
  %163 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx44, align 1
  %165 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i609, align 4
  tail call void %166(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %164) #7
  %167 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i619 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i619 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i619, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i620 = icmp eq i8 %170, 0
  br i1 %tobool.not.i620, label %rtl_write_byte.exit616.rtl_write_byte.exit624_crit_edge, label %if.then.i623

rtl_write_byte.exit616.rtl_write_byte.exit624_crit_edge: ; preds = %rtl_write_byte.exit616
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit624

if.then.i623:                                     ; preds = %rtl_write_byte.exit616
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i621 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i621 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i621, align 4
  %call.i622 = tail call zeroext i8 %172(ptr noundef %1, i32 noundef 1303) #7
  br label %rtl_write_byte.exit624

rtl_write_byte.exit624:                           ; preds = %if.then.i623, %rtl_write_byte.exit616.rtl_write_byte.exit624_crit_edge
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val, align 1
  %175 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write8_async.i609, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %174) #7
  %177 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i627 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i627 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i627, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i628 = icmp eq i8 %180, 0
  br i1 %tobool.not.i628, label %rtl_write_byte.exit624.rtl_write_byte.exit632_crit_edge, label %if.then.i631

rtl_write_byte.exit624.rtl_write_byte.exit632_crit_edge: ; preds = %rtl_write_byte.exit624
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit632

if.then.i631:                                     ; preds = %rtl_write_byte.exit624
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i629 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %181 = ptrtoint ptr %read8_sync.i629 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8_sync.i629, align 4
  %call.i630 = tail call zeroext i8 %182(ptr noundef %1, i32 noundef 1065) #7
  br label %rtl_write_byte.exit632

rtl_write_byte.exit632:                           ; preds = %if.then.i631, %rtl_write_byte.exit624.rtl_write_byte.exit632_crit_edge
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %val, align 1
  %185 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8_async.i609, align 4
  tail call void %186(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %184) #7
  %187 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i635 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write_readback.i635 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %write_readback.i635, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i636 = icmp eq i8 %190, 0
  br i1 %tobool.not.i636, label %rtl_write_byte.exit632.rtl_write_byte.exit640_crit_edge, label %if.then.i639

rtl_write_byte.exit632.rtl_write_byte.exit640_crit_edge: ; preds = %rtl_write_byte.exit632
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit640

if.then.i639:                                     ; preds = %rtl_write_byte.exit632
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i637 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %191 = ptrtoint ptr %read8_sync.i637 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8_sync.i637, align 4
  %call.i638 = tail call zeroext i8 %192(ptr noundef %1, i32 noundef 1595) #7
  br label %rtl_write_byte.exit640

rtl_write_byte.exit640:                           ; preds = %if.then.i639, %rtl_write_byte.exit632.rtl_write_byte.exit640_crit_edge
  %193 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %val, align 1
  %195 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write8_async.i609, align 4
  tail call void %196(ptr noundef %1, i32 noundef 1597, i8 noundef zeroext %194) #7
  %197 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i643 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %write_readback.i643 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %write_readback.i643, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i644 = icmp eq i8 %200, 0
  br i1 %tobool.not.i644, label %rtl_write_byte.exit640.rtl_write_byte.exit648_crit_edge, label %if.then.i647

rtl_write_byte.exit640.rtl_write_byte.exit648_crit_edge: ; preds = %rtl_write_byte.exit640
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit648

if.then.i647:                                     ; preds = %rtl_write_byte.exit640
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i645 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %201 = ptrtoint ptr %read8_sync.i645 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read8_sync.i645, align 4
  %call.i646 = tail call zeroext i8 %202(ptr noundef %1, i32 noundef 1597) #7
  br label %rtl_write_byte.exit648

rtl_write_byte.exit648:                           ; preds = %if.then.i647, %rtl_write_byte.exit640.rtl_write_byte.exit648_crit_edge
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %val, align 1
  %205 = ptrtoint ptr %write8_async.i609 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write8_async.i609, align 4
  tail call void %206(ptr noundef %1, i32 noundef 1599, i8 noundef zeroext %204) #7
  %207 = ptrtoint ptr %cfg.i610 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i610, align 8
  %write_readback.i651 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %write_readback.i651 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %write_readback.i651, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i652 = icmp eq i8 %210, 0
  br i1 %tobool.not.i652, label %rtl_write_byte.exit648.rtl_write_byte.exit656_crit_edge, label %if.then.i655

rtl_write_byte.exit648.rtl_write_byte.exit656_crit_edge: ; preds = %rtl_write_byte.exit648
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit656

if.then.i655:                                     ; preds = %rtl_write_byte.exit648
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i653 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %211 = ptrtoint ptr %read8_sync.i653 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read8_sync.i653, align 4
  %call.i654 = tail call zeroext i8 %212(ptr noundef %1, i32 noundef 1599) #7
  br label %rtl_write_byte.exit656

rtl_write_byte.exit656:                           ; preds = %if.then.i655, %rtl_write_byte.exit648.rtl_write_byte.exit656_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.17) #7
  br label %sw.epilog366

sw.bb49:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #7
  %213 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val, align 1
  %write8_async.i657 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %215 = ptrtoint ptr %write8_async.i657 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write8_async.i657, align 4
  tail call void %216(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %214) #7
  %cfg.i658 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %217 = ptrtoint ptr %cfg.i658 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cfg.i658, align 8
  %write_readback.i659 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %write_readback.i659 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %write_readback.i659, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i660 = icmp eq i8 %220, 0
  br i1 %tobool.not.i660, label %sw.bb49.rtl_write_byte.exit664_crit_edge, label %if.then.i663

sw.bb49.rtl_write_byte.exit664_crit_edge:         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit664

if.then.i663:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i661 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %221 = ptrtoint ptr %read8_sync.i661 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read8_sync.i661, align 4
  %call.i662 = tail call zeroext i8 %222(ptr noundef %1, i32 noundef 1307) #7
  br label %rtl_write_byte.exit664

rtl_write_byte.exit664:                           ; preds = %if.then.i663, %sw.bb49.rtl_write_byte.exit664_crit_edge
  %223 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %val, align 1
  %conv52 = zext i8 %224 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %conv52) #7
  %225 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %e_aci, align 1
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %rtl_write_byte.exit664
  %226 = ptrtoint ptr %cfg.i658 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i658, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %229, i32 0, i32 20
  %230 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %set_hw_reg, align 4
  call void %231(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #7
  %232 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %e_aci, align 1
  %inc59 = add i8 %233, 1
  store i8 %inc59, ptr %e_aci, align 1
  %cmp55 = icmp ult i8 %inc59, 4
  br i1 %cmp55, label %for.body57.for.body57_crit_edge, label %if.end75

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

if.end75:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #7
  br label %sw.epilog366

sw.bb76:                                          ; preds = %entry
  %234 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool77.not = icmp eq i8 %235, 0
  %spec.select = select i1 %tobool77.not, i8 0, i8 -128
  %write8_async.i665 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %236 = ptrtoint ptr %write8_async.i665 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write8_async.i665, align 4
  tail call void %237(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %spec.select) #7
  %cfg.i666 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %238 = ptrtoint ptr %cfg.i666 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cfg.i666, align 8
  %write_readback.i667 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %write_readback.i667 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %write_readback.i667, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i668 = icmp eq i8 %241, 0
  br i1 %tobool.not.i668, label %sw.bb76.sw.epilog366_crit_edge, label %if.then.i671

sw.bb76.sw.epilog366_crit_edge:                   ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i671:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i669 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %242 = ptrtoint ptr %read8_sync.i669 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %read8_sync.i669, align 4
  %call.i670 = tail call zeroext i8 %243(ptr noundef %1, i32 noundef 1090) #7
  br label %sw.epilog366

sw.bb85:                                          ; preds = %entry
  %244 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %245)
  %cmp87 = icmp ult i8 %245, 8
  br i1 %cmp87, label %if.then89, label %sw.bb85.sw.epilog366_crit_edge

sw.bb85.sw.epilog366_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then89:                                        ; preds = %sw.bb85
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %246 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pairwise_enc_algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %247)
  %248 = icmp ult i32 %247, 6
  br i1 %248, label %switch.lookup, label %if.then89.sw.epilog_crit_edge

if.then89.sw.epilog_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.rtl92cu_set_hw_reg, i32 0, i32 %247
  %249 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %249)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then89.sw.epilog_crit_edge
  %sec_min_space.0 = phi i8 [ %switch.load, %switch.lookup ], [ 7, %if.then89.sw.epilog_crit_edge ]
  %250 = tail call i8 @llvm.umax.i8(i8 %245, i8 %sec_min_space.0)
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %251 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %min_space_cfg, align 4
  %253 = and i8 %252, -8
  %or101571 = or i8 %253, %250
  store i8 %or101571, ptr %min_space_cfg, align 4
  %254 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %250, ptr %val, align 1
  %255 = load i8, ptr %min_space_cfg, align 4
  %conv105 = zext i8 %255 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %conv105) #7
  %256 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i673 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %258 = ptrtoint ptr %write8_async.i673 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write8_async.i673, align 4
  tail call void %259(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %257) #7
  %cfg.i674 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %260 = ptrtoint ptr %cfg.i674 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cfg.i674, align 8
  %write_readback.i675 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %write_readback.i675 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %write_readback.i675, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool.not.i676 = icmp eq i8 %263, 0
  br i1 %tobool.not.i676, label %sw.epilog.sw.epilog366_crit_edge, label %if.then.i679

sw.epilog.sw.epilog366_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i679:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i677 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %264 = ptrtoint ptr %read8_sync.i677 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %read8_sync.i677, align 4
  %call.i678 = tail call zeroext i8 %265(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog366

sw.bb108:                                         ; preds = %entry
  %266 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %val, align 1
  %min_space_cfg112 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %268 = ptrtoint ptr %min_space_cfg112 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %min_space_cfg112, align 4
  %270 = and i8 %269, 7
  %271 = shl i8 %267, 3
  %or119570 = or i8 %270, %271
  store i8 %or119570, ptr %min_space_cfg112, align 4
  %conv122 = zext i8 %or119570 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv122) #7
  %272 = ptrtoint ptr %min_space_cfg112 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %min_space_cfg112, align 4
  %write8_async.i681 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %274 = ptrtoint ptr %write8_async.i681 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write8_async.i681, align 4
  tail call void %275(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %273) #7
  %cfg.i682 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i682 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i682, align 8
  %write_readback.i683 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %write_readback.i683 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %write_readback.i683, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool.not.i684 = icmp eq i8 %279, 0
  br i1 %tobool.not.i684, label %sw.bb108.sw.epilog366_crit_edge, label %if.then.i687

sw.bb108.sw.epilog366_crit_edge:                  ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i687:                                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i685 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %280 = ptrtoint ptr %read8_sync.i685 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %read8_sync.i685, align 4
  %call.i686 = tail call zeroext i8 %281(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog366

sw.bb124:                                         ; preds = %entry
  %282 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %283)
  %cmp126 = icmp ult i8 %283, 4
  br i1 %cmp126, label %if.then128, label %sw.bb124.sw.epilog366_crit_edge

sw.bb124.sw.epilog366_crit_edge:                  ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then128:                                       ; preds = %sw.bb124
  %conv125 = zext i8 %283 to i32
  %shl131 = shl nuw nsw i32 4, %conv125
  %conv132 = trunc i32 %shl131 to i8
  %conv133 = and i32 %shl131, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv133)
  %cmp134.not = icmp eq i32 %conv133, 0
  %spec.store.select = select i1 %cmp134.not, i8 %conv132, i8 15
  %conv147 = zext i8 %spec.store.select to i32
  %shl148 = shl nuw nsw i32 %conv147, 4
  %write8_async.i689 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i690 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i693 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp168 = icmp eq i8 %spec.store.select, 0
  %regtoset_normal.sroa.0.1 = select i1 %cmp168, i8 64, i8 65
  %284 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write8_async.i689, align 4
  tail call void %285(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %regtoset_normal.sroa.0.1) #7
  %286 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %write_readback.i691 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %write_readback.i691, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool.not.i692 = icmp eq i8 %289, 0
  br i1 %tobool.not.i692, label %if.then128.rtl_write_byte.exit696_crit_edge, label %if.then.i695

if.then128.rtl_write_byte.exit696_crit_edge:      ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit696

if.then.i695:                                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %290 = ptrtoint ptr %read8_sync.i693 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %read8_sync.i693, align 4
  %call.i694 = tail call zeroext i8 %291(ptr noundef %1, i32 noundef 1112) #7
  br label %rtl_write_byte.exit696

rtl_write_byte.exit696:                           ; preds = %if.then.i695, %if.then128.rtl_write_byte.exit696_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %spec.store.select)
  %cmp149.1 = icmp ult i8 %spec.store.select, 10
  %292 = trunc i32 %shl148 to i8
  %conv159.1 = or i8 %292, 8
  %regtoset_normal.sroa.8.0 = select i1 %cmp149.1, i8 %conv159.1, i8 -88
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.store.select)
  %cmp168.1 = icmp ult i8 %spec.store.select, 8
  %and174.1 = and i8 %regtoset_normal.sroa.8.0, -16
  %or176.1 = or i8 %and174.1, %spec.store.select
  %regtoset_normal.sroa.8.1 = select i1 %cmp168.1, i8 %or176.1, i8 %regtoset_normal.sroa.8.0
  %293 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %write8_async.i689, align 4
  tail call void %294(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %regtoset_normal.sroa.8.1) #7
  %295 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %296, i32 0, i32 1
  %297 = ptrtoint ptr %write_readback.i691.1 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %write_readback.i691.1, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool.not.i692.1 = icmp eq i8 %298, 0
  br i1 %tobool.not.i692.1, label %rtl_write_byte.exit696.rtl_write_byte.exit696.1_crit_edge, label %if.then.i695.1

rtl_write_byte.exit696.rtl_write_byte.exit696.1_crit_edge: ; preds = %rtl_write_byte.exit696
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit696.1

if.then.i695.1:                                   ; preds = %rtl_write_byte.exit696
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %read8_sync.i693 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read8_sync.i693, align 4
  %call.i694.1 = tail call zeroext i8 %300(ptr noundef %1, i32 noundef 1113) #7
  br label %rtl_write_byte.exit696.1

rtl_write_byte.exit696.1:                         ; preds = %if.then.i695.1, %rtl_write_byte.exit696.rtl_write_byte.exit696.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %spec.store.select)
  %cmp149.2 = icmp ult i8 %spec.store.select, 7
  %301 = trunc i32 %shl148 to i8
  %conv159.2 = or i8 %301, 2
  %regtoset_normal.sroa.13.0 = select i1 %cmp149.2, i8 %conv159.2, i8 114
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.store.select)
  %cmp168.2 = icmp ult i8 %spec.store.select, 2
  %and174.2 = and i8 %regtoset_normal.sroa.13.0, -16
  %or176.2 = or i8 %and174.2, %spec.store.select
  %regtoset_normal.sroa.13.1 = select i1 %cmp168.2, i8 %or176.2, i8 %regtoset_normal.sroa.13.0
  %302 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %write8_async.i689, align 4
  tail call void %303(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %regtoset_normal.sroa.13.1) #7
  %304 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %write_readback.i691.2 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %write_readback.i691.2, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool.not.i692.2 = icmp eq i8 %307, 0
  br i1 %tobool.not.i692.2, label %rtl_write_byte.exit696.1.rtl_write_byte.exit696.2_crit_edge, label %if.then.i695.2

rtl_write_byte.exit696.1.rtl_write_byte.exit696.2_crit_edge: ; preds = %rtl_write_byte.exit696.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit696.2

if.then.i695.2:                                   ; preds = %rtl_write_byte.exit696.1
  call void @__sanitizer_cov_trace_pc() #9
  %308 = ptrtoint ptr %read8_sync.i693 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %read8_sync.i693, align 4
  %call.i694.2 = tail call zeroext i8 %309(ptr noundef %1, i32 noundef 1114) #7
  br label %rtl_write_byte.exit696.2

rtl_write_byte.exit696.2:                         ; preds = %if.then.i695.2, %rtl_write_byte.exit696.1.rtl_write_byte.exit696.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %spec.store.select)
  %cmp149.3 = icmp ult i8 %spec.store.select, 11
  %310 = trunc i32 %shl148 to i8
  %conv159.3 = or i8 %310, 9
  %regtoset_normal.sroa.18.0 = select i1 %cmp149.3, i8 %conv159.3, i8 -71
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %spec.store.select)
  %cmp168.3 = icmp ult i8 %spec.store.select, 9
  %and174.3 = and i8 %regtoset_normal.sroa.18.0, -16
  %or176.3 = or i8 %and174.3, %spec.store.select
  %regtoset_normal.sroa.18.1 = select i1 %cmp168.3, i8 %or176.3, i8 %regtoset_normal.sroa.18.0
  %311 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %write8_async.i689, align 4
  tail call void %312(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %regtoset_normal.sroa.18.1) #7
  %313 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %write_readback.i691.3 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %write_readback.i691.3, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.not.i692.3 = icmp eq i8 %316, 0
  br i1 %tobool.not.i692.3, label %rtl_write_byte.exit696.2.rtl_write_byte.exit696.3_crit_edge, label %if.then.i695.3

rtl_write_byte.exit696.2.rtl_write_byte.exit696.3_crit_edge: ; preds = %rtl_write_byte.exit696.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit696.3

if.then.i695.3:                                   ; preds = %rtl_write_byte.exit696.2
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %read8_sync.i693 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %read8_sync.i693, align 4
  %call.i694.3 = tail call zeroext i8 %318(ptr noundef %1, i32 noundef 1115) #7
  br label %rtl_write_byte.exit696.3

rtl_write_byte.exit696.3:                         ; preds = %if.then.i695.3, %rtl_write_byte.exit696.2.rtl_write_byte.exit696.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv147) #7
  br label %sw.epilog366

sw.bb190:                                         ; preds = %entry
  %319 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %val, align 1
  %idxprom192 = zext i8 %320 to i32
  %arrayidx193 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 %idxprom192
  %321 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %arrayidx193, align 2
  %cw_max198 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 %idxprom192, i32 1
  %323 = ptrtoint ptr %cw_max198 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %cw_max198, align 2
  %tx_op202 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 %idxprom192, i32 4
  %325 = ptrtoint ptr %tx_op202 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %tx_op202, align 2
  %327 = tail call i16 @llvm.bswap.i16(i16 %326)
  %aifs = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 %idxprom192, i32 2
  %328 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %aifs, align 2
  %conv206 = zext i8 %329 to i32
  %330 = and i16 %322, 3840
  %shl209 = zext i16 %330 to i32
  %or210 = or i32 %conv206, %shl209
  %331 = shl i16 %324, 4
  %332 = and i16 %331, -4096
  %shl213 = zext i16 %332 to i32
  %or214 = or i32 %or210, %shl213
  %conv215 = zext i16 %327 to i32
  %shl216 = shl nuw i32 %conv215, 16
  %or217 = or i32 %or214, %shl216
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %idxprom192, i32 noundef %or217) #7
  %333 = zext i8 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %320, label %land.end [
    i8 1, label %sw.bb220
    i8 0, label %sw.bb221
    i8 2, label %sw.bb222
    i8 3, label %sw.bb223
  ]

sw.bb220:                                         ; preds = %sw.bb190
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %334 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %write32_async.i, align 4
  tail call void %335(ptr noundef %1, i32 noundef 1292, i32 noundef %or217) #7
  %cfg.i697 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %336 = ptrtoint ptr %cfg.i697 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %cfg.i697, align 8
  %write_readback.i698 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %write_readback.i698 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %write_readback.i698, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool.not.i699 = icmp eq i8 %339, 0
  br i1 %tobool.not.i699, label %sw.bb220.sw.epilog366_crit_edge, label %if.then.i701

sw.bb220.sw.epilog366_crit_edge:                  ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i701:                                     ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %340 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %read32_sync.i, align 4
  %call.i700 = tail call i32 %341(ptr noundef %1, i32 noundef 1292) #7
  br label %sw.epilog366

sw.bb221:                                         ; preds = %sw.bb190
  %write32_async.i702 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %342 = ptrtoint ptr %write32_async.i702 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %write32_async.i702, align 4
  tail call void %343(ptr noundef %1, i32 noundef 1288, i32 noundef %or217) #7
  %cfg.i703 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %344 = ptrtoint ptr %cfg.i703 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cfg.i703, align 8
  %write_readback.i704 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %345, i32 0, i32 1
  %346 = ptrtoint ptr %write_readback.i704 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %write_readback.i704, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool.not.i705 = icmp eq i8 %347, 0
  br i1 %tobool.not.i705, label %sw.bb221.sw.epilog366_crit_edge, label %if.then.i708

sw.bb221.sw.epilog366_crit_edge:                  ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i708:                                     ; preds = %sw.bb221
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i706 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %348 = ptrtoint ptr %read32_sync.i706 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %read32_sync.i706, align 4
  %call.i707 = tail call i32 %349(ptr noundef %1, i32 noundef 1288) #7
  br label %sw.epilog366

sw.bb222:                                         ; preds = %sw.bb190
  %write32_async.i710 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %350 = ptrtoint ptr %write32_async.i710 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %write32_async.i710, align 4
  tail call void %351(ptr noundef %1, i32 noundef 1284, i32 noundef %or217) #7
  %cfg.i711 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %352 = ptrtoint ptr %cfg.i711 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %cfg.i711, align 8
  %write_readback.i712 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %write_readback.i712 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %write_readback.i712, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool.not.i713 = icmp eq i8 %355, 0
  br i1 %tobool.not.i713, label %sw.bb222.sw.epilog366_crit_edge, label %if.then.i716

sw.bb222.sw.epilog366_crit_edge:                  ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i716:                                     ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i714 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %356 = ptrtoint ptr %read32_sync.i714 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %read32_sync.i714, align 4
  %call.i715 = tail call i32 %357(ptr noundef %1, i32 noundef 1284) #7
  br label %sw.epilog366

sw.bb223:                                         ; preds = %sw.bb190
  %write32_async.i718 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %358 = ptrtoint ptr %write32_async.i718 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %write32_async.i718, align 4
  tail call void %359(ptr noundef %1, i32 noundef 1280, i32 noundef %or217) #7
  %cfg.i719 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %360 = ptrtoint ptr %cfg.i719 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %cfg.i719, align 8
  %write_readback.i720 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %write_readback.i720 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %write_readback.i720, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool.not.i721 = icmp eq i8 %363, 0
  br i1 %tobool.not.i721, label %sw.bb223.sw.epilog366_crit_edge, label %if.then.i724

sw.bb223.sw.epilog366_crit_edge:                  ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i724:                                     ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i722 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %364 = ptrtoint ptr %read32_sync.i722 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %read32_sync.i722, align 4
  %call.i723 = tail call i32 %365(ptr noundef %1, i32 noundef 1280) #7
  br label %sw.epilog366

land.end:                                         ; preds = %sw.bb190
  %.b569 = load i1, ptr @rtl92cu_set_hw_reg.__already_done, align 1
  br i1 %.b569, label %land.end.sw.epilog366_crit_edge, label %if.then231, !prof !185

land.end.sw.epilog366_crit_edge:                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then231:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl92cu_set_hw_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1766, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %idxprom192) #7
  br label %sw.epilog366

sw.bb263:                                         ; preds = %entry
  %366 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %val, align 4
  %write32_async.i726 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %368 = ptrtoint ptr %write32_async.i726 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %write32_async.i726, align 4
  tail call void %369(ptr noundef %1, i32 noundef 1544, i32 noundef %367) #7
  %cfg.i727 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %370 = ptrtoint ptr %cfg.i727 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cfg.i727, align 8
  %write_readback.i728 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %write_readback.i728 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %write_readback.i728, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %373)
  %tobool.not.i729 = icmp eq i8 %373, 0
  br i1 %tobool.not.i729, label %sw.bb263.rtl_write_dword.exit733_crit_edge, label %if.then.i732

sw.bb263.rtl_write_dword.exit733_crit_edge:       ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit733

if.then.i732:                                     ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i730 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %374 = ptrtoint ptr %read32_sync.i730 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %read32_sync.i730, align 4
  %call.i731 = tail call i32 %375(ptr noundef %1, i32 noundef 1544) #7
  br label %rtl_write_dword.exit733

rtl_write_dword.exit733:                          ; preds = %if.then.i732, %sw.bb263.rtl_write_dword.exit733_crit_edge
  %376 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %val, align 4
  %rx_conf = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 16
  %378 = ptrtoint ptr %rx_conf to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %rx_conf, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %377) #7
  br label %sw.epilog366

sw.bb267:                                         ; preds = %entry
  %379 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %val, align 1
  %conv269 = zext i8 %380 to i32
  %shl270 = shl nuw nsw i32 %conv269, 8
  %or273 = or i32 %shl270, %conv269
  %conv274 = trunc i32 %or273 to i16
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %381 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write16_async.i, align 4
  tail call void %382(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv274) #7
  %cfg.i734 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %383 = ptrtoint ptr %cfg.i734 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cfg.i734, align 8
  %write_readback.i735 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %write_readback.i735 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %write_readback.i735, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i736 = icmp eq i8 %386, 0
  br i1 %tobool.not.i736, label %sw.bb267.rtl_write_word.exit_crit_edge, label %if.then.i738

sw.bb267.rtl_write_word.exit_crit_edge:           ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i738:                                     ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %387 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %read16_sync.i, align 4
  %call.i737 = tail call zeroext i16 %388(ptr noundef %1, i32 noundef 1066) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i738, %sw.bb267.rtl_write_word.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %conv269) #7
  br label %sw.epilog366

sw.bb276:                                         ; preds = %entry
  %write8_async.i739 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %389 = ptrtoint ptr %write8_async.i739 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %write8_async.i739, align 4
  tail call void %390(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #7
  %cfg.i740 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %391 = ptrtoint ptr %cfg.i740 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %cfg.i740, align 8
  %write_readback.i741 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %392, i32 0, i32 1
  %393 = ptrtoint ptr %write_readback.i741 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %write_readback.i741, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool.not.i742 = icmp eq i8 %394, 0
  br i1 %tobool.not.i742, label %sw.bb276.sw.epilog366_crit_edge, label %if.then.i745

sw.bb276.sw.epilog366_crit_edge:                  ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i745:                                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i743 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %395 = ptrtoint ptr %read8_sync.i743 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %read8_sync.i743, align 4
  %call.i744 = tail call zeroext i8 %396(ptr noundef %1, i32 noundef 1363) #7
  br label %sw.epilog366

sw.bb277:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %397 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %399 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %398, ptr %efuse_usedbytes, align 4
  br label %sw.epilog366

sw.bb278:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %402 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %401, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog366

sw.bb279:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %403 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %val, align 4
  %call = tail call zeroext i1 @rtl92c_phy_set_io_cmd(ptr noundef %hw, i32 noundef %404) #7
  br label %sw.epilog366

sw.bb280:                                         ; preds = %entry
  %405 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %val, align 1
  %write8_async.i747 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %407 = ptrtoint ptr %write8_async.i747 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write8_async.i747, align 4
  tail call void %408(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %406) #7
  %cfg.i748 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %409 = ptrtoint ptr %cfg.i748 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %cfg.i748, align 8
  %write_readback.i749 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %410, i32 0, i32 1
  %411 = ptrtoint ptr %write_readback.i749 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %write_readback.i749, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool.not.i750 = icmp eq i8 %412, 0
  br i1 %tobool.not.i750, label %sw.bb280.sw.epilog366_crit_edge, label %if.then.i753

sw.bb280.sw.epilog366_crit_edge:                  ; preds = %sw.bb280
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i753:                                     ; preds = %sw.bb280
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i751 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %413 = ptrtoint ptr %read8_sync.i751 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %read8_sync.i751, align 4
  %call.i752 = tail call zeroext i8 %414(ptr noundef %1, i32 noundef 1664) #7
  br label %sw.epilog366

sw.bb281:                                         ; preds = %entry
  %read8_sync.i755 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %415 = ptrtoint ptr %read8_sync.i755 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %read8_sync.i755, align 4
  %call.i756 = tail call zeroext i8 %416(ptr noundef %1, i32 noundef 65112) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i756)
  %tobool285.not = icmp sgt i8 %call.i756, -1
  %417 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %val, align 1
  br i1 %tobool285.not, label %if.else287, label %if.then286

if.then286:                                       ; preds = %sw.bb281
  %write8_async.i757 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %419 = ptrtoint ptr %write8_async.i757 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %write8_async.i757, align 4
  tail call void %420(ptr noundef %1, i32 noundef 65112, i8 noundef zeroext %418) #7
  %cfg.i758 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %421 = ptrtoint ptr %cfg.i758 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cfg.i758, align 8
  %write_readback.i759 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %write_readback.i759 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %write_readback.i759, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %tobool.not.i760 = icmp eq i8 %424, 0
  br i1 %tobool.not.i760, label %if.then286.sw.epilog366_crit_edge, label %if.then.i763

if.then286.sw.epilog366_crit_edge:                ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i763:                                     ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #9
  %425 = ptrtoint ptr %read8_sync.i755 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %read8_sync.i755, align 4
  %call.i762 = tail call zeroext i8 %426(ptr noundef %1, i32 noundef 65112) #7
  br label %sw.epilog366

if.else287:                                       ; preds = %sw.bb281
  %427 = or i8 %418, -128
  %write8_async.i765 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %428 = ptrtoint ptr %write8_async.i765 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %write8_async.i765, align 4
  tail call void %429(ptr noundef %1, i32 noundef 65112, i8 noundef zeroext %427) #7
  %cfg.i766 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %430 = ptrtoint ptr %cfg.i766 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %cfg.i766, align 8
  %write_readback.i767 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %write_readback.i767 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %write_readback.i767, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool.not.i768 = icmp eq i8 %433, 0
  br i1 %tobool.not.i768, label %if.else287.sw.epilog366_crit_edge, label %if.then.i771

if.else287.sw.epilog366_crit_edge:                ; preds = %if.else287
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i771:                                     ; preds = %if.else287
  call void @__sanitizer_cov_trace_pc() #9
  %434 = ptrtoint ptr %read8_sync.i755 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %read8_sync.i755, align 4
  %call.i770 = tail call zeroext i8 %435(ptr noundef %1, i32 noundef 65112) #7
  br label %sw.epilog366

sw.bb292:                                         ; preds = %entry
  %436 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %cmp294.not = icmp eq i8 %437, 0
  br i1 %cmp294.not, label %sw.bb292.if.end302_crit_edge, label %land.lhs.true

sw.bb292.if.end302_crit_edge:                     ; preds = %sw.bb292
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

land.lhs.true:                                    ; preds = %sw.bb292
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %438 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %version, align 4
  %and296 = and i32 %439, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and296)
  %cmp297 = icmp eq i32 %and296, 1
  br i1 %cmp297, label %land.lhs.true.if.end302_crit_edge, label %if.then301

land.lhs.true.if.end302_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

if.then301:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92c_dm_rf_saving(ptr noundef %hw, i8 noundef zeroext 1) #7
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %land.lhs.true.if.end302_crit_edge, %sw.bb292.if.end302_crit_edge
  %440 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %val, align 1
  tail call void @rtl92c_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %441) #7
  br label %sw.epilog366

sw.bb303:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %442 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %val, align 1, !range !178
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %444 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog366

sw.bb305:                                         ; preds = %entry
  %445 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %446)
  %cmp307 = icmp eq i8 %446, 1
  br i1 %cmp307, label %if.then309, label %sw.bb305.if.end328_crit_edge

sw.bb305.if.end328_crit_edge:                     ; preds = %sw.bb305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

if.then309:                                       ; preds = %sw.bb305
  %cfg310 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %447 = ptrtoint ptr %cfg310 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %cfg310, align 8
  %ops311 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %448, i32 0, i32 4
  %449 = ptrtoint ptr %ops311 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %ops311, align 4
  %set_hw_reg312 = getelementptr inbounds %struct.rtl_hal_ops, ptr %450, i32 0, i32 20
  %451 = ptrtoint ptr %set_hw_reg312 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %set_hw_reg312, align 4
  tail call void %452(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #7
  %write8_async.i773 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %453 = ptrtoint ptr %write8_async.i773 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %write8_async.i773, align 4
  tail call void %454(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 3) #7
  %455 = ptrtoint ptr %cfg310 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %cfg310, align 8
  %write_readback.i775 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %456, i32 0, i32 1
  %457 = ptrtoint ptr %write_readback.i775 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %write_readback.i775, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %458)
  %tobool.not.i776 = icmp eq i8 %458, 0
  br i1 %tobool.not.i776, label %if.then309.rtl_write_byte.exit780_crit_edge, label %if.then.i779

if.then309.rtl_write_byte.exit780_crit_edge:      ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit780

if.then.i779:                                     ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i777 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %459 = ptrtoint ptr %read8_sync.i777 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %read8_sync.i777, align 4
  %call.i778 = tail call zeroext i8 %460(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit780

rtl_write_byte.exit780:                           ; preds = %if.then.i779, %if.then309.rtl_write_byte.exit780_crit_edge
  %461 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %462, i32 1, i32 7, i32 0, i32 1, i32 1
  %463 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %464, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %462, i32 0, i32 13, i32 5
  %465 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %466(ptr noundef %462, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %462, i32 0, i32 32
  %467 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %write_readback.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %470)
  %tobool.not.i.i = icmp eq i8 %470, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit780._rtl92cu_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit780._rtl92cu_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit780
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit780
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %462, i32 0, i32 13, i32 9
  %471 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %472(ptr noundef %462, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit

_rtl92cu_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i, %rtl_write_byte.exit780._rtl92cu_set_bcn_ctrl_reg.exit_crit_edge
  %473 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i782 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 1, i32 7, i32 0, i32 1, i32 1
  %475 = ptrtoint ptr %reg_bcn_ctrl_val.i782 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %reg_bcn_ctrl_val.i782, align 4
  %or.i = or i32 %476, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i782, align 4
  %conv6.i783 = trunc i32 %or.i to i8
  %write8_async.i.i784 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 13, i32 5
  %477 = ptrtoint ptr %write8_async.i.i784 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %write8_async.i.i784, align 4
  tail call void %478(ptr noundef %474, i32 noundef 1360, i8 noundef zeroext %conv6.i783) #7
  %cfg.i.i785 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 32
  %479 = ptrtoint ptr %cfg.i.i785 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %cfg.i.i785, align 8
  %write_readback.i.i786 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %480, i32 0, i32 1
  %481 = ptrtoint ptr %write_readback.i.i786 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %write_readback.i.i786, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %482)
  %tobool.not.i.i787 = icmp eq i8 %482, 0
  br i1 %tobool.not.i.i787, label %_rtl92cu_set_bcn_ctrl_reg.exit._rtl92cu_set_bcn_ctrl_reg.exit791_crit_edge, label %if.then.i.i790

_rtl92cu_set_bcn_ctrl_reg.exit._rtl92cu_set_bcn_ctrl_reg.exit791_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit791

if.then.i.i790:                                   ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i788 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 13, i32 9
  %483 = ptrtoint ptr %read8_sync.i.i788 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %read8_sync.i.i788, align 4
  %call.i.i789 = tail call zeroext i8 %484(ptr noundef %474, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit791

_rtl92cu_set_bcn_ctrl_reg.exit791:                ; preds = %if.then.i.i790, %_rtl92cu_set_bcn_ctrl_reg.exit._rtl92cu_set_bcn_ctrl_reg.exit791_crit_edge
  %read8_sync.i792 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %485 = ptrtoint ptr %read8_sync.i792 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %read8_sync.i792, align 4
  %call.i793 = tail call zeroext i8 %486(ptr noundef %1, i32 noundef 1058) #7
  %487 = and i8 %call.i793, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %tobool316.not = icmp eq i8 %487, 0
  %and320 = and i8 %call.i793, -65
  %488 = ptrtoint ptr %write8_async.i773 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %write8_async.i773, align 4
  tail call void %489(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and320) #7
  %490 = ptrtoint ptr %cfg310 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %cfg310, align 8
  %write_readback.i796 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %write_readback.i796 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %write_readback.i796, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool.not.i797 = icmp eq i8 %493, 0
  br i1 %tobool.not.i797, label %_rtl92cu_set_bcn_ctrl_reg.exit791.rtl_write_byte.exit801_crit_edge, label %if.then.i800

_rtl92cu_set_bcn_ctrl_reg.exit791.rtl_write_byte.exit801_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit791
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit801

if.then.i800:                                     ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit791
  call void @__sanitizer_cov_trace_pc() #9
  %494 = ptrtoint ptr %read8_sync.i792 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %read8_sync.i792, align 4
  %call.i799 = tail call zeroext i8 %495(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit801

rtl_write_byte.exit801:                           ; preds = %if.then.i800, %_rtl92cu_set_bcn_ctrl_reg.exit791.rtl_write_byte.exit801_crit_edge
  tail call void @rtl92c_set_fw_rsvdpagepkt(ptr noundef %hw, ptr noundef nonnull @usb_cmd_send_packet) #7
  %496 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i803 = getelementptr inbounds %struct.rtl_priv, ptr %497, i32 1, i32 7, i32 0, i32 1, i32 1
  %498 = ptrtoint ptr %reg_bcn_ctrl_val.i803 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %reg_bcn_ctrl_val.i803, align 4
  %or.i804 = or i32 %499, 8
  store i32 %or.i804, ptr %reg_bcn_ctrl_val.i803, align 4
  %conv6.i805 = trunc i32 %or.i804 to i8
  %write8_async.i.i806 = getelementptr inbounds %struct.rtl_priv, ptr %497, i32 0, i32 13, i32 5
  %500 = ptrtoint ptr %write8_async.i.i806 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %write8_async.i.i806, align 4
  tail call void %501(ptr noundef %497, i32 noundef 1360, i8 noundef zeroext %conv6.i805) #7
  %cfg.i.i807 = getelementptr inbounds %struct.rtl_priv, ptr %497, i32 0, i32 32
  %502 = ptrtoint ptr %cfg.i.i807 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cfg.i.i807, align 8
  %write_readback.i.i808 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %503, i32 0, i32 1
  %504 = ptrtoint ptr %write_readback.i.i808 to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %write_readback.i.i808, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool.not.i.i809 = icmp eq i8 %505, 0
  br i1 %tobool.not.i.i809, label %rtl_write_byte.exit801._rtl92cu_set_bcn_ctrl_reg.exit813_crit_edge, label %if.then.i.i812

rtl_write_byte.exit801._rtl92cu_set_bcn_ctrl_reg.exit813_crit_edge: ; preds = %rtl_write_byte.exit801
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit813

if.then.i.i812:                                   ; preds = %rtl_write_byte.exit801
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i810 = getelementptr inbounds %struct.rtl_priv, ptr %497, i32 0, i32 13, i32 9
  %506 = ptrtoint ptr %read8_sync.i.i810 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %read8_sync.i.i810, align 4
  %call.i.i811 = tail call zeroext i8 %507(ptr noundef %497, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit813

_rtl92cu_set_bcn_ctrl_reg.exit813:                ; preds = %if.then.i.i812, %rtl_write_byte.exit801._rtl92cu_set_bcn_ctrl_reg.exit813_crit_edge
  %508 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i815 = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 1, i32 7, i32 0, i32 1, i32 1
  %510 = ptrtoint ptr %reg_bcn_ctrl_val.i815 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %reg_bcn_ctrl_val.i815, align 4
  %and.i816 = and i32 %511, -17
  store i32 %and.i816, ptr %reg_bcn_ctrl_val.i815, align 4
  %conv6.i817 = trunc i32 %and.i816 to i8
  %write8_async.i.i818 = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 13, i32 5
  %512 = ptrtoint ptr %write8_async.i.i818 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %write8_async.i.i818, align 4
  tail call void %513(ptr noundef %509, i32 noundef 1360, i8 noundef zeroext %conv6.i817) #7
  %cfg.i.i819 = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 32
  %514 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i.i820 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %515, i32 0, i32 1
  %516 = ptrtoint ptr %write_readback.i.i820 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %write_readback.i.i820, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool.not.i.i821 = icmp eq i8 %517, 0
  br i1 %tobool.not.i.i821, label %_rtl92cu_set_bcn_ctrl_reg.exit813._rtl92cu_set_bcn_ctrl_reg.exit825_crit_edge, label %if.then.i.i824

_rtl92cu_set_bcn_ctrl_reg.exit813._rtl92cu_set_bcn_ctrl_reg.exit825_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit813
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit825

if.then.i.i824:                                   ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit813
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i822 = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 13, i32 9
  %518 = ptrtoint ptr %read8_sync.i.i822 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %read8_sync.i.i822, align 4
  %call.i.i823 = tail call zeroext i8 %519(ptr noundef %509, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit825

_rtl92cu_set_bcn_ctrl_reg.exit825:                ; preds = %if.then.i.i824, %_rtl92cu_set_bcn_ctrl_reg.exit813._rtl92cu_set_bcn_ctrl_reg.exit825_crit_edge
  br i1 %tobool316.not, label %_rtl92cu_set_bcn_ctrl_reg.exit825.if.end327_crit_edge, label %if.then323

_rtl92cu_set_bcn_ctrl_reg.exit825.if.end327_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit825
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end327

if.then323:                                       ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit825
  %or325 = or i8 %call.i793, 64
  %520 = ptrtoint ptr %write8_async.i773 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %write8_async.i773, align 4
  tail call void %521(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %or325) #7
  %522 = ptrtoint ptr %cfg310 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %cfg310, align 8
  %write_readback.i828 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %523, i32 0, i32 1
  %524 = ptrtoint ptr %write_readback.i828 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %write_readback.i828, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool.not.i829 = icmp eq i8 %525, 0
  br i1 %tobool.not.i829, label %if.then323.if.end327_crit_edge, label %if.then.i832

if.then323.if.end327_crit_edge:                   ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end327

if.then.i832:                                     ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  %526 = ptrtoint ptr %read8_sync.i792 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %read8_sync.i792, align 4
  %call.i831 = tail call zeroext i8 %527(ptr noundef %1, i32 noundef 1058) #7
  br label %if.end327

if.end327:                                        ; preds = %if.then.i832, %if.then323.if.end327_crit_edge, %_rtl92cu_set_bcn_ctrl_reg.exit825.if.end327_crit_edge
  %528 = ptrtoint ptr %write8_async.i773 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write8_async.i773, align 4
  tail call void %529(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 2) #7
  %530 = ptrtoint ptr %cfg310 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %cfg310, align 8
  %write_readback.i836 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %531, i32 0, i32 1
  %532 = ptrtoint ptr %write_readback.i836 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %write_readback.i836, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool.not.i837 = icmp eq i8 %533, 0
  br i1 %tobool.not.i837, label %if.end327.if.end328_crit_edge, label %if.then.i840

if.end327.if.end328_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

if.then.i840:                                     ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  %534 = ptrtoint ptr %read8_sync.i792 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %read8_sync.i792, align 4
  %call.i839 = tail call zeroext i8 %535(ptr noundef %1, i32 noundef 257) #7
  br label %if.end328

if.end328:                                        ; preds = %if.then.i840, %if.end327.if.end328_crit_edge, %sw.bb305.if.end328_crit_edge
  %536 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %val, align 1
  tail call void @rtl92c_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %537) #7
  br label %sw.epilog366

sw.bb329:                                         ; preds = %entry
  %read16_sync.i842 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %538 = ptrtoint ptr %read16_sync.i842 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %read16_sync.i842, align 4
  %call.i843 = tail call zeroext i16 %539(ptr noundef %1, i32 noundef 1704) #7
  %540 = and i16 %call.i843, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %541 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %541)
  %542 = load i16, ptr %assoc_id, align 2
  %or336568 = or i16 %540, %542
  %write16_async.i844 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %543 = ptrtoint ptr %write16_async.i844 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %write16_async.i844, align 4
  tail call void %544(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or336568) #7
  %cfg.i845 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %545 = ptrtoint ptr %cfg.i845 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %cfg.i845, align 8
  %write_readback.i846 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %546, i32 0, i32 1
  %547 = ptrtoint ptr %write_readback.i846 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %write_readback.i846, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %548)
  %tobool.not.i847 = icmp eq i8 %548, 0
  br i1 %tobool.not.i847, label %sw.bb329.sw.epilog366_crit_edge, label %if.then.i850

sw.bb329.sw.epilog366_crit_edge:                  ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i850:                                     ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #9
  %549 = ptrtoint ptr %read16_sync.i842 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %read16_sync.i842, align 4
  %call.i849 = tail call zeroext i16 %550(ptr noundef %1, i32 noundef 1704) #7
  br label %sw.epilog366

sw.bb338:                                         ; preds = %entry
  %551 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %552)
  %tobool340.not = icmp eq i8 %552, 0
  br i1 %tobool340.not, label %if.end351.critedge, label %if.then341

if.then341:                                       ; preds = %sw.bb338
  tail call fastcc void @_rtl92cu_stop_tx_beacon(ptr noundef %hw)
  %553 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i853 = getelementptr inbounds %struct.rtl_priv, ptr %554, i32 1, i32 7, i32 0, i32 1, i32 1
  %555 = ptrtoint ptr %reg_bcn_ctrl_val.i853 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %reg_bcn_ctrl_val.i853, align 4
  %and.i854 = and i32 %556, -9
  store i32 %and.i854, ptr %reg_bcn_ctrl_val.i853, align 4
  %conv6.i855 = trunc i32 %and.i854 to i8
  %write8_async.i.i856 = getelementptr inbounds %struct.rtl_priv, ptr %554, i32 0, i32 13, i32 5
  %557 = ptrtoint ptr %write8_async.i.i856 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %write8_async.i.i856, align 4
  tail call void %558(ptr noundef %554, i32 noundef 1360, i8 noundef zeroext %conv6.i855) #7
  %cfg.i.i857 = getelementptr inbounds %struct.rtl_priv, ptr %554, i32 0, i32 32
  %559 = ptrtoint ptr %cfg.i.i857 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %cfg.i.i857, align 8
  %write_readback.i.i858 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %560, i32 0, i32 1
  %561 = ptrtoint ptr %write_readback.i.i858 to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %write_readback.i.i858, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %tobool.not.i.i859 = icmp eq i8 %562, 0
  br i1 %tobool.not.i.i859, label %if.then341._rtl92cu_set_bcn_ctrl_reg.exit863_crit_edge, label %if.then.i.i862

if.then341._rtl92cu_set_bcn_ctrl_reg.exit863_crit_edge: ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit863

if.then.i.i862:                                   ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i860 = getelementptr inbounds %struct.rtl_priv, ptr %554, i32 0, i32 13, i32 9
  %563 = ptrtoint ptr %read8_sync.i.i860 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %read8_sync.i.i860, align 4
  %call.i.i861 = tail call zeroext i8 %564(ptr noundef %554, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit863

_rtl92cu_set_bcn_ctrl_reg.exit863:                ; preds = %if.then.i.i862, %if.then341._rtl92cu_set_bcn_ctrl_reg.exit863_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %565 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %tsf.c, align 8
  %conv344.c = trunc i64 %566 to i32
  %write32_async.i864 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %567 = ptrtoint ptr %write32_async.i864 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %write32_async.i864, align 4
  tail call void %568(ptr noundef %1, i32 noundef 1376, i32 noundef %conv344.c) #7
  %cfg.i865 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %569 = ptrtoint ptr %cfg.i865 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i865, align 8
  %write_readback.i866 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %write_readback.i866 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %write_readback.i866, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i867 = icmp eq i8 %572, 0
  br i1 %tobool.not.i867, label %_rtl92cu_set_bcn_ctrl_reg.exit863.rtl_write_dword.exit871_crit_edge, label %if.then.i870

_rtl92cu_set_bcn_ctrl_reg.exit863.rtl_write_dword.exit871_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit863
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit871

if.then.i870:                                     ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit863
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i868 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %573 = ptrtoint ptr %read32_sync.i868 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %read32_sync.i868, align 4
  %call.i869 = tail call i32 %574(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit871

rtl_write_dword.exit871:                          ; preds = %if.then.i870, %_rtl92cu_set_bcn_ctrl_reg.exit863.rtl_write_dword.exit871_crit_edge
  %575 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %tsf.c, align 8
  %shr346.c = lshr i64 %576, 32
  %conv348.c = trunc i64 %shr346.c to i32
  %577 = ptrtoint ptr %write32_async.i864 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write32_async.i864, align 4
  tail call void %578(ptr noundef %1, i32 noundef 1380, i32 noundef %conv348.c) #7
  %579 = ptrtoint ptr %cfg.i865 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cfg.i865, align 8
  %write_readback.i874 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %580, i32 0, i32 1
  %581 = ptrtoint ptr %write_readback.i874 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %write_readback.i874, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool.not.i875 = icmp eq i8 %582, 0
  br i1 %tobool.not.i875, label %rtl_write_dword.exit871.rtl_write_dword.exit879_crit_edge, label %if.then.i878

rtl_write_dword.exit871.rtl_write_dword.exit879_crit_edge: ; preds = %rtl_write_dword.exit871
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit879

if.then.i878:                                     ; preds = %rtl_write_dword.exit871
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i876 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %583 = ptrtoint ptr %read32_sync.i876 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %read32_sync.i876, align 4
  %call.i877 = tail call i32 %584(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit879

rtl_write_dword.exit879:                          ; preds = %if.then.i878, %rtl_write_dword.exit871.rtl_write_dword.exit879_crit_edge
  %585 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i881 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 1, i32 7, i32 0, i32 1, i32 1
  %587 = ptrtoint ptr %reg_bcn_ctrl_val.i881 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %reg_bcn_ctrl_val.i881, align 4
  %or.i882 = or i32 %588, 8
  store i32 %or.i882, ptr %reg_bcn_ctrl_val.i881, align 4
  %conv6.i883 = trunc i32 %or.i882 to i8
  %write8_async.i.i884 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 5
  %589 = ptrtoint ptr %write8_async.i.i884 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %write8_async.i.i884, align 4
  tail call void %590(ptr noundef %586, i32 noundef 1360, i8 noundef zeroext %conv6.i883) #7
  %cfg.i.i885 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 32
  %591 = ptrtoint ptr %cfg.i.i885 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %cfg.i.i885, align 8
  %write_readback.i.i886 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %write_readback.i.i886 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %write_readback.i.i886, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool.not.i.i887 = icmp eq i8 %594, 0
  br i1 %tobool.not.i.i887, label %rtl_write_dword.exit879._rtl92cu_set_bcn_ctrl_reg.exit891_crit_edge, label %if.then.i.i890

rtl_write_dword.exit879._rtl92cu_set_bcn_ctrl_reg.exit891_crit_edge: ; preds = %rtl_write_dword.exit879
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit891

if.then.i.i890:                                   ; preds = %rtl_write_dword.exit879
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i888 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 9
  %595 = ptrtoint ptr %read8_sync.i.i888 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %read8_sync.i.i888, align 4
  %call.i.i889 = tail call zeroext i8 %596(ptr noundef %586, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit891

_rtl92cu_set_bcn_ctrl_reg.exit891:                ; preds = %if.then.i.i890, %rtl_write_dword.exit879._rtl92cu_set_bcn_ctrl_reg.exit891_crit_edge
  tail call fastcc void @_rtl92cu_resume_tx_beacon(ptr noundef %hw)
  br label %sw.epilog366

if.end351.critedge:                               ; preds = %sw.bb338
  %reg_bcn_ctrl_val.i893 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 1
  %597 = ptrtoint ptr %reg_bcn_ctrl_val.i893 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %reg_bcn_ctrl_val.i893, align 4
  %and.i894 = and i32 %598, -9
  store i32 %and.i894, ptr %reg_bcn_ctrl_val.i893, align 4
  %conv6.i895 = trunc i32 %and.i894 to i8
  %write8_async.i.i896 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %599 = ptrtoint ptr %write8_async.i.i896 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %write8_async.i.i896, align 4
  tail call void %600(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i895) #7
  %cfg.i.i897 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %601 = ptrtoint ptr %cfg.i.i897 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %cfg.i.i897, align 8
  %write_readback.i.i898 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %602, i32 0, i32 1
  %603 = ptrtoint ptr %write_readback.i.i898 to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %write_readback.i.i898, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %tobool.not.i.i899 = icmp eq i8 %604, 0
  br i1 %tobool.not.i.i899, label %if.end351.critedge._rtl92cu_set_bcn_ctrl_reg.exit903_crit_edge, label %if.then.i.i902

if.end351.critedge._rtl92cu_set_bcn_ctrl_reg.exit903_crit_edge: ; preds = %if.end351.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92cu_set_bcn_ctrl_reg.exit903

if.then.i.i902:                                   ; preds = %if.end351.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i900 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %605 = ptrtoint ptr %read8_sync.i.i900 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %read8_sync.i.i900, align 4
  %call.i.i901 = tail call zeroext i8 %606(ptr noundef %1, i32 noundef 1360) #7
  br label %_rtl92cu_set_bcn_ctrl_reg.exit903

_rtl92cu_set_bcn_ctrl_reg.exit903:                ; preds = %if.then.i.i902, %if.end351.critedge._rtl92cu_set_bcn_ctrl_reg.exit903_crit_edge
  %tsf.c573 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %607 = ptrtoint ptr %tsf.c573 to i32
  call void @__asan_load8_noabort(i32 %607)
  %608 = load i64, ptr %tsf.c573, align 8
  %conv344.c574 = trunc i64 %608 to i32
  %write32_async.i904 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %609 = ptrtoint ptr %write32_async.i904 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %write32_async.i904, align 4
  tail call void %610(ptr noundef %1, i32 noundef 1376, i32 noundef %conv344.c574) #7
  %611 = ptrtoint ptr %cfg.i.i897 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %cfg.i.i897, align 8
  %write_readback.i906 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %612, i32 0, i32 1
  %613 = ptrtoint ptr %write_readback.i906 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %write_readback.i906, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %614)
  %tobool.not.i907 = icmp eq i8 %614, 0
  br i1 %tobool.not.i907, label %_rtl92cu_set_bcn_ctrl_reg.exit903.rtl_write_dword.exit911_crit_edge, label %if.then.i910

_rtl92cu_set_bcn_ctrl_reg.exit903.rtl_write_dword.exit911_crit_edge: ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit903
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit911

if.then.i910:                                     ; preds = %_rtl92cu_set_bcn_ctrl_reg.exit903
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i908 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %615 = ptrtoint ptr %read32_sync.i908 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %read32_sync.i908, align 4
  %call.i909 = tail call i32 %616(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit911

rtl_write_dword.exit911:                          ; preds = %if.then.i910, %_rtl92cu_set_bcn_ctrl_reg.exit903.rtl_write_dword.exit911_crit_edge
  %617 = ptrtoint ptr %tsf.c573 to i32
  call void @__asan_load8_noabort(i32 %617)
  %618 = load i64, ptr %tsf.c573, align 8
  %shr346.c575 = lshr i64 %618, 32
  %conv348.c576 = trunc i64 %shr346.c575 to i32
  %619 = ptrtoint ptr %write32_async.i904 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %write32_async.i904, align 4
  tail call void %620(ptr noundef %1, i32 noundef 1380, i32 noundef %conv348.c576) #7
  %621 = ptrtoint ptr %cfg.i.i897 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %cfg.i.i897, align 8
  %write_readback.i914 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %622, i32 0, i32 1
  %623 = ptrtoint ptr %write_readback.i914 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %write_readback.i914, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %624)
  %tobool.not.i915 = icmp eq i8 %624, 0
  br i1 %tobool.not.i915, label %rtl_write_dword.exit911.rtl_write_dword.exit919_crit_edge, label %if.then.i918

rtl_write_dword.exit911.rtl_write_dword.exit919_crit_edge: ; preds = %rtl_write_dword.exit911
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit919

if.then.i918:                                     ; preds = %rtl_write_dword.exit911
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i916 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %625 = ptrtoint ptr %read32_sync.i916 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %read32_sync.i916, align 4
  %call.i917 = tail call i32 %626(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit919

rtl_write_dword.exit919:                          ; preds = %if.then.i918, %rtl_write_dword.exit911.rtl_write_dword.exit919_crit_edge
  %627 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i921 = getelementptr inbounds %struct.rtl_priv, ptr %628, i32 1, i32 7, i32 0, i32 1, i32 1
  %629 = ptrtoint ptr %reg_bcn_ctrl_val.i921 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %reg_bcn_ctrl_val.i921, align 4
  %or.i922 = or i32 %630, 8
  store i32 %or.i922, ptr %reg_bcn_ctrl_val.i921, align 4
  %conv6.i923 = trunc i32 %or.i922 to i8
  %write8_async.i.i924 = getelementptr inbounds %struct.rtl_priv, ptr %628, i32 0, i32 13, i32 5
  %631 = ptrtoint ptr %write8_async.i.i924 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %write8_async.i.i924, align 4
  tail call void %632(ptr noundef %628, i32 noundef 1360, i8 noundef zeroext %conv6.i923) #7
  %cfg.i.i925 = getelementptr inbounds %struct.rtl_priv, ptr %628, i32 0, i32 32
  %633 = ptrtoint ptr %cfg.i.i925 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %cfg.i.i925, align 8
  %write_readback.i.i926 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %634, i32 0, i32 1
  %635 = ptrtoint ptr %write_readback.i.i926 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %write_readback.i.i926, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %636)
  %tobool.not.i.i927 = icmp eq i8 %636, 0
  br i1 %tobool.not.i.i927, label %rtl_write_dword.exit919.sw.epilog366_crit_edge, label %if.then.i.i930

rtl_write_dword.exit919.sw.epilog366_crit_edge:   ; preds = %rtl_write_dword.exit919
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog366

if.then.i.i930:                                   ; preds = %rtl_write_dword.exit919
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i928 = getelementptr inbounds %struct.rtl_priv, ptr %628, i32 0, i32 13, i32 9
  %637 = ptrtoint ptr %read8_sync.i.i928 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %read8_sync.i.i928, align 4
  %call.i.i929 = tail call zeroext i8 %638(ptr noundef %628, i32 noundef 1360) #7
  br label %sw.epilog366

sw.bb352:                                         ; preds = %entry
  %639 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %639)
  %640 = load i16, ptr %val, align 2
  %write16_async.i932 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %641 = ptrtoint ptr %write16_async.i932 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %write16_async.i932, align 4
  tail call void %642(ptr noundef %1, i32 noundef 1696, i16 noundef zeroext %640) #7
  %cfg.i933 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %643 = ptrtoint ptr %cfg.i933 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %cfg.i933, align 8
  %write_readback.i934 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %644, i32 0, i32 1
  %645 = ptrtoint ptr %write_readback.i934 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %write_readback.i934, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %tobool.not.i935 = icmp eq i8 %646, 0
  br i1 %tobool.not.i935, label %sw.bb352.rtl_write_word.exit939_crit_edge, label %if.then.i938

sw.bb352.rtl_write_word.exit939_crit_edge:        ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit939

if.then.i938:                                     ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i936 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %647 = ptrtoint ptr %read16_sync.i936 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %read16_sync.i936, align 4
  %call.i937 = tail call zeroext i16 %648(ptr noundef %1, i32 noundef 1696) #7
  br label %rtl_write_word.exit939

rtl_write_word.exit939:                           ; preds = %if.then.i938, %sw.bb352.rtl_write_word.exit939_crit_edge
  %649 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %649)
  %650 = load i16, ptr %val, align 2
  %rx_mgt_filter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 17
  %651 = ptrtoint ptr %rx_mgt_filter to i32
  call void @__asan_store2_noabort(i32 %651)
  store i16 %650, ptr %rx_mgt_filter, align 4
  br label %sw.epilog366

sw.bb353:                                         ; preds = %entry
  %652 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %652)
  %653 = load i16, ptr %val, align 2
  %write16_async.i940 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %654 = ptrtoint ptr %write16_async.i940 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %write16_async.i940, align 4
  tail call void %655(ptr noundef %1, i32 noundef 1698, i16 noundef zeroext %653) #7
  %cfg.i941 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %656 = ptrtoint ptr %cfg.i941 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %cfg.i941, align 8
  %write_readback.i942 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %657, i32 0, i32 1
  %658 = ptrtoint ptr %write_readback.i942 to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %write_readback.i942, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %659)
  %tobool.not.i943 = icmp eq i8 %659, 0
  br i1 %tobool.not.i943, label %sw.bb353.rtl_write_word.exit947_crit_edge, label %if.then.i946

sw.bb353.rtl_write_word.exit947_crit_edge:        ; preds = %sw.bb353
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit947

if.then.i946:                                     ; preds = %sw.bb353
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i944 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %660 = ptrtoint ptr %read16_sync.i944 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %read16_sync.i944, align 4
  %call.i945 = tail call zeroext i16 %661(ptr noundef %1, i32 noundef 1698) #7
  br label %rtl_write_word.exit947

rtl_write_word.exit947:                           ; preds = %if.then.i946, %sw.bb353.rtl_write_word.exit947_crit_edge
  %662 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %662)
  %663 = load i16, ptr %val, align 2
  %rx_ctrl_filter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 18
  %664 = ptrtoint ptr %rx_ctrl_filter to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 %663, ptr %rx_ctrl_filter, align 2
  br label %sw.epilog366

sw.bb354:                                         ; preds = %entry
  %665 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %665)
  %666 = load i16, ptr %val, align 2
  %write16_async.i948 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %667 = ptrtoint ptr %write16_async.i948 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %write16_async.i948, align 4
  tail call void %668(ptr noundef %1, i32 noundef 1700, i16 noundef zeroext %666) #7
  %cfg.i949 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %669 = ptrtoint ptr %cfg.i949 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cfg.i949, align 8
  %write_readback.i950 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %670, i32 0, i32 1
  %671 = ptrtoint ptr %write_readback.i950 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %write_readback.i950, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool.not.i951 = icmp eq i8 %672, 0
  br i1 %tobool.not.i951, label %sw.bb354.rtl_write_word.exit955_crit_edge, label %if.then.i954

sw.bb354.rtl_write_word.exit955_crit_edge:        ; preds = %sw.bb354
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit955

if.then.i954:                                     ; preds = %sw.bb354
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i952 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %673 = ptrtoint ptr %read16_sync.i952 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %read16_sync.i952, align 4
  %call.i953 = tail call zeroext i16 %674(ptr noundef %1, i32 noundef 1700) #7
  br label %rtl_write_word.exit955

rtl_write_word.exit955:                           ; preds = %if.then.i954, %sw.bb354.rtl_write_word.exit955_crit_edge
  %675 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %675)
  %676 = load i16, ptr %val, align 2
  %rx_data_filter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 19
  %677 = ptrtoint ptr %rx_data_filter to i32
  call void @__asan_store2_noabort(i32 %677)
  store i16 %676, ptr %rx_data_filter, align 8
  br label %sw.epilog366

sw.bb355:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array) #7
  %678 = getelementptr inbounds [2 x i8], ptr %array, i32 0, i32 1
  %679 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 -1, ptr %array, align 1
  %680 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %val, align 1
  %682 = ptrtoint ptr %678 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 %681, ptr %678, align 1
  call void @rtl92c_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 48, i32 noundef 2, ptr noundef nonnull %array) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array) #7
  br label %sw.epilog366

do.end362:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i8 %variable to i32
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv6) #11
  br label %sw.epilog366

sw.epilog366:                                     ; preds = %do.end362, %sw.bb355, %rtl_write_word.exit955, %rtl_write_word.exit947, %rtl_write_word.exit939, %if.then.i.i930, %rtl_write_dword.exit919.sw.epilog366_crit_edge, %_rtl92cu_set_bcn_ctrl_reg.exit891, %if.then.i850, %sw.bb329.sw.epilog366_crit_edge, %if.end328, %sw.bb303, %if.end302, %if.then.i771, %if.else287.sw.epilog366_crit_edge, %if.then.i763, %if.then286.sw.epilog366_crit_edge, %if.then.i753, %sw.bb280.sw.epilog366_crit_edge, %sw.bb279, %sw.bb278, %sw.bb277, %if.then.i745, %sw.bb276.sw.epilog366_crit_edge, %rtl_write_word.exit, %rtl_write_dword.exit733, %if.then231, %land.end.sw.epilog366_crit_edge, %if.then.i724, %sw.bb223.sw.epilog366_crit_edge, %if.then.i716, %sw.bb222.sw.epilog366_crit_edge, %if.then.i708, %sw.bb221.sw.epilog366_crit_edge, %if.then.i701, %sw.bb220.sw.epilog366_crit_edge, %rtl_write_byte.exit696.3, %sw.bb124.sw.epilog366_crit_edge, %if.then.i687, %sw.bb108.sw.epilog366_crit_edge, %if.then.i679, %sw.epilog.sw.epilog366_crit_edge, %sw.bb85.sw.epilog366_crit_edge, %if.then.i671, %sw.bb76.sw.epilog366_crit_edge, %if.end75, %rtl_write_byte.exit656, %if.then.i607.5, %rtl_write_byte.exit608.4.sw.epilog366_crit_edge, %if.then.i599, %while.end.sw.epilog366_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog366_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_rf_saving(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_rsvdpagepkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @usb_cmd_send_packet(ptr nocapture noundef readnone %hw, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @consume_skb(ptr noundef %skb) #7
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_joinbss_report_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92cu_stop_tx_beacon(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
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
  %read8_sync.i40 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i40, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 1058) #7
  %6 = and i8 %call.i, -65
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %6) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i40, align 4
  %call.i21 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #7
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i24, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i25 = icmp eq i8 %20, 0
  br i1 %tobool.not.i25, label %rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge, label %if.then.i28

rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit29

if.then.i28:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i40, align 4
  %call.i27 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1345) #7
  br label %rtl_write_byte.exit29

rtl_write_byte.exit29:                            ; preds = %if.then.i28, %rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge
  %23 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i40, align 4
  %call.i31 = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 1346) #7
  %25 = and i8 %call.i31, -2
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %25) #7
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i34 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i34, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i35 = icmp eq i8 %31, 0
  br i1 %tobool.not.i35, label %rtl_write_byte.exit29.if.end_crit_edge, label %rtl_write_byte.exit29.if.end.sink.split_crit_edge

rtl_write_byte.exit29.if.end.sink.split_crit_edge: ; preds = %rtl_write_byte.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

rtl_write_byte.exit29.if.end_crit_edge:           ; preds = %rtl_write_byte.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i41 = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 1314) #7
  %32 = or i8 %call.i41, 64
  %write8_async.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %33 = ptrtoint ptr %write8_async.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i42, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext %32) #7
  %cfg.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i43, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i44, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i45 = icmp eq i8 %38, 0
  br i1 %tobool.not.i45, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %rtl_write_byte.exit29.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 1346, %rtl_write_byte.exit29.if.end.sink.split_crit_edge ], [ 1314, %if.else.if.end.sink.split_crit_edge ]
  %39 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i40, align 4
  %call.i47 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %rtl_write_byte.exit29.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92cu_resume_tx_beacon(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
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
  %read8_sync.i40 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i40, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 1058) #7
  %6 = or i8 %call.i, 64
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %6) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i40, align 4
  %call.i21 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext -1) #7
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i24, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i25 = icmp eq i8 %20, 0
  br i1 %tobool.not.i25, label %rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge, label %if.then.i28

rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit29

if.then.i28:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i40, align 4
  %call.i27 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1345) #7
  br label %rtl_write_byte.exit29

rtl_write_byte.exit29:                            ; preds = %if.then.i28, %rtl_write_byte.exit.rtl_write_byte.exit29_crit_edge
  %23 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i40, align 4
  %call.i31 = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 1346) #7
  %25 = or i8 %call.i31, 1
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %25) #7
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i34 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i34, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i35 = icmp eq i8 %31, 0
  br i1 %tobool.not.i35, label %rtl_write_byte.exit29.if.end_crit_edge, label %rtl_write_byte.exit29.if.end.sink.split_crit_edge

rtl_write_byte.exit29.if.end.sink.split_crit_edge: ; preds = %rtl_write_byte.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

rtl_write_byte.exit29.if.end_crit_edge:           ; preds = %rtl_write_byte.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i41 = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 1314) #7
  %32 = and i8 %call.i41, -65
  %write8_async.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %33 = ptrtoint ptr %write8_async.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i42, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext %32) #7
  %cfg.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i43, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i44, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i45 = icmp eq i8 %38, 0
  br i1 %tobool.not.i45, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %rtl_write_byte.exit29.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 1346, %rtl_write_byte.exit29.if.end.sink.split_crit_edge ], [ 1314, %if.else.if.end.sink.split_crit_edge ]
  %39 = ptrtoint ptr %read8_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i40, align 4
  %call.i47 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %rtl_write_byte.exit29.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_update_hal_rate_tbl(ptr nocapture noundef readonly %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %rate_mask.i = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %4 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp ne i32 %5, 0
  %conv.i = zext i1 %cmp.not.i to i8
  br i1 %cmp.not.i, label %land.rhs.i, label %if.then.land.end.i_crit_edge

if.then.land.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %6 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ht_cap.i, align 4
  %8 = lshr i16 %7, 6
  %9 = and i16 %8, 1
  %and.lobit.i = zext i16 %9 to i32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then.land.end.i_crit_edge
  %10 = phi i32 [ 0, %if.then.land.end.i_crit_edge ], [ %and.lobit.i, %land.rhs.i ]
  %ht_cap9.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %11 = ptrtoint ptr %ht_cap9.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ht_cap9.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rate_mask.i) #7
  %13 = getelementptr inbounds [5 x i8], ptr %rate_mask.i, i32 0, i32 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %14 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %16 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opmode.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %17, label %land.end.i.if.end32.i_crit_edge [
    i32 2, label %land.end.i.if.then.i_crit_edge
    i32 7, label %land.end.i.if.then.i_crit_edge20
    i32 3, label %land.end.i.if.then29.i_crit_edge
    i32 1, label %land.end.i.if.then29.i_crit_edge21
  ]

land.end.i.if.then29.i_crit_edge21:               ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

land.end.i.if.then29.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

land.end.i.if.then.i_crit_edge20:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.end.i.if.then.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.end.i.if.end32.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i:                                        ; preds = %land.end.i.if.then.i_crit_edge, %land.end.i.if.then.i_crit_edge20
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %19 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bw_40.i, align 1
  br label %if.end32.i

if.then29.i:                                      ; preds = %land.end.i.if.then29.i_crit_edge, %land.end.i.if.then29.i_crit_edge21
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %21 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aid.i, align 2
  %23 = add i16 %22, 1
  %24 = and i16 %23, 255
  %phi.cast.i = zext i16 %24 to i32
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then.i, %land.end.i.if.end32.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %20, %if.then.i ], [ %conv.i, %if.then29.i ], [ %conv.i, %land.end.i.if.end32.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then29.i ], [ 0, %land.end.i.if.end32.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %25 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp33.i = icmp eq i32 %26, 1
  br i1 %cmp33.i, label %if.then35.i, label %if.else36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %28, 4
  br label %if.end39.i

if.else36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sta, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else36.i, %if.then35.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then35.i ], [ %30, %if.else36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp41.i = icmp eq i32 %17, 1
  %spec.select.i = select i1 %cmp41.i, i32 4095, i32 %ratr_bitmap.0.i
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx46.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %32 to i32
  %shl48.i = shl nuw nsw i32 %conv47.i, 20
  %33 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mcs.i, align 1
  %conv53.i = zext i8 %34 to i32
  %shl54.i = shl nuw nsw i32 %conv53.i, 12
  %or.i = or i32 %shl48.i, %spec.select.i
  %or55.i = or i32 %or.i, %shl54.i
  %35 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %15, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb63.i
    i16 1, label %sw.bb79.i
    i16 16, label %if.end39.i.if.else101.i_crit_edge
    i16 32, label %if.end39.i.if.else101.i_crit_edge22
  ]

if.end39.i.if.else101.i_crit_edge22:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else101.i

if.end39.i.if.else101.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else101.i

sw.bb.i:                                          ; preds = %if.end39.i
  %and56.i = and i32 %spec.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.else60.i, label %if.then58.i

if.then58.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and59.i = and i32 %spec.select.i, 13
  br label %sw.epilog.i

if.else60.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and61.i = and i32 %spec.select.i, 15
  br label %sw.epilog.i

sw.bb63.i:                                        ; preds = %if.end39.i
  %36 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %rssi_level, label %if.else75.i [
    i8 1, label %if.then67.i
    i8 2, label %if.then73.i
  ]

if.then67.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #9
  %and68.i = and i32 %spec.select.i, 3840
  br label %sw.epilog.i

if.then73.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #9
  %and74.i = and i32 %spec.select.i, 4080
  br label %sw.epilog.i

if.else75.i:                                      ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #9
  %and76.i = and i32 %spec.select.i, 4085
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %and80.i = and i32 %spec.select.i, 4080
  br label %sw.epilog.i

if.else101.i:                                     ; preds = %if.end39.i.if.else101.i_crit_edge, %if.end39.i.if.else101.i_crit_edge22
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %switch.i = icmp ult i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool111.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp16.i = icmp eq i8 %rssi_level, 2
  br i1 %switch.i, label %if.then110.i, label %if.else145.i

if.then110.i:                                     ; preds = %if.else101.i
  br i1 %tobool111.not.i, label %if.else128.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select.i = select i1 %switch.selectcmp16.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp14.i = icmp eq i8 %rssi_level, 1
  %switch.select15.i = select i1 %switch.selectcmp14.i, i32 983040, i32 %switch.select.i
  br label %if.end181.i

if.else128.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp18.i = icmp eq i8 %rssi_level, 1
  %switch.select19.i = select i1 %switch.selectcmp18.i, i32 983040, i32 %switch.select17.i
  br label %lor.lhs.false186.i

if.else145.i:                                     ; preds = %if.else101.i
  br i1 %tobool111.not.i, label %if.else163.i, label %if.then147.i

if.then147.i:                                     ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select21.i = select i1 %switch.selectcmp16.i, i32 252702720, i32 252702741
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp22.i = icmp eq i8 %rssi_level, 1
  %switch.select23.i = select i1 %switch.selectcmp22.i, i32 252641280, i32 %switch.select21.i
  br label %if.end181.i

if.else163.i:                                     ; preds = %if.else145.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select25.i = select i1 %switch.selectcmp16.i, i32 252702720, i32 252702725
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp26.i = icmp eq i8 %rssi_level, 1
  %switch.select27.i = select i1 %switch.selectcmp26.i, i32 252641280, i32 %switch.select25.i
  br label %lor.lhs.false186.i

if.end181.i:                                      ; preds = %if.then147.i, %if.then112.i
  %.sink.i = phi i32 [ %switch.select15.i, %if.then112.i ], [ %switch.select23.i, %if.then147.i ]
  %and117.i = and i32 %.sink.i, %or55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool185.not.i = icmp eq i32 %10, 0
  br i1 %tobool185.not.i, label %if.end181.i.sw.epilog.i_crit_edge, label %if.end181.i.if.then191.i_crit_edge

if.end181.i.if.then191.i_crit_edge:               ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.i

if.end181.i.sw.epilog.i_crit_edge:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

lor.lhs.false186.i:                               ; preds = %if.else163.i, %if.else128.i
  %.sink13.i = phi i32 [ %switch.select19.i, %if.else128.i ], [ %switch.select27.i, %if.else163.i ]
  %and133.i = and i32 %.sink13.i, %or55.i
  %39 = and i16 %12, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool190.not.i = icmp eq i16 %39, 0
  br i1 %tobool190.not.i, label %lor.lhs.false186.i.sw.epilog.i_crit_edge, label %lor.lhs.false186.i.if.then191.i_crit_edge

lor.lhs.false186.i.if.then191.i_crit_edge:        ; preds = %lor.lhs.false186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191.i

lor.lhs.false186.i.sw.epilog.i_crit_edge:         ; preds = %lor.lhs.false186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then191.i:                                     ; preds = %lor.lhs.false186.i.if.then191.i_crit_edge, %if.end181.i.if.then191.i_crit_edge
  %ratr_bitmap.27.i = phi i32 [ %and133.i, %lor.lhs.false186.i.if.then191.i_crit_edge ], [ %and117.i, %if.end181.i.if.then191.i_crit_edge ]
  %trunc.i = trunc i32 %macid.0.i to i16
  %40 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %trunc.i, label %sw.epilog.fold.split.i [
    i16 0, label %if.then191.i.sw.epilog.i_crit_edge
    i16 1, label %if.then200.i
  ]

if.then191.i.sw.epilog.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then200.i:                                     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end39.i
  %rf_type204.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %41 = ptrtoint ptr %rf_type204.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rf_type204.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp206.i = icmp eq i8 %42, 1
  br i1 %cmp206.i, label %if.then208.i, label %if.else210.i

if.then208.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and209.i = and i32 %or55.i, 1044735
  br label %sw.epilog.i

if.else210.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and211.i = and i32 %or55.i, 252702975
  br label %sw.epilog.i

sw.epilog.fold.split.i:                           ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.fold.split.i, %if.else210.i, %if.then208.i, %if.then200.i, %if.then191.i.sw.epilog.i_crit_edge, %lor.lhs.false186.i.sw.epilog.i_crit_edge, %if.end181.i.sw.epilog.i_crit_edge, %sw.bb79.i, %if.else75.i, %if.then73.i, %if.then67.i, %if.else60.i, %if.then58.i
  %ratr_bitmap.3.i = phi i32 [ %and209.i, %if.then208.i ], [ %and211.i, %if.else210.i ], [ %ratr_bitmap.27.i, %if.then200.i ], [ %and133.i, %lor.lhs.false186.i.sw.epilog.i_crit_edge ], [ %and80.i, %sw.bb79.i ], [ %and68.i, %if.then67.i ], [ %and74.i, %if.then73.i ], [ %and76.i, %if.else75.i ], [ %and59.i, %if.then58.i ], [ %and61.i, %if.else60.i ], [ %ratr_bitmap.27.i, %if.then191.i.sw.epilog.i_crit_edge ], [ %ratr_bitmap.27.i, %sw.epilog.fold.split.i ], [ %and117.i, %if.end181.i.sw.epilog.i_crit_edge ]
  %ratr_index.0.i = phi i8 [ 0, %if.then208.i ], [ 0, %if.else210.i ], [ 0, %if.then200.i ], [ 0, %lor.lhs.false186.i.sw.epilog.i_crit_edge ], [ 8, %sw.bb79.i ], [ 4, %if.then67.i ], [ 4, %if.then73.i ], [ 4, %if.else75.i ], [ 6, %if.then58.i ], [ 6, %if.else60.i ], [ 0, %if.then191.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end181.i.sw.epilog.i_crit_edge ]
  %shortgi.0.off0.i = phi i32 [ 0, %if.then208.i ], [ 0, %if.else210.i ], [ 0, %if.then200.i ], [ 0, %lor.lhs.false186.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb79.i ], [ 0, %if.then67.i ], [ 0, %if.then73.i ], [ 0, %if.else75.i ], [ 0, %if.then58.i ], [ 0, %if.else60.i ], [ 32, %if.then191.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end181.i.sw.epilog.i_crit_edge ]
  %ratr_index213.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %43 = ptrtoint ptr %ratr_index213.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %ratr_index.0.i, ptr %ratr_index213.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.79, i32 noundef %ratr_bitmap.3.i) #7
  %conv215.i = zext i8 %ratr_index.0.i to i32
  %shl216.i = shl nuw i32 %conv215.i, 28
  %or217.i = or i32 %shl216.i, %ratr_bitmap.3.i
  %44 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or217.i, ptr %rate_mask.i, align 4
  %or222.i = or i32 %shortgi.0.off0.i, %macid.0.i
  %45 = trunc i32 %or222.i to i8
  %conv224.i = or i8 %45, -128
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv224.i, ptr %13, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.80, i32 noundef %conv215.i, i32 noundef %ratr_bitmap.3.i, ptr noundef nonnull %rate_mask.i) #7
  %rate_mask228.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 47
  %47 = call ptr @memcpy(ptr %rate_mask228.i, ptr %rate_mask.i, i32 5)
  %fill_h2c_cmd.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %fill_h2c_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %macid.0.i)
  %cmp232.not.i = icmp eq i32 %macid.0.i, 0
  br i1 %cmp232.not.i, label %sw.epilog.i.rtl92cu_update_hal_rate_mask.exit_crit_edge, label %if.then234.i

sw.epilog.i.rtl92cu_update_hal_rate_mask.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_update_hal_rate_mask.exit

if.then234.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %ratr_index213.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %ratr_index.0.i, ptr %ratr_index213.i, align 1
  br label %rtl92cu_update_hal_rate_mask.exit

rtl92cu_update_hal_rate_mask.exit:                ; preds = %if.then234.i, %sw.epilog.i.rtl92cu_update_hal_rate_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rate_mask.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %50 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %52 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %54 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %56 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %58 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i = icmp eq i32 %59, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %61, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %63, %if.else.i ]
  %opmode.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %64 = ptrtoint ptr %opmode.i12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opmode.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp16.i = icmp eq i32 %65, 1
  %spec.select.i13 = select i1 %cmp16.i, i32 4095, i32 %ratr_value.0.i
  %mcs.i14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx21.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %67 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 20
  %68 = ptrtoint ptr %mcs.i14 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mcs.i14, align 1
  %conv28.i = zext i8 %69 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 12
  %or.i15 = or i32 %shl23.i, %spec.select.i13
  %or30.i = or i32 %or.i15, %shl29.i
  %70 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %57, label %sw.default.i18 [
    i16 2, label %sw.bb.i16
    i16 4, label %sw.bb38.i
    i16 16, label %if.end.i.if.else46.i_crit_edge
    i16 32, label %if.end.i.if.else46.i_crit_edge23
  ]

if.end.i.if.else46.i_crit_edge23:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else46.i

if.end.i.if.else46.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else46.i

sw.bb.i16:                                        ; preds = %if.end.i
  %and31.i = and i32 %spec.select.i13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else35.i, label %if.then33.i

if.then33.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %and34.i = and i32 %spec.select.i13, 13
  br label %sw.epilog.i19

if.else35.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #9
  %and36.i = and i32 %spec.select.i13, 15
  br label %sw.epilog.i19

sw.bb38.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and39.i = and i32 %spec.select.i13, 4085
  br label %sw.epilog.i19

if.else46.i:                                      ; preds = %if.end.i.if.else46.i_crit_edge, %if.end.i.if.else46.i_crit_edge23
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %71 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %73 = icmp ult i8 %72, 2
  %ratr_mask.0.i = select i1 %73, i32 1044485, i32 252702725
  %and57.i = and i32 %ratr_mask.0.i, %or30.i
  br label %land.lhs.true.i

sw.default.i18:                                   ; preds = %if.end.i
  %rf_type.i17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %74 = ptrtoint ptr %rf_type.i17 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rf_type.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp60.i = icmp eq i8 %75, 1
  br i1 %cmp60.i, label %if.then62.i, label %if.else64.i

if.then62.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #9
  %and63.i = and i32 %or30.i, 1044735
  br label %sw.epilog.i19

if.else64.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #9
  %and65.i = and i32 %or30.i, 252702975
  br label %sw.epilog.i19

sw.epilog.i19:                                    ; preds = %if.else64.i, %if.then62.i, %sw.bb38.i, %if.else35.i, %if.then33.i
  %ratr_value.2.i = phi i32 [ %and63.i, %if.then62.i ], [ %and65.i, %if.else64.i ], [ %and39.i, %sw.bb38.i ], [ %and34.i, %if.then33.i ], [ %and36.i, %if.else35.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool69.not.i = icmp eq i8 %51, 0
  br i1 %tobool69.not.i, label %sw.epilog.i19.if.end102.i_crit_edge, label %sw.epilog.i19.land.lhs.true.i_crit_edge

sw.epilog.i19.land.lhs.true.i_crit_edge:          ; preds = %sw.epilog.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

sw.epilog.i19.if.end102.i_crit_edge:              ; preds = %sw.epilog.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i19.land.lhs.true.i_crit_edge, %if.else46.i
  %and67148.i = phi i32 [ %and57.i, %if.else46.i ], [ %ratr_value.2.i, %sw.epilog.i19.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool71.not.i = icmp eq i8 %53, 0
  %76 = and i16 %55, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool74.not.i = icmp eq i16 %76, 0
  %or.cond.i = select i1 %tobool71.not.i, i1 true, i1 %tobool74.not.i
  br i1 %or.cond.i, label %lor.lhs.false75.i, label %land.lhs.true.i.if.then80.i_crit_edge

land.lhs.true.i.if.then80.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80.i

lor.lhs.false75.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool76.not.i = icmp ne i8 %53, 0
  %77 = and i16 %55, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool79.not.i = icmp eq i16 %77, 0
  %or.cond139.i = select i1 %tobool76.not.i, i1 true, i1 %tobool79.not.i
  br i1 %or.cond139.i, label %lor.lhs.false75.i.if.end102.i_crit_edge, label %lor.lhs.false75.i.if.then80.i_crit_edge

lor.lhs.false75.i.if.then80.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80.i

lor.lhs.false75.i.if.end102.i_crit_edge:          ; preds = %lor.lhs.false75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.then80.i:                                      ; preds = %lor.lhs.false75.i.if.then80.i_crit_edge, %land.lhs.true.i.if.then80.i_crit_edge
  %or81.i = or i32 %and67148.i, 268435456
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then80.i, %lor.lhs.false75.i.if.end102.i_crit_edge, %sw.epilog.i19.if.end102.i_crit_edge
  %ratr_value.3.i = phi i32 [ %and67148.i, %lor.lhs.false75.i.if.end102.i_crit_edge ], [ %ratr_value.2.i, %sw.epilog.i19.if.end102.i_crit_edge ], [ %or81.i, %if.then80.i ]
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %78 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %79(ptr noundef %1, i32 noundef 1092, i32 noundef %ratr_value.3.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %if.end102.i.rtl92cu_update_hal_rate_table.exit_crit_edge, label %if.then.i.i

if.end102.i.rtl92cu_update_hal_rate_table.exit_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92cu_update_hal_rate_table.exit

if.then.i.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %84 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %85(ptr noundef %1, i32 noundef 1092) #7
  br label %rtl92cu_update_hal_rate_table.exit

rtl92cu_update_hal_rate_table.exit:               ; preds = %if.then.i.i, %if.end102.i.rtl92cu_update_hal_rate_table.exit_crit_edge
  %read32_sync.i142.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %86 = ptrtoint ptr %read32_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32_sync.i142.i, align 4
  %call.i143.i = tail call i32 %87(ptr noundef %1, i32 noundef 1092) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.81, i32 noundef %call.i143.i) #7
  br label %if.end

if.end:                                           ; preds = %rtl92cu_update_hal_rate_table.exit, %rtl92cu_update_hal_rate_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sifs_timer = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sifs_timer) #7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_hw_reg, align 4
  %slot_time = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 43
  tail call void %7(ptr noundef %hw, i8 noundef zeroext 18, ptr noundef %slot_time) #7
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %8 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %. = select i1 %tobool.not, i16 2570, i16 3598
  %10 = ptrtoint ptr %sifs_timer to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %., ptr %sifs_timer, align 2
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops3, align 4
  %set_hw_reg4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %set_hw_reg4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_hw_reg4, align 4
  call void %16(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %swrf_processing = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %swrf_processing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %swrf_processing, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %4 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rfchange_inprogress, align 2, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call3) #7
  br label %cleanup

if.else:                                          ; preds = %do.body2
  %6 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call3) #7
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state, align 4
  %pwrdown_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 22
  %9 = ptrtoint ptr %pwrdown_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pwrdown_mode, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17.not = icmp eq i8 %10, 0
  %read8_sync.i266 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %read8_sync.i266 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i266, align 4
  br i1 %tobool17.not, label %if.else23, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 92) #7
  %conv20 = zext i8 %call.i to i32
  %and = lshr i32 %conv20, 6
  %13 = and i32 %and, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %conv20) #7
  br label %if.end34

if.else23:                                        ; preds = %if.else
  %call.i267 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 67) #7
  %14 = and i8 %call.i267, -9
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %14) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else23.rtl_write_byte.exit_crit_edge, label %if.then.i

if.else23.rtl_write_byte.exit_crit_edge:          ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i266 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i266, align 4
  %call.i269 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 67) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.else23.rtl_write_byte.exit_crit_edge
  %23 = ptrtoint ptr %read8_sync.i266 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i266, align 4
  %call.i271 = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 66) #7
  %conv29 = zext i8 %call.i271 to i32
  %and30 = lshr i32 %conv29, 2
  %25 = and i32 %and30, 2
  %26 = xor i32 %25, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %conv29) #7
  br label %if.end34

if.end34:                                         ; preds = %rtl_write_byte.exit, %if.then18
  %e_rfpowerstate_toset.0 = phi i32 [ %13, %if.then18 ], [ %26, %rtl_write_byte.exit ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef %e_rfpowerstate_toset.0) #7
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %27 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hwradiooff, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool36.not = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %e_rfpowerstate_toset.0)
  %cmp38 = icmp eq i32 %e_rfpowerstate_toset.0, 0
  %or.cond = and i1 %cmp38, %tobool36.not
  br i1 %or.cond, label %if.end34.if.then57_crit_edge, label %if.else42

if.end34.if.then57_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.else42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %e_rfpowerstate_toset.0)
  %cmp46 = icmp eq i32 %e_rfpowerstate_toset.0, 2
  %or.cond263 = and i1 %cmp46, %tobool44.not
  br i1 %or.cond263, label %if.else42.if.then57_crit_edge, label %if.else50

if.else42.if.then57_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.else50:                                        ; preds = %if.else42
  %29 = zext i8 %28 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %29, i32 noundef %e_rfpowerstate_toset.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp133 = icmp eq i32 %8, 2
  %or.cond265 = select i1 %cmp46, i1 true, i1 %cmp133
  br i1 %or.cond265, label %if.then135, label %do.body171

if.then57:                                        ; preds = %if.else42.if.then57_crit_edge, %if.end34.if.then57_crit_edge
  %.str.31.sink = phi ptr [ @.str.30, %if.end34.if.then57_crit_edge ], [ @.str.31, %if.else42.if.then57_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull %.str.31.sink) #7
  %30 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %hwradiooff, align 4
  br i1 %cmp38, label %if.then61, label %if.then57.do.body87_crit_edge

if.then57.do.body87_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body87

if.then61:                                        ; preds = %if.then57
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %31 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_rfps_level, align 4
  %and62 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then61.if.else70_crit_edge, label %land.lhs.true64

if.then61.if.else70_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70

land.lhs.true64:                                  ; preds = %if.then61
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %33 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_ps_level, align 4
  %and65 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true64.if.else70_crit_edge, label %if.then67

land.lhs.true64.if.else70_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else70

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  %and69 = and i32 %34, -2
  %35 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and69, ptr %cur_ps_level, align 4
  br label %do.body87

if.else70:                                        ; preds = %land.lhs.true64.if.else70_crit_edge, %if.then61.if.else70_crit_edge
  %and72 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else70.do.body87_crit_edge, label %land.lhs.true74

if.else70.do.body87_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body87

land.lhs.true74:                                  ; preds = %if.else70
  %cur_ps_level75 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %36 = ptrtoint ptr %cur_ps_level75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_ps_level75, align 4
  %and76 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %land.lhs.true74.do.body87_crit_edge, label %if.then80

land.lhs.true74.do.body87_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body87

if.then80:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  %and82 = and i32 %37, -5
  %38 = ptrtoint ptr %cur_ps_level75 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and82, ptr %cur_ps_level75, align 4
  br label %do.body87

do.body87:                                        ; preds = %if.then80, %land.lhs.true74.do.body87_crit_edge, %if.else70.do.body87_crit_edge, %if.then67, %if.then57.do.body87_crit_edge
  %call96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %39 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call96) #7
  %40 = ptrtoint ptr %pwrdown_mode to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pwrdown_mode, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool105.not = icmp ne i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %e_rfpowerstate_toset.0)
  %cmp108 = icmp eq i32 %e_rfpowerstate_toset.0, 2
  %or.cond264 = and i1 %cmp108, %tobool105.not
  br i1 %or.cond264, label %if.then110, label %do.body87.if.end111_crit_edge

do.body87.if.end111_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then110:                                       ; preds = %do.body87
  %write8_async.i272 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %42 = ptrtoint ptr %write8_async.i272 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i272, align 4
  tail call void %43(ptr noundef %1, i32 noundef 28, i8 noundef zeroext 0) #7
  %cfg.i273 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i273 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i273, align 8
  %write_readback.i274 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i274 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i274, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i275 = icmp eq i8 %47, 0
  br i1 %tobool.not.i275, label %if.then110.rtl_write_byte.exit279_crit_edge, label %if.then.i278

if.then110.rtl_write_byte.exit279_crit_edge:      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit279

if.then.i278:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i276 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %48 = ptrtoint ptr %read8_sync.i276 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i276, align 4
  %call.i277 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 28) #7
  br label %rtl_write_byte.exit279

rtl_write_byte.exit279:                           ; preds = %if.then.i278, %if.then110.rtl_write_byte.exit279_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %50 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write16_async.i, align 4
  tail call void %51(ptr noundef %1, i32 noundef 4, i16 noundef zeroext -30702) #7
  %52 = ptrtoint ptr %cfg.i273 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i273, align 8
  %write_readback.i281 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_readback.i281 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %write_readback.i281, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i282 = icmp eq i8 %55, 0
  br i1 %tobool.not.i282, label %rtl_write_byte.exit279.if.end111_crit_edge, label %if.then.i284

rtl_write_byte.exit279.if.end111_crit_edge:       ; preds = %rtl_write_byte.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then.i284:                                     ; preds = %rtl_write_byte.exit279
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %56 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16_sync.i, align 4
  %call.i283 = tail call zeroext i16 %57(ptr noundef %1, i32 noundef 4) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then.i284, %rtl_write_byte.exit279.if.end111_crit_edge, %do.body87.if.end111_crit_edge
  br i1 %cmp108, label %if.then114, label %if.end111.if.end189_crit_edge

if.end111.if.end189_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then114:                                       ; preds = %if.end111
  %reg_rfps_level115 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %58 = ptrtoint ptr %reg_rfps_level115 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_rfps_level115, align 4
  %and116 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else120, label %if.then118

if.then118:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %cur_ps_level119 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %60 = ptrtoint ptr %cur_ps_level119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cur_ps_level119, align 4
  %or = or i32 %61, 1
  store i32 %or, ptr %cur_ps_level119, align 4
  br label %if.end189

if.else120:                                       ; preds = %if.then114
  %and122 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else120.if.end189_crit_edge, label %if.then124

if.else120.if.end189_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then124:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  %cur_ps_level125 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %62 = ptrtoint ptr %cur_ps_level125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_ps_level125, align 4
  %or126 = or i32 %63, 4
  store i32 %or126, ptr %cur_ps_level125, align 4
  br label %if.end189

if.then135:                                       ; preds = %if.else50
  %reg_rfps_level136 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %64 = ptrtoint ptr %reg_rfps_level136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_rfps_level136, align 4
  %and137 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else142, label %if.then135.do.body152.sink.split_crit_edge

if.then135.do.body152.sink.split_crit_edge:       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body152.sink.split

if.else142:                                       ; preds = %if.then135
  %and144 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.else142.do.body152_crit_edge, label %if.else142.do.body152.sink.split_crit_edge

if.else142.do.body152.sink.split_crit_edge:       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body152.sink.split

if.else142.do.body152_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body152

do.body152.sink.split:                            ; preds = %if.else142.do.body152.sink.split_crit_edge, %if.then135.do.body152.sink.split_crit_edge
  %.sink285 = phi i32 [ 1, %if.then135.do.body152.sink.split_crit_edge ], [ 4, %if.else142.do.body152.sink.split_crit_edge ]
  %cur_ps_level140 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %66 = ptrtoint ptr %cur_ps_level140 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_ps_level140, align 4
  %or148 = or i32 %67, %.sink285
  store i32 %or148, ptr %cur_ps_level140, align 4
  br label %do.body152

do.body152:                                       ; preds = %do.body152.sink.split, %if.else142.do.body152_crit_edge
  %call161 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %68 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call161) #7
  br label %if.end189

do.body171:                                       ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  %call180 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %69 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call180) #7
  br label %if.end189

if.end189:                                        ; preds = %do.body171, %do.body152, %if.then124, %if.else120.if.end189_crit_edge, %if.then118, %if.end111.if.end189_crit_edge
  %70 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %valid, align 1
  %71 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hwradiooff, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool191.not = icmp eq i8 %72, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then7 ], [ %tobool191.not, %if.end189 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_init_llt_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_driver_info_size(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_network_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_adaptive_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_edca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_rate_fallback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_retry_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_min_space(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_ampdu_aggregation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_init_beacon_max_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_read_1byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_rfafeandresetbb(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext -1) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 1314) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %cfg.i17 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i17, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %17(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0) #7
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1536, i8 noundef zeroext 64) #7
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i20 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i20, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i21 = icmp eq i8 %23, 0
  br i1 %tobool.not.i21, label %rtl_write_byte.exit.rtl_write_byte.exit25_crit_edge, label %if.then.i24

rtl_write_byte.exit.rtl_write_byte.exit25_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit25

if.then.i24:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i22, align 4
  %call.i23 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 1536) #7
  br label %rtl_write_byte.exit25

rtl_write_byte.exit25:                            ; preds = %if.then.i24, %rtl_write_byte.exit.rtl_write_byte.exit25_crit_edge
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 22) #7
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i28, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i29 = icmp eq i8 %31, 0
  br i1 %tobool.not.i29, label %rtl_write_byte.exit25.rtl_write_byte.exit33_crit_edge, label %if.then.i32

rtl_write_byte.exit25.rtl_write_byte.exit33_crit_edge: ; preds = %rtl_write_byte.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit33

if.then.i32:                                      ; preds = %rtl_write_byte.exit25
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i30 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %read8_sync.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i30, align 4
  %call.i31 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_byte.exit33

rtl_write_byte.exit33:                            ; preds = %if.then.i32, %rtl_write_byte.exit25.rtl_write_byte.exit33_crit_edge
  %34 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 20) #7
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i, align 8
  %write_readback.i36 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i36 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i36, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i37 = icmp eq i8 %39, 0
  br i1 %tobool.not.i37, label %rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge, label %if.then.i40

rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge: ; preds = %rtl_write_byte.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit41

if.then.i40:                                      ; preds = %rtl_write_byte.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i38 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %40 = ptrtoint ptr %read8_sync.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i38, align 4
  %call.i39 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_byte.exit41

rtl_write_byte.exit41:                            ; preds = %if.then.i40, %rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_resetdigitalprocedure1(ptr nocapture noundef readonly %hw, i1 noundef zeroext %withouthwsm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %3)
  %cmp = icmp ult i16 %3, 33
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 128) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %12 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16_sync.i, align 4
  %call.i58 = tail call zeroext i16 %13(ptr noundef %1, i32 noundef 2) #7
  %14 = and i16 %call.i58, -1025
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %15 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %14) #7
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i60 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i60, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i61 = icmp eq i8 %20, 0
  br i1 %tobool.not.i61, label %rtl_write_byte.exit.rtl_write_word.exit_crit_edge, label %if.then.i64

rtl_write_byte.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i64:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read16_sync.i, align 4
  %call.i63 = tail call zeroext i16 %22(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i64, %rtl_write_byte.exit.rtl_write_word.exit_crit_edge
  %23 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read16_sync.i, align 4
  %call.i66 = tail call zeroext i16 %24(ptr noundef %1, i32 noundef 2) #7
  %25 = and i16 %call.i66, 4095
  %26 = or i16 %25, 20480
  %27 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %26) #7
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i69 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i69, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i70 = icmp eq i8 %32, 0
  br i1 %tobool.not.i70, label %rtl_write_word.exit.rtl_write_word.exit74_crit_edge, label %if.then.i73

rtl_write_word.exit.rtl_write_word.exit74_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit74

if.then.i73:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read16_sync.i, align 4
  %call.i72 = tail call zeroext i16 %34(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit74

rtl_write_word.exit74:                            ; preds = %if.then.i73, %rtl_write_word.exit.rtl_write_word.exit74_crit_edge
  %35 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i, align 4
  %call.i76 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 2) #7
  %37 = or i16 %call.i76, 1024
  %38 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write16_async.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %37) #7
  %40 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i, align 8
  %write_readback.i79 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i79 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i79, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i80 = icmp eq i8 %43, 0
  br i1 %tobool.not.i80, label %rtl_write_word.exit74.if.end33_crit_edge, label %if.then.i83

rtl_write_word.exit74.if.end33_crit_edge:         ; preds = %rtl_write_word.exit74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then.i83:                                      ; preds = %rtl_write_word.exit74
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read16_sync.i, align 4
  %call.i82 = tail call zeroext i16 %45(ptr noundef %1, i32 noundef 2) #7
  br label %if.end33

if.else:                                          ; preds = %entry
  %read8_sync.i85 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %46 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i85, align 4
  %call.i86 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 128) #7
  %48 = and i8 %call.i86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %if.else.if.end32_crit_edge, label %if.then19

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then19:                                        ; preds = %if.else
  %write8_async.i87 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %49 = ptrtoint ptr %write8_async.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write8_async.i87, align 4
  tail call void %50(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #7
  %cfg.i88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %51 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i89 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i89 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i89, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i90 = icmp eq i8 %54, 0
  br i1 %tobool.not.i90, label %if.then19.rtl_write_byte.exit94_crit_edge, label %if.then.i93

if.then19.rtl_write_byte.exit94_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit94

if.then.i93:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i85, align 4
  %call.i92 = tail call zeroext i8 %56(ptr noundef %1, i32 noundef 128) #7
  br label %rtl_write_byte.exit94

rtl_write_byte.exit94:                            ; preds = %if.then.i93, %if.then19.rtl_write_byte.exit94_crit_edge
  %57 = ptrtoint ptr %write8_async.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i87, align 4
  tail call void %58(ptr noundef %1, i32 noundef 463, i8 noundef zeroext 32) #7
  %59 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i97, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i98 = icmp eq i8 %62, 0
  br i1 %tobool.not.i98, label %rtl_write_byte.exit94.rtl_write_byte.exit102_crit_edge, label %if.then.i101

rtl_write_byte.exit94.rtl_write_byte.exit102_crit_edge: ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit102

if.then.i101:                                     ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i85, align 4
  %call.i100 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 463) #7
  br label %rtl_write_byte.exit102

rtl_write_byte.exit102:                           ; preds = %if.then.i101, %rtl_write_byte.exit94.rtl_write_byte.exit102_crit_edge
  %read16_sync.i103 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %rtl_write_byte.exit102
  %inc161 = phi i8 [ 1, %rtl_write_byte.exit102 ], [ %inc, %while.body.land.rhs_crit_edge ]
  %65 = ptrtoint ptr %read16_sync.i103 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read16_sync.i103, align 4
  %call.i104 = tail call zeroext i16 %66(ptr noundef %1, i32 noundef 2) #7
  %67 = and i16 %call.i104, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool26.not = icmp eq i16 %67, 0
  br i1 %tobool26.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 10737400) #7
  %inc = add nuw nsw i8 %inc161, 1
  %cmp21 = icmp ult i8 %inc161, 100
  br i1 %cmp21, label %while.body.land.rhs_crit_edge, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %inc161)
  %cmp28 = icmp ugt i8 %inc161, 99
  br i1 %cmp28, label %while.end.do.end_crit_edge, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.body.do.end_crit_edge
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #11
  %69 = ptrtoint ptr %write8_async.i87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write8_async.i87, align 4
  tail call void %70(ptr noundef %1, i32 noundef 3, i8 noundef zeroext 80) #7
  %71 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i107 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i107 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i107, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i108 = icmp eq i8 %74, 0
  br i1 %tobool.not.i108, label %do.end.rtl_write_byte.exit112_crit_edge, label %if.then.i111

do.end.rtl_write_byte.exit112_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit112

if.then.i111:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8_sync.i85, align 4
  %call.i110 = tail call zeroext i8 %76(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit112

rtl_write_byte.exit112:                           ; preds = %if.then.i111, %do.end.rtl_write_byte.exit112_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 21474800) #7
  br label %if.end32

if.end32:                                         ; preds = %rtl_write_byte.exit112, %while.end.if.end32_crit_edge, %if.else.if.end32_crit_edge
  %write8_async.i113 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %78 = ptrtoint ptr %write8_async.i113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write8_async.i113, align 4
  tail call void %79(ptr noundef %1, i32 noundef 3, i8 noundef zeroext 84) #7
  %cfg.i114 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i114, align 8
  %write_readback.i115 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i115 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i115, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i116 = icmp eq i8 %83, 0
  br i1 %tobool.not.i116, label %if.end32.rtl_write_byte.exit120_crit_edge, label %if.then.i119

if.end32.rtl_write_byte.exit120_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit120

if.then.i119:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8_sync.i85, align 4
  %call.i118 = tail call zeroext i8 %85(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit120

rtl_write_byte.exit120:                           ; preds = %if.then.i119, %if.end32.rtl_write_byte.exit120_crit_edge
  %86 = ptrtoint ptr %write8_async.i113 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i113, align 4
  tail call void %87(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #7
  %88 = ptrtoint ptr %cfg.i114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i114, align 8
  %write_readback.i123 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i123 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i123, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i124 = icmp eq i8 %91, 0
  br i1 %tobool.not.i124, label %rtl_write_byte.exit120.if.end33_crit_edge, label %if.then.i127

rtl_write_byte.exit120.if.end33_crit_edge:        ; preds = %rtl_write_byte.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then.i127:                                     ; preds = %rtl_write_byte.exit120
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %read8_sync.i85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i85, align 4
  %call.i126 = tail call zeroext i8 %93(ptr noundef %1, i32 noundef 128) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then.i127, %rtl_write_byte.exit120.if.end33_crit_edge, %if.then.i83, %rtl_write_word.exit74.if.end33_crit_edge
  br i1 %withouthwsm, label %if.then35, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  %write16_async.i129 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %94 = ptrtoint ptr %write16_async.i129 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16_async.i129, align 4
  tail call void %95(ptr noundef %1, i32 noundef 8, i16 noundef zeroext 28835) #7
  %cfg.i130 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i130, align 8
  %write_readback.i131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i131 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i131, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i132 = icmp eq i8 %99, 0
  br i1 %tobool.not.i132, label %if.then35.rtl_write_word.exit136_crit_edge, label %if.then.i135

if.then35.rtl_write_word.exit136_crit_edge:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit136

if.then.i135:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i133 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %100 = ptrtoint ptr %read16_sync.i133 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read16_sync.i133, align 4
  %call.i134 = tail call zeroext i16 %101(ptr noundef %1, i32 noundef 8) #7
  br label %rtl_write_word.exit136

rtl_write_word.exit136:                           ; preds = %if.then.i135, %if.then35.rtl_write_word.exit136_crit_edge
  %write8_async.i137 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %102 = ptrtoint ptr %write8_async.i137 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write8_async.i137, align 4
  tail call void %103(ptr noundef %1, i32 noundef 40, i8 noundef zeroext -128) #7
  %104 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i130, align 8
  %write_readback.i139 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %write_readback.i139 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %write_readback.i139, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i140 = icmp eq i8 %107, 0
  br i1 %tobool.not.i140, label %rtl_write_word.exit136.rtl_write_byte.exit144_crit_edge, label %if.then.i143

rtl_write_word.exit136.rtl_write_byte.exit144_crit_edge: ; preds = %rtl_write_word.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit144

if.then.i143:                                     ; preds = %rtl_write_word.exit136
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i141 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %108 = ptrtoint ptr %read8_sync.i141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read8_sync.i141, align 4
  %call.i142 = tail call zeroext i8 %109(ptr noundef %1, i32 noundef 40) #7
  br label %rtl_write_byte.exit144

rtl_write_byte.exit144:                           ; preds = %if.then.i143, %rtl_write_word.exit136.rtl_write_byte.exit144_crit_edge
  %110 = ptrtoint ptr %write16_async.i129 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write16_async.i129, align 4
  tail call void %111(ptr noundef %1, i32 noundef 36, i16 noundef zeroext -30705) #7
  %112 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i130, align 8
  %write_readback.i147 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %write_readback.i147 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %write_readback.i147, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i148 = icmp eq i8 %115, 0
  br i1 %tobool.not.i148, label %rtl_write_byte.exit144.rtl_write_word.exit152_crit_edge, label %if.then.i151

rtl_write_byte.exit144.rtl_write_word.exit152_crit_edge: ; preds = %rtl_write_byte.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit152

if.then.i151:                                     ; preds = %rtl_write_byte.exit144
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i149 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %116 = ptrtoint ptr %read16_sync.i149 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read16_sync.i149, align 4
  %call.i150 = tail call zeroext i16 %117(ptr noundef %1, i32 noundef 36) #7
  br label %rtl_write_word.exit152

rtl_write_word.exit152:                           ; preds = %if.then.i151, %rtl_write_byte.exit144.rtl_write_word.exit152_crit_edge
  %118 = ptrtoint ptr %write8_async.i137 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write8_async.i137, align 4
  tail call void %119(ptr noundef %1, i32 noundef 0, i8 noundef zeroext -7) #7
  %120 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i130, align 8
  %write_readback.i155 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %write_readback.i155 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %write_readback.i155, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i156 = icmp eq i8 %123, 0
  br i1 %tobool.not.i156, label %rtl_write_word.exit152.if.end36_crit_edge, label %if.then.i159

rtl_write_word.exit152.if.end36_crit_edge:        ; preds = %rtl_write_word.exit152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then.i159:                                     ; preds = %rtl_write_word.exit152
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i157 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %124 = ptrtoint ptr %read8_sync.i157 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read8_sync.i157, align 4
  %call.i158 = tail call zeroext i8 %125(ptr noundef %1, i32 noundef 0) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then.i159, %rtl_write_word.exit152.if.end36_crit_edge, %if.end33.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_disablegpio(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 70, i16 noundef zeroext 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef 70) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i29 = tail call i32 %11(ptr noundef %1, i32 noundef 68) #7
  %and = and i32 %call.i29, -16776961
  %conv2 = shl i32 %call.i29, 8
  %shl = and i32 %conv2, 65280
  %or = or i32 %and, %shl
  %or3 = or i32 %or, 16711680
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %12 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 68, i32 noundef %or3) #7
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i31, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i32 = icmp eq i8 %17, 0
  br i1 %tobool.not.i32, label %rtl_write_word.exit.rtl_write_dword.exit_crit_edge, label %if.then.i35

rtl_write_word.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i35:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i34 = tail call i32 %19(ptr noundef %1, i32 noundef 68) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i35, %rtl_write_word.exit.rtl_write_dword.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write8_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 67, i8 noundef zeroext 0) #7
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i37 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i37, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i38 = icmp eq i8 %25, 0
  br i1 %tobool.not.i38, label %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge, label %if.then.i40

rtl_write_dword.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i40:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i, align 4
  %call.i39 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 67) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i40, %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge
  %read16_sync.i41 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %28 = ptrtoint ptr %read16_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read16_sync.i41, align 4
  %call.i42 = tail call zeroext i16 %29(ptr noundef %1, i32 noundef 66) #7
  %30 = and i16 %call.i42, -2033
  %31 = shl i16 %call.i42, 4
  %32 = and i16 %31, 112
  %33 = or i16 %30, %32
  %or1528 = or i16 %33, 1920
  %34 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16_async.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef 70, i16 noundef zeroext %or1528) #7
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i, align 8
  %write_readback.i45 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i45 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i45, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i46 = icmp eq i8 %39, 0
  br i1 %tobool.not.i46, label %rtl_write_byte.exit.rtl_write_word.exit50_crit_edge, label %if.then.i49

rtl_write_byte.exit.rtl_write_word.exit50_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit50

if.then.i49:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %read16_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16_sync.i41, align 4
  %call.i48 = tail call zeroext i16 %41(ptr noundef %1, i32 noundef 70) #7
  br label %rtl_write_word.exit50

rtl_write_word.exit50:                            ; preds = %if.then.i49, %rtl_write_byte.exit.rtl_write_word.exit50_crit_edge
  %42 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16_async.i, align 4
  tail call void %43(ptr noundef %1, i32 noundef 76, i16 noundef zeroext -32640) #7
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i, align 8
  %write_readback.i53 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i53 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i53, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i54 = icmp eq i8 %47, 0
  br i1 %tobool.not.i54, label %rtl_write_word.exit50.rtl_write_word.exit58_crit_edge, label %if.then.i57

rtl_write_word.exit50.rtl_write_word.exit58_crit_edge: ; preds = %rtl_write_word.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit58

if.then.i57:                                      ; preds = %rtl_write_word.exit50
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %read16_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read16_sync.i41, align 4
  %call.i56 = tail call zeroext i16 %49(ptr noundef %1, i32 noundef 76) #7
  br label %rtl_write_word.exit58

rtl_write_word.exit58:                            ; preds = %if.then.i57, %rtl_write_word.exit50.rtl_write_word.exit58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 406, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 409, i32 2}
!6 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 863, i32 2}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 868, i32 3}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 880, i32 2}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 956, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtl92cu_hw_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92cu_hw_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 961, i32 3}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1442, i32 2}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1462, i32 2}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1528, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rtl92cu_get_hw_reg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rtl92cu_get_hw_reg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1603, i32 4}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1611, i32 4}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1676, i32 5}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1691, i32 4}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1725, i32 5}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1744, i32 4}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1765, i32 5}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1774, i32 4}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1784, i32 4}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1902, i32 3}
!52 = !{ptr @rtl92cu_set_hw_reg._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rtl92cu_set_hw_reg._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2198, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2207, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2210, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2214, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2220, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2225, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 139, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 146, i32 4}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 153, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 182, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 218, i32 4}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 222, i32 4}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 253, i32 3}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 257, i32 3}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 261, i32 3}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 265, i32 3}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 272, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 281, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 296, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 316, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @_rtl92cu_read_board_type._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @_rtl92cu_read_board_type._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 389, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 821, i32 3}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @_rtl92cu_init_mac._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @_rtl92cu_init_mac._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 832, i32 3}
!106 = !{ptr @_rtl92cu_init_mac._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @_rtl92cu_init_mac._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 427, i32 4}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 432, i32 4}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @_rtl92cu_init_power_on._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @_rtl92cu_init_power_on._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 446, i32 3}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 461, i32 4}
!119 = !{ptr @_rtl92cu_init_power_on._entry.58, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @_rtl92cu_init_power_on._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 465, i32 4}
!123 = !{ptr @_rtl92cu_init_power_on._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @_rtl92cu_init_power_on._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 613, i32 2}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @_rtl92cu_init_chipn_one_out_ep_priority._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 657, i32 2}
!132 = !{ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_rtl92cu_init_chipn_two_out_ep_priority._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 682, i32 2}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @_rtl92cu_init_chipn_three_out_ep_priority._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 741, i32 2}
!141 = !{ptr @_rtl92cu_init_chipt_queue_priority._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @_rtl92cu_init_chipt_queue_priority._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1284, i32 3}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1292, i32 3}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1297, i32 3}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1303, i32 3}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1308, i32 3}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1312, i32 3}
!155 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @_rtl92cu_set_media_status._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @_rtl92cu_set_media_status._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1071, i32 5}
!160 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @_resetdigitalprocedure1._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @_resetdigitalprocedure1._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2125, i32 2}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 2130, i32 2}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c", i32 1991, i32 2}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{i64 956593}
!180 = !{i64 954106}
!181 = !{i64 954296}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i64 956878}
!184 = !{!"auto-init"}
!185 = !{!"branch_weights", i32 2000, i32 1}
