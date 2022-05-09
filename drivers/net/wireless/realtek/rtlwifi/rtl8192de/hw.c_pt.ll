; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.rtl_pci = type { ptr, i8, i8, i8, i8, i8, i8, [9 x %struct.rtl8192_tx_ring], [9 x i32], i32, [2 x %struct.rtl8192_rx_ring], i32, i16, i32, i8, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i8, i8, i8 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.txpower_info = type { [2 x [12 x i8]], [2 x [12 x i8]], [2 x [12 x i8]], [2 x [12 x i8]], [2 x [12 x i8]], [2 x [12 x i8]], [2 x [12 x i8]], [3 x i8], [3 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92de_get_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192de: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92de_get_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92de_get_hw_reg._entry_ptr = internal global ptr @rtl92de_get_hw_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92de_set_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92de_set_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl92de_set_hw_reg._entry_ptr = internal global ptr @rtl92de_set_hw_reg._entry, section ".printk_index", align 4
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl92de_set_hw_reg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92de_set_hw_reg._entry_ptr.11 = internal global ptr @rtl92de_set_hw_reg._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@globalmutex_for_power_and_efuse = external dso_local global %struct.spinlock, align 4
@rtl92de_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192de: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92de_hw_init\00", [16 x i8] zeroinitializer }, align 32
@rtl92de_hw_init._entry_ptr = internal global ptr @rtl92de_hw_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to download FW. Init HW without FW..\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EarlyMode Enabled!!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Do IQK for channel:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"==> Do power off.......\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92de_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8192de: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92de_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@rtl92de_read_eeprom_info._entry_ptr = internal global ptr @rtl92de_read_eeprom_info._entry, section ".printk_index", align 4
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl92de_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92de_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl92de_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 2140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92de_set_key\00", [16 x i8] zeroinitializer }, align 32
@rtl92de_set_key._entry_ptr = internal global ptr @rtl92de_set_key._entry, section ".printk_index", align 4
@rtl92de_set_key._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 2156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192de: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl92de_set_key._entry_ptr.34 = internal global ptr @rtl92de_set_key._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"The insert KEY length is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"The insert KEY is %x %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pairwise Key content\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@_rtl92de_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8192de: Failed to polling write LLT done at address %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl92de_llt_write\00", [45 x i8] zeroinitializer }, align 32
@_rtl92de_llt_write._entry_ptr = internal global ptr @_rtl92de_llt_write._entry, section ".printk_index", align 4
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92de_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8192de: Network type %d not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92de_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl92de_set_media_status._entry_ptr = internal global ptr @_rtl92de_set_media_status._entry, section ".printk_index", align 4
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"In PowerOff,reg0x%x=%X\0A\00", [40 x i8] zeroinitializer }, align 32
@globalmutex_power = external dso_local global %struct.spinlock, align 4
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<=======\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST CHIP!!!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Normal CHIP!!!\0A\00", [16 x i8] zeroinitializer }, align 32
@__const._rtl92de_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 40, i32 42, i32 44, i32 46, i32 85, i32 187, i32 202, i32 203, i32 11], align 4
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"C-CUT!!!\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"D-CUT!!!\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"E-CUT!!!\0A\00", [22 x i8] zeroinitializer }, align 32
@_rtl92de_efuse_update_chip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rtl8192de: Unknown CUT!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_rtl92de_efuse_update_chip_version\00", [61 x i8] zeroinitializer }, align 32
@_rtl92de_efuse_update_chip_version._entry_ptr = internal global ptr @_rtl92de_efuse_update_chip_version._entry, section ".printk_index", align 4
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MacPhyMode SINGLEMAC_SINGLEPHY\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MacPhyMode DUALMAC_DUALPHY\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Is D cut,Internal PA0 %d Internal PA1 %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EEPROMRegulatory = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ThermalMeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CrystalCap = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Delta_IQK = 0x%x Delta_LCK = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ratr_bitmap :%x value0:%x value1:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.rtl92de_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 89, i64 90, i64 92]
@__sancov_gen_cov_switch_values.70 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 65, i64 72, i64 82, i64 84, i64 87, i64 89, i64 90]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 16, i64 39270, i64 43605, i64 52275]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 12290, i64 16386]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 144, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 207, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 238, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 252, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 287, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 321, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 338, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 343, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 479, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 854, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 859, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 870, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 897, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 905, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 917, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1159, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1331, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1373, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1386, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1774, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1777, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1781, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1786, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2062, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2068, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2099, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2105, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2113, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2139, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2156, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2167, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2174, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2177, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2181, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2184, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2189, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2197, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 498, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1063, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1073, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1079, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1086, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1092, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1096, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1258, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1273, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1036, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1039, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1740, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1690, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1694, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1698, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1702, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1658, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1662, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1563, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1615, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1617, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1619, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1621, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 2001, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1869, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [29 x i8] c"switch.table.rtl92de_set_key\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @_rtl92de_efuse_update_chip_version._entry, ptr @_rtl92de_efuse_update_chip_version._entry_ptr, ptr @_rtl92de_llt_write._entry, ptr @_rtl92de_llt_write._entry_ptr, ptr @_rtl92de_set_media_status._entry, ptr @_rtl92de_set_media_status._entry_ptr, ptr @rtl92de_get_hw_reg._entry, ptr @rtl92de_get_hw_reg._entry_ptr, ptr @rtl92de_hw_init._entry, ptr @rtl92de_hw_init._entry_ptr, ptr @rtl92de_read_eeprom_info._entry, ptr @rtl92de_read_eeprom_info._entry_ptr, ptr @rtl92de_set_hw_reg._entry, ptr @rtl92de_set_hw_reg._entry.10, ptr @rtl92de_set_hw_reg._entry_ptr, ptr @rtl92de_set_hw_reg._entry_ptr.11, ptr @rtl92de_set_key._entry, ptr @rtl92de_set_key._entry.32, ptr @rtl92de_set_key._entry_ptr, ptr @rtl92de_set_key._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rtl92de_set_key.cam_const_addr, ptr @rtl92de_set_key.cam_const_broad, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @switch.table.rtl92de_set_key], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_get_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_hw_reg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_set_key._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92de_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92de_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92de_efuse_update_chip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92de_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92de_read_dword_dbi(ptr nocapture noundef readonly %hw, i16 noundef zeroext %offset, i8 noundef zeroext %direct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = and i16 %offset, 4092
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %3 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write16_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 848, i16 noundef zeroext %2) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %9 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %10(ptr noundef %1, i32 noundef 848) #6
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %11 = or i8 %direct, 2
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 850, i8 noundef zeroext %11) #6
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8 = icmp eq i8 %17, 0
  br i1 %tobool.not.i8, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i10

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i10:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i9 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 850) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i10, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %21 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32_sync.i, align 4
  %call.i11 = tail call i32 %22(ptr noundef %1, i32 noundef 844) #6
  ret i32 %call.i11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_write_dword_dbi(ptr nocapture noundef readonly %hw, i16 noundef zeroext %offset, i32 noundef %value, i8 noundef zeroext %direct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = and i16 %offset, 4092
  %3 = or i16 %2, -4096
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 848, i16 noundef zeroext %3) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %10 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 848) #6
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %12 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 840, i32 noundef %value) #6
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i8, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i9 = icmp eq i8 %17, 0
  br i1 %tobool.not.i9, label %rtl_write_word.exit.rtl_write_dword.exit_crit_edge, label %if.then.i11

rtl_write_word.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i11:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i10 = tail call i32 %19(ptr noundef %1, i32 noundef 840) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i11, %rtl_write_word.exit.rtl_write_dword.exit_crit_edge
  %20 = or i8 %direct, 1
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 850, i8 noundef zeroext %20) #6
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %write_readback.i13 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i13, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i14 = icmp eq i8 %26, 0
  br i1 %tobool.not.i14, label %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge, label %if.then.i16

rtl_write_dword.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i16:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i15 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 850) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i16, %rtl_write_dword.exit.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %rfstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %variable, label %do.end [
    i8 44, label %sw.bb
    i8 40, label %sw.bb4
    i8 86, label %sw.bb5
    i8 65, label %sw.bb10
    i8 84, label %sw.bb12
    i8 89, label %sw.bb15
    i8 90, label %sw.bb18
    i8 92, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %receive_config, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfstate) #6
  %9 = ptrtoint ptr %rfstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rfstate, align 4, !annotation !160
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
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rfstate) #6
  %16 = ptrtoint ptr %rfstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %sw.bb5.if.end9_crit_edge, label %if.else

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %19(ptr noundef %1, i32 noundef 1544) #6
  %and = and i32 %call.i, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool.not to i8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %sw.bb5.if.end9_crit_edge
  %.sink = phi i8 [ 1, %sw.bb5.if.end9_crit_edge ], [ %., %if.else ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfstate) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !159
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i43, align 4
  %call.i44 = tail call i32 %25(ptr noundef %1, i32 noundef 1380) #6
  %26 = ptrtoint ptr %read32_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i43, align 4
  %call.i46 = tail call i32 %27(ptr noundef %1, i32 noundef 1376) #6
  %tsf.sroa.5.0.insert.ext = zext i32 %call.i44 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call.i46 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %tsf.sroa.0.0.insert.insert, ptr %val, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_migration = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 35
  %29 = ptrtoint ptr %interrupt_migration to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %interrupt_migration, align 1, !range !159
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %val, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %disable_tx_int = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 36
  %32 = ptrtoint ptr %disable_tx_int to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %disable_tx_int, align 2, !range !159
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %val, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %variable to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %e_aci = alloca i8, align 1
  %e_aci180 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %variable, label %do.end339 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb11
    i8 3, label %for.cond42.preheader
    i8 14, label %sw.bb54
    i8 18, label %sw.bb61
    i8 19, label %sw.bb73
    i8 28, label %sw.bb84
    i8 29, label %sw.bb105
    i8 30, label %sw.bb117
    i8 32, label %sw.bb179
    i8 33, label %sw.bb188
    i8 44, label %sw.bb233
    i8 53, label %sw.bb236
    i8 87, label %sw.bb244
    i8 57, label %sw.bb245
    i8 56, label %sw.bb246
    i8 72, label %sw.bb247
    i8 27, label %sw.bb249
    i8 60, label %sw.bb250
    i8 61, label %entry.sw.epilog343_crit_edge
    i8 65, label %sw.bb251
    i8 62, label %sw.bb253
    i8 82, label %sw.bb281
    i8 84, label %sw.bb290
    i8 89, label %sw.bb304
    i8 90, label %sw.bb317
  ]

entry.sw.epilog343_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

for.cond42.preheader:                             ; preds = %entry
  %write8_async.i550 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i551 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i554 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i550, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #6
  %7 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i552 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i552, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i553 = icmp eq i8 %10, 0
  br i1 %tobool.not.i553, label %for.cond42.preheader.rtl_write_byte.exit557_crit_edge, label %if.then.i556

for.cond42.preheader.rtl_write_byte.exit557_crit_edge: ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit557

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
  tail call void %14(ptr noundef %1, i32 noundef 1552, i8 noundef zeroext %12) #6
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.cond.preheader.rtl_write_byte.exit_crit_edge, label %if.then.i

for.cond.preheader.rtl_write_byte.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1552) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.cond.preheader.rtl_write_byte.exit_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %val, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1553, i8 noundef zeroext %22) #6
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.1 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.1, label %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge, label %if.then.i.1

rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.1

if.then.i.1:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i.1 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1553) #6
  br label %rtl_write_byte.exit.1

rtl_write_byte.exit.1:                            ; preds = %if.then.i.1, %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %val, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %33 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1554, i8 noundef zeroext %32) #6
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.2 = icmp eq i8 %38, 0
  br i1 %tobool.not.i.2, label %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge, label %if.then.i.2

rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge: ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.2

if.then.i.2:                                      ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i, align 4
  %call.i.2 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 1554) #6
  br label %rtl_write_byte.exit.2

rtl_write_byte.exit.2:                            ; preds = %if.then.i.2, %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %val, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3, align 1
  %43 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1555, i8 noundef zeroext %42) #6
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.3 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.3, label %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge, label %if.then.i.3

rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge: ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.3

if.then.i.3:                                      ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i, align 4
  %call.i.3 = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 1555) #6
  br label %rtl_write_byte.exit.3

rtl_write_byte.exit.3:                            ; preds = %if.then.i.3, %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %val, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4, align 1
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1556, i8 noundef zeroext %52) #6
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.4 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.4, label %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge, label %if.then.i.4

rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge: ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.4

if.then.i.4:                                      ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i.4 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1556) #6
  br label %rtl_write_byte.exit.4

rtl_write_byte.exit.4:                            ; preds = %if.then.i.4, %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %val, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5, align 1
  %63 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 1557, i8 noundef zeroext %62) #6
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog343_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog343_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #6
  br label %sw.epilog343

sw.bb11:                                          ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 351
  %vendor = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 35
  %74 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp15 = icmp eq i32 %75, 6
  %76 = and i16 %72, 336
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp19 = icmp eq i16 %76, 0
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  %or = zext i1 %or.cond to i16
  %rate_cfg.0 = or i16 %73, %or
  %conv25 = trunc i16 %rate_cfg.0 to i8
  %write8_async.i526 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %77 = ptrtoint ptr %write8_async.i526 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i526, align 4
  tail call void %78(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv25) #6
  %cfg.i527 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %79 = ptrtoint ptr %cfg.i527 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i527, align 8
  %write_readback.i528 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i528 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i528, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i529 = icmp eq i8 %82, 0
  br i1 %tobool.not.i529, label %sw.bb11.rtl_write_byte.exit533_crit_edge, label %if.then.i532

sw.bb11.rtl_write_byte.exit533_crit_edge:         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit533

if.then.i532:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i530 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %83 = ptrtoint ptr %read8_sync.i530 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i530, align 4
  %call.i531 = tail call zeroext i8 %84(ptr noundef %1, i32 noundef 1088) #6
  br label %rtl_write_byte.exit533

rtl_write_byte.exit533:                           ; preds = %if.then.i532, %sw.bb11.rtl_write_byte.exit533_crit_edge
  %85 = lshr i16 %73, 8
  %conv28 = trunc i16 %85 to i8
  %86 = ptrtoint ptr %write8_async.i526 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i526, align 4
  tail call void %87(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv28) #6
  %88 = ptrtoint ptr %cfg.i527 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i527, align 8
  %write_readback.i536 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i536 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i536, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i537 = icmp eq i8 %91, 0
  br i1 %tobool.not.i537, label %rtl_write_byte.exit533.rtl_write_byte.exit541_crit_edge, label %if.then.i540

rtl_write_byte.exit533.rtl_write_byte.exit541_crit_edge: ; preds = %rtl_write_byte.exit533
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit541

if.then.i540:                                     ; preds = %rtl_write_byte.exit533
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i538 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %92 = ptrtoint ptr %read8_sync.i538 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i538, align 4
  %call.i539 = tail call zeroext i8 %93(ptr noundef %1, i32 noundef 1089) #6
  br label %rtl_write_byte.exit541

rtl_write_byte.exit541:                           ; preds = %if.then.i540, %rtl_write_byte.exit533.rtl_write_byte.exit541_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %rate_cfg.0)
  %cmp30862 = icmp ugt i16 %rate_cfg.0, 1
  br i1 %cmp30862, label %rtl_write_byte.exit541.while.body_crit_edge, label %rtl_write_byte.exit541.while.end_crit_edge

rtl_write_byte.exit541.while.end_crit_edge:       ; preds = %rtl_write_byte.exit541
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

rtl_write_byte.exit541.while.body_crit_edge:      ; preds = %rtl_write_byte.exit541
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit541.while.body_crit_edge
  %rate_cfg.1864 = phi i16 [ %94, %while.body.while.body_crit_edge ], [ %rate_cfg.0, %rtl_write_byte.exit541.while.body_crit_edge ]
  %rate_index.0863 = phi i8 [ %inc35, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit541.while.body_crit_edge ]
  %94 = lshr i16 %rate_cfg.1864, 1
  %inc35 = add nuw nsw i8 %rate_index.0863, 1
  %cmp30 = icmp ugt i16 %rate_cfg.1864, 3
  br i1 %cmp30, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit541.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit541.while.end_crit_edge ], [ %inc35, %while.body.while.end_crit_edge ]
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %95 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %96)
  %cmp37 = icmp ugt i16 %96, 14
  br i1 %cmp37, label %if.then39, label %while.end.sw.epilog343_crit_edge

while.end.sw.epilog343_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then39:                                        ; preds = %while.end
  %97 = ptrtoint ptr %write8_async.i526 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i526, align 4
  tail call void %98(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #6
  %99 = ptrtoint ptr %cfg.i527 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i527, align 8
  %write_readback.i544 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i544 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i544, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i545 = icmp eq i8 %102, 0
  br i1 %tobool.not.i545, label %if.then39.sw.epilog343_crit_edge, label %if.then.i548

if.then39.sw.epilog343_crit_edge:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i548:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i546 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %103 = ptrtoint ptr %read8_sync.i546 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i546, align 4
  %call.i547 = tail call zeroext i8 %104(ptr noundef %1, i32 noundef 1152) #6
  br label %sw.epilog343

if.then.i556:                                     ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555 = tail call zeroext i8 %106(ptr noundef %1, i32 noundef 1560) #6
  br label %rtl_write_byte.exit557

rtl_write_byte.exit557:                           ; preds = %if.then.i556, %for.cond42.preheader.rtl_write_byte.exit557_crit_edge
  %arrayidx50.1 = getelementptr i8, ptr %val, i32 1
  %107 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx50.1, align 1
  %109 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write8_async.i550, align 4
  tail call void %110(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %108) #6
  %111 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %write_readback.i552.1 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %write_readback.i552.1, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i553.1 = icmp eq i8 %114, 0
  br i1 %tobool.not.i553.1, label %rtl_write_byte.exit557.rtl_write_byte.exit557.1_crit_edge, label %if.then.i556.1

rtl_write_byte.exit557.rtl_write_byte.exit557.1_crit_edge: ; preds = %rtl_write_byte.exit557
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit557.1

if.then.i556.1:                                   ; preds = %rtl_write_byte.exit557
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555.1 = tail call zeroext i8 %116(ptr noundef %1, i32 noundef 1561) #6
  br label %rtl_write_byte.exit557.1

rtl_write_byte.exit557.1:                         ; preds = %if.then.i556.1, %rtl_write_byte.exit557.rtl_write_byte.exit557.1_crit_edge
  %arrayidx50.2 = getelementptr i8, ptr %val, i32 2
  %117 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx50.2, align 1
  %119 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write8_async.i550, align 4
  tail call void %120(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %118) #6
  %121 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %write_readback.i552.2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %write_readback.i552.2, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i553.2 = icmp eq i8 %124, 0
  br i1 %tobool.not.i553.2, label %rtl_write_byte.exit557.1.rtl_write_byte.exit557.2_crit_edge, label %if.then.i556.2

rtl_write_byte.exit557.1.rtl_write_byte.exit557.2_crit_edge: ; preds = %rtl_write_byte.exit557.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit557.2

if.then.i556.2:                                   ; preds = %rtl_write_byte.exit557.1
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555.2 = tail call zeroext i8 %126(ptr noundef %1, i32 noundef 1562) #6
  br label %rtl_write_byte.exit557.2

rtl_write_byte.exit557.2:                         ; preds = %if.then.i556.2, %rtl_write_byte.exit557.1.rtl_write_byte.exit557.2_crit_edge
  %arrayidx50.3 = getelementptr i8, ptr %val, i32 3
  %127 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx50.3, align 1
  %129 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write8_async.i550, align 4
  tail call void %130(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %128) #6
  %131 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_readback.i552.3 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %write_readback.i552.3, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i553.3 = icmp eq i8 %134, 0
  br i1 %tobool.not.i553.3, label %rtl_write_byte.exit557.2.rtl_write_byte.exit557.3_crit_edge, label %if.then.i556.3

rtl_write_byte.exit557.2.rtl_write_byte.exit557.3_crit_edge: ; preds = %rtl_write_byte.exit557.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit557.3

if.then.i556.3:                                   ; preds = %rtl_write_byte.exit557.2
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555.3 = tail call zeroext i8 %136(ptr noundef %1, i32 noundef 1563) #6
  br label %rtl_write_byte.exit557.3

rtl_write_byte.exit557.3:                         ; preds = %if.then.i556.3, %rtl_write_byte.exit557.2.rtl_write_byte.exit557.3_crit_edge
  %arrayidx50.4 = getelementptr i8, ptr %val, i32 4
  %137 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx50.4, align 1
  %139 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write8_async.i550, align 4
  tail call void %140(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %138) #6
  %141 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %write_readback.i552.4 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %write_readback.i552.4, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i553.4 = icmp eq i8 %144, 0
  br i1 %tobool.not.i553.4, label %rtl_write_byte.exit557.3.rtl_write_byte.exit557.4_crit_edge, label %if.then.i556.4

rtl_write_byte.exit557.3.rtl_write_byte.exit557.4_crit_edge: ; preds = %rtl_write_byte.exit557.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit557.4

if.then.i556.4:                                   ; preds = %rtl_write_byte.exit557.3
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555.4 = tail call zeroext i8 %146(ptr noundef %1, i32 noundef 1564) #6
  br label %rtl_write_byte.exit557.4

rtl_write_byte.exit557.4:                         ; preds = %if.then.i556.4, %rtl_write_byte.exit557.3.rtl_write_byte.exit557.4_crit_edge
  %arrayidx50.5 = getelementptr i8, ptr %val, i32 5
  %147 = ptrtoint ptr %arrayidx50.5 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx50.5, align 1
  %149 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write8_async.i550, align 4
  tail call void %150(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %148) #6
  %151 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %write_readback.i552.5 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %write_readback.i552.5, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i553.5 = icmp eq i8 %154, 0
  br i1 %tobool.not.i553.5, label %rtl_write_byte.exit557.4.sw.epilog343_crit_edge, label %if.then.i556.5

rtl_write_byte.exit557.4.sw.epilog343_crit_edge:  ; preds = %rtl_write_byte.exit557.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i556.5:                                   ; preds = %rtl_write_byte.exit557.4
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555.5 = tail call zeroext i8 %156(ptr noundef %1, i32 noundef 1565) #6
  br label %sw.epilog343

sw.bb54:                                          ; preds = %entry
  %157 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %val, align 1
  %write8_async.i558 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %159 = ptrtoint ptr %write8_async.i558 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8_async.i558, align 4
  tail call void %160(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %158) #6
  %cfg.i559 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %161 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i560 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_readback.i560 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %write_readback.i560, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i561 = icmp eq i8 %164, 0
  br i1 %tobool.not.i561, label %sw.bb54.rtl_write_byte.exit565_crit_edge, label %if.then.i564

sw.bb54.rtl_write_byte.exit565_crit_edge:         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit565

if.then.i564:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i562 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %165 = ptrtoint ptr %read8_sync.i562 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read8_sync.i562, align 4
  %call.i563 = tail call zeroext i8 %166(ptr noundef %1, i32 noundef 1301) #6
  br label %rtl_write_byte.exit565

rtl_write_byte.exit565:                           ; preds = %if.then.i564, %sw.bb54.rtl_write_byte.exit565_crit_edge
  %arrayidx56 = getelementptr i8, ptr %val, i32 1
  %167 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx56, align 1
  %169 = ptrtoint ptr %write8_async.i558 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write8_async.i558, align 4
  tail call void %170(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %168) #6
  %171 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i568 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %write_readback.i568 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %write_readback.i568, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i569 = icmp eq i8 %174, 0
  br i1 %tobool.not.i569, label %rtl_write_byte.exit565.rtl_write_byte.exit573_crit_edge, label %if.then.i572

rtl_write_byte.exit565.rtl_write_byte.exit573_crit_edge: ; preds = %rtl_write_byte.exit565
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit573

if.then.i572:                                     ; preds = %rtl_write_byte.exit565
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i570 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %175 = ptrtoint ptr %read8_sync.i570 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read8_sync.i570, align 4
  %call.i571 = tail call zeroext i8 %176(ptr noundef %1, i32 noundef 1303) #6
  br label %rtl_write_byte.exit573

rtl_write_byte.exit573:                           ; preds = %if.then.i572, %rtl_write_byte.exit565.rtl_write_byte.exit573_crit_edge
  %177 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %val, align 1
  %179 = ptrtoint ptr %write8_async.i558 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write8_async.i558, align 4
  tail call void %180(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %178) #6
  %181 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i576 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %write_readback.i576 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %write_readback.i576, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i577 = icmp eq i8 %184, 0
  br i1 %tobool.not.i577, label %rtl_write_byte.exit573.rtl_write_byte.exit581_crit_edge, label %if.then.i580

rtl_write_byte.exit573.rtl_write_byte.exit581_crit_edge: ; preds = %rtl_write_byte.exit573
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit581

if.then.i580:                                     ; preds = %rtl_write_byte.exit573
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i578 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %185 = ptrtoint ptr %read8_sync.i578 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %read8_sync.i578, align 4
  %call.i579 = tail call zeroext i8 %186(ptr noundef %1, i32 noundef 1065) #6
  br label %rtl_write_byte.exit581

rtl_write_byte.exit581:                           ; preds = %if.then.i580, %rtl_write_byte.exit573.rtl_write_byte.exit581_crit_edge
  %187 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %val, align 1
  %189 = ptrtoint ptr %write8_async.i558 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write8_async.i558, align 4
  tail call void %190(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %188) #6
  %191 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i584 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_readback.i584 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %write_readback.i584, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i585 = icmp eq i8 %194, 0
  br i1 %tobool.not.i585, label %rtl_write_byte.exit581.rtl_write_byte.exit589_crit_edge, label %if.then.i588

rtl_write_byte.exit581.rtl_write_byte.exit589_crit_edge: ; preds = %rtl_write_byte.exit581
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit589

if.then.i588:                                     ; preds = %rtl_write_byte.exit581
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i586 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %195 = ptrtoint ptr %read8_sync.i586 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read8_sync.i586, align 4
  %call.i587 = tail call zeroext i8 %196(ptr noundef %1, i32 noundef 1595) #6
  br label %rtl_write_byte.exit589

rtl_write_byte.exit589:                           ; preds = %if.then.i588, %rtl_write_byte.exit581.rtl_write_byte.exit589_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %197 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not = icmp eq i8 %198, 0
  br i1 %tobool.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %rtl_write_byte.exit589
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %199 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write16_async.i, align 4
  tail call void %200(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #6
  %201 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i591 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %write_readback.i591 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %write_readback.i591, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i592 = icmp eq i8 %204, 0
  br i1 %tobool.not.i592, label %if.then59.sw.epilog343_crit_edge, label %if.then.i594

if.then59.sw.epilog343_crit_edge:                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i594:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %205 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read16_sync.i, align 4
  %call.i593 = tail call zeroext i16 %206(ptr noundef %1, i32 noundef 1598) #6
  br label %sw.epilog343

if.else:                                          ; preds = %rtl_write_byte.exit589
  %207 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %val, align 2
  %write16_async.i595 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %209 = ptrtoint ptr %write16_async.i595 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write16_async.i595, align 4
  tail call void %210(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %208) #6
  %211 = ptrtoint ptr %cfg.i559 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cfg.i559, align 8
  %write_readback.i597 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %write_readback.i597 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %write_readback.i597, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i598 = icmp eq i8 %214, 0
  br i1 %tobool.not.i598, label %if.else.sw.epilog343_crit_edge, label %if.then.i601

if.else.sw.epilog343_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i601:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i599 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %215 = ptrtoint ptr %read16_sync.i599 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read16_sync.i599, align 4
  %call.i600 = tail call zeroext i16 %216(ptr noundef %1, i32 noundef 1598) #6
  br label %sw.epilog343

sw.bb61:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #6
  %217 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %val, align 1
  %conv63 = zext i8 %218 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv63) #6
  %219 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %val, align 1
  %write8_async.i603 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %221 = ptrtoint ptr %write8_async.i603 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write8_async.i603, align 4
  tail call void %222(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %220) #6
  %cfg.i604 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %223 = ptrtoint ptr %cfg.i604 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cfg.i604, align 8
  %write_readback.i605 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %write_readback.i605 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %write_readback.i605, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.i606 = icmp eq i8 %226, 0
  br i1 %tobool.not.i606, label %sw.bb61.rtl_write_byte.exit610_crit_edge, label %if.then.i609

sw.bb61.rtl_write_byte.exit610_crit_edge:         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit610

if.then.i609:                                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i607 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %227 = ptrtoint ptr %read8_sync.i607 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read8_sync.i607, align 4
  %call.i608 = tail call zeroext i8 %228(ptr noundef %1, i32 noundef 1307) #6
  br label %rtl_write_byte.exit610

rtl_write_byte.exit610:                           ; preds = %if.then.i609, %sw.bb61.rtl_write_byte.exit610_crit_edge
  %229 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %e_aci, align 1
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %rtl_write_byte.exit610
  %230 = ptrtoint ptr %cfg.i604 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cfg.i604, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %231, i32 0, i32 4
  %232 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %233, i32 0, i32 20
  %234 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %set_hw_reg, align 4
  call void %235(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #6
  %236 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %e_aci, align 1
  %inc71 = add i8 %237, 1
  store i8 %inc71, ptr %e_aci, align 1
  %cmp67 = icmp ult i8 %inc71, 4
  br i1 %cmp67, label %for.body69.for.body69_crit_edge, label %for.end72

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body69

for.end72:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #6
  br label %sw.epilog343

sw.bb73:                                          ; preds = %entry
  %238 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool74.not = icmp eq i8 %239, 0
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %240 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %241, 5
  %242 = or i8 %shl, -128
  %spec.select = select i1 %tobool74.not, i8 %shl, i8 %242
  %write8_async.i611 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %243 = ptrtoint ptr %write8_async.i611 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write8_async.i611, align 4
  tail call void %244(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %spec.select) #6
  %cfg.i612 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %245 = ptrtoint ptr %cfg.i612 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cfg.i612, align 8
  %write_readback.i613 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %write_readback.i613 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %write_readback.i613, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not.i614 = icmp eq i8 %248, 0
  br i1 %tobool.not.i614, label %sw.bb73.sw.epilog343_crit_edge, label %if.then.i617

sw.bb73.sw.epilog343_crit_edge:                   ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i617:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i615 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %249 = ptrtoint ptr %read8_sync.i615 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read8_sync.i615, align 4
  %call.i616 = tail call zeroext i8 %250(ptr noundef %1, i32 noundef 1090) #6
  br label %sw.epilog343

sw.bb84:                                          ; preds = %entry
  %251 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %252)
  %cmp86 = icmp ult i8 %252, 8
  br i1 %cmp86, label %if.end94, label %sw.bb84.sw.epilog343_crit_edge

sw.bb84.sw.epilog343_crit_edge:                   ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.end94:                                         ; preds = %sw.bb84
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %253 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %min_space_cfg, align 4
  %255 = and i8 %254, -8
  %or98521 = or i8 %255, %252
  store i8 %or98521, ptr %min_space_cfg, align 4
  %256 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %252, ptr %val, align 1
  %257 = load i8, ptr %min_space_cfg, align 4
  %conv102 = zext i8 %257 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv102) #6
  %258 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i619 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %260 = ptrtoint ptr %write8_async.i619 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write8_async.i619, align 4
  tail call void %261(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %259) #6
  %cfg.i620 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %262 = ptrtoint ptr %cfg.i620 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cfg.i620, align 8
  %write_readback.i621 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %write_readback.i621 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %write_readback.i621, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.not.i622 = icmp eq i8 %265, 0
  br i1 %tobool.not.i622, label %if.end94.sw.epilog343_crit_edge, label %if.then.i625

if.end94.sw.epilog343_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i625:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i623 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %266 = ptrtoint ptr %read8_sync.i623 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %read8_sync.i623, align 4
  %call.i624 = tail call zeroext i8 %267(ptr noundef %1, i32 noundef 1116) #6
  br label %sw.epilog343

sw.bb105:                                         ; preds = %entry
  %268 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %val, align 1
  %minspace_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 51
  %270 = ptrtoint ptr %minspace_cfg to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %minspace_cfg, align 1
  %min_space_cfg107 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %shl109 = shl i8 %269, 3
  %or112 = or i8 %shl109, %271
  %272 = ptrtoint ptr %min_space_cfg107 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %or112, ptr %min_space_cfg107, align 4
  %conv115 = zext i8 %or112 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv115) #6
  %273 = ptrtoint ptr %min_space_cfg107 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %min_space_cfg107, align 4
  %write8_async.i627 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %275 = ptrtoint ptr %write8_async.i627 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write8_async.i627, align 4
  tail call void %276(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %274) #6
  %cfg.i628 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %277 = ptrtoint ptr %cfg.i628 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cfg.i628, align 8
  %write_readback.i629 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %write_readback.i629 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %write_readback.i629, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.not.i630 = icmp eq i8 %280, 0
  br i1 %tobool.not.i630, label %sw.bb105.sw.epilog343_crit_edge, label %if.then.i633

sw.bb105.sw.epilog343_crit_edge:                  ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i633:                                     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i631 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %281 = ptrtoint ptr %read8_sync.i631 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read8_sync.i631, align 4
  %call.i632 = tail call zeroext i8 %282(ptr noundef %1, i32 noundef 1116) #6
  br label %sw.epilog343

sw.bb117:                                         ; preds = %entry
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %283 = ptrtoint ptr %macphymode to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %macphymode, align 4
  %285 = zext i32 %284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %284, label %if.else126 [
    i32 1, label %sw.bb117.if.end128_crit_edge
    i32 2, label %if.then125
  ]

sw.bb117.if.end128_crit_edge:                     ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then125:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.else126:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then125, %sw.bb117.if.end128_crit_edge
  %regtoset.sroa.15.0 = phi i8 [ -88, %if.else126 ], [ 102, %if.then125 ], [ 102, %sw.bb117.if.end128_crit_edge ]
  %regtoset.sroa.11.0 = phi i8 [ 114, %if.else126 ], [ 98, %if.then125 ], [ 114, %sw.bb117.if.end128_crit_edge ]
  %regtoset.sroa.0.0 = phi i8 [ -71, %if.else126 ], [ 102, %if.then125 ], [ -71, %sw.bb117.if.end128_crit_edge ]
  %286 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %287)
  %cmp130 = icmp ult i8 %287, 4
  br i1 %cmp130, label %if.then132, label %if.end128.sw.epilog343_crit_edge

if.end128.sw.epilog343_crit_edge:                 ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then132:                                       ; preds = %if.end128
  %conv129 = zext i8 %287 to i32
  %shl135 = shl nuw nsw i32 4, %conv129
  %conv136 = trunc i32 %shl135 to i8
  %conv137 = and i32 %shl135, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv137)
  %cmp138.not = icmp eq i32 %conv137, 0
  %spec.store.select = select i1 %cmp138.not, i8 %conv136, i8 15
  %conv150 = zext i8 %spec.store.select to i32
  %shl151 = shl nuw nsw i32 %conv150, 4
  %conv148 = zext i8 %regtoset.sroa.0.0 to i32
  %and149 = and i32 %conv148, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and149, i32 %shl151)
  %cmp152 = icmp ugt i32 %and149, %shl151
  %and156 = and i32 %conv148, 15
  %or159 = or i32 %and156, %shl151
  %conv160 = trunc i32 %or159 to i8
  %regtoset.sroa.0.1 = select i1 %cmp152, i8 %conv160, i8 %regtoset.sroa.0.0
  %288 = and i8 %regtoset.sroa.0.1, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %288, i8 %spec.store.select)
  %cmp165 = icmp ugt i8 %288, %spec.store.select
  %and169 = and i8 %regtoset.sroa.0.1, -16
  %or171 = or i8 %and169, %spec.store.select
  %regtoset.sroa.0.2 = select i1 %cmp165, i8 %or171, i8 %regtoset.sroa.0.1
  %289 = and i8 %regtoset.sroa.11.0, 112
  %and149.1 = zext i8 %289 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl151, i32 %and149.1)
  %cmp152.1 = icmp ult i32 %shl151, %and149.1
  %290 = trunc i32 %shl151 to i8
  %conv160.1 = or i8 %290, 2
  %regtoset.sroa.11.1 = select i1 %cmp152.1, i8 %conv160.1, i8 %regtoset.sroa.11.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.store.select)
  %cmp165.1 = icmp ult i8 %spec.store.select, 2
  %and169.1 = and i8 %regtoset.sroa.11.1, -16
  %or171.1 = or i8 %and169.1, %spec.store.select
  %regtoset.sroa.11.2 = select i1 %cmp165.1, i8 %or171.1, i8 %regtoset.sroa.11.1
  %conv148.2 = zext i8 %regtoset.sroa.15.0 to i32
  %and149.2 = and i32 %conv148.2, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %and149.2, i32 %shl151)
  %cmp152.2 = icmp ugt i32 %and149.2, %shl151
  %and156.2 = and i32 %conv148.2, 14
  %or159.2 = or i32 %and156.2, %shl151
  %conv160.2 = trunc i32 %or159.2 to i8
  %regtoset.sroa.15.1 = select i1 %cmp152.2, i8 %conv160.2, i8 %regtoset.sroa.15.0
  %291 = and i8 %regtoset.sroa.15.1, 14
  call void @__sanitizer_cov_trace_cmp1(i8 %291, i8 %spec.store.select)
  %cmp165.2 = icmp ugt i8 %291, %spec.store.select
  %and169.2 = and i8 %regtoset.sroa.15.1, -16
  %or171.2 = or i8 %and169.2, %spec.store.select
  %regtoset.sroa.15.2 = select i1 %cmp165.2, i8 %or171.2, i8 %regtoset.sroa.15.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp165.3 = icmp eq i8 %spec.store.select, 0
  %regtoset.sroa.19.2 = select i1 %cmp165.3, i32 64, i32 65
  %regtoset.sroa.15.0.insert.ext = zext i8 %regtoset.sroa.15.2 to i32
  %regtoset.sroa.15.0.insert.shift = shl nuw nsw i32 %regtoset.sroa.15.0.insert.ext, 8
  %regtoset.sroa.15.0.insert.insert = or i32 %regtoset.sroa.15.0.insert.shift, %regtoset.sroa.19.2
  %regtoset.sroa.11.0.insert.ext = zext i8 %regtoset.sroa.11.2 to i32
  %regtoset.sroa.11.0.insert.shift = shl nuw nsw i32 %regtoset.sroa.11.0.insert.ext, 16
  %regtoset.sroa.11.0.insert.insert = or i32 %regtoset.sroa.15.0.insert.insert, %regtoset.sroa.11.0.insert.shift
  %regtoset.sroa.0.0.insert.ext = zext i8 %regtoset.sroa.0.2 to i32
  %regtoset.sroa.0.0.insert.shift = shl nuw i32 %regtoset.sroa.0.0.insert.ext, 24
  %regtoset.sroa.0.0.insert.insert = or i32 %regtoset.sroa.11.0.insert.insert, %regtoset.sroa.0.0.insert.shift
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %292 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write32_async.i, align 4
  tail call void %293(ptr noundef %1, i32 noundef 1112, i32 noundef %regtoset.sroa.0.0.insert.insert) #6
  %cfg.i635 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %294 = ptrtoint ptr %cfg.i635 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i635, align 8
  %write_readback.i636 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %write_readback.i636 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %write_readback.i636, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.not.i637 = icmp eq i8 %297, 0
  br i1 %tobool.not.i637, label %if.then132.rtl_write_dword.exit_crit_edge, label %if.then.i639

if.then132.rtl_write_dword.exit_crit_edge:        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i639:                                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %298 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %read32_sync.i, align 4
  %call.i638 = tail call i32 %299(ptr noundef %1, i32 noundef 1112) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i639, %if.then132.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv150) #6
  br label %sw.epilog343

sw.bb179:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci180) #6
  %300 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %val, align 1
  %302 = ptrtoint ptr %e_aci180 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %e_aci180, align 1
  tail call void @rtl92d_dm_init_edca_turbo(ptr noundef %hw) #6
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %303 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %304)
  %cmp181.not = icmp eq i32 %304, 2
  br i1 %cmp181.not, label %sw.bb179.if.end187_crit_edge, label %if.then183

sw.bb179.if.end187_crit_edge:                     ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187

if.then183:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  %cfg184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %305 = ptrtoint ptr %cfg184 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cfg184, align 8
  %ops185 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %306, i32 0, i32 4
  %307 = ptrtoint ptr %ops185 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ops185, align 4
  %set_hw_reg186 = getelementptr inbounds %struct.rtl_hal_ops, ptr %308, i32 0, i32 20
  %309 = ptrtoint ptr %set_hw_reg186 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %set_hw_reg186, align 4
  call void %310(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci180) #6
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %sw.bb179.if.end187_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci180) #6
  br label %sw.epilog343

sw.bb188:                                         ; preds = %entry
  %311 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %313 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %313)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i640 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %314 = ptrtoint ptr %read8_sync.i640 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read8_sync.i640, align 4
  %call.i641 = tail call zeroext i8 %315(ptr noundef %1, i32 noundef 1472) #6
  %acm_method192 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %316 = ptrtoint ptr %acm_method192 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %acm_method192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %317)
  %cmp193 = icmp ne i32 %317, 2
  %cond = zext i1 %cmp193 to i8
  %or195 = or i8 %call.i641, %cond
  %318 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool197.not = icmp eq i8 %318, 0
  br i1 %tobool197.not, label %if.else213, label %if.then198

if.then198:                                       ; preds = %sw.bb188
  %319 = zext i8 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %312, label %sw.default [
    i8 0, label %sw.bb200
    i8 2, label %sw.bb204
    i8 3, label %sw.bb208
  ]

sw.bb200:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  %320 = or i8 %or195, 2
  br label %if.end231

sw.bb204:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  %321 = or i8 %or195, 4
  br label %if.end231

sw.bb208:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  %322 = or i8 %or195, 8
  br label %if.end231

sw.default:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 1) #6
  br label %if.end231

if.else213:                                       ; preds = %sw.bb188
  %323 = zext i8 %312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %323, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %312, label %do.end [
    i8 0, label %sw.bb215
    i8 2, label %sw.bb219
    i8 3, label %sw.bb223
  ]

sw.bb215:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %324 = and i8 %or195, -3
  br label %if.end231

sw.bb219:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %325 = and i8 %or195, -5
  br label %if.end231

sw.bb223:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %326 = and i8 %or195, -9
  br label %if.end231

do.end:                                           ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #8
  %conv214 = zext i8 %312 to i32
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv214) #9
  br label %if.end231

if.end231:                                        ; preds = %do.end, %sw.bb223, %sw.bb219, %sw.bb215, %sw.default, %sw.bb208, %sw.bb204, %sw.bb200
  %acm_ctrl.0 = phi i8 [ %or195, %sw.default ], [ %322, %sw.bb208 ], [ %321, %sw.bb204 ], [ %320, %sw.bb200 ], [ %or195, %do.end ], [ %326, %sw.bb223 ], [ %325, %sw.bb219 ], [ %324, %sw.bb215 ]
  %conv232 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv232) #6
  %write8_async.i642 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %327 = ptrtoint ptr %write8_async.i642 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %write8_async.i642, align 4
  tail call void %328(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #6
  %cfg.i643 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %329 = ptrtoint ptr %cfg.i643 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %cfg.i643, align 8
  %write_readback.i644 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %write_readback.i644 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %write_readback.i644, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool.not.i645 = icmp eq i8 %332, 0
  br i1 %tobool.not.i645, label %if.end231.sw.epilog343_crit_edge, label %if.then.i648

if.end231.sw.epilog343_crit_edge:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i648:                                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  %333 = ptrtoint ptr %read8_sync.i640 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %read8_sync.i640, align 4
  %call.i647 = tail call zeroext i8 %334(ptr noundef %1, i32 noundef 1472) #6
  br label %sw.epilog343

sw.bb233:                                         ; preds = %entry
  %335 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %val, align 4
  %write32_async.i650 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %337 = ptrtoint ptr %write32_async.i650 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %write32_async.i650, align 4
  tail call void %338(ptr noundef %1, i32 noundef 1544, i32 noundef %336) #6
  %cfg.i651 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %339 = ptrtoint ptr %cfg.i651 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cfg.i651, align 8
  %write_readback.i652 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %write_readback.i652 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %write_readback.i652, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool.not.i653 = icmp eq i8 %342, 0
  br i1 %tobool.not.i653, label %sw.bb233.rtl_write_dword.exit657_crit_edge, label %if.then.i656

sw.bb233.rtl_write_dword.exit657_crit_edge:       ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit657

if.then.i656:                                     ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i654 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %343 = ptrtoint ptr %read32_sync.i654 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %read32_sync.i654, align 4
  %call.i655 = tail call i32 %344(ptr noundef %1, i32 noundef 1544) #6
  br label %rtl_write_dword.exit657

rtl_write_dword.exit657:                          ; preds = %if.then.i656, %sw.bb233.rtl_write_dword.exit657_crit_edge
  %345 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %347 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %receive_config, align 4
  br label %sw.epilog343

sw.bb236:                                         ; preds = %entry
  %348 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %val, align 1
  %conv238 = zext i8 %349 to i32
  %shl239 = shl nuw nsw i32 %conv238, 8
  %or242 = or i32 %shl239, %conv238
  %conv243 = trunc i32 %or242 to i16
  %write16_async.i658 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %350 = ptrtoint ptr %write16_async.i658 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %write16_async.i658, align 4
  tail call void %351(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv243) #6
  %cfg.i659 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %352 = ptrtoint ptr %cfg.i659 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %cfg.i659, align 8
  %write_readback.i660 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %write_readback.i660 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %write_readback.i660, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool.not.i661 = icmp eq i8 %355, 0
  br i1 %tobool.not.i661, label %sw.bb236.sw.epilog343_crit_edge, label %if.then.i664

sw.bb236.sw.epilog343_crit_edge:                  ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i664:                                     ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i662 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %356 = ptrtoint ptr %read16_sync.i662 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %read16_sync.i662, align 4
  %call.i663 = tail call zeroext i16 %357(ptr noundef %1, i32 noundef 1066) #6
  br label %sw.epilog343

sw.bb244:                                         ; preds = %entry
  %write8_async.i666 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %358 = ptrtoint ptr %write8_async.i666 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %write8_async.i666, align 4
  tail call void %359(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #6
  %cfg.i667 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %360 = ptrtoint ptr %cfg.i667 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %cfg.i667, align 8
  %write_readback.i668 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %write_readback.i668 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %write_readback.i668, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool.not.i669 = icmp eq i8 %363, 0
  br i1 %tobool.not.i669, label %sw.bb244.sw.epilog343_crit_edge, label %if.then.i672

sw.bb244.sw.epilog343_crit_edge:                  ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i672:                                     ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i670 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %364 = ptrtoint ptr %read8_sync.i670 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %read8_sync.i670, align 4
  %call.i671 = tail call zeroext i8 %365(ptr noundef %1, i32 noundef 1363) #6
  br label %sw.epilog343

sw.bb245:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %366 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %368 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %367, ptr %efuse_usedbytes, align 4
  br label %sw.epilog343

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %369 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %371 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %370, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog343

sw.bb247:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %372 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %val, align 4
  %call248 = tail call zeroext i1 @rtl92d_phy_set_io_cmd(ptr noundef %hw, i32 noundef %373) #6
  br label %sw.epilog343

sw.bb249:                                         ; preds = %entry
  %374 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %val, align 1
  %write8_async.i674 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %376 = ptrtoint ptr %write8_async.i674 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %write8_async.i674, align 4
  tail call void %377(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %375) #6
  %cfg.i675 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %378 = ptrtoint ptr %cfg.i675 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %cfg.i675, align 8
  %write_readback.i676 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %write_readback.i676 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %write_readback.i676, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool.not.i677 = icmp eq i8 %381, 0
  br i1 %tobool.not.i677, label %sw.bb249.sw.epilog343_crit_edge, label %if.then.i680

sw.bb249.sw.epilog343_crit_edge:                  ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i680:                                     ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i678 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %382 = ptrtoint ptr %read8_sync.i678 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %read8_sync.i678, align 4
  %call.i679 = tail call zeroext i8 %383(ptr noundef %1, i32 noundef 1664) #6
  br label %sw.epilog343

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl92d_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 15, i32 noundef 1, ptr noundef %val) #6
  br label %sw.epilog343

sw.bb251:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %val, align 1, !range !159
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %386 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %385, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog343

sw.bb253:                                         ; preds = %entry
  %387 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %388)
  %cmp255 = icmp eq i8 %388, 1
  br i1 %cmp255, label %if.then257, label %sw.bb253.if.end280_crit_edge

sw.bb253.if.end280_crit_edge:                     ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end280

if.then257:                                       ; preds = %sw.bb253
  %cfg258 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %389 = ptrtoint ptr %cfg258 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cfg258, align 8
  %ops259 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %390, i32 0, i32 4
  %391 = ptrtoint ptr %ops259 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %ops259, align 4
  %set_hw_reg260 = getelementptr inbounds %struct.rtl_hal_ops, ptr %392, i32 0, i32 20
  %393 = ptrtoint ptr %set_hw_reg260 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %set_hw_reg260, align 4
  tail call void %394(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #6
  %read8_sync.i682 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %395 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %read8_sync.i682, align 4
  %call.i683 = tail call zeroext i8 %396(ptr noundef %1, i32 noundef 257) #6
  %or263 = or i8 %call.i683, 1
  %write8_async.i684 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %397 = ptrtoint ptr %write8_async.i684 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %write8_async.i684, align 4
  tail call void %398(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %or263) #6
  %399 = ptrtoint ptr %cfg258 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cfg258, align 8
  %write_readback.i686 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %400, i32 0, i32 1
  %401 = ptrtoint ptr %write_readback.i686 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %write_readback.i686, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.i687 = icmp eq i8 %402, 0
  br i1 %tobool.not.i687, label %if.then257.rtl_write_byte.exit691_crit_edge, label %if.then.i690

if.then257.rtl_write_byte.exit691_crit_edge:      ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit691

if.then.i690:                                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #8
  %403 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read8_sync.i682, align 4
  %call.i689 = tail call zeroext i8 %404(ptr noundef %1, i32 noundef 257) #6
  br label %rtl_write_byte.exit691

rtl_write_byte.exit691:                           ; preds = %if.then.i690, %if.then257.rtl_write_byte.exit691_crit_edge
  %405 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %406, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %407 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %408, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %406, i32 0, i32 13, i32 5
  %409 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %410(ptr noundef %406, i32 noundef 1360, i8 noundef zeroext %conv6.i) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %406, i32 0, i32 32
  %411 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %412, i32 0, i32 1
  %413 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %tobool.not.i.i = icmp eq i8 %414, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit691._rtl92de_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit691._rtl92de_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit691
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit691
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %406, i32 0, i32 13, i32 9
  %415 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %416(ptr noundef %406, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit

_rtl92de_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i, %rtl_write_byte.exit691._rtl92de_set_bcn_ctrl_reg.exit_crit_edge
  %417 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i693 = getelementptr inbounds %struct.rtl_priv, ptr %418, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %419 = ptrtoint ptr %reg_bcn_ctrl_val.i693 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %reg_bcn_ctrl_val.i693, align 4
  %or.i = or i32 %420, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i693, align 4
  %conv6.i694 = trunc i32 %or.i to i8
  %write8_async.i.i695 = getelementptr inbounds %struct.rtl_priv, ptr %418, i32 0, i32 13, i32 5
  %421 = ptrtoint ptr %write8_async.i.i695 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %write8_async.i.i695, align 4
  tail call void %422(ptr noundef %418, i32 noundef 1360, i8 noundef zeroext %conv6.i694) #6
  %cfg.i.i696 = getelementptr inbounds %struct.rtl_priv, ptr %418, i32 0, i32 32
  %423 = ptrtoint ptr %cfg.i.i696 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cfg.i.i696, align 8
  %write_readback.i.i697 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %424, i32 0, i32 1
  %425 = ptrtoint ptr %write_readback.i.i697 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %write_readback.i.i697, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i.i698 = icmp eq i8 %426, 0
  br i1 %tobool.not.i.i698, label %_rtl92de_set_bcn_ctrl_reg.exit._rtl92de_set_bcn_ctrl_reg.exit702_crit_edge, label %if.then.i.i701

_rtl92de_set_bcn_ctrl_reg.exit._rtl92de_set_bcn_ctrl_reg.exit702_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit702

if.then.i.i701:                                   ; preds = %_rtl92de_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i699 = getelementptr inbounds %struct.rtl_priv, ptr %418, i32 0, i32 13, i32 9
  %427 = ptrtoint ptr %read8_sync.i.i699 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read8_sync.i.i699, align 4
  %call.i.i700 = tail call zeroext i8 %428(ptr noundef %418, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit702

_rtl92de_set_bcn_ctrl_reg.exit702:                ; preds = %if.then.i.i701, %_rtl92de_set_bcn_ctrl_reg.exit._rtl92de_set_bcn_ctrl_reg.exit702_crit_edge
  %429 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %read8_sync.i682, align 4
  %call.i704 = tail call zeroext i8 %430(ptr noundef %1, i32 noundef 1058) #6
  %431 = and i8 %call.i704, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool268.not = icmp eq i8 %431, 0
  %and272 = and i8 %call.i704, -65
  %432 = ptrtoint ptr %write8_async.i684 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %write8_async.i684, align 4
  tail call void %433(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and272) #6
  %434 = ptrtoint ptr %cfg258 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cfg258, align 8
  %write_readback.i707 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %435, i32 0, i32 1
  %436 = ptrtoint ptr %write_readback.i707 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %write_readback.i707, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool.not.i708 = icmp eq i8 %437, 0
  br i1 %tobool.not.i708, label %_rtl92de_set_bcn_ctrl_reg.exit702.rtl_write_byte.exit712_crit_edge, label %if.then.i711

_rtl92de_set_bcn_ctrl_reg.exit702.rtl_write_byte.exit712_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit702
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit712

if.then.i711:                                     ; preds = %_rtl92de_set_bcn_ctrl_reg.exit702
  call void @__sanitizer_cov_trace_pc() #8
  %438 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read8_sync.i682, align 4
  %call.i710 = tail call zeroext i8 %439(ptr noundef %1, i32 noundef 1058) #6
  br label %rtl_write_byte.exit712

rtl_write_byte.exit712:                           ; preds = %if.then.i711, %_rtl92de_set_bcn_ctrl_reg.exit702.rtl_write_byte.exit712_crit_edge
  tail call void @rtl92d_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext false) #6
  %440 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i714 = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %442 = ptrtoint ptr %reg_bcn_ctrl_val.i714 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %reg_bcn_ctrl_val.i714, align 4
  %or.i715 = or i32 %443, 8
  store i32 %or.i715, ptr %reg_bcn_ctrl_val.i714, align 4
  %conv6.i716 = trunc i32 %or.i715 to i8
  %write8_async.i.i717 = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 0, i32 13, i32 5
  %444 = ptrtoint ptr %write8_async.i.i717 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %write8_async.i.i717, align 4
  tail call void %445(ptr noundef %441, i32 noundef 1360, i8 noundef zeroext %conv6.i716) #6
  %cfg.i.i718 = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 0, i32 32
  %446 = ptrtoint ptr %cfg.i.i718 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cfg.i.i718, align 8
  %write_readback.i.i719 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %447, i32 0, i32 1
  %448 = ptrtoint ptr %write_readback.i.i719 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %write_readback.i.i719, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool.not.i.i720 = icmp eq i8 %449, 0
  br i1 %tobool.not.i.i720, label %rtl_write_byte.exit712._rtl92de_set_bcn_ctrl_reg.exit724_crit_edge, label %if.then.i.i723

rtl_write_byte.exit712._rtl92de_set_bcn_ctrl_reg.exit724_crit_edge: ; preds = %rtl_write_byte.exit712
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit724

if.then.i.i723:                                   ; preds = %rtl_write_byte.exit712
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i721 = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 0, i32 13, i32 9
  %450 = ptrtoint ptr %read8_sync.i.i721 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %read8_sync.i.i721, align 4
  %call.i.i722 = tail call zeroext i8 %451(ptr noundef %441, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit724

_rtl92de_set_bcn_ctrl_reg.exit724:                ; preds = %if.then.i.i723, %rtl_write_byte.exit712._rtl92de_set_bcn_ctrl_reg.exit724_crit_edge
  %452 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i726 = getelementptr inbounds %struct.rtl_priv, ptr %453, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %454 = ptrtoint ptr %reg_bcn_ctrl_val.i726 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %reg_bcn_ctrl_val.i726, align 4
  %and.i727 = and i32 %455, -17
  store i32 %and.i727, ptr %reg_bcn_ctrl_val.i726, align 4
  %conv6.i728 = trunc i32 %and.i727 to i8
  %write8_async.i.i729 = getelementptr inbounds %struct.rtl_priv, ptr %453, i32 0, i32 13, i32 5
  %456 = ptrtoint ptr %write8_async.i.i729 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %write8_async.i.i729, align 4
  tail call void %457(ptr noundef %453, i32 noundef 1360, i8 noundef zeroext %conv6.i728) #6
  %cfg.i.i730 = getelementptr inbounds %struct.rtl_priv, ptr %453, i32 0, i32 32
  %458 = ptrtoint ptr %cfg.i.i730 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cfg.i.i730, align 8
  %write_readback.i.i731 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %write_readback.i.i731 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %write_readback.i.i731, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool.not.i.i732 = icmp eq i8 %461, 0
  br i1 %tobool.not.i.i732, label %_rtl92de_set_bcn_ctrl_reg.exit724._rtl92de_set_bcn_ctrl_reg.exit736_crit_edge, label %if.then.i.i735

_rtl92de_set_bcn_ctrl_reg.exit724._rtl92de_set_bcn_ctrl_reg.exit736_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit724
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit736

if.then.i.i735:                                   ; preds = %_rtl92de_set_bcn_ctrl_reg.exit724
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i733 = getelementptr inbounds %struct.rtl_priv, ptr %453, i32 0, i32 13, i32 9
  %462 = ptrtoint ptr %read8_sync.i.i733 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %read8_sync.i.i733, align 4
  %call.i.i734 = tail call zeroext i8 %463(ptr noundef %453, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit736

_rtl92de_set_bcn_ctrl_reg.exit736:                ; preds = %if.then.i.i735, %_rtl92de_set_bcn_ctrl_reg.exit724._rtl92de_set_bcn_ctrl_reg.exit736_crit_edge
  br i1 %tobool268.not, label %_rtl92de_set_bcn_ctrl_reg.exit736.if.end276_crit_edge, label %if.then275

_rtl92de_set_bcn_ctrl_reg.exit736.if.end276_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit736
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end276

if.then275:                                       ; preds = %_rtl92de_set_bcn_ctrl_reg.exit736
  %464 = ptrtoint ptr %write8_async.i684 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %write8_async.i684, align 4
  tail call void %465(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i704) #6
  %466 = ptrtoint ptr %cfg258 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %cfg258, align 8
  %write_readback.i739 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %467, i32 0, i32 1
  %468 = ptrtoint ptr %write_readback.i739 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %write_readback.i739, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool.not.i740 = icmp eq i8 %469, 0
  br i1 %tobool.not.i740, label %if.then275.if.end276_crit_edge, label %if.then.i743

if.then275.if.end276_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end276

if.then.i743:                                     ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #8
  %470 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %read8_sync.i682, align 4
  %call.i742 = tail call zeroext i8 %471(ptr noundef %1, i32 noundef 1058) #6
  br label %if.end276

if.end276:                                        ; preds = %if.then.i743, %if.then275.if.end276_crit_edge, %_rtl92de_set_bcn_ctrl_reg.exit736.if.end276_crit_edge
  %472 = and i8 %call.i683, -2
  %473 = ptrtoint ptr %write8_async.i684 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %write8_async.i684, align 4
  tail call void %474(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %472) #6
  %475 = ptrtoint ptr %cfg258 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cfg258, align 8
  %write_readback.i747 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %476, i32 0, i32 1
  %477 = ptrtoint ptr %write_readback.i747 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %write_readback.i747, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool.not.i748 = icmp eq i8 %478, 0
  br i1 %tobool.not.i748, label %if.end276.if.end280_crit_edge, label %if.then.i751

if.end276.if.end280_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end280

if.then.i751:                                     ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  %479 = ptrtoint ptr %read8_sync.i682 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %read8_sync.i682, align 4
  %call.i750 = tail call zeroext i8 %480(ptr noundef %1, i32 noundef 257) #6
  br label %if.end280

if.end280:                                        ; preds = %if.then.i751, %if.end276.if.end280_crit_edge, %sw.bb253.if.end280_crit_edge
  %481 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %val, align 1
  tail call void @rtl92d_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %482) #6
  br label %sw.epilog343

sw.bb281:                                         ; preds = %entry
  %read16_sync.i753 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %483 = ptrtoint ptr %read16_sync.i753 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %read16_sync.i753, align 4
  %call.i754 = tail call zeroext i16 %484(ptr noundef %1, i32 noundef 1704) #6
  %485 = and i16 %call.i754, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %486 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %assoc_id, align 2
  %or288520 = or i16 %485, %487
  %write16_async.i755 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %488 = ptrtoint ptr %write16_async.i755 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %write16_async.i755, align 4
  tail call void %489(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or288520) #6
  %cfg.i756 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %490 = ptrtoint ptr %cfg.i756 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %cfg.i756, align 8
  %write_readback.i757 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %491, i32 0, i32 1
  %492 = ptrtoint ptr %write_readback.i757 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %write_readback.i757, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool.not.i758 = icmp eq i8 %493, 0
  br i1 %tobool.not.i758, label %sw.bb281.sw.epilog343_crit_edge, label %if.then.i761

sw.bb281.sw.epilog343_crit_edge:                  ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i761:                                     ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #8
  %494 = ptrtoint ptr %read16_sync.i753 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %read16_sync.i753, align 4
  %call.i760 = tail call zeroext i16 %495(ptr noundef %1, i32 noundef 1704) #6
  br label %sw.epilog343

sw.bb290:                                         ; preds = %entry
  %496 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %tobool292.not = icmp eq i8 %497, 0
  br i1 %tobool292.not, label %if.end303.critedge, label %if.then293

if.then293:                                       ; preds = %sw.bb290
  tail call fastcc void @_rtl92de_stop_tx_beacon(ptr noundef %hw)
  %498 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i764 = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %500 = ptrtoint ptr %reg_bcn_ctrl_val.i764 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %reg_bcn_ctrl_val.i764, align 4
  %and.i765 = and i32 %501, -9
  store i32 %and.i765, ptr %reg_bcn_ctrl_val.i764, align 4
  %conv6.i766 = trunc i32 %and.i765 to i8
  %write8_async.i.i767 = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 0, i32 13, i32 5
  %502 = ptrtoint ptr %write8_async.i.i767 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write8_async.i.i767, align 4
  tail call void %503(ptr noundef %499, i32 noundef 1360, i8 noundef zeroext %conv6.i766) #6
  %cfg.i.i768 = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 0, i32 32
  %504 = ptrtoint ptr %cfg.i.i768 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %cfg.i.i768, align 8
  %write_readback.i.i769 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %write_readback.i.i769 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %write_readback.i.i769, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %tobool.not.i.i770 = icmp eq i8 %507, 0
  br i1 %tobool.not.i.i770, label %if.then293._rtl92de_set_bcn_ctrl_reg.exit774_crit_edge, label %if.then.i.i773

if.then293._rtl92de_set_bcn_ctrl_reg.exit774_crit_edge: ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit774

if.then.i.i773:                                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i771 = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 0, i32 13, i32 9
  %508 = ptrtoint ptr %read8_sync.i.i771 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %read8_sync.i.i771, align 4
  %call.i.i772 = tail call zeroext i8 %509(ptr noundef %499, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit774

_rtl92de_set_bcn_ctrl_reg.exit774:                ; preds = %if.then.i.i773, %if.then293._rtl92de_set_bcn_ctrl_reg.exit774_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %510 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %510)
  %511 = load i64, ptr %tsf.c, align 8
  %conv296.c = trunc i64 %511 to i32
  %write32_async.i775 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %512 = ptrtoint ptr %write32_async.i775 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %write32_async.i775, align 4
  tail call void %513(ptr noundef %1, i32 noundef 1376, i32 noundef %conv296.c) #6
  %cfg.i776 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %514 = ptrtoint ptr %cfg.i776 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %cfg.i776, align 8
  %write_readback.i777 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %515, i32 0, i32 1
  %516 = ptrtoint ptr %write_readback.i777 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %write_readback.i777, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool.not.i778 = icmp eq i8 %517, 0
  br i1 %tobool.not.i778, label %_rtl92de_set_bcn_ctrl_reg.exit774.rtl_write_dword.exit782_crit_edge, label %if.then.i781

_rtl92de_set_bcn_ctrl_reg.exit774.rtl_write_dword.exit782_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit774
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit782

if.then.i781:                                     ; preds = %_rtl92de_set_bcn_ctrl_reg.exit774
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i779 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %518 = ptrtoint ptr %read32_sync.i779 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %read32_sync.i779, align 4
  %call.i780 = tail call i32 %519(ptr noundef %1, i32 noundef 1376) #6
  br label %rtl_write_dword.exit782

rtl_write_dword.exit782:                          ; preds = %if.then.i781, %_rtl92de_set_bcn_ctrl_reg.exit774.rtl_write_dword.exit782_crit_edge
  %520 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %520)
  %521 = load i64, ptr %tsf.c, align 8
  %shr298.c = lshr i64 %521, 32
  %conv300.c = trunc i64 %shr298.c to i32
  %522 = ptrtoint ptr %write32_async.i775 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %write32_async.i775, align 4
  tail call void %523(ptr noundef %1, i32 noundef 1380, i32 noundef %conv300.c) #6
  %524 = ptrtoint ptr %cfg.i776 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %cfg.i776, align 8
  %write_readback.i785 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %525, i32 0, i32 1
  %526 = ptrtoint ptr %write_readback.i785 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %write_readback.i785, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %tobool.not.i786 = icmp eq i8 %527, 0
  br i1 %tobool.not.i786, label %rtl_write_dword.exit782.rtl_write_dword.exit790_crit_edge, label %if.then.i789

rtl_write_dword.exit782.rtl_write_dword.exit790_crit_edge: ; preds = %rtl_write_dword.exit782
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit790

if.then.i789:                                     ; preds = %rtl_write_dword.exit782
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i787 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %528 = ptrtoint ptr %read32_sync.i787 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %read32_sync.i787, align 4
  %call.i788 = tail call i32 %529(ptr noundef %1, i32 noundef 1380) #6
  br label %rtl_write_dword.exit790

rtl_write_dword.exit790:                          ; preds = %if.then.i789, %rtl_write_dword.exit782.rtl_write_dword.exit790_crit_edge
  %530 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i792 = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %532 = ptrtoint ptr %reg_bcn_ctrl_val.i792 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %reg_bcn_ctrl_val.i792, align 4
  %or.i793 = or i32 %533, 8
  store i32 %or.i793, ptr %reg_bcn_ctrl_val.i792, align 4
  %conv6.i794 = trunc i32 %or.i793 to i8
  %write8_async.i.i795 = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 13, i32 5
  %534 = ptrtoint ptr %write8_async.i.i795 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %write8_async.i.i795, align 4
  tail call void %535(ptr noundef %531, i32 noundef 1360, i8 noundef zeroext %conv6.i794) #6
  %cfg.i.i796 = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 32
  %536 = ptrtoint ptr %cfg.i.i796 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %cfg.i.i796, align 8
  %write_readback.i.i797 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %537, i32 0, i32 1
  %538 = ptrtoint ptr %write_readback.i.i797 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %write_readback.i.i797, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %539)
  %tobool.not.i.i798 = icmp eq i8 %539, 0
  br i1 %tobool.not.i.i798, label %rtl_write_dword.exit790._rtl92de_set_bcn_ctrl_reg.exit802_crit_edge, label %if.then.i.i801

rtl_write_dword.exit790._rtl92de_set_bcn_ctrl_reg.exit802_crit_edge: ; preds = %rtl_write_dword.exit790
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit802

if.then.i.i801:                                   ; preds = %rtl_write_dword.exit790
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i799 = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 13, i32 9
  %540 = ptrtoint ptr %read8_sync.i.i799 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %read8_sync.i.i799, align 4
  %call.i.i800 = tail call zeroext i8 %541(ptr noundef %531, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit802

_rtl92de_set_bcn_ctrl_reg.exit802:                ; preds = %if.then.i.i801, %rtl_write_dword.exit790._rtl92de_set_bcn_ctrl_reg.exit802_crit_edge
  tail call fastcc void @_rtl92de_resume_tx_beacon(ptr noundef %hw)
  br label %sw.epilog343

if.end303.critedge:                               ; preds = %sw.bb290
  %reg_bcn_ctrl_val.i804 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %542 = ptrtoint ptr %reg_bcn_ctrl_val.i804 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %reg_bcn_ctrl_val.i804, align 4
  %and.i805 = and i32 %543, -9
  store i32 %and.i805, ptr %reg_bcn_ctrl_val.i804, align 4
  %conv6.i806 = trunc i32 %and.i805 to i8
  %write8_async.i.i807 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %544 = ptrtoint ptr %write8_async.i.i807 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %write8_async.i.i807, align 4
  tail call void %545(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i806) #6
  %cfg.i.i808 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %546 = ptrtoint ptr %cfg.i.i808 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %cfg.i.i808, align 8
  %write_readback.i.i809 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %write_readback.i.i809 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %write_readback.i.i809, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %tobool.not.i.i810 = icmp eq i8 %549, 0
  br i1 %tobool.not.i.i810, label %if.end303.critedge._rtl92de_set_bcn_ctrl_reg.exit814_crit_edge, label %if.then.i.i813

if.end303.critedge._rtl92de_set_bcn_ctrl_reg.exit814_crit_edge: ; preds = %if.end303.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit814

if.then.i.i813:                                   ; preds = %if.end303.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i811 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %550 = ptrtoint ptr %read8_sync.i.i811 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %read8_sync.i.i811, align 4
  %call.i.i812 = tail call zeroext i8 %551(ptr noundef %1, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit814

_rtl92de_set_bcn_ctrl_reg.exit814:                ; preds = %if.then.i.i813, %if.end303.critedge._rtl92de_set_bcn_ctrl_reg.exit814_crit_edge
  %tsf.c522 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %552 = ptrtoint ptr %tsf.c522 to i32
  call void @__asan_load8_noabort(i32 %552)
  %553 = load i64, ptr %tsf.c522, align 8
  %conv296.c523 = trunc i64 %553 to i32
  %write32_async.i815 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %554 = ptrtoint ptr %write32_async.i815 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %write32_async.i815, align 4
  tail call void %555(ptr noundef %1, i32 noundef 1376, i32 noundef %conv296.c523) #6
  %556 = ptrtoint ptr %cfg.i.i808 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %cfg.i.i808, align 8
  %write_readback.i817 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %557, i32 0, i32 1
  %558 = ptrtoint ptr %write_readback.i817 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %write_readback.i817, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %559)
  %tobool.not.i818 = icmp eq i8 %559, 0
  br i1 %tobool.not.i818, label %_rtl92de_set_bcn_ctrl_reg.exit814.rtl_write_dword.exit822_crit_edge, label %if.then.i821

_rtl92de_set_bcn_ctrl_reg.exit814.rtl_write_dword.exit822_crit_edge: ; preds = %_rtl92de_set_bcn_ctrl_reg.exit814
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit822

if.then.i821:                                     ; preds = %_rtl92de_set_bcn_ctrl_reg.exit814
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i819 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %560 = ptrtoint ptr %read32_sync.i819 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %read32_sync.i819, align 4
  %call.i820 = tail call i32 %561(ptr noundef %1, i32 noundef 1376) #6
  br label %rtl_write_dword.exit822

rtl_write_dword.exit822:                          ; preds = %if.then.i821, %_rtl92de_set_bcn_ctrl_reg.exit814.rtl_write_dword.exit822_crit_edge
  %562 = ptrtoint ptr %tsf.c522 to i32
  call void @__asan_load8_noabort(i32 %562)
  %563 = load i64, ptr %tsf.c522, align 8
  %shr298.c524 = lshr i64 %563, 32
  %conv300.c525 = trunc i64 %shr298.c524 to i32
  %564 = ptrtoint ptr %write32_async.i815 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %write32_async.i815, align 4
  tail call void %565(ptr noundef %1, i32 noundef 1380, i32 noundef %conv300.c525) #6
  %566 = ptrtoint ptr %cfg.i.i808 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %cfg.i.i808, align 8
  %write_readback.i825 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %567, i32 0, i32 1
  %568 = ptrtoint ptr %write_readback.i825 to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %write_readback.i825, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %569)
  %tobool.not.i826 = icmp eq i8 %569, 0
  br i1 %tobool.not.i826, label %rtl_write_dword.exit822.rtl_write_dword.exit830_crit_edge, label %if.then.i829

rtl_write_dword.exit822.rtl_write_dword.exit830_crit_edge: ; preds = %rtl_write_dword.exit822
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit830

if.then.i829:                                     ; preds = %rtl_write_dword.exit822
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i827 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %570 = ptrtoint ptr %read32_sync.i827 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %read32_sync.i827, align 4
  %call.i828 = tail call i32 %571(ptr noundef %1, i32 noundef 1380) #6
  br label %rtl_write_dword.exit830

rtl_write_dword.exit830:                          ; preds = %if.then.i829, %rtl_write_dword.exit822.rtl_write_dword.exit830_crit_edge
  %572 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i832 = getelementptr inbounds %struct.rtl_priv, ptr %573, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %574 = ptrtoint ptr %reg_bcn_ctrl_val.i832 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %reg_bcn_ctrl_val.i832, align 4
  %or.i833 = or i32 %575, 8
  store i32 %or.i833, ptr %reg_bcn_ctrl_val.i832, align 4
  %conv6.i834 = trunc i32 %or.i833 to i8
  %write8_async.i.i835 = getelementptr inbounds %struct.rtl_priv, ptr %573, i32 0, i32 13, i32 5
  %576 = ptrtoint ptr %write8_async.i.i835 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %write8_async.i.i835, align 4
  tail call void %577(ptr noundef %573, i32 noundef 1360, i8 noundef zeroext %conv6.i834) #6
  %cfg.i.i836 = getelementptr inbounds %struct.rtl_priv, ptr %573, i32 0, i32 32
  %578 = ptrtoint ptr %cfg.i.i836 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %cfg.i.i836, align 8
  %write_readback.i.i837 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %579, i32 0, i32 1
  %580 = ptrtoint ptr %write_readback.i.i837 to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %write_readback.i.i837, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %581)
  %tobool.not.i.i838 = icmp eq i8 %581, 0
  br i1 %tobool.not.i.i838, label %rtl_write_dword.exit830.sw.epilog343_crit_edge, label %if.then.i.i841

rtl_write_dword.exit830.sw.epilog343_crit_edge:   ; preds = %rtl_write_dword.exit830
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog343

if.then.i.i841:                                   ; preds = %rtl_write_dword.exit830
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i839 = getelementptr inbounds %struct.rtl_priv, ptr %573, i32 0, i32 13, i32 9
  %582 = ptrtoint ptr %read8_sync.i.i839 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %read8_sync.i.i839, align 4
  %call.i.i840 = tail call zeroext i8 %583(ptr noundef %573, i32 noundef 1360) #6
  br label %sw.epilog343

sw.bb304:                                         ; preds = %entry
  %584 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %val, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %tobool305.not = icmp eq i8 %585, 0
  %write32_async.i851 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %586 = ptrtoint ptr %write32_async.i851 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %write32_async.i851, align 4
  br i1 %tobool305.not, label %if.else311, label %if.then308

if.then308:                                       ; preds = %sw.bb304
  tail call void %587(ptr noundef %1, i32 noundef 772, i32 noundef -33550432) #6
  %cfg.i844 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %588 = ptrtoint ptr %cfg.i844 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %cfg.i844, align 8
  %write_readback.i845 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %589, i32 0, i32 1
  %590 = ptrtoint ptr %write_readback.i845 to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %write_readback.i845, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %tobool.not.i846 = icmp eq i8 %591, 0
  br i1 %tobool.not.i846, label %if.then308.rtl_write_dword.exit850_crit_edge, label %if.then.i849

if.then308.rtl_write_dword.exit850_crit_edge:     ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit850

if.then.i849:                                     ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i847 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %592 = ptrtoint ptr %read32_sync.i847 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %read32_sync.i847, align 4
  %call.i848 = tail call i32 %593(ptr noundef %1, i32 noundef 772) #6
  br label %rtl_write_dword.exit850

rtl_write_dword.exit850:                          ; preds = %if.then.i849, %if.then308.rtl_write_dword.exit850_crit_edge
  %interrupt_migration = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 35
  %594 = ptrtoint ptr %interrupt_migration to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 %585, ptr %interrupt_migration, align 1
  br label %sw.epilog343

if.else311:                                       ; preds = %sw.bb304
  tail call void %587(ptr noundef %1, i32 noundef 772, i32 noundef 0) #6
  %cfg.i852 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %595 = ptrtoint ptr %cfg.i852 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %cfg.i852, align 8
  %write_readback.i853 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %596, i32 0, i32 1
  %597 = ptrtoint ptr %write_readback.i853 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %write_readback.i853, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %598)
  %tobool.not.i854 = icmp eq i8 %598, 0
  br i1 %tobool.not.i854, label %if.else311.rtl_write_dword.exit858_crit_edge, label %if.then.i857

if.else311.rtl_write_dword.exit858_crit_edge:     ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit858

if.then.i857:                                     ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i855 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %599 = ptrtoint ptr %read32_sync.i855 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %read32_sync.i855, align 4
  %call.i856 = tail call i32 %600(ptr noundef %1, i32 noundef 772) #6
  br label %rtl_write_dword.exit858

rtl_write_dword.exit858:                          ; preds = %if.then.i857, %if.else311.rtl_write_dword.exit858_crit_edge
  %interrupt_migration314 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 35
  %601 = ptrtoint ptr %interrupt_migration314 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 0, ptr %interrupt_migration314, align 1
  br label %sw.epilog343

sw.bb317:                                         ; preds = %entry
  %602 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %val, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %603)
  %tobool318.not = icmp eq i8 %603, 0
  %cfg328 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %604 = ptrtoint ptr %cfg328 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %cfg328, align 8
  %ops329 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %605, i32 0, i32 4
  %606 = ptrtoint ptr %ops329 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %ops329, align 4
  %update_interrupt_mask330 = getelementptr inbounds %struct.rtl_hal_ops, ptr %607, i32 0, i32 18
  %608 = ptrtoint ptr %update_interrupt_mask330 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %update_interrupt_mask330, align 4
  br i1 %tobool318.not, label %if.else327, label %if.then321

if.then321:                                       ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %609(ptr noundef %hw, i32 noundef 0, i32 noundef 30) #6
  %disable_tx_int = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 36
  %610 = ptrtoint ptr %disable_tx_int to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %603, ptr %disable_tx_int, align 2
  br label %sw.epilog343

if.else327:                                       ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %609(ptr noundef %hw, i32 noundef 30, i32 noundef 0) #6
  %disable_tx_int333 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 36
  %611 = ptrtoint ptr %disable_tx_int333 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 0, ptr %disable_tx_int333, align 2
  br label %sw.epilog343

do.end339:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %variable to i32
  %call342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %sw.epilog343

sw.epilog343:                                     ; preds = %do.end339, %if.else327, %if.then321, %rtl_write_dword.exit858, %rtl_write_dword.exit850, %if.then.i.i841, %rtl_write_dword.exit830.sw.epilog343_crit_edge, %_rtl92de_set_bcn_ctrl_reg.exit802, %if.then.i761, %sw.bb281.sw.epilog343_crit_edge, %if.end280, %sw.bb251, %sw.bb250, %if.then.i680, %sw.bb249.sw.epilog343_crit_edge, %sw.bb247, %sw.bb246, %sw.bb245, %if.then.i672, %sw.bb244.sw.epilog343_crit_edge, %if.then.i664, %sw.bb236.sw.epilog343_crit_edge, %rtl_write_dword.exit657, %if.then.i648, %if.end231.sw.epilog343_crit_edge, %if.end187, %rtl_write_dword.exit, %if.end128.sw.epilog343_crit_edge, %if.then.i633, %sw.bb105.sw.epilog343_crit_edge, %if.then.i625, %if.end94.sw.epilog343_crit_edge, %sw.bb84.sw.epilog343_crit_edge, %if.then.i617, %sw.bb73.sw.epilog343_crit_edge, %for.end72, %if.then.i601, %if.else.sw.epilog343_crit_edge, %if.then.i594, %if.then59.sw.epilog343_crit_edge, %if.then.i556.5, %rtl_write_byte.exit557.4.sw.epilog343_crit_edge, %if.then.i548, %if.then39.sw.epilog343_crit_edge, %while.end.sw.epilog343_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog343_crit_edge, %entry.sw.epilog343_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_set_fw_rsvdpagepkt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_set_fw_joinbss_report_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92de_stop_tx_beacon(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1058) #6
  %4 = and i8 %call.i, -65
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %4) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i14 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 1058) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1373, i8 noundef zeroext -1) #6
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i17, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i18 = icmp eq i8 %18, 0
  br i1 %tobool.not.i18, label %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge, label %if.then.i21

rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit22

if.then.i21:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i20 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1373) #6
  br label %rtl_write_byte.exit22

rtl_write_byte.exit22:                            ; preds = %if.then.i21, %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #6
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %write_readback.i25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i25, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i26 = icmp eq i8 %26, 0
  br i1 %tobool.not.i26, label %rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge, label %if.then.i29

rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge: ; preds = %rtl_write_byte.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit30

if.then.i29:                                      ; preds = %rtl_write_byte.exit22
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i28 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 1345) #6
  br label %rtl_write_byte.exit30

rtl_write_byte.exit30:                            ; preds = %if.then.i29, %rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i32 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1346) #6
  %31 = and i8 %call.i32, -2
  %32 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %31) #6
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i35 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i35, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i36 = icmp eq i8 %37, 0
  br i1 %tobool.not.i36, label %rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge, label %if.then.i39

rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge: ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit40

if.then.i39:                                      ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i, align 4
  %call.i38 = tail call zeroext i8 %39(ptr noundef %1, i32 noundef 1346) #6
  br label %rtl_write_byte.exit40

rtl_write_byte.exit40:                            ; preds = %if.then.i39, %rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92de_resume_tx_beacon(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 1058) #6
  %4 = or i8 %call.i, 64
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %4) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i14 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 1058) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 1373, i8 noundef zeroext 10) #6
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i17, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i18 = icmp eq i8 %18, 0
  br i1 %tobool.not.i18, label %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge, label %if.then.i21

rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit22

if.then.i21:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i20 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1373) #6
  br label %rtl_write_byte.exit22

rtl_write_byte.exit22:                            ; preds = %if.then.i21, %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext -1) #6
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %write_readback.i25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i25, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i26 = icmp eq i8 %26, 0
  br i1 %tobool.not.i26, label %rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge, label %if.then.i29

rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge: ; preds = %rtl_write_byte.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit30

if.then.i29:                                      ; preds = %rtl_write_byte.exit22
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i28 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 1345) #6
  br label %rtl_write_byte.exit30

rtl_write_byte.exit30:                            ; preds = %if.then.i29, %rtl_write_byte.exit22.rtl_write_byte.exit30_crit_edge
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i32 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1346) #6
  %31 = or i8 %call.i32, 1
  %32 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %31) #6
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i35 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i35, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i36 = icmp eq i8 %37, 0
  br i1 %tobool.not.i36, label %rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge, label %if.then.i39

rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge: ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit40

if.then.i39:                                      ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i, align 4
  %call.i38 = tail call zeroext i8 %39(ptr noundef %1, i32 noundef 1346) #6
  br label %rtl_write_byte.exit40

rtl_write_byte.exit40:                            ; preds = %if.then.i39, %rtl_write_byte.exit30.rtl_write_byte.exit40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sec_reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sec_reg_value) #6
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pairwise_enc_algorithm, align 4
  %group_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group_enc_algorithm, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %5) #6
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sec = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  %16 = select i1 %tobool5.not, i8 -52, i8 -49
  %17 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %sec_reg_value, align 1
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 2) #6
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 257) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %26 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sec_reg_value, align 1
  %conv15 = zext i8 %27 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %conv15) #6
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_hw_reg, align 4
  call void %33(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #6
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92de_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 4
  %init_ready = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %init_ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %init_ready, align 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_for_power_and_efuse) #6
  tail call void @rtl92d_phy_reset_iqk_result(ptr noundef %hw) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  tail call void @rtl92d_phy_set_poweron(ptr noundef %hw) #6
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 5
  %6 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %7(ptr noundef %5, i32 noundef 28, i8 noundef zeroext 0) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_byte.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %5, i32 noundef 28) #6
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %entry.rtl_write_byte.exit.i_crit_edge
  %14 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %15(ptr noundef %5, i32 noundef 32, i8 noundef zeroext 5) #6
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i114.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i114.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i114.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i115.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i115.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit119.i_crit_edge, label %if.then.i118.i

rtl_write_byte.exit.i.rtl_write_byte.exit119.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit119.i

if.then.i118.i:                                   ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i116.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 9
  %20 = ptrtoint ptr %read8_sync.i116.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i116.i, align 4
  %call.i117.i = tail call zeroext i8 %21(ptr noundef %5, i32 noundef 32) #6
  br label %rtl_write_byte.exit119.i

rtl_write_byte.exit119.i:                         ; preds = %if.then.i118.i, %rtl_write_byte.exit.i.rtl_write_byte.exit119.i_crit_edge
  %22 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %23(ptr noundef %5, i32 noundef 17, i8 noundef zeroext 43) #6
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i122.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i122.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i122.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i123.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i123.i, label %rtl_write_byte.exit119.i.rtl_write_byte.exit127.i_crit_edge, label %if.then.i126.i

rtl_write_byte.exit119.i.rtl_write_byte.exit127.i_crit_edge: ; preds = %rtl_write_byte.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit127.i

if.then.i126.i:                                   ; preds = %rtl_write_byte.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 9
  %28 = ptrtoint ptr %read8_sync.i124.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i124.i, align 4
  %call.i125.i = tail call zeroext i8 %29(ptr noundef %5, i32 noundef 17) #6
  br label %rtl_write_byte.exit127.i

rtl_write_byte.exit127.i:                         ; preds = %if.then.i126.i, %rtl_write_byte.exit119.i.rtl_write_byte.exit127.i_crit_edge
  %30 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %31(ptr noundef %5, i32 noundef 36, i8 noundef zeroext 15) #6
  %32 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i130.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write_readback.i130.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %write_readback.i130.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i131.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i131.i, label %rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge, label %if.then.i134.i

rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge: ; preds = %rtl_write_byte.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit135.i

if.then.i134.i:                                   ; preds = %rtl_write_byte.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i132.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 9
  %36 = ptrtoint ptr %read8_sync.i132.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i132.i, align 4
  %call.i133.i = tail call zeroext i8 %37(ptr noundef %5, i32 noundef 36) #6
  br label %rtl_write_byte.exit135.i

rtl_write_byte.exit135.i:                         ; preds = %if.then.i134.i, %rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge
  %read8_sync.i136.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i137.i = tail call zeroext i8 %39(ptr noundef %5, i32 noundef 5) #6
  %40 = or i8 %call.i137.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 429496) #6
  %42 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %43(ptr noundef %5, i32 noundef 5, i8 noundef zeroext %40) #6
  %44 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i140.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i140.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i140.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i141.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i141.i, label %rtl_write_byte.exit135.i.rtl_write_byte.exit145.i_crit_edge, label %if.then.i144.i

rtl_write_byte.exit135.i.rtl_write_byte.exit145.i_crit_edge: ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit145.i

if.then.i144.i:                                   ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i143.i = tail call zeroext i8 %49(ptr noundef %5, i32 noundef 5) #6
  br label %rtl_write_byte.exit145.i

rtl_write_byte.exit145.i:                         ; preds = %if.then.i144.i, %rtl_write_byte.exit135.i.rtl_write_byte.exit145.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496) #6
  %51 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i147.i = tail call zeroext i8 %52(ptr noundef %5, i32 noundef 5) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 10737400) #6
  %54 = and i8 %call.i147.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not353.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not353.not.i, label %rtl_write_byte.exit145.i.while.end.i_crit_edge, label %rtl_write_byte.exit145.i.while.body.i_crit_edge

rtl_write_byte.exit145.i.while.body.i_crit_edge:  ; preds = %rtl_write_byte.exit145.i
  br label %while.body.i

rtl_write_byte.exit145.i.while.end.i_crit_edge:   ; preds = %rtl_write_byte.exit145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtl_write_byte.exit145.i.while.body.i_crit_edge
  %retry.0354.i = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %rtl_write_byte.exit145.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i16 %retry.0354.i, 1
  %55 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i149.i = tail call zeroext i8 %56(ptr noundef %5, i32 noundef 5) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 10737400) #6
  %58 = and i8 %call.i149.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i = icmp ne i8 %58, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %retry.0354.i)
  %cmp.i = icmp ult i16 %retry.0354.i, 999
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %rtl_write_byte.exit145.i.while.end.i_crit_edge
  %retry.0.lcssa.i = phi i16 [ 0, %rtl_write_byte.exit145.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 6
  %59 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %60(ptr noundef %5, i32 noundef 4, i16 noundef zeroext 4114) #6
  %61 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_readback.i151.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %write_readback.i151.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i152.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i152.i, label %while.end.i.rtl_write_word.exit.i_crit_edge, label %if.then.i154.i

while.end.i.rtl_write_word.exit.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit.i

if.then.i154.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 10
  %65 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i153.i = tail call zeroext i16 %66(ptr noundef %5, i32 noundef 4) #6
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i154.i, %while.end.i.rtl_write_word.exit.i_crit_edge
  %67 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %68(ptr noundef %5, i32 noundef 1, i8 noundef zeroext -126) #6
  %69 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i157.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %write_readback.i157.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %write_readback.i157.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i158.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i158.i, label %rtl_write_word.exit.i.rtl_write_byte.exit162.i_crit_edge, label %if.then.i161.i

rtl_write_word.exit.i.rtl_write_byte.exit162.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit162.i

if.then.i161.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i160.i = tail call zeroext i8 %74(ptr noundef %5, i32 noundef 1) #6
  br label %rtl_write_byte.exit162.i

rtl_write_byte.exit162.i:                         ; preds = %if.then.i161.i, %rtl_write_word.exit.i.rtl_write_byte.exit162.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 429496) #6
  %76 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %77(ptr noundef %5, i32 noundef 256, i16 noundef zeroext 0) #6
  %78 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i165.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i165.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i165.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i166.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i166.i, label %rtl_write_byte.exit162.i.rtl_write_word.exit170.i_crit_edge, label %if.then.i169.i

rtl_write_byte.exit162.i.rtl_write_word.exit170.i_crit_edge: ; preds = %rtl_write_byte.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit170.i

if.then.i169.i:                                   ; preds = %rtl_write_byte.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i167.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 10
  %82 = ptrtoint ptr %read16_sync.i167.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read16_sync.i167.i, align 4
  %call.i168.i = tail call zeroext i16 %83(ptr noundef %5, i32 noundef 256) #6
  br label %rtl_write_word.exit170.i

rtl_write_word.exit170.i:                         ; preds = %if.then.i169.i, %rtl_write_byte.exit162.i.rtl_write_word.exit170.i_crit_edge
  %84 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %85(ptr noundef %5, i32 noundef 256, i16 noundef zeroext 767) #6
  %86 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i173.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i173.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i173.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i174.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i174.i, label %rtl_write_word.exit170.i.rtl_write_word.exit178.i_crit_edge, label %if.then.i177.i

rtl_write_word.exit170.i.rtl_write_word.exit178.i_crit_edge: ; preds = %rtl_write_word.exit170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit178.i

if.then.i177.i:                                   ; preds = %rtl_write_word.exit170.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 10
  %90 = ptrtoint ptr %read16_sync.i175.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read16_sync.i175.i, align 4
  %call.i176.i = tail call zeroext i16 %91(ptr noundef %5, i32 noundef 256) #6
  br label %rtl_write_word.exit178.i

rtl_write_word.exit178.i:                         ; preds = %if.then.i177.i, %rtl_write_word.exit170.i.rtl_write_word.exit178.i_crit_edge
  %92 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %93(ptr noundef %5, i32 noundef 769, i8 noundef zeroext 0) #6
  %94 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i181.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i181.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i182.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i182.i, label %rtl_write_word.exit178.i.rtl_write_byte.exit186.i_crit_edge, label %if.then.i185.i

rtl_write_word.exit178.i.rtl_write_byte.exit186.i_crit_edge: ; preds = %rtl_write_word.exit178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit186.i

if.then.i185.i:                                   ; preds = %rtl_write_word.exit178.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i184.i = tail call zeroext i8 %99(ptr noundef %5, i32 noundef 769) #6
  br label %rtl_write_byte.exit186.i

rtl_write_byte.exit186.i:                         ; preds = %if.then.i185.i, %rtl_write_word.exit178.i.rtl_write_byte.exit186.i_crit_edge
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %macphymode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 10, i32 52
  %102 = ptrtoint ptr %macphymode.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %macphymode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i = icmp eq i32 %103, 0
  %..i.i = select i1 %cmp.i.i, i8 -10, i8 123
  %.90.i.i = select i1 %cmp.i.i, i32 255, i32 127
  %.91.i.i = select i1 %cmp.i.i, i32 -2134962903, i32 -2139815931
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 5
  %104 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %105(ptr noundef %101, i32 noundef 532, i8 noundef zeroext 0) #6
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %106 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i.i.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i.i.i, label %rtl_write_byte.exit186.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

rtl_write_byte.exit186.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %110 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %111(ptr noundef %101, i32 noundef 532) #6
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %rtl_write_byte.exit186.i.rtl_write_byte.exit.i.i_crit_edge
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 7
  %112 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %113(ptr noundef %101, i32 noundef 512, i32 noundef %.91.i.i) #6
  %114 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i94.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i94.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i94.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i95.i.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i95.i.i, label %rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i97.i.i

rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i.i

if.then.i97.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 11
  %118 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i96.i.i = tail call i32 %119(ptr noundef %101, i32 noundef 512) #6
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i97.i.i, %rtl_write_byte.exit.i.i.rtl_write_dword.exit.i.i_crit_edge
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 10
  %120 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i98.i.i = tail call zeroext i16 %121(ptr noundef %101, i32 noundef 278) #6
  %conv.i.i = zext i16 %call.i98.i.i to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %conv1.i.i = zext i8 %..i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %122 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %123(ptr noundef %101, i32 noundef 276, i32 noundef %or.i.i) #6
  %124 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i101.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %write_readback.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %write_readback.i101.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i102.i.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i102.i.i, label %rtl_write_dword.exit.i.i.rtl_write_dword.exit106.i.i_crit_edge, label %if.then.i105.i.i

rtl_write_dword.exit.i.i.rtl_write_dword.exit106.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit106.i.i

if.then.i105.i.i:                                 ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i103.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 11
  %128 = ptrtoint ptr %read32_sync.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32_sync.i103.i.i, align 4
  %call.i104.i.i = tail call i32 %129(ptr noundef %101, i32 noundef 276) #6
  br label %rtl_write_dword.exit106.i.i

rtl_write_dword.exit106.i.i:                      ; preds = %if.then.i105.i.i, %rtl_write_dword.exit.i.i.rtl_write_dword.exit106.i.i_crit_edge
  %130 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %131(ptr noundef %101, i32 noundef 521, i8 noundef zeroext %..i.i) #6
  %132 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i109.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i109.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i110.i.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i110.i.i, label %rtl_write_dword.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge, label %if.then.i113.i.i

rtl_write_dword.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge: ; preds = %rtl_write_dword.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit114.i.i

if.then.i113.i.i:                                 ; preds = %rtl_write_dword.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i111.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %136 = ptrtoint ptr %read8_sync.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i111.i.i, align 4
  %call.i112.i.i = tail call zeroext i8 %137(ptr noundef %101, i32 noundef 521) #6
  br label %rtl_write_byte.exit114.i.i

rtl_write_byte.exit114.i.i:                       ; preds = %if.then.i113.i.i, %rtl_write_dword.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge
  %138 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %139(ptr noundef %101, i32 noundef 1060, i8 noundef zeroext %..i.i) #6
  %140 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i117.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_readback.i117.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %write_readback.i117.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i118.i.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i118.i.i, label %rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge, label %if.then.i121.i.i

rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge: ; preds = %rtl_write_byte.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit122.i.i

if.then.i121.i.i:                                 ; preds = %rtl_write_byte.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i119.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %144 = ptrtoint ptr %read8_sync.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8_sync.i119.i.i, align 4
  %call.i120.i.i = tail call zeroext i8 %145(ptr noundef %101, i32 noundef 1060) #6
  br label %rtl_write_byte.exit122.i.i

rtl_write_byte.exit122.i.i:                       ; preds = %if.then.i121.i.i, %rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge
  %146 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %147(ptr noundef %101, i32 noundef 1061, i8 noundef zeroext %..i.i) #6
  %148 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i125.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_readback.i125.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %write_readback.i125.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i126.i.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i126.i.i, label %rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge, label %if.then.i129.i.i

rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge: ; preds = %rtl_write_byte.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit130.i.i

if.then.i129.i.i:                                 ; preds = %rtl_write_byte.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i127.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %152 = ptrtoint ptr %read8_sync.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read8_sync.i127.i.i, align 4
  %call.i128.i.i = tail call zeroext i8 %153(ptr noundef %101, i32 noundef 1061) #6
  br label %rtl_write_byte.exit130.i.i

rtl_write_byte.exit130.i.i:                       ; preds = %if.then.i129.i.i, %rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge
  %154 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %155(ptr noundef %101, i32 noundef 1117, i8 noundef zeroext %..i.i) #6
  %156 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i133.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %write_readback.i133.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %write_readback.i133.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i134.i.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i134.i.i, label %rtl_write_byte.exit130.i.i.rtl_write_byte.exit138.i.i_crit_edge, label %if.then.i137.i.i

rtl_write_byte.exit130.i.i.rtl_write_byte.exit138.i.i_crit_edge: ; preds = %rtl_write_byte.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit138.i.i

if.then.i137.i.i:                                 ; preds = %rtl_write_byte.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i135.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %160 = ptrtoint ptr %read8_sync.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read8_sync.i135.i.i, align 4
  %call.i136.i.i = tail call zeroext i8 %161(ptr noundef %101, i32 noundef 1117) #6
  br label %rtl_write_byte.exit138.i.i

rtl_write_byte.exit138.i.i:                       ; preds = %if.then.i137.i.i, %rtl_write_byte.exit130.i.i.rtl_write_byte.exit138.i.i_crit_edge
  %162 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %163(ptr noundef %101, i32 noundef 260, i8 noundef zeroext 17) #6
  %164 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i141.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %write_readback.i141.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %write_readback.i141.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i142.i.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i142.i.i, label %rtl_write_byte.exit138.i.i.rtl_write_byte.exit146.i.i_crit_edge, label %if.then.i145.i.i

rtl_write_byte.exit138.i.i.rtl_write_byte.exit146.i.i_crit_edge: ; preds = %rtl_write_byte.exit138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit146.i.i

if.then.i145.i.i:                                 ; preds = %rtl_write_byte.exit138.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i143.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %168 = ptrtoint ptr %read8_sync.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read8_sync.i143.i.i, align 4
  %call.i144.i.i = tail call zeroext i8 %169(ptr noundef %101, i32 noundef 260) #6
  br label %rtl_write_byte.exit146.i.i

rtl_write_byte.exit146.i.i:                       ; preds = %if.then.i145.i.i, %rtl_write_byte.exit138.i.i.rtl_write_byte.exit146.i.i_crit_edge
  %170 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %171(ptr noundef %101, i32 noundef 1551, i8 noundef zeroext 4) #6
  %172 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i149.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %write_readback.i149.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %write_readback.i149.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i150.i.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i150.i.i, label %rtl_write_byte.exit146.i.i.rtl_write_byte.exit154.i.i_crit_edge, label %if.then.i153.i.i

rtl_write_byte.exit146.i.i.rtl_write_byte.exit154.i.i_crit_edge: ; preds = %rtl_write_byte.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit154.i.i

if.then.i153.i.i:                                 ; preds = %rtl_write_byte.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i151.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %176 = ptrtoint ptr %read8_sync.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read8_sync.i151.i.i, align 4
  %call.i152.i.i = tail call zeroext i8 %177(ptr noundef %101, i32 noundef 1551) #6
  br label %rtl_write_byte.exit154.i.i

rtl_write_byte.exit154.i.i:                       ; preds = %if.then.i153.i.i, %rtl_write_byte.exit146.i.i.rtl_write_byte.exit154.i.i_crit_edge
  %sub.i.i = add nsw i32 %conv1.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rtl_write_byte.exit154.i.i
  %indvars.iv.i.i = phi i32 [ 0, %rtl_write_byte.exit154.i.i ], [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %178 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv, align 8
  %and.i.i.i = shl nuw nsw i32 %indvars.iv.i.i, 8
  %or.i.i.i = or i32 %and.i.i.i, %add.i.i
  %or2.i.i.i = or i32 %or.i.i.i, 1073741824
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 13, i32 7
  %180 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %181(ptr noundef %179, i32 noundef 480, i32 noundef %or2.i.i.i) #6
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 32
  %182 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i.i.i.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 13, i32 11
  %186 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %187(ptr noundef %179, i32 noundef 480) #6
  br label %rtl_write_dword.exit.i.i.i

rtl_write_dword.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge
  %read32_sync.i16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %179, i32 0, i32 13, i32 11
  %188 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i1718.i.i.i = tail call i32 %189(ptr noundef %179, i32 noundef 480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i.i.i)
  %cmp19.i.i.i = icmp ult i32 %call.i1718.i.i.i, 1073741824
  br i1 %cmp19.i.i.i, label %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge, label %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge

rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  br label %if.end.i.i.i

rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %count.020.i.i.i, 1
  %190 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i17.i.i.i = tail call i32 %191(ptr noundef %179, i32 noundef 480) #6
  %cmp.i.i.i = icmp ult i32 %call.i17.i.i.i, 1073741824
  br i1 %cmp.i.i.i, label %do.body.i.i.i.for.inc.i.i_crit_edge, label %do.body.i.i.i.if.end.i.i.i_crit_edge

do.body.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.body.i.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i.if.end.i.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge
  %count.020.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %count.020.i.i.i, 21
  br i1 %exitcond.i.i.i, label %if.end.i.i.i.do.end14_crit_edge, label %do.body.i.i.i

if.end.i.i.i.do.end14_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

for.inc.i.i:                                      ; preds = %do.body.i.i.i.for.inc.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %192 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %priv, align 8
  %and.i156.i.i = shl nuw nsw i32 %sub.i.i, 8
  %or2.i159.i.i = or i32 %and.i156.i.i, 1073742079
  %write32_async.i.i160.i.i = getelementptr inbounds %struct.rtl_priv, ptr %193, i32 0, i32 13, i32 7
  %194 = ptrtoint ptr %write32_async.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write32_async.i.i160.i.i, align 4
  tail call void %195(ptr noundef %193, i32 noundef 480, i32 noundef %or2.i159.i.i) #6
  %cfg.i.i161.i.i = getelementptr inbounds %struct.rtl_priv, ptr %193, i32 0, i32 32
  %196 = ptrtoint ptr %cfg.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cfg.i.i161.i.i, align 8
  %write_readback.i.i162.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %write_readback.i.i162.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %write_readback.i.i162.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i.i163.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i.i163.i.i, label %for.end.i.i.rtl_write_dword.exit.i170.i.i_crit_edge, label %if.then.i.i166.i.i

for.end.i.i.rtl_write_dword.exit.i170.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i170.i.i

if.then.i.i166.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i164.i.i = getelementptr inbounds %struct.rtl_priv, ptr %193, i32 0, i32 13, i32 11
  %200 = ptrtoint ptr %read32_sync.i.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read32_sync.i.i164.i.i, align 4
  %call.i.i165.i.i = tail call i32 %201(ptr noundef %193, i32 noundef 480) #6
  br label %rtl_write_dword.exit.i170.i.i

rtl_write_dword.exit.i170.i.i:                    ; preds = %if.then.i.i166.i.i, %for.end.i.i.rtl_write_dword.exit.i170.i.i_crit_edge
  %read32_sync.i16.i167.i.i = getelementptr inbounds %struct.rtl_priv, ptr %193, i32 0, i32 13, i32 11
  %202 = ptrtoint ptr %read32_sync.i16.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32_sync.i16.i167.i.i, align 4
  %call.i1718.i168.i.i = tail call i32 %203(ptr noundef %193, i32 noundef 480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i168.i.i)
  %cmp19.i169.i.i = icmp ult i32 %call.i1718.i168.i.i, 1073741824
  br i1 %cmp19.i169.i.i, label %rtl_write_dword.exit.i170.i.i.if.end19.i.i_crit_edge, label %rtl_write_dword.exit.i170.i.i.if.end.i177.i.i_crit_edge

rtl_write_dword.exit.i170.i.i.if.end.i177.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i170.i.i
  br label %if.end.i177.i.i

rtl_write_dword.exit.i170.i.i.if.end19.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i170.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

do.body.i174.i.i:                                 ; preds = %if.end.i177.i.i
  %inc.i171.i.i = add nuw nsw i32 %count.020.i175.i.i, 1
  %204 = ptrtoint ptr %read32_sync.i16.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read32_sync.i16.i167.i.i, align 4
  %call.i17.i172.i.i = tail call i32 %205(ptr noundef %193, i32 noundef 480) #6
  %cmp.i173.i.i = icmp ult i32 %call.i17.i172.i.i, 1073741824
  br i1 %cmp.i173.i.i, label %do.body.i174.i.i.if.end19.i.i_crit_edge, label %do.body.i174.i.i.if.end.i177.i.i_crit_edge

do.body.i174.i.i.if.end.i177.i.i_crit_edge:       ; preds = %do.body.i174.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i177.i.i

do.body.i174.i.i.if.end19.i.i_crit_edge:          ; preds = %do.body.i174.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i.i

if.end.i177.i.i:                                  ; preds = %do.body.i174.i.i.if.end.i177.i.i_crit_edge, %rtl_write_dword.exit.i170.i.i.if.end.i177.i.i_crit_edge
  %count.020.i175.i.i = phi i32 [ %inc.i171.i.i, %do.body.i174.i.i.if.end.i177.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i170.i.i.if.end.i177.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i175.i.i)
  %exitcond.i176.i.i = icmp eq i32 %count.020.i175.i.i, 21
  br i1 %exitcond.i176.i.i, label %if.end.i177.i.i.do.end14_crit_edge, label %do.body.i174.i.i

if.end.i177.i.i.do.end14_crit_edge:               ; preds = %if.end.i177.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end19.i.i:                                     ; preds = %do.body.i174.i.i.if.end19.i.i_crit_edge, %rtl_write_dword.exit.i170.i.i.if.end19.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %.90.i.i, i32 %conv1.i.i)
  %cmp24247.i.i = icmp ugt i32 %.90.i.i, %conv1.i.i
  br i1 %cmp24247.i.i, label %if.end19.i.i.for.body26.i.i_crit_edge, label %if.end19.i.i.for.end38.i.i_crit_edge

if.end19.i.i.for.end38.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38.i.i

if.end19.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end19.i.i
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.inc36.i.i.for.body26.i.i_crit_edge, %if.end19.i.i.for.body26.i.i_crit_edge
  %indvars.iv252.i.i = phi i32 [ %add29.i.i, %for.inc36.i.i.for.body26.i.i_crit_edge ], [ %conv1.i.i, %if.end19.i.i.for.body26.i.i_crit_edge ]
  %add29.i.i = add nuw nsw i32 %indvars.iv252.i.i, 1
  %206 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv, align 8
  %and.i183.i.i = shl nuw nsw i32 %indvars.iv252.i.i, 8
  %shl.i184.i.i = and i32 %and.i183.i.i, 65280
  %and1.i185.i.i = and i32 %add29.i.i, 255
  %or.i186.i.i = or i32 %shl.i184.i.i, %and1.i185.i.i
  %or2.i187.i.i = or i32 %or.i186.i.i, 1073741824
  %write32_async.i.i188.i.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 13, i32 7
  %208 = ptrtoint ptr %write32_async.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write32_async.i.i188.i.i, align 4
  tail call void %209(ptr noundef %207, i32 noundef 480, i32 noundef %or2.i187.i.i) #6
  %cfg.i.i189.i.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 32
  %210 = ptrtoint ptr %cfg.i.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cfg.i.i189.i.i, align 8
  %write_readback.i.i190.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %write_readback.i.i190.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %write_readback.i.i190.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i.i191.i.i = icmp eq i8 %213, 0
  br i1 %tobool.not.i.i191.i.i, label %for.body26.i.i.rtl_write_dword.exit.i198.i.i_crit_edge, label %if.then.i.i194.i.i

for.body26.i.i.rtl_write_dword.exit.i198.i.i_crit_edge: ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i198.i.i

if.then.i.i194.i.i:                               ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i192.i.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 13, i32 11
  %214 = ptrtoint ptr %read32_sync.i.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read32_sync.i.i192.i.i, align 4
  %call.i.i193.i.i = tail call i32 %215(ptr noundef %207, i32 noundef 480) #6
  br label %rtl_write_dword.exit.i198.i.i

rtl_write_dword.exit.i198.i.i:                    ; preds = %if.then.i.i194.i.i, %for.body26.i.i.rtl_write_dword.exit.i198.i.i_crit_edge
  %read32_sync.i16.i195.i.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 13, i32 11
  %216 = ptrtoint ptr %read32_sync.i16.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read32_sync.i16.i195.i.i, align 4
  %call.i1718.i196.i.i = tail call i32 %217(ptr noundef %207, i32 noundef 480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i196.i.i)
  %cmp19.i197.i.i = icmp ult i32 %call.i1718.i196.i.i, 1073741824
  br i1 %cmp19.i197.i.i, label %rtl_write_dword.exit.i198.i.i.for.inc36.i.i_crit_edge, label %rtl_write_dword.exit.i198.i.i.if.end.i205.i.i_crit_edge

rtl_write_dword.exit.i198.i.i.if.end.i205.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i198.i.i
  br label %if.end.i205.i.i

rtl_write_dword.exit.i198.i.i.for.inc36.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i198.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36.i.i

do.body.i202.i.i:                                 ; preds = %if.end.i205.i.i
  %inc.i199.i.i = add nuw nsw i32 %count.020.i203.i.i, 1
  %218 = ptrtoint ptr %read32_sync.i16.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read32_sync.i16.i195.i.i, align 4
  %call.i17.i200.i.i = tail call i32 %219(ptr noundef %207, i32 noundef 480) #6
  %cmp.i201.i.i = icmp ult i32 %call.i17.i200.i.i, 1073741824
  br i1 %cmp.i201.i.i, label %do.body.i202.i.i.for.inc36.i.i_crit_edge, label %do.body.i202.i.i.if.end.i205.i.i_crit_edge

do.body.i202.i.i.if.end.i205.i.i_crit_edge:       ; preds = %do.body.i202.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i205.i.i

do.body.i202.i.i.for.inc36.i.i_crit_edge:         ; preds = %do.body.i202.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36.i.i

if.end.i205.i.i:                                  ; preds = %do.body.i202.i.i.if.end.i205.i.i_crit_edge, %rtl_write_dword.exit.i198.i.i.if.end.i205.i.i_crit_edge
  %count.020.i203.i.i = phi i32 [ %inc.i199.i.i, %do.body.i202.i.i.if.end.i205.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i198.i.i.if.end.i205.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i203.i.i)
  %exitcond.i204.i.i = icmp eq i32 %count.020.i203.i.i, 21
  br i1 %exitcond.i204.i.i, label %if.end.i205.i.i.do.end14_crit_edge, label %do.body.i202.i.i

if.end.i205.i.i.do.end14_crit_edge:               ; preds = %if.end.i205.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

for.inc36.i.i:                                    ; preds = %do.body.i202.i.i.for.inc36.i.i_crit_edge, %rtl_write_dword.exit.i198.i.i.for.inc36.i.i_crit_edge
  %exitcond254.not.i.i = icmp eq i32 %add29.i.i, %.90.i.i
  br i1 %exitcond254.not.i.i, label %for.inc36.i.i.for.end38.i.i_crit_edge, label %for.inc36.i.i.for.body26.i.i_crit_edge

for.inc36.i.i.for.body26.i.i_crit_edge:           ; preds = %for.inc36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i.i

for.inc36.i.i.for.end38.i.i_crit_edge:            ; preds = %for.inc36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38.i.i

for.end38.i.i:                                    ; preds = %for.inc36.i.i.for.end38.i.i_crit_edge, %if.end19.i.i.for.end38.i.i_crit_edge
  %220 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %priv, align 8
  %and.i211.i.i = shl nuw nsw i32 %.90.i.i, 8
  %or.i214.i.i = or i32 %and.i211.i.i, %conv1.i.i
  %or2.i215.i.i = or i32 %or.i214.i.i, 1073741824
  %write32_async.i.i216.i.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 13, i32 7
  %222 = ptrtoint ptr %write32_async.i.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32_async.i.i216.i.i, align 4
  tail call void %223(ptr noundef %221, i32 noundef 480, i32 noundef %or2.i215.i.i) #6
  %cfg.i.i217.i.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 32
  %224 = ptrtoint ptr %cfg.i.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cfg.i.i217.i.i, align 8
  %write_readback.i.i218.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %write_readback.i.i218.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %write_readback.i.i218.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i.i219.i.i = icmp eq i8 %227, 0
  br i1 %tobool.not.i.i219.i.i, label %for.end38.i.i.rtl_write_dword.exit.i226.i.i_crit_edge, label %if.then.i.i222.i.i

for.end38.i.i.rtl_write_dword.exit.i226.i.i_crit_edge: ; preds = %for.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i226.i.i

if.then.i.i222.i.i:                               ; preds = %for.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i220.i.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 13, i32 11
  %228 = ptrtoint ptr %read32_sync.i.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %read32_sync.i.i220.i.i, align 4
  %call.i.i221.i.i = tail call i32 %229(ptr noundef %221, i32 noundef 480) #6
  br label %rtl_write_dword.exit.i226.i.i

rtl_write_dword.exit.i226.i.i:                    ; preds = %if.then.i.i222.i.i, %for.end38.i.i.rtl_write_dword.exit.i226.i.i_crit_edge
  %read32_sync.i16.i223.i.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 13, i32 11
  %230 = ptrtoint ptr %read32_sync.i16.i223.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read32_sync.i16.i223.i.i, align 4
  %call.i1718.i224.i.i = tail call i32 %231(ptr noundef %221, i32 noundef 480) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i224.i.i)
  %cmp19.i225.i.i = icmp ult i32 %call.i1718.i224.i.i, 1073741824
  br i1 %cmp19.i225.i.i, label %rtl_write_dword.exit.i226.i.i.if.end.i_crit_edge, label %rtl_write_dword.exit.i226.i.i.if.end.i233.i.i_crit_edge

rtl_write_dword.exit.i226.i.i.if.end.i233.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i226.i.i
  br label %if.end.i233.i.i

rtl_write_dword.exit.i226.i.i.if.end.i_crit_edge: ; preds = %rtl_write_dword.exit.i226.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body.i230.i.i:                                 ; preds = %if.end.i233.i.i
  %inc.i227.i.i = add nuw nsw i32 %count.020.i231.i.i, 1
  %232 = ptrtoint ptr %read32_sync.i16.i223.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read32_sync.i16.i223.i.i, align 4
  %call.i17.i228.i.i = tail call i32 %233(ptr noundef %221, i32 noundef 480) #6
  %cmp.i229.i.i = icmp ult i32 %call.i17.i228.i.i, 1073741824
  br i1 %cmp.i229.i.i, label %do.body.i230.i.i.if.end.i_crit_edge, label %do.body.i230.i.i.if.end.i233.i.i_crit_edge

do.body.i230.i.i.if.end.i233.i.i_crit_edge:       ; preds = %do.body.i230.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i233.i.i

do.body.i230.i.i.if.end.i_crit_edge:              ; preds = %do.body.i230.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i233.i.i:                                  ; preds = %do.body.i230.i.i.if.end.i233.i.i_crit_edge, %rtl_write_dword.exit.i226.i.i.if.end.i233.i.i_crit_edge
  %count.020.i231.i.i = phi i32 [ %inc.i227.i.i, %do.body.i230.i.i.if.end.i233.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i226.i.i.if.end.i233.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i231.i.i)
  %exitcond.i232.i.i = icmp eq i32 %count.020.i231.i.i, 21
  br i1 %exitcond.i232.i.i, label %if.end.i233.i.i.do.end14_crit_edge, label %do.body.i230.i.i

if.end.i233.i.i.do.end14_crit_edge:               ; preds = %if.end.i233.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end.i:                                         ; preds = %do.body.i230.i.i.if.end.i_crit_edge, %rtl_write_dword.exit.i226.i.i.if.end.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 7
  %234 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %235(ptr noundef %5, i32 noundef 292, i32 noundef -1) #6
  %236 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i188.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %write_readback.i188.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %write_readback.i188.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i189.i = icmp eq i8 %239, 0
  br i1 %tobool.not.i189.i, label %if.end.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i191.i

if.end.i.rtl_write_dword.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i

if.then.i191.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %240 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i190.i = tail call i32 %241(ptr noundef %5, i32 noundef 292) #6
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i191.i, %if.end.i.rtl_write_dword.exit.i_crit_edge
  %242 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %243(ptr noundef %5, i32 noundef 300, i8 noundef zeroext -1) #6
  %244 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %write_readback.i194.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i195.i = icmp eq i8 %247, 0
  br i1 %tobool.not.i195.i, label %rtl_write_dword.exit.i.rtl_write_byte.exit199.i_crit_edge, label %if.then.i198.i

rtl_write_dword.exit.i.rtl_write_byte.exit199.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit199.i

if.then.i198.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %248 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i197.i = tail call zeroext i8 %249(ptr noundef %5, i32 noundef 300) #6
  br label %rtl_write_byte.exit199.i

rtl_write_byte.exit199.i:                         ; preds = %if.then.i198.i, %rtl_write_dword.exit.i.rtl_write_byte.exit199.i_crit_edge
  tail call void @rtl92d_phy_config_maccoexist_rfpage(ptr noundef %hw) #6
  %read16_sync.i200.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 10
  %250 = ptrtoint ptr %read16_sync.i200.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %read16_sync.i200.i, align 4
  %call.i201.i = tail call zeroext i16 %251(ptr noundef %5, i32 noundef 268) #6
  %252 = and i16 %call.i201.i, 14
  %253 = or i16 %252, -2191
  %254 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %255(ptr noundef %5, i32 noundef 268, i16 noundef zeroext %253) #6
  %256 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %write_readback.i204.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %write_readback.i204.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i205.i = icmp eq i8 %259, 0
  br i1 %tobool.not.i205.i, label %rtl_write_byte.exit199.i.rtl_write_word.exit209.i_crit_edge, label %if.then.i208.i

rtl_write_byte.exit199.i.rtl_write_word.exit209.i_crit_edge: ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit209.i

if.then.i208.i:                                   ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #8
  %260 = ptrtoint ptr %read16_sync.i200.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read16_sync.i200.i, align 4
  %call.i207.i = tail call zeroext i16 %261(ptr noundef %5, i32 noundef 268) #6
  br label %rtl_write_word.exit209.i

rtl_write_word.exit209.i:                         ; preds = %if.then.i208.i, %rtl_write_byte.exit199.i.rtl_write_word.exit209.i_crit_edge
  %262 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %263(ptr noundef %5, i32 noundef 1057, i8 noundef zeroext 31) #6
  %264 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i212.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %write_readback.i212.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %write_readback.i212.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool.not.i213.i = icmp eq i8 %267, 0
  br i1 %tobool.not.i213.i, label %rtl_write_word.exit209.i.rtl_write_byte.exit217.i_crit_edge, label %if.then.i216.i

rtl_write_word.exit209.i.rtl_write_byte.exit217.i_crit_edge: ; preds = %rtl_write_word.exit209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit217.i

if.then.i216.i:                                   ; preds = %rtl_write_word.exit209.i
  call void @__sanitizer_cov_trace_pc() #8
  %268 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i215.i = tail call zeroext i8 %269(ptr noundef %5, i32 noundef 1057) #6
  br label %rtl_write_byte.exit217.i

rtl_write_byte.exit217.i:                         ; preds = %if.then.i216.i, %rtl_write_word.exit209.i.rtl_write_byte.exit217.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %270 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %receive_config.i, align 4
  %272 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %273(ptr noundef %5, i32 noundef 1544, i32 noundef %271) #6
  %274 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i220.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %write_readback.i220.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %write_readback.i220.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool.not.i221.i = icmp eq i8 %277, 0
  br i1 %tobool.not.i221.i, label %rtl_write_byte.exit217.i.rtl_write_dword.exit225.i_crit_edge, label %if.then.i224.i

rtl_write_byte.exit217.i.rtl_write_dword.exit225.i_crit_edge: ; preds = %rtl_write_byte.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit225.i

if.then.i224.i:                                   ; preds = %rtl_write_byte.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i222.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %278 = ptrtoint ptr %read32_sync.i222.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read32_sync.i222.i, align 4
  %call.i223.i = tail call i32 %279(ptr noundef %5, i32 noundef 1544) #6
  br label %rtl_write_dword.exit225.i

rtl_write_dword.exit225.i:                        ; preds = %if.then.i224.i, %rtl_write_byte.exit217.i.rtl_write_dword.exit225.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 8, i32 2, i32 3
  %280 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %transmit_config.i, align 4
  %282 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %283(ptr noundef %5, i32 noundef 1540, i32 noundef %281) #6
  %284 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i228.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %write_readback.i228.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %write_readback.i228.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool.not.i229.i = icmp eq i8 %287, 0
  br i1 %tobool.not.i229.i, label %rtl_write_dword.exit225.i.rtl_write_dword.exit233.i_crit_edge, label %if.then.i232.i

rtl_write_dword.exit225.i.rtl_write_dword.exit233.i_crit_edge: ; preds = %rtl_write_dword.exit225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit233.i

if.then.i232.i:                                   ; preds = %rtl_write_dword.exit225.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i230.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %288 = ptrtoint ptr %read32_sync.i230.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %read32_sync.i230.i, align 4
  %call.i231.i = tail call i32 %289(ptr noundef %5, i32 noundef 1540) #6
  br label %rtl_write_dword.exit233.i

rtl_write_dword.exit233.i:                        ; preds = %if.then.i232.i, %rtl_write_dword.exit225.i.rtl_write_dword.exit233.i_crit_edge
  %290 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %291(ptr noundef %5, i32 noundef 1232, i8 noundef zeroext 0) #6
  %292 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i236.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %write_readback.i236.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %write_readback.i236.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool.not.i237.i = icmp eq i8 %295, 0
  br i1 %tobool.not.i237.i, label %rtl_write_dword.exit233.i.rtl_write_byte.exit241.i_crit_edge, label %if.then.i240.i

rtl_write_dword.exit233.i.rtl_write_byte.exit241.i_crit_edge: ; preds = %rtl_write_dword.exit233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit241.i

if.then.i240.i:                                   ; preds = %rtl_write_dword.exit233.i
  call void @__sanitizer_cov_trace_pc() #8
  %296 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i239.i = tail call zeroext i8 %297(ptr noundef %5, i32 noundef 1232) #6
  br label %rtl_write_byte.exit241.i

rtl_write_byte.exit241.i:                         ; preds = %if.then.i240.i, %rtl_write_dword.exit233.i.rtl_write_byte.exit241.i_crit_edge
  %dma.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %298 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dma.i, align 4
  %300 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %301(ptr noundef %5, i32 noundef 776, i32 noundef %299) #6
  %302 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i244.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %write_readback.i244.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %write_readback.i244.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool.not.i245.i = icmp eq i8 %305, 0
  br i1 %tobool.not.i245.i, label %rtl_write_byte.exit241.i.rtl_write_dword.exit249.i_crit_edge, label %if.then.i248.i

rtl_write_byte.exit241.i.rtl_write_dword.exit249.i_crit_edge: ; preds = %rtl_write_byte.exit241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit249.i

if.then.i248.i:                                   ; preds = %rtl_write_byte.exit241.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i246.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %306 = ptrtoint ptr %read32_sync.i246.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %read32_sync.i246.i, align 4
  %call.i247.i = tail call i32 %307(ptr noundef %5, i32 noundef 776) #6
  br label %rtl_write_dword.exit249.i

rtl_write_dword.exit249.i:                        ; preds = %if.then.i248.i, %rtl_write_byte.exit241.i.rtl_write_dword.exit249.i_crit_edge
  %dma19.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %308 = ptrtoint ptr %dma19.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %dma19.i, align 4
  %310 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %311(ptr noundef %5, i32 noundef 792, i32 noundef %309) #6
  %312 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i252.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %write_readback.i252.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %write_readback.i252.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool.not.i253.i = icmp eq i8 %315, 0
  br i1 %tobool.not.i253.i, label %rtl_write_dword.exit249.i.rtl_write_dword.exit257.i_crit_edge, label %if.then.i256.i

rtl_write_dword.exit249.i.rtl_write_dword.exit257.i_crit_edge: ; preds = %rtl_write_dword.exit249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit257.i

if.then.i256.i:                                   ; preds = %rtl_write_dword.exit249.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i254.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %316 = ptrtoint ptr %read32_sync.i254.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %read32_sync.i254.i, align 4
  %call.i255.i = tail call i32 %317(ptr noundef %5, i32 noundef 792) #6
  br label %rtl_write_dword.exit257.i

rtl_write_dword.exit257.i:                        ; preds = %if.then.i256.i, %rtl_write_dword.exit249.i.rtl_write_dword.exit257.i_crit_edge
  %dma22.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %318 = ptrtoint ptr %dma22.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %dma22.i, align 4
  %320 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %321(ptr noundef %5, i32 noundef 800, i32 noundef %319) #6
  %322 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i260.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %write_readback.i260.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %write_readback.i260.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool.not.i261.i = icmp eq i8 %325, 0
  br i1 %tobool.not.i261.i, label %rtl_write_dword.exit257.i.rtl_write_dword.exit265.i_crit_edge, label %if.then.i264.i

rtl_write_dword.exit257.i.rtl_write_dword.exit265.i_crit_edge: ; preds = %rtl_write_dword.exit257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit265.i

if.then.i264.i:                                   ; preds = %rtl_write_dword.exit257.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i262.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %326 = ptrtoint ptr %read32_sync.i262.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %read32_sync.i262.i, align 4
  %call.i263.i = tail call i32 %327(ptr noundef %5, i32 noundef 800) #6
  br label %rtl_write_dword.exit265.i

rtl_write_dword.exit265.i:                        ; preds = %if.then.i264.i, %rtl_write_dword.exit257.i.rtl_write_dword.exit265.i_crit_edge
  %dma25.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %328 = ptrtoint ptr %dma25.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %dma25.i, align 4
  %330 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %331(ptr noundef %5, i32 noundef 808, i32 noundef %329) #6
  %332 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i268.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %write_readback.i268.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %write_readback.i268.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool.not.i269.i = icmp eq i8 %335, 0
  br i1 %tobool.not.i269.i, label %rtl_write_dword.exit265.i.rtl_write_dword.exit273.i_crit_edge, label %if.then.i272.i

rtl_write_dword.exit265.i.rtl_write_dword.exit273.i_crit_edge: ; preds = %rtl_write_dword.exit265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit273.i

if.then.i272.i:                                   ; preds = %rtl_write_dword.exit265.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i270.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %336 = ptrtoint ptr %read32_sync.i270.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %read32_sync.i270.i, align 4
  %call.i271.i = tail call i32 %337(ptr noundef %5, i32 noundef 808) #6
  br label %rtl_write_dword.exit273.i

rtl_write_dword.exit273.i:                        ; preds = %if.then.i272.i, %rtl_write_dword.exit265.i.rtl_write_dword.exit273.i_crit_edge
  %dma28.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %338 = ptrtoint ptr %dma28.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %dma28.i, align 4
  %340 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %341(ptr noundef %5, i32 noundef 816, i32 noundef %339) #6
  %342 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i276.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %343, i32 0, i32 1
  %344 = ptrtoint ptr %write_readback.i276.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %write_readback.i276.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool.not.i277.i = icmp eq i8 %345, 0
  br i1 %tobool.not.i277.i, label %rtl_write_dword.exit273.i.rtl_write_dword.exit281.i_crit_edge, label %if.then.i280.i

rtl_write_dword.exit273.i.rtl_write_dword.exit281.i_crit_edge: ; preds = %rtl_write_dword.exit273.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit281.i

if.then.i280.i:                                   ; preds = %rtl_write_dword.exit273.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i278.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %346 = ptrtoint ptr %read32_sync.i278.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %read32_sync.i278.i, align 4
  %call.i279.i = tail call i32 %347(ptr noundef %5, i32 noundef 816) #6
  br label %rtl_write_dword.exit281.i

rtl_write_dword.exit281.i:                        ; preds = %if.then.i280.i, %rtl_write_dword.exit273.i.rtl_write_dword.exit281.i_crit_edge
  %dma31.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %348 = ptrtoint ptr %dma31.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %dma31.i, align 4
  %350 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %351(ptr noundef %5, i32 noundef 824, i32 noundef %349) #6
  %352 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i284.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %write_readback.i284.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %write_readback.i284.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool.not.i285.i = icmp eq i8 %355, 0
  br i1 %tobool.not.i285.i, label %rtl_write_dword.exit281.i.rtl_write_dword.exit289.i_crit_edge, label %if.then.i288.i

rtl_write_dword.exit281.i.rtl_write_dword.exit289.i_crit_edge: ; preds = %rtl_write_dword.exit281.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit289.i

if.then.i288.i:                                   ; preds = %rtl_write_dword.exit281.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i286.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %356 = ptrtoint ptr %read32_sync.i286.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %read32_sync.i286.i, align 4
  %call.i287.i = tail call i32 %357(ptr noundef %5, i32 noundef 824) #6
  br label %rtl_write_dword.exit289.i

rtl_write_dword.exit289.i:                        ; preds = %if.then.i288.i, %rtl_write_dword.exit281.i.rtl_write_dword.exit289.i_crit_edge
  %dma34.i = getelementptr %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 11
  %358 = ptrtoint ptr %dma34.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %dma34.i, align 4
  %360 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %361(ptr noundef %5, i32 noundef 784, i32 noundef %359) #6
  %362 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i292.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %write_readback.i292.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %write_readback.i292.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool.not.i293.i = icmp eq i8 %365, 0
  br i1 %tobool.not.i293.i, label %rtl_write_dword.exit289.i.rtl_write_dword.exit297.i_crit_edge, label %if.then.i296.i

rtl_write_dword.exit289.i.rtl_write_dword.exit297.i_crit_edge: ; preds = %rtl_write_dword.exit289.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit297.i

if.then.i296.i:                                   ; preds = %rtl_write_dword.exit289.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i294.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %366 = ptrtoint ptr %read32_sync.i294.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %read32_sync.i294.i, align 4
  %call.i295.i = tail call i32 %367(ptr noundef %5, i32 noundef 784) #6
  br label %rtl_write_dword.exit297.i

rtl_write_dword.exit297.i:                        ; preds = %if.then.i296.i, %rtl_write_dword.exit289.i.rtl_write_dword.exit297.i_crit_edge
  %dma36.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 8, i32 2, i32 4, i32 1
  %368 = ptrtoint ptr %dma36.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %dma36.i, align 4
  %370 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %371(ptr noundef %5, i32 noundef 832, i32 noundef %369) #6
  %372 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i300.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %write_readback.i300.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %write_readback.i300.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool.not.i301.i = icmp eq i8 %375, 0
  br i1 %tobool.not.i301.i, label %rtl_write_dword.exit297.i.rtl_write_dword.exit305.i_crit_edge, label %if.then.i304.i

rtl_write_dword.exit297.i.rtl_write_dword.exit305.i_crit_edge: ; preds = %rtl_write_dword.exit297.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit305.i

if.then.i304.i:                                   ; preds = %rtl_write_dword.exit297.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i302.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %376 = ptrtoint ptr %read32_sync.i302.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %read32_sync.i302.i, align 4
  %call.i303.i = tail call i32 %377(ptr noundef %5, i32 noundef 832) #6
  br label %rtl_write_dword.exit305.i

rtl_write_dword.exit305.i:                        ; preds = %if.then.i304.i, %rtl_write_dword.exit297.i.rtl_write_dword.exit305.i_crit_edge
  %378 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %379(ptr noundef %5, i32 noundef 771, i8 noundef zeroext 51) #6
  %380 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i308.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %write_readback.i308.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %write_readback.i308.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool.not.i309.i = icmp eq i8 %383, 0
  br i1 %tobool.not.i309.i, label %rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge, label %if.then.i312.i

rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge: ; preds = %rtl_write_dword.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit313.i

if.then.i312.i:                                   ; preds = %rtl_write_dword.exit305.i
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i311.i = tail call zeroext i8 %385(ptr noundef %5, i32 noundef 771) #6
  br label %rtl_write_byte.exit313.i

rtl_write_byte.exit313.i:                         ; preds = %if.then.i312.i, %rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge
  %386 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %387(ptr noundef %5, i32 noundef 772, i32 noundef 0) #6
  %388 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %write_readback.i316.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %write_readback.i316.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i317.i = icmp eq i8 %391, 0
  br i1 %tobool.not.i317.i, label %rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge, label %if.then.i320.i

rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge: ; preds = %rtl_write_byte.exit313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit321.i

if.then.i320.i:                                   ; preds = %rtl_write_byte.exit313.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i318.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %392 = ptrtoint ptr %read32_sync.i318.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %read32_sync.i318.i, align 4
  %call.i319.i = tail call i32 %393(ptr noundef %5, i32 noundef 772) #6
  br label %rtl_write_dword.exit321.i

rtl_write_dword.exit321.i:                        ; preds = %if.then.i320.i, %rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge
  %394 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i323.i = tail call zeroext i8 %395(ptr noundef %5, i32 noundef 1536) #6
  %396 = and i8 %call.i323.i, -65
  %397 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %398(ptr noundef %5, i32 noundef 1536, i8 noundef zeroext %396) #6
  %399 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i326.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %400, i32 0, i32 1
  %401 = ptrtoint ptr %write_readback.i326.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %write_readback.i326.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.i327.i = icmp eq i8 %402, 0
  br i1 %tobool.not.i327.i, label %rtl_write_dword.exit321.i.do.body.i.preheader_crit_edge, label %if.then.i330.i

rtl_write_dword.exit321.i.do.body.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit321.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

if.then.i330.i:                                   ; preds = %rtl_write_dword.exit321.i
  call void @__sanitizer_cov_trace_pc() #8
  %403 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i329.i = tail call zeroext i8 %404(ptr noundef %5, i32 noundef 1536) #6
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i330.i, %rtl_write_dword.exit321.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %retry.1.i = phi i16 [ %inc41.i, %do.body.i.do.body.i_crit_edge ], [ %retry.0.lcssa.i, %do.body.i.preheader ]
  %inc41.i = add nuw nsw i16 %retry.1.i, 1
  %405 = ptrtoint ptr %read8_sync.i136.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %read8_sync.i136.i, align 4
  %call.i333.i = tail call zeroext i8 %406(ptr noundef %5, i32 noundef 1536) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 199, i16 %retry.1.i)
  %cmp44.i = icmp ult i16 %retry.1.i, 199
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i333.i)
  %tobool49.not.i = icmp sgt i8 %call.i333.i, -1
  %or.cond111.i = select i1 %cmp44.i, i1 %tobool49.not.i, i1 false
  br i1 %or.cond111.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %407 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %priv, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %408, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %408, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i.i, i32 0, i32 3
  %409 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %up_first_time.i.i, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool.not.i335.i = icmp eq i8 %410, 0
  br i1 %tobool.not.i335.i, label %if.end.i.i, label %do.end.i._rtl92de_gen_refresh_led_state.exit.i_crit_edge

do.end.i._rtl92de_gen_refresh_led_state.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_gen_refresh_led_state.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %408, i32 0, i32 21, i32 18
  %411 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %rfoff_reason.i.i, align 4
  %413 = zext i32 %412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %413, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %412, label %if.else8.i.i [
    i32 268435456, label %if.then4.i.i
    i32 0, label %if.then7.i.i
  ]

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl92de_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #6
  br label %_rtl92de_gen_refresh_led_state.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl92de_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #6
  br label %_rtl92de_gen_refresh_led_state.exit.i

if.else8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl92de_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #6
  br label %_rtl92de_gen_refresh_led_state.exit.i

_rtl92de_gen_refresh_led_state.exit.i:            ; preds = %if.else8.i.i, %if.then7.i.i, %if.then4.i.i, %do.end.i._rtl92de_gen_refresh_led_state.exit.i_crit_edge
  %414 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %415(ptr noundef %5, i32 noundef 448, i32 noundef 0) #6
  %416 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i338.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %write_readback.i338.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %write_readback.i338.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool.not.i339.i = icmp eq i8 %419, 0
  br i1 %tobool.not.i339.i, label %_rtl92de_gen_refresh_led_state.exit.i.if.end_crit_edge, label %if.then.i342.i

_rtl92de_gen_refresh_led_state.exit.i.if.end_crit_edge: ; preds = %_rtl92de_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i342.i:                                   ; preds = %_rtl92de_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i340.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %420 = ptrtoint ptr %read32_sync.i340.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %read32_sync.i340.i, align 4
  %call.i341.i = tail call i32 %421(ptr noundef %5, i32 noundef 448) #6
  br label %if.end

do.end14:                                         ; preds = %if.end.i233.i.i.do.end14_crit_edge, %if.end.i205.i.i.do.end14_crit_edge, %if.end.i177.i.i.do.end14_crit_edge, %if.end.i.i.i.do.end14_crit_edge
  %.90.sink.i.i = phi i32 [ %.90.i.i, %if.end.i233.i.i.do.end14_crit_edge ], [ %indvars.iv252.i.i, %if.end.i205.i.i.do.end14_crit_edge ], [ %sub.i.i, %if.end.i177.i.i.do.end14_crit_edge ], [ %indvars.iv.i.i, %if.end.i.i.i.do.end14_crit_edge ]
  %call7.i234.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %.90.sink.i.i) #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_power_and_efuse, i32 noundef %call8) #6
  br label %cleanup81

if.end:                                           ; preds = %if.then.i342.i, %_rtl92de_gen_refresh_led_state.exit.i.if.end_crit_edge
  %call17 = tail call i32 @rtl92d_download_fw(ptr noundef %hw) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_power_and_efuse, i32 noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.17) #6
  br label %cleanup81

if.end20:                                         ; preds = %if.end
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %422 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 0, ptr %last_hmeboxnum, align 1
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %423 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 0, ptr %fw_current_inpsmode, align 1
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %424 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %425(ptr noundef %1, i32 noundef 1541) #6
  %426 = or i8 %call.i, 48
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %427 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %write8_async.i, align 4
  tail call void %428(ptr noundef %1, i32 noundef 1541, i8 noundef zeroext %426) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %429 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %tobool.not.i161 = icmp eq i8 %432, 0
  br i1 %tobool.not.i161, label %if.end20.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end20.rtl_write_byte.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %433 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %read8_sync.i, align 4
  %call.i163 = tail call zeroext i8 %434(ptr noundef %1, i32 noundef 1541) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end20.rtl_write_byte.exit_crit_edge
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %435 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %earlymode_enable, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool25.not = icmp eq i8 %436, 0
  br i1 %tobool25.not, label %rtl_write_byte.exit.if.end35_crit_edge, label %if.then26

rtl_write_byte.exit.if.end35_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then26:                                        ; preds = %rtl_write_byte.exit
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.18) #6
  %437 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %read8_sync.i, align 4
  %call.i166 = tail call zeroext i8 %438(ptr noundef %1, i32 noundef 1232) #6
  %439 = or i8 %call.i166, 31
  %440 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %write8_async.i, align 4
  tail call void %441(ptr noundef %1, i32 noundef 1232, i8 noundef zeroext %439) #6
  %442 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %cfg.i, align 8
  %write_readback.i169 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %write_readback.i169 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %write_readback.i169, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %445)
  %tobool.not.i170 = icmp eq i8 %445, 0
  br i1 %tobool.not.i170, label %if.then26.rtl_write_byte.exit175_crit_edge, label %if.then.i173

if.then26.rtl_write_byte.exit175_crit_edge:       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit175

if.then.i173:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %446 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %read8_sync.i, align 4
  %call.i172 = tail call zeroext i8 %447(ptr noundef %1, i32 noundef 1232) #6
  br label %rtl_write_byte.exit175

rtl_write_byte.exit175:                           ; preds = %if.then.i173, %if.then26.rtl_write_byte.exit175_crit_edge
  %448 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %write8_async.i, align 4
  tail call void %449(ptr noundef %1, i32 noundef 1235, i8 noundef zeroext -128) #6
  %450 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %cfg.i, align 8
  %write_readback.i178 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %write_readback.i178 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %write_readback.i178, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool.not.i179 = icmp eq i8 %453, 0
  br i1 %tobool.not.i179, label %rtl_write_byte.exit175.rtl_write_byte.exit184_crit_edge, label %if.then.i182

rtl_write_byte.exit175.rtl_write_byte.exit184_crit_edge: ; preds = %rtl_write_byte.exit175
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit184

if.then.i182:                                     ; preds = %rtl_write_byte.exit175
  call void @__sanitizer_cov_trace_pc() #8
  %454 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %read8_sync.i, align 4
  %call.i181 = tail call zeroext i8 %455(ptr noundef %1, i32 noundef 1235) #6
  br label %rtl_write_byte.exit184

rtl_write_byte.exit184:                           ; preds = %if.then.i182, %rtl_write_byte.exit175.rtl_write_byte.exit184_crit_edge
  %456 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %read8_sync.i, align 4
  %call.i186 = tail call zeroext i8 %457(ptr noundef %1, i32 noundef 1541) #6
  %458 = or i8 %call.i186, 64
  %459 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %write8_async.i, align 4
  tail call void %460(ptr noundef %1, i32 noundef 1541, i8 noundef zeroext %458) #6
  %461 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %cfg.i, align 8
  %write_readback.i189 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %462, i32 0, i32 1
  %463 = ptrtoint ptr %write_readback.i189 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %write_readback.i189, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %tobool.not.i190 = icmp eq i8 %464, 0
  br i1 %tobool.not.i190, label %rtl_write_byte.exit184.if.end35_crit_edge, label %if.then.i193

rtl_write_byte.exit184.if.end35_crit_edge:        ; preds = %rtl_write_byte.exit184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then.i193:                                     ; preds = %rtl_write_byte.exit184
  call void @__sanitizer_cov_trace_pc() #8
  %465 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %read8_sync.i, align 4
  %call.i192 = tail call zeroext i8 %466(ptr noundef %1, i32 noundef 1541) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then.i193, %rtl_write_byte.exit184.if.end35_crit_edge, %rtl_write_byte.exit.if.end35_crit_edge
  %rdg_en = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 32
  %467 = ptrtoint ptr %rdg_en to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %rdg_en, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %tobool36.not = icmp eq i8 %468, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  %469 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %write8_async.i, align 4
  tail call void %470(ptr noundef %1, i32 noundef 1316, i8 noundef zeroext -1) #6
  %471 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cfg.i, align 8
  %write_readback.i198 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %472, i32 0, i32 1
  %473 = ptrtoint ptr %write_readback.i198 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %write_readback.i198, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %474)
  %tobool.not.i199 = icmp eq i8 %474, 0
  br i1 %tobool.not.i199, label %if.then37.rtl_write_byte.exit204_crit_edge, label %if.then.i202

if.then37.rtl_write_byte.exit204_crit_edge:       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit204

if.then.i202:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %475 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %read8_sync.i, align 4
  %call.i201 = tail call zeroext i8 %476(ptr noundef %1, i32 noundef 1316) #6
  br label %rtl_write_byte.exit204

rtl_write_byte.exit204:                           ; preds = %if.then.i202, %if.then37.rtl_write_byte.exit204_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %477 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %write16_async.i, align 4
  tail call void %478(ptr noundef %1, i32 noundef 1348, i16 noundef zeroext 512) #6
  %479 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %cfg.i, align 8
  %write_readback.i206 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %480, i32 0, i32 1
  %481 = ptrtoint ptr %write_readback.i206 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %write_readback.i206, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %482)
  %tobool.not.i207 = icmp eq i8 %482, 0
  br i1 %tobool.not.i207, label %rtl_write_byte.exit204.rtl_write_word.exit_crit_edge, label %if.then.i209

rtl_write_byte.exit204.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit204
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit

if.then.i209:                                     ; preds = %rtl_write_byte.exit204
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %483 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %read16_sync.i, align 4
  %call.i208 = tail call zeroext i16 %484(ptr noundef %1, i32 noundef 1348) #6
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i209, %rtl_write_byte.exit204.rtl_write_word.exit_crit_edge
  %485 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %write8_async.i, align 4
  tail call void %486(ptr noundef %1, i32 noundef 1123, i8 noundef zeroext 5) #6
  %487 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %cfg.i, align 8
  %write_readback.i213 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %write_readback.i213 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %write_readback.i213, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool.not.i214 = icmp eq i8 %490, 0
  br i1 %tobool.not.i214, label %rtl_write_word.exit.if.end38_crit_edge, label %if.then.i217

rtl_write_word.exit.if.end38_crit_edge:           ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then.i217:                                     ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %491 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %read8_sync.i, align 4
  %call.i216 = tail call zeroext i8 %492(ptr noundef %1, i32 noundef 1123) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then.i217, %rtl_write_word.exit.if.end38_crit_edge, %if.end35.if.end38_crit_edge
  %call39 = tail call zeroext i1 @rtl92d_phy_mac_config(ptr noundef %hw) #6
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %493 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %read32_sync.i, align 4
  %call.i220 = tail call i32 %494(ptr noundef %1, i32 noundef 1544) #6
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %and = and i32 %call.i220, -769
  %495 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %and, ptr %receive_config, align 4
  %call42 = tail call zeroext i1 @rtl92d_phy_bb_config(ptr noundef %hw) #6
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %496 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 0, ptr %rf_mode, align 4
  %497 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %priv, align 8
  %cfg.i222 = getelementptr inbounds %struct.rtl_priv, ptr %498, i32 0, i32 32
  %499 = ptrtoint ptr %cfg.i222 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %cfg.i222, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %500, i32 0, i32 4
  %501 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %502, i32 0, i32 46
  %503 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %504(ptr noundef %hw, i32 noundef 2188, i32 noundef 15728640, i32 noundef 15) #6
  %call43 = tail call zeroext i1 @rtl92d_phy_rf_config(ptr noundef %hw) #6
  tail call void @rtl92d_update_bbrf_configuration(ptr noundef %hw) #6
  %505 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %priv, align 8
  %cfg.i224 = getelementptr inbounds %struct.rtl_priv, ptr %506, i32 0, i32 32
  %507 = ptrtoint ptr %cfg.i224 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cfg.i224, align 8
  %ops.i225 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %508, i32 0, i32 4
  %509 = ptrtoint ptr %ops.i225 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %ops.i225, align 4
  %set_bbreg.i226 = getelementptr inbounds %struct.rtl_hal_ops, ptr %510, i32 0, i32 46
  %511 = ptrtoint ptr %set_bbreg.i226 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %set_bbreg.i226, align 4
  tail call void %512(ptr noundef %hw, i32 noundef 2188, i32 noundef 15728640, i32 noundef 0) #6
  %513 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %priv, align 8
  %cfg.i228 = getelementptr inbounds %struct.rtl_priv, ptr %514, i32 0, i32 32
  %515 = ptrtoint ptr %cfg.i228 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %cfg.i228, align 8
  %ops.i229 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %516, i32 0, i32 4
  %517 = ptrtoint ptr %ops.i229 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %ops.i229, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %518, i32 0, i32 47
  %519 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %get_rfreg.i, align 4
  %call.i230 = tail call i32 %520(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #6
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %521 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %call.i230, ptr %rfreg_chnlval, align 4
  %522 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %priv, align 8
  %cfg.i232 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 32
  %524 = ptrtoint ptr %cfg.i232 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %cfg.i232, align 8
  %ops.i233 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %525, i32 0, i32 4
  %526 = ptrtoint ptr %ops.i233 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %ops.i233, align 4
  %get_rfreg.i234 = getelementptr inbounds %struct.rtl_hal_ops, ptr %527, i32 0, i32 47
  %528 = ptrtoint ptr %get_rfreg.i234 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %get_rfreg.i234, align 4
  %call.i235 = tail call i32 %529(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #6
  %arrayidx47 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %530 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %call.i235, ptr %arrayidx47, align 4
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %531 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %532)
  %cmp48 = icmp eq i32 %532, 0
  br i1 %cmp48, label %if.then50, label %if.end38.if.end51_crit_edge

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %533 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %priv, align 8
  %cfg.i237 = getelementptr inbounds %struct.rtl_priv, ptr %534, i32 0, i32 32
  %535 = ptrtoint ptr %cfg.i237 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %cfg.i237, align 8
  %ops.i238 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %536, i32 0, i32 4
  %537 = ptrtoint ptr %ops.i238 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %ops.i238, align 4
  %set_bbreg.i239 = getelementptr inbounds %struct.rtl_hal_ops, ptr %538, i32 0, i32 46
  %539 = ptrtoint ptr %set_bbreg.i239 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %set_bbreg.i239, align 4
  tail call void %540(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end38.if.end51_crit_edge
  %541 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %priv, align 8
  %cfg.i241 = getelementptr inbounds %struct.rtl_priv, ptr %542, i32 0, i32 32
  %543 = ptrtoint ptr %cfg.i241 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %cfg.i241, align 8
  %ops.i242 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %544, i32 0, i32 4
  %545 = ptrtoint ptr %ops.i242 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %ops.i242, align 4
  %set_bbreg.i243 = getelementptr inbounds %struct.rtl_hal_ops, ptr %546, i32 0, i32 46
  %547 = ptrtoint ptr %set_bbreg.i243 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %set_bbreg.i243, align 4
  tail call void %548(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #6
  %549 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %priv, align 8
  %cfg.i245 = getelementptr inbounds %struct.rtl_priv, ptr %550, i32 0, i32 32
  %551 = ptrtoint ptr %cfg.i245 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %cfg.i245, align 8
  %ops.i246 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %552, i32 0, i32 4
  %553 = ptrtoint ptr %ops.i246 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %ops.i246, align 4
  %set_bbreg.i247 = getelementptr inbounds %struct.rtl_hal_ops, ptr %554, i32 0, i32 46
  %555 = ptrtoint ptr %set_bbreg.i247 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %set_bbreg.i247, align 4
  tail call void %556(ptr noundef %hw, i32 noundef 2180, i32 noundef 3072, i32 noundef 3) #6
  %557 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %priv, align 8
  %write8_async.i.i253 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 5
  %559 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %560(ptr noundef %558, i32 noundef 1152, i8 noundef zeroext 8) #6
  %cfg.i.i254 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 32
  %561 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i.i255 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %562, i32 0, i32 1
  %563 = ptrtoint ptr %write_readback.i.i255 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %write_readback.i.i255, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool.not.i.i256 = icmp eq i8 %564, 0
  br i1 %tobool.not.i.i256, label %if.end51.rtl_write_byte.exit.i260_crit_edge, label %if.then.i.i259

if.end51.rtl_write_byte.exit.i260_crit_edge:      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i260

if.then.i.i259:                                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i257 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %565 = ptrtoint ptr %read8_sync.i.i257 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %read8_sync.i.i257, align 4
  %call.i.i258 = tail call zeroext i8 %566(ptr noundef %558, i32 noundef 1152) #6
  br label %rtl_write_byte.exit.i260

rtl_write_byte.exit.i260:                         ; preds = %if.then.i.i259, %if.end51.rtl_write_byte.exit.i260_crit_edge
  %567 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %568(ptr noundef %558, i32 noundef 1539, i8 noundef zeroext 4) #6
  %569 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i53.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %write_readback.i53.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %write_readback.i53.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i54.i = icmp eq i8 %572, 0
  br i1 %tobool.not.i54.i, label %rtl_write_byte.exit.i260.rtl_write_byte.exit58.i_crit_edge, label %if.then.i57.i

rtl_write_byte.exit.i260.rtl_write_byte.exit58.i_crit_edge: ; preds = %rtl_write_byte.exit.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit58.i

if.then.i57.i:                                    ; preds = %rtl_write_byte.exit.i260
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i55.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %573 = ptrtoint ptr %read8_sync.i55.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %read8_sync.i55.i, align 4
  %call.i56.i = tail call zeroext i8 %574(ptr noundef %558, i32 noundef 1539) #6
  br label %rtl_write_byte.exit58.i

rtl_write_byte.exit58.i:                          ; preds = %if.then.i57.i, %rtl_write_byte.exit.i260.rtl_write_byte.exit58.i_crit_edge
  %write32_async.i.i261 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 7
  %575 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %576(ptr noundef %558, i32 noundef 1088, i32 noundef 4095) #6
  %577 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i60.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %578, i32 0, i32 1
  %579 = ptrtoint ptr %write_readback.i60.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %write_readback.i60.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %580)
  %tobool.not.i61.i = icmp eq i8 %580, 0
  br i1 %tobool.not.i61.i, label %rtl_write_byte.exit58.i.rtl_write_dword.exit.i263_crit_edge, label %if.then.i63.i

rtl_write_byte.exit58.i.rtl_write_dword.exit.i263_crit_edge: ; preds = %rtl_write_byte.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i263

if.then.i63.i:                                    ; preds = %rtl_write_byte.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i262 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %581 = ptrtoint ptr %read32_sync.i.i262 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %read32_sync.i.i262, align 4
  %call.i62.i = tail call i32 %582(ptr noundef %558, i32 noundef 1088) #6
  br label %rtl_write_dword.exit.i263

rtl_write_dword.exit.i263:                        ; preds = %if.then.i63.i, %rtl_write_byte.exit58.i.rtl_write_dword.exit.i263_crit_edge
  %583 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %584(ptr noundef %558, i32 noundef 1307, i8 noundef zeroext 9) #6
  %585 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i66.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %586, i32 0, i32 1
  %587 = ptrtoint ptr %write_readback.i66.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %write_readback.i66.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool.not.i67.i = icmp eq i8 %588, 0
  br i1 %tobool.not.i67.i, label %rtl_write_dword.exit.i263.rtl_write_byte.exit71.i_crit_edge, label %if.then.i70.i

rtl_write_dword.exit.i263.rtl_write_byte.exit71.i_crit_edge: ; preds = %rtl_write_dword.exit.i263
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit71.i

if.then.i70.i:                                    ; preds = %rtl_write_dword.exit.i263
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i68.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %589 = ptrtoint ptr %read8_sync.i68.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %read8_sync.i68.i, align 4
  %call.i69.i = tail call zeroext i8 %590(ptr noundef %558, i32 noundef 1307) #6
  br label %rtl_write_byte.exit71.i

rtl_write_byte.exit71.i:                          ; preds = %if.then.i70.i, %rtl_write_dword.exit.i263.rtl_write_byte.exit71.i_crit_edge
  %591 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %592(ptr noundef %558, i32 noundef 1116, i8 noundef zeroext 0) #6
  %593 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i74.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %594, i32 0, i32 1
  %595 = ptrtoint ptr %write_readback.i74.i to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %write_readback.i74.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %596)
  %tobool.not.i75.i = icmp eq i8 %596, 0
  br i1 %tobool.not.i75.i, label %rtl_write_byte.exit71.i.rtl_write_byte.exit79.i_crit_edge, label %if.then.i78.i

rtl_write_byte.exit71.i.rtl_write_byte.exit79.i_crit_edge: ; preds = %rtl_write_byte.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit79.i

if.then.i78.i:                                    ; preds = %rtl_write_byte.exit71.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %597 = ptrtoint ptr %read8_sync.i76.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %read8_sync.i76.i, align 4
  %call.i77.i = tail call zeroext i8 %598(ptr noundef %558, i32 noundef 1116) #6
  br label %rtl_write_byte.exit79.i

rtl_write_byte.exit79.i:                          ; preds = %if.then.i78.i, %rtl_write_byte.exit71.i.rtl_write_byte.exit79.i_crit_edge
  %write16_async.i.i264 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 6
  %599 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %600(ptr noundef %558, i32 noundef 1056, i16 noundef zeroext 8064) #6
  %601 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %602, i32 0, i32 1
  %603 = ptrtoint ptr %write_readback.i81.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %write_readback.i81.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %tobool.not.i82.i = icmp eq i8 %604, 0
  br i1 %tobool.not.i82.i, label %rtl_write_byte.exit79.i.rtl_write_word.exit.i266_crit_edge, label %if.then.i84.i

rtl_write_byte.exit79.i.rtl_write_word.exit.i266_crit_edge: ; preds = %rtl_write_byte.exit79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit.i266

if.then.i84.i:                                    ; preds = %rtl_write_byte.exit79.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i.i265 = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %605 = ptrtoint ptr %read16_sync.i.i265 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %read16_sync.i.i265, align 4
  %call.i83.i = tail call zeroext i16 %606(ptr noundef %558, i32 noundef 1056) #6
  br label %rtl_write_word.exit.i266

rtl_write_word.exit.i266:                         ; preds = %if.then.i84.i, %rtl_write_byte.exit79.i.rtl_write_word.exit.i266_crit_edge
  %607 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %608(ptr noundef %558, i32 noundef 1066, i16 noundef zeroext 1799) #6
  %609 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i87.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %610, i32 0, i32 1
  %611 = ptrtoint ptr %write_readback.i87.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %write_readback.i87.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %612)
  %tobool.not.i88.i = icmp eq i8 %612, 0
  br i1 %tobool.not.i88.i, label %rtl_write_word.exit.i266.rtl_write_word.exit92.i_crit_edge, label %if.then.i91.i

rtl_write_word.exit.i266.rtl_write_word.exit92.i_crit_edge: ; preds = %rtl_write_word.exit.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit92.i

if.then.i91.i:                                    ; preds = %rtl_write_word.exit.i266
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %613 = ptrtoint ptr %read16_sync.i89.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %read16_sync.i89.i, align 4
  %call.i90.i = tail call zeroext i16 %614(ptr noundef %558, i32 noundef 1066) #6
  br label %rtl_write_word.exit92.i

rtl_write_word.exit92.i:                          ; preds = %if.then.i91.i, %rtl_write_word.exit.i266.rtl_write_word.exit92.i_crit_edge
  %615 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %616(ptr noundef %558, i32 noundef 1228, i32 noundef 33630210) #6
  %617 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %618, i32 0, i32 1
  %619 = ptrtoint ptr %write_readback.i95.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %write_readback.i95.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %620)
  %tobool.not.i96.i = icmp eq i8 %620, 0
  br i1 %tobool.not.i96.i, label %rtl_write_word.exit92.i.rtl_write_dword.exit100.i_crit_edge, label %if.then.i99.i

rtl_write_word.exit92.i.rtl_write_dword.exit100.i_crit_edge: ; preds = %rtl_write_word.exit92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit100.i

if.then.i99.i:                                    ; preds = %rtl_write_word.exit92.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i97.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %621 = ptrtoint ptr %read32_sync.i97.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %read32_sync.i97.i, align 4
  %call.i98.i = tail call i32 %622(ptr noundef %558, i32 noundef 1228) #6
  br label %rtl_write_dword.exit100.i

rtl_write_dword.exit100.i:                        ; preds = %if.then.i99.i, %rtl_write_word.exit92.i.rtl_write_dword.exit100.i_crit_edge
  %623 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %624(ptr noundef %558, i32 noundef 1059, i8 noundef zeroext -1) #6
  %625 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i103.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %626, i32 0, i32 1
  %627 = ptrtoint ptr %write_readback.i103.i to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %write_readback.i103.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %628)
  %tobool.not.i104.i = icmp eq i8 %628, 0
  br i1 %tobool.not.i104.i, label %rtl_write_dword.exit100.i.rtl_write_byte.exit108.i_crit_edge, label %if.then.i107.i

rtl_write_dword.exit100.i.rtl_write_byte.exit108.i_crit_edge: ; preds = %rtl_write_dword.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit108.i

if.then.i107.i:                                   ; preds = %rtl_write_dword.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %629 = ptrtoint ptr %read8_sync.i105.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %read8_sync.i105.i, align 4
  %call.i106.i = tail call zeroext i8 %630(ptr noundef %558, i32 noundef 1059) #6
  br label %rtl_write_byte.exit108.i

rtl_write_byte.exit108.i:                         ; preds = %if.then.i107.i, %rtl_write_dword.exit100.i.rtl_write_byte.exit108.i_crit_edge
  %631 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %632(ptr noundef %558, i32 noundef 1072, i32 noundef 16777216) #6
  %633 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i111.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %634, i32 0, i32 1
  %635 = ptrtoint ptr %write_readback.i111.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %write_readback.i111.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %636)
  %tobool.not.i112.i = icmp eq i8 %636, 0
  br i1 %tobool.not.i112.i, label %rtl_write_byte.exit108.i.rtl_write_dword.exit116.i_crit_edge, label %if.then.i115.i

rtl_write_byte.exit108.i.rtl_write_dword.exit116.i_crit_edge: ; preds = %rtl_write_byte.exit108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit116.i

if.then.i115.i:                                   ; preds = %rtl_write_byte.exit108.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i113.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %637 = ptrtoint ptr %read32_sync.i113.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %read32_sync.i113.i, align 4
  %call.i114.i = tail call i32 %638(ptr noundef %558, i32 noundef 1072) #6
  br label %rtl_write_dword.exit116.i

rtl_write_dword.exit116.i:                        ; preds = %if.then.i115.i, %rtl_write_byte.exit108.i.rtl_write_dword.exit116.i_crit_edge
  %639 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %640(ptr noundef %558, i32 noundef 1076, i32 noundef 117835012) #6
  %641 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i119.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %642, i32 0, i32 1
  %643 = ptrtoint ptr %write_readback.i119.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %write_readback.i119.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %644)
  %tobool.not.i120.i = icmp eq i8 %644, 0
  br i1 %tobool.not.i120.i, label %rtl_write_dword.exit116.i.rtl_write_dword.exit124.i_crit_edge, label %if.then.i123.i

rtl_write_dword.exit116.i.rtl_write_dword.exit124.i_crit_edge: ; preds = %rtl_write_dword.exit116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit124.i

if.then.i123.i:                                   ; preds = %rtl_write_dword.exit116.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i121.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %645 = ptrtoint ptr %read32_sync.i121.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %read32_sync.i121.i, align 4
  %call.i122.i = tail call i32 %646(ptr noundef %558, i32 noundef 1076) #6
  br label %rtl_write_dword.exit124.i

rtl_write_dword.exit124.i:                        ; preds = %if.then.i123.i, %rtl_write_dword.exit116.i.rtl_write_dword.exit124.i_crit_edge
  %647 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %648(ptr noundef %558, i32 noundef 1080, i32 noundef 16777216) #6
  %649 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i127.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %650, i32 0, i32 1
  %651 = ptrtoint ptr %write_readback.i127.i to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %write_readback.i127.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %652)
  %tobool.not.i128.i = icmp eq i8 %652, 0
  br i1 %tobool.not.i128.i, label %rtl_write_dword.exit124.i.rtl_write_dword.exit132.i_crit_edge, label %if.then.i131.i

rtl_write_dword.exit124.i.rtl_write_dword.exit132.i_crit_edge: ; preds = %rtl_write_dword.exit124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit132.i

if.then.i131.i:                                   ; preds = %rtl_write_dword.exit124.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i129.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %653 = ptrtoint ptr %read32_sync.i129.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %read32_sync.i129.i, align 4
  %call.i130.i = tail call i32 %654(ptr noundef %558, i32 noundef 1080) #6
  br label %rtl_write_dword.exit132.i

rtl_write_dword.exit132.i:                        ; preds = %if.then.i131.i, %rtl_write_dword.exit124.i.rtl_write_dword.exit132.i_crit_edge
  %655 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %656(ptr noundef %558, i32 noundef 1084, i32 noundef 117835012) #6
  %657 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i135.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %658, i32 0, i32 1
  %659 = ptrtoint ptr %write_readback.i135.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %write_readback.i135.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %660)
  %tobool.not.i136.i = icmp eq i8 %660, 0
  br i1 %tobool.not.i136.i, label %rtl_write_dword.exit132.i.rtl_write_dword.exit140.i_crit_edge, label %if.then.i139.i

rtl_write_dword.exit132.i.rtl_write_dword.exit140.i_crit_edge: ; preds = %rtl_write_dword.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit140.i

if.then.i139.i:                                   ; preds = %rtl_write_dword.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i137.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %661 = ptrtoint ptr %read32_sync.i137.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %read32_sync.i137.i, align 4
  %call.i138.i = tail call i32 %662(ptr noundef %558, i32 noundef 1084) #6
  br label %rtl_write_dword.exit140.i

rtl_write_dword.exit140.i:                        ; preds = %if.then.i139.i, %rtl_write_dword.exit132.i.rtl_write_dword.exit140.i_crit_edge
  %macphymode.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 10, i32 52
  %663 = ptrtoint ptr %macphymode.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %macphymode.i, align 4
  %665 = zext i32 %664 to i64
  call void @__sanitizer_cov_trace_switch(i64 %665, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %664, label %if.else8.i [
    i32 1, label %if.then.i267
    i32 2, label %if.then7.i
  ]

if.then.i267:                                     ; preds = %rtl_write_dword.exit140.i
  %666 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %667(ptr noundef %558, i32 noundef 1112, i32 noundef -1183685055) #6
  %668 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i143.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %669, i32 0, i32 1
  %670 = ptrtoint ptr %write_readback.i143.i to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %write_readback.i143.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %671)
  %tobool.not.i144.i = icmp eq i8 %671, 0
  br i1 %tobool.not.i144.i, label %if.then.i267.if.end9.i_crit_edge, label %if.then.i267.if.end9.sink.split.i_crit_edge

if.then.i267.if.end9.sink.split.i_crit_edge:      ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.then.i267.if.end9.i_crit_edge:                 ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %rtl_write_dword.exit140.i
  %672 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %673(ptr noundef %558, i32 noundef 1112, i32 noundef 1717724737) #6
  %674 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i151.i268 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %675, i32 0, i32 1
  %676 = ptrtoint ptr %write_readback.i151.i268 to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %write_readback.i151.i268, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %677)
  %tobool.not.i152.i269 = icmp eq i8 %677, 0
  br i1 %tobool.not.i152.i269, label %if.then7.i.if.end9.i_crit_edge, label %if.then7.i.if.end9.sink.split.i_crit_edge

if.then7.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.then7.i.if.end9.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.else8.i:                                       ; preds = %rtl_write_dword.exit140.i
  %678 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %679(ptr noundef %558, i32 noundef 1112, i32 noundef -1183668159) #6
  %680 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i159.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %681, i32 0, i32 1
  %682 = ptrtoint ptr %write_readback.i159.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %write_readback.i159.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %683)
  %tobool.not.i160.i = icmp eq i8 %683, 0
  br i1 %tobool.not.i160.i, label %if.else8.i.if.end9.i_crit_edge, label %if.else8.i.if.end9.sink.split.i_crit_edge

if.else8.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.sink.split.i

if.else8.i.if.end9.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.sink.split.i:                             ; preds = %if.else8.i.if.end9.sink.split.i_crit_edge, %if.then7.i.if.end9.sink.split.i_crit_edge, %if.then.i267.if.end9.sink.split.i_crit_edge
  %read32_sync.i161.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %684 = ptrtoint ptr %read32_sync.i161.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %read32_sync.i161.i, align 4
  %call.i162.i = tail call i32 %685(ptr noundef %558, i32 noundef 1112) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.else8.i.if.end9.i_crit_edge, %if.then7.i.if.end9.i_crit_edge, %if.then.i267.if.end9.i_crit_edge
  %686 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %687(ptr noundef %558, i32 noundef 1370, i8 noundef zeroext 2) #6
  %688 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i167.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %689, i32 0, i32 1
  %690 = ptrtoint ptr %write_readback.i167.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %write_readback.i167.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %691)
  %tobool.not.i168.i = icmp eq i8 %691, 0
  br i1 %tobool.not.i168.i, label %if.end9.i.rtl_write_byte.exit172.i_crit_edge, label %if.then.i171.i

if.end9.i.rtl_write_byte.exit172.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit172.i

if.then.i171.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i169.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %692 = ptrtoint ptr %read8_sync.i169.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %read8_sync.i169.i, align 4
  %call.i170.i = tail call zeroext i8 %693(ptr noundef %558, i32 noundef 1370) #6
  br label %rtl_write_byte.exit172.i

rtl_write_byte.exit172.i:                         ; preds = %if.then.i171.i, %if.end9.i.rtl_write_byte.exit172.i_crit_edge
  %694 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %695(ptr noundef %558, i32 noundef 1373, i8 noundef zeroext 10) #6
  %696 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i175.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %697, i32 0, i32 1
  %698 = ptrtoint ptr %write_readback.i175.i to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %write_readback.i175.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %699)
  %tobool.not.i176.i = icmp eq i8 %699, 0
  br i1 %tobool.not.i176.i, label %rtl_write_byte.exit172.i.rtl_write_byte.exit180.i_crit_edge, label %if.then.i179.i

rtl_write_byte.exit172.i.rtl_write_byte.exit180.i_crit_edge: ; preds = %rtl_write_byte.exit172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit180.i

if.then.i179.i:                                   ; preds = %rtl_write_byte.exit172.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %700 = ptrtoint ptr %read8_sync.i177.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %read8_sync.i177.i, align 4
  %call.i178.i = tail call zeroext i8 %701(ptr noundef %558, i32 noundef 1373) #6
  br label %rtl_write_byte.exit180.i

rtl_write_byte.exit180.i:                         ; preds = %if.then.i179.i, %rtl_write_byte.exit172.i.rtl_write_byte.exit180.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %702 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 31, ptr %reg_bcn_ctrl_val.i, align 4
  %703 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %704(ptr noundef %558, i32 noundef 1360, i8 noundef zeroext 31) #6
  %705 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i183.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %706, i32 0, i32 1
  %707 = ptrtoint ptr %write_readback.i183.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %write_readback.i183.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %708)
  %tobool.not.i184.i = icmp eq i8 %708, 0
  br i1 %tobool.not.i184.i, label %rtl_write_byte.exit180.i.rtl_write_byte.exit188.i_crit_edge, label %if.then.i187.i

rtl_write_byte.exit180.i.rtl_write_byte.exit188.i_crit_edge: ; preds = %rtl_write_byte.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit188.i

if.then.i187.i:                                   ; preds = %rtl_write_byte.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i185.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %709 = ptrtoint ptr %read8_sync.i185.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %read8_sync.i185.i, align 4
  %call.i186.i = tail call zeroext i8 %710(ptr noundef %558, i32 noundef 1360) #6
  br label %rtl_write_byte.exit188.i

rtl_write_byte.exit188.i:                         ; preds = %if.then.i187.i, %rtl_write_byte.exit180.i.rtl_write_byte.exit188.i_crit_edge
  %711 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %712(ptr noundef %558, i32 noundef 1345, i8 noundef zeroext -1) #6
  %713 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i191.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %714, i32 0, i32 1
  %715 = ptrtoint ptr %write_readback.i191.i to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %write_readback.i191.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %716)
  %tobool.not.i192.i = icmp eq i8 %716, 0
  br i1 %tobool.not.i192.i, label %rtl_write_byte.exit188.i.rtl_write_byte.exit196.i_crit_edge, label %if.then.i195.i

rtl_write_byte.exit188.i.rtl_write_byte.exit196.i_crit_edge: ; preds = %rtl_write_byte.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit196.i

if.then.i195.i:                                   ; preds = %rtl_write_byte.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i193.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %717 = ptrtoint ptr %read8_sync.i193.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %read8_sync.i193.i, align 4
  %call.i194.i = tail call zeroext i8 %718(ptr noundef %558, i32 noundef 1345) #6
  br label %rtl_write_byte.exit196.i

rtl_write_byte.exit196.i:                         ; preds = %if.then.i195.i, %rtl_write_byte.exit188.i.rtl_write_byte.exit196.i_crit_edge
  %719 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %720(ptr noundef %558, i32 noundef 1298, i8 noundef zeroext 28) #6
  %721 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i199.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %722, i32 0, i32 1
  %723 = ptrtoint ptr %write_readback.i199.i to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %write_readback.i199.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %724)
  %tobool.not.i200.i = icmp eq i8 %724, 0
  br i1 %tobool.not.i200.i, label %rtl_write_byte.exit196.i.rtl_write_byte.exit204.i_crit_edge, label %if.then.i203.i

rtl_write_byte.exit196.i.rtl_write_byte.exit204.i_crit_edge: ; preds = %rtl_write_byte.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit204.i

if.then.i203.i:                                   ; preds = %rtl_write_byte.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i201.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %725 = ptrtoint ptr %read8_sync.i201.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %read8_sync.i201.i, align 4
  %call.i202.i = tail call zeroext i8 %726(ptr noundef %558, i32 noundef 1298) #6
  br label %rtl_write_byte.exit204.i

rtl_write_byte.exit204.i:                         ; preds = %if.then.i203.i, %rtl_write_byte.exit196.i.rtl_write_byte.exit204.i_crit_edge
  %727 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %728(ptr noundef %558, i32 noundef 1306, i8 noundef zeroext 22) #6
  %729 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i207.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %730, i32 0, i32 1
  %731 = ptrtoint ptr %write_readback.i207.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %write_readback.i207.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %732)
  %tobool.not.i208.i = icmp eq i8 %732, 0
  br i1 %tobool.not.i208.i, label %rtl_write_byte.exit204.i.rtl_write_byte.exit212.i_crit_edge, label %if.then.i211.i

rtl_write_byte.exit204.i.rtl_write_byte.exit212.i_crit_edge: ; preds = %rtl_write_byte.exit204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit212.i

if.then.i211.i:                                   ; preds = %rtl_write_byte.exit204.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i209.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %733 = ptrtoint ptr %read8_sync.i209.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %read8_sync.i209.i, align 4
  %call.i210.i = tail call zeroext i8 %734(ptr noundef %558, i32 noundef 1306) #6
  br label %rtl_write_byte.exit212.i

rtl_write_byte.exit212.i:                         ; preds = %if.then.i211.i, %rtl_write_byte.exit204.i.rtl_write_byte.exit212.i_crit_edge
  %735 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %736(ptr noundef %558, i32 noundef 1350, i16 noundef zeroext 32) #6
  %737 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i215.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %738, i32 0, i32 1
  %739 = ptrtoint ptr %write_readback.i215.i to i32
  call void @__asan_load1_noabort(i32 %739)
  %740 = load i8, ptr %write_readback.i215.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %740)
  %tobool.not.i216.i = icmp eq i8 %740, 0
  br i1 %tobool.not.i216.i, label %rtl_write_byte.exit212.i.rtl_write_word.exit220.i_crit_edge, label %if.then.i219.i

rtl_write_byte.exit212.i.rtl_write_word.exit220.i_crit_edge: ; preds = %rtl_write_byte.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit220.i

if.then.i219.i:                                   ; preds = %rtl_write_byte.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i217.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %741 = ptrtoint ptr %read16_sync.i217.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %read16_sync.i217.i, align 4
  %call.i218.i = tail call zeroext i16 %742(ptr noundef %558, i32 noundef 1350) #6
  br label %rtl_write_word.exit220.i

rtl_write_word.exit220.i:                         ; preds = %if.then.i219.i, %rtl_write_byte.exit212.i.rtl_write_word.exit220.i_crit_edge
  %743 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %744(ptr noundef %558, i32 noundef 1120, i16 noundef zeroext 26214) #6
  %745 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i223.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %746, i32 0, i32 1
  %747 = ptrtoint ptr %write_readback.i223.i to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %write_readback.i223.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %748)
  %tobool.not.i224.i = icmp eq i8 %748, 0
  br i1 %tobool.not.i224.i, label %rtl_write_word.exit220.i.rtl_write_word.exit228.i_crit_edge, label %if.then.i227.i

rtl_write_word.exit220.i.rtl_write_word.exit228.i_crit_edge: ; preds = %rtl_write_word.exit220.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit228.i

if.then.i227.i:                                   ; preds = %rtl_write_word.exit220.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i225.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %749 = ptrtoint ptr %read16_sync.i225.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %read16_sync.i225.i, align 4
  %call.i226.i = tail call zeroext i16 %750(ptr noundef %558, i32 noundef 1120) #6
  br label %rtl_write_word.exit228.i

rtl_write_word.exit228.i:                         ; preds = %if.then.i227.i, %rtl_write_word.exit220.i.rtl_write_word.exit228.i_crit_edge
  %751 = ptrtoint ptr %write8_async.i.i253 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %write8_async.i.i253, align 4
  tail call void %752(ptr noundef %558, i32 noundef 1600, i8 noundef zeroext 64) #6
  %753 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i231.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %754, i32 0, i32 1
  %755 = ptrtoint ptr %write_readback.i231.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %write_readback.i231.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %756)
  %tobool.not.i232.i = icmp eq i8 %756, 0
  br i1 %tobool.not.i232.i, label %rtl_write_word.exit228.i.rtl_write_byte.exit236.i_crit_edge, label %if.then.i235.i

rtl_write_word.exit228.i.rtl_write_byte.exit236.i_crit_edge: ; preds = %rtl_write_word.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit236.i

if.then.i235.i:                                   ; preds = %rtl_write_word.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i233.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 9
  %757 = ptrtoint ptr %read8_sync.i233.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %read8_sync.i233.i, align 4
  %call.i234.i = tail call zeroext i8 %758(ptr noundef %558, i32 noundef 1600) #6
  br label %rtl_write_byte.exit236.i

rtl_write_byte.exit236.i:                         ; preds = %if.then.i235.i, %rtl_write_word.exit228.i.rtl_write_byte.exit236.i_crit_edge
  %759 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %760(ptr noundef %558, i32 noundef 1064, i16 noundef zeroext 4112) #6
  %761 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i239.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %762, i32 0, i32 1
  %763 = ptrtoint ptr %write_readback.i239.i to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %write_readback.i239.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %764)
  %tobool.not.i240.i = icmp eq i8 %764, 0
  br i1 %tobool.not.i240.i, label %rtl_write_byte.exit236.i.rtl_write_word.exit244.i_crit_edge, label %if.then.i243.i

rtl_write_byte.exit236.i.rtl_write_word.exit244.i_crit_edge: ; preds = %rtl_write_byte.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit244.i

if.then.i243.i:                                   ; preds = %rtl_write_byte.exit236.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i241.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %765 = ptrtoint ptr %read16_sync.i241.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %read16_sync.i241.i, align 4
  %call.i242.i = tail call zeroext i16 %766(ptr noundef %558, i32 noundef 1064) #6
  br label %rtl_write_word.exit244.i

rtl_write_word.exit244.i:                         ; preds = %if.then.i243.i, %rtl_write_byte.exit236.i.rtl_write_word.exit244.i_crit_edge
  %767 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %768(ptr noundef %558, i32 noundef 1594, i16 noundef zeroext 4112) #6
  %769 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i247.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %770, i32 0, i32 1
  %771 = ptrtoint ptr %write_readback.i247.i to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %write_readback.i247.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %772)
  %tobool.not.i248.i = icmp eq i8 %772, 0
  br i1 %tobool.not.i248.i, label %rtl_write_word.exit244.i.rtl_write_word.exit252.i_crit_edge, label %if.then.i251.i

rtl_write_word.exit244.i.rtl_write_word.exit252.i_crit_edge: ; preds = %rtl_write_word.exit244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit252.i

if.then.i251.i:                                   ; preds = %rtl_write_word.exit244.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i249.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %773 = ptrtoint ptr %read16_sync.i249.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %read16_sync.i249.i, align 4
  %call.i250.i = tail call zeroext i16 %774(ptr noundef %558, i32 noundef 1594) #6
  br label %rtl_write_word.exit252.i

rtl_write_word.exit252.i:                         ; preds = %if.then.i251.i, %rtl_write_word.exit244.i.rtl_write_word.exit252.i_crit_edge
  %775 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %776(ptr noundef %558, i32 noundef 1300, i16 noundef zeroext 4112) #6
  %777 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %778, i32 0, i32 1
  %779 = ptrtoint ptr %write_readback.i255.i to i32
  call void @__asan_load1_noabort(i32 %779)
  %780 = load i8, ptr %write_readback.i255.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %780)
  %tobool.not.i256.i = icmp eq i8 %780, 0
  br i1 %tobool.not.i256.i, label %rtl_write_word.exit252.i.rtl_write_word.exit260.i_crit_edge, label %if.then.i259.i

rtl_write_word.exit252.i.rtl_write_word.exit260.i_crit_edge: ; preds = %rtl_write_word.exit252.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit260.i

if.then.i259.i:                                   ; preds = %rtl_write_word.exit252.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i257.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %781 = ptrtoint ptr %read16_sync.i257.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %read16_sync.i257.i, align 4
  %call.i258.i = tail call zeroext i16 %782(ptr noundef %558, i32 noundef 1300) #6
  br label %rtl_write_word.exit260.i

rtl_write_word.exit260.i:                         ; preds = %if.then.i259.i, %rtl_write_word.exit252.i.rtl_write_word.exit260.i_crit_edge
  %783 = ptrtoint ptr %write16_async.i.i264 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %write16_async.i.i264, align 4
  tail call void %784(ptr noundef %558, i32 noundef 1302, i16 noundef zeroext 4112) #6
  %785 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i263.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %786, i32 0, i32 1
  %787 = ptrtoint ptr %write_readback.i263.i to i32
  call void @__asan_load1_noabort(i32 %787)
  %788 = load i8, ptr %write_readback.i263.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %788)
  %tobool.not.i264.i = icmp eq i8 %788, 0
  br i1 %tobool.not.i264.i, label %rtl_write_word.exit260.i.rtl_write_word.exit268.i_crit_edge, label %if.then.i267.i

rtl_write_word.exit260.i.rtl_write_word.exit268.i_crit_edge: ; preds = %rtl_write_word.exit260.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit268.i

if.then.i267.i:                                   ; preds = %rtl_write_word.exit260.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i265.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 10
  %789 = ptrtoint ptr %read16_sync.i265.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %read16_sync.i265.i, align 4
  %call.i266.i = tail call zeroext i16 %790(ptr noundef %558, i32 noundef 1302) #6
  br label %rtl_write_word.exit268.i

rtl_write_word.exit268.i:                         ; preds = %if.then.i267.i, %rtl_write_word.exit260.i.rtl_write_word.exit268.i_crit_edge
  %791 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %792(ptr noundef %558, i32 noundef 1568, i32 noundef -1) #6
  %793 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i271.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %794, i32 0, i32 1
  %795 = ptrtoint ptr %write_readback.i271.i to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %write_readback.i271.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %796)
  %tobool.not.i272.i = icmp eq i8 %796, 0
  br i1 %tobool.not.i272.i, label %rtl_write_word.exit268.i.rtl_write_dword.exit276.i_crit_edge, label %if.then.i275.i

rtl_write_word.exit268.i.rtl_write_dword.exit276.i_crit_edge: ; preds = %rtl_write_word.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit276.i

if.then.i275.i:                                   ; preds = %rtl_write_word.exit268.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i273.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %797 = ptrtoint ptr %read32_sync.i273.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %read32_sync.i273.i, align 4
  %call.i274.i = tail call i32 %798(ptr noundef %558, i32 noundef 1568) #6
  br label %rtl_write_dword.exit276.i

rtl_write_dword.exit276.i:                        ; preds = %if.then.i275.i, %rtl_write_word.exit268.i.rtl_write_dword.exit276.i_crit_edge
  %799 = ptrtoint ptr %write32_async.i.i261 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %write32_async.i.i261, align 4
  tail call void %800(ptr noundef %558, i32 noundef 1572, i32 noundef -1) #6
  %801 = ptrtoint ptr %cfg.i.i254 to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %cfg.i.i254, align 8
  %write_readback.i279.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %802, i32 0, i32 1
  %803 = ptrtoint ptr %write_readback.i279.i to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %write_readback.i279.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %804)
  %tobool.not.i280.i = icmp eq i8 %804, 0
  br i1 %tobool.not.i280.i, label %rtl_write_dword.exit276.i.rtl_write_dword.exit284.i_crit_edge, label %if.then.i283.i

rtl_write_dword.exit276.i.rtl_write_dword.exit284.i_crit_edge: ; preds = %rtl_write_dword.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit284.i

if.then.i283.i:                                   ; preds = %rtl_write_dword.exit276.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i281.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 13, i32 11
  %805 = ptrtoint ptr %read32_sync.i281.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %read32_sync.i281.i, align 4
  %call.i282.i = tail call i32 %806(ptr noundef %558, i32 noundef 1572) #6
  br label %rtl_write_dword.exit284.i

rtl_write_dword.exit284.i:                        ; preds = %if.then.i283.i, %rtl_write_dword.exit276.i.rtl_write_dword.exit284.i_crit_edge
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 14, i32 4
  %807 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %807)
  %808 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %808)
  %809 = icmp ult i8 %808, 4
  br i1 %809, label %switch.lookup, label %rtl_write_dword.exit284.i._rtl92de_hw_configure.exit_crit_edge

rtl_write_dword.exit284.i._rtl92de_hw_configure.exit_crit_edge: ; preds = %rtl_write_dword.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_hw_configure.exit

switch.lookup:                                    ; preds = %rtl_write_dword.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = zext i8 %808 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 -1734848432, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %minspace_cfg13.i = getelementptr inbounds %struct.rtl_priv, ptr %558, i32 0, i32 10, i32 51
  %810 = ptrtoint ptr %minspace_cfg13.i to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 %switch.masked, ptr %minspace_cfg13.i, align 1
  br label %_rtl92de_hw_configure.exit

_rtl92de_hw_configure.exit:                       ; preds = %switch.lookup, %rtl_write_dword.exit284.i._rtl92de_hw_configure.exit_crit_edge
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #6
  tail call void @rtl92de_enable_hw_security_config(ptr noundef %hw)
  tail call void @rtl92d_phy_get_hw_reg_originalvalue(ptr noundef %hw) #6
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %811 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %811)
  %812 = load i8, ptr %current_channel, align 1
  tail call void @rtl92d_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %812) #6
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %813 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %813)
  store i32 0, ptr %rfpwr_state, align 4
  %814 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %815, i32 0, i32 4
  %816 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %817, i32 0, i32 20
  %818 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %set_hw_reg, align 4
  tail call void %819(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #6
  %820 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %priv, align 8
  %write8_async.i.i271 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 5
  %822 = ptrtoint ptr %write8_async.i.i271 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %write8_async.i.i271, align 4
  tail call void %823(ptr noundef %821, i32 noundef 843, i8 noundef zeroext -109) #6
  %cfg.i.i272 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 32
  %824 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i.i273 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %825, i32 0, i32 1
  %826 = ptrtoint ptr %write_readback.i.i273 to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %write_readback.i.i273, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %827)
  %tobool.not.i.i274 = icmp eq i8 %827, 0
  br i1 %tobool.not.i.i274, label %_rtl92de_hw_configure.exit.rtl_write_byte.exit.i279_crit_edge, label %if.then.i.i277

_rtl92de_hw_configure.exit.rtl_write_byte.exit.i279_crit_edge: ; preds = %_rtl92de_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i279

if.then.i.i277:                                   ; preds = %_rtl92de_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i275 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 9
  %828 = ptrtoint ptr %read8_sync.i.i275 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %read8_sync.i.i275, align 4
  %call.i.i276 = tail call zeroext i8 %829(ptr noundef %821, i32 noundef 843) #6
  br label %rtl_write_byte.exit.i279

rtl_write_byte.exit.i279:                         ; preds = %if.then.i.i277, %_rtl92de_hw_configure.exit.rtl_write_byte.exit.i279_crit_edge
  %write16_async.i.i278 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 6
  %830 = ptrtoint ptr %write16_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %write16_async.i.i278, align 4
  tail call void %831(ptr noundef %821, i32 noundef 848, i16 noundef zeroext -30964) #6
  %832 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %833, i32 0, i32 1
  %834 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %834)
  %835 = load i8, ptr %write_readback.i10.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %835)
  %tobool.not.i11.i = icmp eq i8 %835, 0
  br i1 %tobool.not.i11.i, label %rtl_write_byte.exit.i279.rtl_write_word.exit.i281_crit_edge, label %if.then.i13.i

rtl_write_byte.exit.i279.rtl_write_word.exit.i281_crit_edge: ; preds = %rtl_write_byte.exit.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit.i281

if.then.i13.i:                                    ; preds = %rtl_write_byte.exit.i279
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i.i280 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 10
  %836 = ptrtoint ptr %read16_sync.i.i280 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %read16_sync.i.i280, align 4
  %call.i12.i = tail call zeroext i16 %837(ptr noundef %821, i32 noundef 848) #6
  br label %rtl_write_word.exit.i281

rtl_write_word.exit.i281:                         ; preds = %if.then.i13.i, %rtl_write_byte.exit.i279.rtl_write_word.exit.i281_crit_edge
  %838 = ptrtoint ptr %write8_async.i.i271 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %write8_async.i.i271, align 4
  tail call void %839(ptr noundef %821, i32 noundef 850, i8 noundef zeroext 1) #6
  %840 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %841, i32 0, i32 1
  %842 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %write_readback.i16.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %843)
  %tobool.not.i17.i = icmp eq i8 %843, 0
  br i1 %tobool.not.i17.i, label %rtl_write_word.exit.i281.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_word.exit.i281.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_word.exit.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_word.exit.i281
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 9
  %844 = ptrtoint ptr %read8_sync.i18.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %read8_sync.i18.i, align 4
  %call.i19.i = tail call zeroext i8 %845(ptr noundef %821, i32 noundef 850) #6
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_word.exit.i281.rtl_write_byte.exit21.i_crit_edge
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 21, i32 6
  %846 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %846)
  %847 = load i8, ptr %support_backdoor.i, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %847)
  %tobool.not.i282 = icmp eq i8 %847, 0
  %848 = ptrtoint ptr %write8_async.i.i271 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %write8_async.i.i271, align 4
  br i1 %tobool.not.i282, label %if.else.i, label %if.then.i283

if.then.i283:                                     ; preds = %rtl_write_byte.exit21.i
  tail call void %849(ptr noundef %821, i32 noundef 841, i8 noundef zeroext 27) #6
  %850 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %851, i32 0, i32 1
  %852 = ptrtoint ptr %write_readback.i24.i to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %write_readback.i24.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %853)
  %tobool.not.i25.i = icmp eq i8 %853, 0
  br i1 %tobool.not.i25.i, label %if.then.i283.if.end.i284_crit_edge, label %if.then.i283.if.end.sink.split.i_crit_edge

if.then.i283.if.end.sink.split.i_crit_edge:       ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split.i

if.then.i283.if.end.i284_crit_edge:               ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i284

if.else.i:                                        ; preds = %rtl_write_byte.exit21.i
  tail call void %849(ptr noundef %821, i32 noundef 841, i8 noundef zeroext 3) #6
  %854 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %855, i32 0, i32 1
  %856 = ptrtoint ptr %write_readback.i32.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %857 = load i8, ptr %write_readback.i32.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %857)
  %tobool.not.i33.i = icmp eq i8 %857, 0
  br i1 %tobool.not.i33.i, label %if.else.i.if.end.i284_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split.i

if.else.i.if.end.i284_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i284

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i283.if.end.sink.split.i_crit_edge
  %read8_sync.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 9
  %858 = ptrtoint ptr %read8_sync.i34.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %read8_sync.i34.i, align 4
  %call.i35.i = tail call zeroext i8 %859(ptr noundef %821, i32 noundef 841) #6
  br label %if.end.i284

if.end.i284:                                      ; preds = %if.end.sink.split.i, %if.else.i.if.end.i284_crit_edge, %if.then.i283.if.end.i284_crit_edge
  %860 = ptrtoint ptr %write16_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %write16_async.i.i278, align 4
  tail call void %861(ptr noundef %821, i32 noundef 848, i16 noundef zeroext 10008) #6
  %862 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %863, i32 0, i32 1
  %864 = ptrtoint ptr %write_readback.i40.i to i32
  call void @__asan_load1_noabort(i32 %864)
  %865 = load i8, ptr %write_readback.i40.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %865)
  %tobool.not.i41.i = icmp eq i8 %865, 0
  br i1 %tobool.not.i41.i, label %if.end.i284.rtl_write_word.exit45.i_crit_edge, label %if.then.i44.i

if.end.i284.rtl_write_word.exit45.i_crit_edge:    ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit45.i

if.then.i44.i:                                    ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 10
  %866 = ptrtoint ptr %read16_sync.i42.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %read16_sync.i42.i, align 4
  %call.i43.i = tail call zeroext i16 %867(ptr noundef %821, i32 noundef 848) #6
  br label %rtl_write_word.exit45.i

rtl_write_word.exit45.i:                          ; preds = %if.then.i44.i, %if.end.i284.rtl_write_word.exit45.i_crit_edge
  %868 = ptrtoint ptr %write8_async.i.i271 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %write8_async.i.i271, align 4
  tail call void %869(ptr noundef %821, i32 noundef 850, i8 noundef zeroext 1) #6
  %870 = ptrtoint ptr %cfg.i.i272 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %cfg.i.i272, align 8
  %write_readback.i48.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %871, i32 0, i32 1
  %872 = ptrtoint ptr %write_readback.i48.i to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %write_readback.i48.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %873)
  %tobool.not.i49.i = icmp eq i8 %873, 0
  br i1 %tobool.not.i49.i, label %rtl_write_word.exit45.i._rtl92de_enable_aspm_back_door.exit_crit_edge, label %if.then.i52.i

rtl_write_word.exit45.i._rtl92de_enable_aspm_back_door.exit_crit_edge: ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_enable_aspm_back_door.exit

if.then.i52.i:                                    ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 13, i32 9
  %874 = ptrtoint ptr %read8_sync.i50.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %read8_sync.i50.i, align 4
  %call.i51.i = tail call zeroext i8 %875(ptr noundef %821, i32 noundef 850) #6
  br label %_rtl92de_enable_aspm_back_door.exit

_rtl92de_enable_aspm_back_door.exit:              ; preds = %if.then.i52.i, %rtl_write_word.exit45.i._rtl92de_enable_aspm_back_door.exit_crit_edge
  tail call void @rtl92d_dm_init(ptr noundef %hw) #6
  %876 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 0, ptr %being_init_adapter, align 4
  %877 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %878)
  %cmp59 = icmp eq i32 %878, 0
  br i1 %cmp59, label %if.then61, label %_rtl92de_enable_aspm_back_door.exit.if.end79_crit_edge

_rtl92de_enable_aspm_back_door.exit.if.end79_crit_edge: ; preds = %_rtl92de_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then61:                                        ; preds = %_rtl92de_enable_aspm_back_door.exit
  tail call void @rtl92d_phy_lc_calibrate(ptr noundef %hw) #6
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %879 = ptrtoint ptr %macphymode to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %macphymode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %880)
  %cmp62 = icmp eq i32 %880, 1
  br i1 %cmp62, label %if.then61.for.body_crit_edge, label %if.then61.if.end79_crit_edge

if.then61.if.end79_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then61.for.body_crit_edge:                     ; preds = %if.then61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then61.for.body_crit_edge
  %i.0298 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then61.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %881 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %881(i32 noundef 10737400) #6
  %882 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %priv, align 8
  %cfg.i286 = getelementptr inbounds %struct.rtl_priv, ptr %883, i32 0, i32 32
  %884 = ptrtoint ptr %cfg.i286 to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %cfg.i286, align 8
  %ops.i287 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %885, i32 0, i32 4
  %886 = ptrtoint ptr %ops.i287 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %ops.i287, align 4
  %get_rfreg.i288 = getelementptr inbounds %struct.rtl_hal_ops, ptr %887, i32 0, i32 47
  %888 = ptrtoint ptr %get_rfreg.i288 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %get_rfreg.i288, align 4
  %call.i289 = tail call i32 %889(ptr noundef %hw, i32 noundef 0, i32 noundef 42, i32 noundef -1) #6
  %and68 = and i32 %call.i289, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp69.not = icmp eq i32 %and68, 0
  br i1 %cmp69.not, label %for.inc, label %for.body.if.end79_crit_edge

for.body.if.end79_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.then75, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then75:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %890 = ptrtoint ptr %init_ready to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 0, ptr %init_ready, align 1
  br label %cleanup81

if.end79:                                         ; preds = %for.body.if.end79_crit_edge, %if.then61.if.end79_crit_edge, %_rtl92de_enable_aspm_back_door.exit.if.end79_crit_edge
  %891 = ptrtoint ptr %init_ready to i32
  call void @__asan_store1_noabort(i32 %891)
  store i8 1, ptr %init_ready, align 1
  br label %cleanup81

cleanup81:                                        ; preds = %if.end79, %if.then75, %if.then19, %do.end14
  %retval.1 = phi i32 [ 1, %if.then19 ], [ 0, %if.end79 ], [ 1, %do.end14 ], [ 1, %if.then75 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_reset_iqk_result(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92d_download_fw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_mac_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_bb_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_rf_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_update_bbrf_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_get_hw_reg_originalvalue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_txpower_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_dm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_lc_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #6
  %2 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_rcr, align 4, !annotation !160
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %3 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void %10(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #6
  %11 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_rcr, align 4
  br i1 %check_bssid, label %if.then1, label %if.then5

if.then1:                                         ; preds = %if.end
  %or = or i32 %12, 192
  %13 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %reg_rcr, align 4
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops3, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_hw_reg, align 4
  call void %19(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #6
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %23, -17
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i.i, align 4
  call void %25(ptr noundef %21, i32 noundef 1360, i8 noundef zeroext %conv6.i) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.then1.cleanup_crit_edge, label %if.then.i.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %31(ptr noundef %21, i32 noundef 1360) #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %and = and i32 %12, -193
  %32 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %reg_rcr, align 4
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i22 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %reg_bcn_ctrl_val.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_bcn_ctrl_val.i22, align 4
  %or.i = or i32 %36, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i22, align 4
  %conv6.i23 = trunc i32 %or.i to i8
  %write8_async.i.i24 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 13, i32 5
  %37 = ptrtoint ptr %write8_async.i.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8_async.i.i24, align 4
  call void %38(ptr noundef %34, i32 noundef 1360, i8 noundef zeroext %conv6.i23) #6
  %cfg.i.i25 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i25, align 8
  %write_readback.i.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i.i26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i.i26, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i27 = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i27, label %if.then5._rtl92de_set_bcn_ctrl_reg.exit31_crit_edge, label %if.then.i.i30

if.then5._rtl92de_set_bcn_ctrl_reg.exit31_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit31

if.then.i.i30:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i28 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i.i28, align 4
  %call.i.i29 = call zeroext i8 %44(ptr noundef %34, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit31

_rtl92de_set_bcn_ctrl_reg.exit31:                 ; preds = %if.then.i.i30, %if.then5._rtl92de_set_bcn_ctrl_reg.exit31_crit_edge
  %45 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg, align 8
  %ops7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops7, align 4
  %set_hw_reg8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %set_hw_reg8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_hw_reg8, align 4
  call void %50(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #6
  br label %cleanup

cleanup:                                          ; preds = %_rtl92de_set_bcn_ctrl_reg.exit31, %if.then.i.i, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92de_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i10 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl92de_set_media_status(ptr noundef %hw, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #6
  %6 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_rcr.i, align 4, !annotation !160
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.rtl92de_set_check_bssid.exit_crit_edge

if.then3.rtl92de_set_check_bssid.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_set_check_bssid.exit

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
  call void %14(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #6
  %15 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_rcr.i, align 4
  %or.i = or i32 %16, 192
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %ops3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops3.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_hw_reg.i, align 4
  call void %22(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #6
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %26, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %28(ptr noundef %24, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #6
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl92de_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl92de_set_check_bssid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 13, i32 9
  %33 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %34(ptr noundef %24, i32 noundef 1360) #6
  br label %rtl92de_set_check_bssid.exit

rtl92de_set_check_bssid.exit:                     ; preds = %if.then.i.i.i, %if.end.i.rtl92de_set_check_bssid.exit_crit_edge, %if.then3.rtl92de_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i10) #6
  %37 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reg_rcr.i10, align 4, !annotation !160
  %rfpwr_state.i12 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 21, i32 24
  %38 = ptrtoint ptr %rfpwr_state.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rfpwr_state.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i13 = icmp eq i32 %39, 0
  br i1 %cmp.not.i13, label %if.end.i17, label %if.else.rtl92de_set_check_bssid.exit18_crit_edge

if.else.rtl92de_set_check_bssid.exit18_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_set_check_bssid.exit18

if.end.i17:                                       ; preds = %if.else
  %cfg.i14 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i14, align 8
  %ops.i15 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i15, align 4
  %get_hw_reg.i16 = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %get_hw_reg.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_hw_reg.i16, align 4
  call void %45(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #6
  %46 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_rcr.i10, align 4
  %and.i = and i32 %47, -193
  store i32 %and.i, ptr %reg_rcr.i10, align 4
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %reg_bcn_ctrl_val.i22.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %or.i.i = or i32 %51, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %conv6.i23.i = trunc i32 %or.i.i to i8
  %write8_async.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 13, i32 5
  %52 = ptrtoint ptr %write8_async.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8_async.i.i24.i, align 4
  call void %53(ptr noundef %49, i32 noundef 1360, i8 noundef zeroext %conv6.i23.i) #6
  %cfg.i.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %54 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i.i25.i, align 8
  %write_readback.i.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i.i26.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i27.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i17._rtl92de_set_bcn_ctrl_reg.exit31.i_crit_edge, label %if.then.i.i30.i

if.end.i17._rtl92de_set_bcn_ctrl_reg.exit31.i_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_set_bcn_ctrl_reg.exit31.i

if.then.i.i30.i:                                  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 13, i32 9
  %58 = ptrtoint ptr %read8_sync.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8_sync.i.i28.i, align 4
  %call.i.i29.i = call zeroext i8 %59(ptr noundef %49, i32 noundef 1360) #6
  br label %_rtl92de_set_bcn_ctrl_reg.exit31.i

_rtl92de_set_bcn_ctrl_reg.exit31.i:               ; preds = %if.then.i.i30.i, %if.end.i17._rtl92de_set_bcn_ctrl_reg.exit31.i_crit_edge
  %60 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i14, align 8
  %ops7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %ops7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops7.i, align 4
  %set_hw_reg8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %63, i32 0, i32 20
  %64 = ptrtoint ptr %set_hw_reg8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_hw_reg8.i, align 4
  call void %65(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #6
  br label %rtl92de_set_check_bssid.exit18

rtl92de_set_check_bssid.exit18:                   ; preds = %_rtl92de_set_bcn_ctrl_reg.exit31.i, %if.else.rtl92de_set_check_bssid.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i10) #6
  br label %cleanup

cleanup:                                          ; preds = %rtl92de_set_check_bssid.exit18, %rtl92de_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %rtl92de_set_check_bssid.exit ], [ 0, %rtl92de_set_check_bssid.exit18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92de_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 258) #6
  %4 = and i8 %call.i, -4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %type, label %if.else11 [
    i32 0, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge111
    i32 1, label %entry.if.then10_crit_edge
    i32 3, label %entry.if.then10_crit_edge112
  ]

entry.if.then10_crit_edge112:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

entry.if.then_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge111
  tail call fastcc void @_rtl92de_stop_tx_beacon(ptr noundef %hw)
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %9, -3
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 5
  %10 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %11(ptr noundef %7, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #6
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i.i, label %if.then.if.end12_crit_edge, label %if.then.i.i.i

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 9
  %16 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %17(ptr noundef %7, i32 noundef 1360) #6
  br label %if.end12

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge112
  tail call fastcc void @_rtl92de_resume_tx_beacon(ptr noundef %hw)
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i82 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %reg_bcn_ctrl_val.i.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_bcn_ctrl_val.i.i82, align 4
  %or.i.i = or i32 %21, 2
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i82, align 4
  %conv6.i.i83 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i84 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i.i84, align 4
  tail call void %23(ptr noundef %19, i32 noundef 1360, i8 noundef zeroext %conv6.i.i83) #6
  %cfg.i.i.i85 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i.i85, align 8
  %write_readback.i.i.i86 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i.i.i86 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i.i.i86, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i.i87 = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i.i87, label %if.then10.if.end12_crit_edge, label %if.then.i.i.i90

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i.i.i90:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i88 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 9
  %28 = ptrtoint ptr %read8_sync.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i.i88, align 4
  %call.i.i.i89 = tail call zeroext i8 %29(ptr noundef %19, i32 noundef 1360) #6
  br label %if.end12

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %type) #6
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then.i.i.i90, %if.then10.if.end12_crit_edge, %if.then.i.i.i, %if.then.if.end12_crit_edge
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i92 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 1360) #6
  %32 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %type, label %do.end [
    i32 0, label %if.end12.sw.epilog_crit_edge
    i32 1, label %sw.bb19
    i32 2, label %sw.bb26
    i32 3, label %sw.bb33
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %33 = or i8 %4, 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i8 %4, 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %35 = or i8 %call.i, 3
  br label %sw.epilog

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %type) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb26, %sw.bb19, %if.end12.sw.epilog_crit_edge
  %.str.48.sink = phi ptr [ @.str.48, %sw.bb33 ], [ @.str.47, %sw.bb26 ], [ @.str.46, %sw.bb19 ], [ @.str.45, %if.end12.sw.epilog_crit_edge ]
  %bt_msr.0 = phi i8 [ %35, %sw.bb33 ], [ %34, %sw.bb26 ], [ %33, %sw.bb19 ], [ %4, %if.end12.sw.epilog_crit_edge ]
  %ledaction.0 = phi i32 [ 3, %sw.bb33 ], [ 2, %sw.bb26 ], [ 3, %sw.bb19 ], [ 2, %if.end12.sw.epilog_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.48.sink) #6
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %36 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8_async.i, align 4
  tail call void %37(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %bt_msr.0) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %sw.epilog.rtl_write_byte.exit_crit_edge, label %if.then.i

sw.epilog.rtl_write_byte.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8_sync.i, align 4
  %call.i94 = tail call zeroext i8 %43(ptr noundef %1, i32 noundef 258) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %sw.epilog.rtl_write_byte.exit_crit_edge
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %47, i32 0, i32 36
  %48 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %led_control, align 4
  tail call void %49(ptr noundef %hw, i32 noundef %ledaction.0) #6
  %50 = and i8 %bt_msr.0, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp43 = icmp eq i8 %50, 3
  %51 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %rtl_write_byte.exit
  tail call void %52(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #6
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i97, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i98 = icmp eq i8 %56, 0
  br i1 %tobool.not.i98, label %if.then45.cleanup_crit_edge, label %if.then.i101

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i101:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i, align 4
  %call.i100 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 1297) #6
  br label %cleanup

if.else46:                                        ; preds = %rtl_write_byte.exit
  tail call void %52(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #6
  %59 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i, align 8
  %write_readback.i105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i105 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i105, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i106 = icmp eq i8 %62, 0
  br i1 %tobool.not.i106, label %if.else46.cleanup_crit_edge, label %if.then.i109

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i109:                                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i, align 4
  %call.i108 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 1297) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i109, %if.else46.cleanup_crit_edge, %if.then.i101, %if.then45.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %if.then.i101 ], [ 0, %if.else46.cleanup_crit_edge ], [ 0, %if.then.i109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_linked_set_reg(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %2 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_channel, align 1
  %call = tail call zeroext i8 @rtl92d_get_rightchnlplace_for_iqk(i8 noundef zeroext %3) #6
  %idxprom = zext i8 %call to i32
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 68, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %conv) #6
  tail call void @rtl92d_phy_iq_calibrate(ptr noundef %hw) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92d_get_rightchnlplace_for_iqk(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_iq_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl92d_dm_init_edca_turbo(ptr noundef %hw) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mask, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 288, i32 noundef %3) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 288) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 296, i32 noundef %13) #6
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i12, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i13 = icmp eq i8 %19, 0
  br i1 %tobool.not.i13, label %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge, label %if.then.i16

rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit17

if.then.i16:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i14, align 4
  %call.i15 = tail call i32 %21(ptr noundef %1, i32 noundef 296) #6
  br label %rtl_write_dword.exit17

rtl_write_dword.exit17:                           ; preds = %if.then.i16, %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 288, i32 noundef 0) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !159
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
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 288) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 296, i32 noundef 0) #6
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i7, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i8 = icmp eq i8 %15, 0
  br i1 %tobool.not.i8, label %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge, label %if.then.i11

rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit12

if.then.i11:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i9, align 4
  %call.i10 = tail call i32 %17(ptr noundef %1, i32 noundef 296) #6
  br label %rtl_write_dword.exit12

rtl_write_dword.exit12:                           ; preds = %if.then.i11, %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl92de_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %driver_is_goingto_unload, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %5 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %6)
  %cmp = icmp ugt i32 %6, 536870912
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 36
  %11 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %led_control, align 4
  tail call void %12(ptr noundef %hw, i32 noundef 7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %13 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %cur_ps_level, align 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 769, i8 noundef zeroext -2) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 769) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #6
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %cfg.i31 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i31, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %31(ptr noundef %hw, i32 noundef 2188, i32 noundef 15728640, i32 noundef 15) #6
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %cfg.i33 = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %cfg.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i33, align 8
  %ops.i34 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i34, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %37, i32 0, i32 48
  %38 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %39(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #6
  %40 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i, align 4
  tail call void %41(ptr noundef %1, i32 noundef 1536, i8 noundef zeroext 64) #6
  %42 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i, align 8
  %write_readback.i37 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i37, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i38 = icmp eq i8 %45, 0
  br i1 %tobool.not.i38, label %rtl_write_byte.exit.rtl_write_byte.exit42_crit_edge, label %if.then.i41

rtl_write_byte.exit.rtl_write_byte.exit42_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit42

if.then.i41:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i39 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %46 = ptrtoint ptr %read8_sync.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i39, align 4
  %call.i40 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 1536) #6
  br label %rtl_write_byte.exit42

rtl_write_byte.exit42:                            ; preds = %if.then.i41, %rtl_write_byte.exit.rtl_write_byte.exit42_crit_edge
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i44 = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i44, align 8
  %ops.i45 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i45, align 4
  %set_bbreg.i46 = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %set_bbreg.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bbreg.i46, align 4
  tail call void %55(ptr noundef %hw, i32 noundef 3076, i32 noundef 255, i32 noundef 0) #6
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %cfg.i48 = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i48, align 8
  %ops.i49 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i49, align 4
  %set_bbreg.i50 = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %set_bbreg.i50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_bbreg.i50, align 4
  tail call void %63(ptr noundef %hw, i32 noundef 3332, i32 noundef 15, i32 noundef 0) #6
  %64 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i, align 4
  tail call void %65(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -30) #6
  %66 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i, align 8
  %write_readback.i53 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i53 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i53, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i54 = icmp eq i8 %69, 0
  br i1 %tobool.not.i54, label %rtl_write_byte.exit42.rtl_write_byte.exit58_crit_edge, label %if.then.i57

rtl_write_byte.exit42.rtl_write_byte.exit58_crit_edge: ; preds = %rtl_write_byte.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit58

if.then.i57:                                      ; preds = %rtl_write_byte.exit42
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i55 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %70 = ptrtoint ptr %read8_sync.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i55, align 4
  %call.i56 = tail call zeroext i8 %71(ptr noundef %1, i32 noundef 2) #6
  br label %rtl_write_byte.exit58

rtl_write_byte.exit58:                            ; preds = %if.then.i57, %rtl_write_byte.exit42.rtl_write_byte.exit58_crit_edge
  %interfaceindex = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 56
  %72 = ptrtoint ptr %interfaceindex to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %interfaceindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp5 = icmp eq i32 %73, 1
  br i1 %cmp5, label %if.then6, label %rtl_write_byte.exit58.if.end7_crit_edge

rtl_write_byte.exit58.if.end7_crit_edge:          ; preds = %rtl_write_byte.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %rtl_write_byte.exit58
  %74 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write8_async.i, align 4
  tail call void %75(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -32) #6
  %76 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i, align 8
  %write_readback.i61 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_readback.i61 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_readback.i61, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i62 = icmp eq i8 %79, 0
  br i1 %tobool.not.i62, label %if.then6.if.end7_crit_edge, label %if.then.i65

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i65:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i63 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %80 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read8_sync.i63, align 4
  %call.i64 = tail call zeroext i8 %81(ptr noundef %1, i32 noundef 2) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i65, %if.then6.if.end7_crit_edge, %rtl_write_byte.exit58.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 10737400) #6
  %83 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write8_async.i, align 4
  tail call void %84(ptr noundef %1, i32 noundef 769, i8 noundef zeroext -1) #6
  %85 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i, align 8
  %write_readback.i69 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i69 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i69, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i70 = icmp eq i8 %88, 0
  br i1 %tobool.not.i70, label %if.end7.rtl_write_byte.exit74_crit_edge, label %if.then.i73

if.end7.rtl_write_byte.exit74_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit74

if.then.i73:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i71 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %89 = ptrtoint ptr %read8_sync.i71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read8_sync.i71, align 4
  %call.i72 = tail call zeroext i8 %90(ptr noundef %1, i32 noundef 769) #6
  br label %rtl_write_byte.exit74

rtl_write_byte.exit74:                            ; preds = %if.then.i73, %if.end7.rtl_write_byte.exit74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 10737400) #6
  %92 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i, align 4
  tail call void %93(ptr noundef %1, i32 noundef 256, i8 noundef zeroext 0) #6
  %94 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i, align 8
  %write_readback.i77 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i77 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i77, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i78 = icmp eq i8 %97, 0
  br i1 %tobool.not.i78, label %rtl_write_byte.exit74.rtl_write_byte.exit82_crit_edge, label %if.then.i81

rtl_write_byte.exit74.rtl_write_byte.exit82_crit_edge: ; preds = %rtl_write_byte.exit74
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit82

if.then.i81:                                      ; preds = %rtl_write_byte.exit74
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i79 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %98 = ptrtoint ptr %read8_sync.i79 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i79, align 4
  %call.i80 = tail call zeroext i8 %99(ptr noundef %1, i32 noundef 256) #6
  br label %rtl_write_byte.exit82

rtl_write_byte.exit82:                            ; preds = %if.then.i81, %rtl_write_byte.exit74.rtl_write_byte.exit82_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.20) #6
  %call8 = tail call zeroext i1 @rtl92d_phy_check_poweroff(ptr noundef %hw) #6
  br i1 %call8, label %if.then9, label %rtl_write_byte.exit82.if.end10_crit_edge

rtl_write_byte.exit82.if.end10_crit_edge:         ; preds = %rtl_write_byte.exit82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %rtl_write_byte.exit82
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %intf_ops.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 33
  %102 = ptrtoint ptr %intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %intf_ops.i, align 4
  %enable_aspm.i = getelementptr inbounds %struct.rtl_intf_ops, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %enable_aspm.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %enable_aspm.i, align 4
  tail call void %105(ptr noundef %hw) #6
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 5
  %106 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %107(ptr noundef %101, i32 noundef 31, i8 noundef zeroext 0) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %108 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i, label %if.then9.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then9.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %112 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %113(ptr noundef %101, i32 noundef 31) #6
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then9.rtl_write_byte.exit.i_crit_edge
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 8
  %cfg.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %115, i32 0, i32 32
  %116 = ptrtoint ptr %cfg.i40.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cfg.i40.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %119, i32 0, i32 46
  %120 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %121(ptr noundef %hw, i32 noundef 2172, i32 noundef 8, i32 noundef 0) #6
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 8
  %cfg.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %123, i32 0, i32 32
  %124 = ptrtoint ptr %cfg.i42.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i42.i, align 8
  %ops.i43.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %ops.i43.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i43.i, align 4
  %set_bbreg.i44.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %127, i32 0, i32 46
  %128 = ptrtoint ptr %set_bbreg.i44.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %set_bbreg.i44.i, align 4
  tail call void %129(ptr noundef %hw, i32 noundef 2172, i32 noundef 32768, i32 noundef 0) #6
  %130 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %131(ptr noundef %101, i32 noundef 32, i8 noundef zeroext 4) #6
  %132 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i47.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i47.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i47.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i48.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i48.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit52.i_crit_edge, label %if.then.i51.i

rtl_write_byte.exit.i.rtl_write_byte.exit52.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit52.i

if.then.i51.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i49.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %136 = ptrtoint ptr %read8_sync.i49.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i49.i, align 4
  %call.i50.i = tail call zeroext i8 %137(ptr noundef %101, i32 noundef 32) #6
  br label %rtl_write_byte.exit52.i

rtl_write_byte.exit52.i:                          ; preds = %if.then.i51.i, %rtl_write_byte.exit.i.rtl_write_byte.exit52.i_crit_edge
  tail call void @rtl92d_firmware_selfreset(ptr noundef %hw) #6
  %138 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %139(ptr noundef %101, i32 noundef 3, i8 noundef zeroext 81) #6
  %140 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_readback.i55.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %write_readback.i55.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i56.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i56.i, label %rtl_write_byte.exit52.i.rtl_write_byte.exit60.i_crit_edge, label %if.then.i59.i

rtl_write_byte.exit52.i.rtl_write_byte.exit60.i_crit_edge: ; preds = %rtl_write_byte.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit60.i

if.then.i59.i:                                    ; preds = %rtl_write_byte.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i57.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %144 = ptrtoint ptr %read8_sync.i57.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8_sync.i57.i, align 4
  %call.i58.i = tail call zeroext i8 %145(ptr noundef %101, i32 noundef 3) #6
  br label %rtl_write_byte.exit60.i

rtl_write_byte.exit60.i:                          ; preds = %if.then.i59.i, %rtl_write_byte.exit52.i.rtl_write_byte.exit60.i_crit_edge
  %146 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %147(ptr noundef %101, i32 noundef 128, i8 noundef zeroext 0) #6
  %148 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i63.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_readback.i63.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %write_readback.i63.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i64.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i64.i, label %rtl_write_byte.exit60.i.rtl_write_byte.exit68.i_crit_edge, label %if.then.i67.i

rtl_write_byte.exit60.i.rtl_write_byte.exit68.i_crit_edge: ; preds = %rtl_write_byte.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit68.i

if.then.i67.i:                                    ; preds = %rtl_write_byte.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i65.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %152 = ptrtoint ptr %read8_sync.i65.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read8_sync.i65.i, align 4
  %call.i66.i = tail call zeroext i8 %153(ptr noundef %101, i32 noundef 128) #6
  br label %rtl_write_byte.exit68.i

rtl_write_byte.exit68.i:                          ; preds = %if.then.i67.i, %rtl_write_byte.exit60.i.rtl_write_byte.exit68.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 7
  %154 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %155(ptr noundef %101, i32 noundef 68, i32 noundef 0) #6
  %156 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i70.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %write_readback.i70.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %write_readback.i70.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i71.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i71.i, label %rtl_write_byte.exit68.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i73.i

rtl_write_byte.exit68.i.rtl_write_dword.exit.i_crit_edge: ; preds = %rtl_write_byte.exit68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i

if.then.i73.i:                                    ; preds = %rtl_write_byte.exit68.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 11
  %160 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i72.i = tail call i32 %161(ptr noundef %101, i32 noundef 68) #6
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i73.i, %rtl_write_byte.exit68.i.rtl_write_dword.exit.i_crit_edge
  %read8_sync.i74.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 9
  %162 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i75.i = tail call zeroext i8 %163(ptr noundef %101, i32 noundef 68) #6
  %conv.i = zext i8 %call.i75.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, 16711680
  %164 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %165(ptr noundef %101, i32 noundef 68, i32 noundef %or.i) #6
  %166 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i78.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write_readback.i78.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %write_readback.i78.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i79.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i79.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit83.i_crit_edge, label %if.then.i82.i

rtl_write_dword.exit.i.rtl_write_dword.exit83.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit83.i

if.then.i82.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 11
  %170 = ptrtoint ptr %read32_sync.i80.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read32_sync.i80.i, align 4
  %call.i81.i = tail call i32 %171(ptr noundef %101, i32 noundef 68) #6
  br label %rtl_write_dword.exit83.i

rtl_write_dword.exit83.i:                         ; preds = %if.then.i82.i, %rtl_write_dword.exit.i.rtl_write_dword.exit83.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 6
  %172 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %173(ptr noundef %101, i32 noundef 66, i16 noundef zeroext 1936) #6
  %174 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i85.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write_readback.i85.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %write_readback.i85.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i86.i = icmp eq i8 %177, 0
  br i1 %tobool.not.i86.i, label %rtl_write_dword.exit83.i.rtl_write_word.exit.i_crit_edge, label %if.then.i88.i

rtl_write_dword.exit83.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_dword.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit.i

if.then.i88.i:                                    ; preds = %rtl_write_dword.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 10
  %178 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i87.i = tail call zeroext i16 %179(ptr noundef %101, i32 noundef 66) #6
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i88.i, %rtl_write_dword.exit83.i.rtl_write_word.exit.i_crit_edge
  %180 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %181(ptr noundef %101, i32 noundef 76, i16 noundef zeroext -32640) #6
  %182 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i91.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %write_readback.i91.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %write_readback.i91.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i92.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i92.i, label %rtl_write_word.exit.i.rtl_write_word.exit96.i_crit_edge, label %if.then.i95.i

rtl_write_word.exit.i.rtl_write_word.exit96.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit96.i

if.then.i95.i:                                    ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 13, i32 10
  %186 = ptrtoint ptr %read16_sync.i93.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read16_sync.i93.i, align 4
  %call.i94.i = tail call zeroext i16 %187(ptr noundef %101, i32 noundef 76) #6
  br label %rtl_write_word.exit96.i

rtl_write_word.exit96.i:                          ; preds = %if.then.i95.i, %rtl_write_word.exit.i.rtl_write_word.exit96.i_crit_edge
  %188 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %189(ptr noundef %101, i32 noundef 40, i8 noundef zeroext -128) #6
  %190 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i99.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %write_readback.i99.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %write_readback.i99.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.i100.i = icmp eq i8 %193, 0
  br i1 %tobool.not.i100.i, label %rtl_write_word.exit96.i.rtl_write_byte.exit104.i_crit_edge, label %if.then.i103.i

rtl_write_word.exit96.i.rtl_write_byte.exit104.i_crit_edge: ; preds = %rtl_write_word.exit96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit104.i

if.then.i103.i:                                   ; preds = %rtl_write_word.exit96.i
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i102.i = tail call zeroext i8 %195(ptr noundef %101, i32 noundef 40) #6
  br label %rtl_write_byte.exit104.i

rtl_write_byte.exit104.i:                         ; preds = %if.then.i103.i, %rtl_write_word.exit96.i.rtl_write_byte.exit104.i_crit_edge
  %196 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %197(ptr noundef %101, i32 noundef 17, i8 noundef zeroext 35) #6
  %198 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i107.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %write_readback.i107.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %write_readback.i107.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i108.i = icmp eq i8 %201, 0
  br i1 %tobool.not.i108.i, label %rtl_write_byte.exit104.i.rtl_write_byte.exit112.i_crit_edge, label %if.then.i111.i

rtl_write_byte.exit104.i.rtl_write_byte.exit112.i_crit_edge: ; preds = %rtl_write_byte.exit104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit112.i

if.then.i111.i:                                   ; preds = %rtl_write_byte.exit104.i
  call void @__sanitizer_cov_trace_pc() #8
  %202 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i110.i = tail call zeroext i8 %203(ptr noundef %101, i32 noundef 17) #6
  br label %rtl_write_byte.exit112.i

rtl_write_byte.exit112.i:                         ; preds = %if.then.i111.i, %rtl_write_byte.exit104.i.rtl_write_byte.exit112.i_crit_edge
  %204 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %205(ptr noundef %101, i32 noundef 36, i8 noundef zeroext 14) #6
  %206 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %write_readback.i115.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i116.i = icmp eq i8 %209, 0
  br i1 %tobool.not.i116.i, label %rtl_write_byte.exit112.i.rtl_write_byte.exit120.i_crit_edge, label %if.then.i119.i

rtl_write_byte.exit112.i.rtl_write_byte.exit120.i_crit_edge: ; preds = %rtl_write_byte.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit120.i

if.then.i119.i:                                   ; preds = %rtl_write_byte.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i118.i = tail call zeroext i8 %211(ptr noundef %101, i32 noundef 36) #6
  br label %rtl_write_byte.exit120.i

rtl_write_byte.exit120.i:                         ; preds = %if.then.i119.i, %rtl_write_byte.exit112.i.rtl_write_byte.exit120.i_crit_edge
  %212 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %213(ptr noundef %101, i32 noundef 28, i8 noundef zeroext 14) #6
  %214 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %write_readback.i123.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %write_readback.i123.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i124.i = icmp eq i8 %217, 0
  br i1 %tobool.not.i124.i, label %rtl_write_byte.exit120.i.rtl_write_byte.exit128.i_crit_edge, label %if.then.i127.i

rtl_write_byte.exit120.i.rtl_write_byte.exit128.i_crit_edge: ; preds = %rtl_write_byte.exit120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit128.i

if.then.i127.i:                                   ; preds = %rtl_write_byte.exit120.i
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i126.i = tail call zeroext i8 %219(ptr noundef %101, i32 noundef 28) #6
  br label %rtl_write_byte.exit128.i

rtl_write_byte.exit128.i:                         ; preds = %if.then.i127.i, %rtl_write_byte.exit120.i.rtl_write_byte.exit128.i_crit_edge
  %220 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %221(ptr noundef %101, i32 noundef 5, i8 noundef zeroext 16) #6
  %222 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %write_readback.i131.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %write_readback.i131.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i132.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i132.i, label %rtl_write_byte.exit128.i.rtl_write_byte.exit136.i_crit_edge, label %if.then.i135.i

rtl_write_byte.exit128.i.rtl_write_byte.exit136.i_crit_edge: ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit136.i

if.then.i135.i:                                   ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #8
  %226 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i134.i = tail call zeroext i8 %227(ptr noundef %101, i32 noundef 5) #6
  br label %rtl_write_byte.exit136.i

rtl_write_byte.exit136.i:                         ; preds = %if.then.i135.i, %rtl_write_byte.exit128.i.rtl_write_byte.exit136.i_crit_edge
  %228 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i138.i = tail call zeroext i8 %229(ptr noundef %101, i32 noundef 17) #6
  %conv2.i = zext i8 %call.i138.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %101, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef 17, i32 noundef %conv2.i) #6
  %macphymode.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 10, i32 52
  %230 = ptrtoint ptr %macphymode.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %macphymode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp.not.i = icmp eq i32 %231, 0
  br i1 %cmp.not.i, label %rtl_write_byte.exit136.i._rtl92de_poweroff_adapter.exit_crit_edge, label %do.body4.i

rtl_write_byte.exit136.i._rtl92de_poweroff_adapter.exit_crit_edge: ; preds = %rtl_write_byte.exit136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_poweroff_adapter.exit

do.body4.i:                                       ; preds = %rtl_write_byte.exit136.i
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_power) #6
  %232 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i140.i = tail call zeroext i8 %233(ptr noundef %101, i32 noundef 23) #6
  %234 = and i8 %call.i140.i, 127
  %235 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %236(ptr noundef %101, i32 noundef 23, i8 noundef zeroext %234) #6
  %237 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i143.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %write_readback.i143.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %write_readback.i143.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i144.i = icmp eq i8 %240, 0
  br i1 %tobool.not.i144.i, label %do.body4.i.rtl_write_byte.exit148.i_crit_edge, label %if.then.i147.i

do.body4.i.rtl_write_byte.exit148.i_crit_edge:    ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit148.i

if.then.i147.i:                                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %241 = ptrtoint ptr %read8_sync.i74.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read8_sync.i74.i, align 4
  %call.i146.i = tail call zeroext i8 %242(ptr noundef %101, i32 noundef 23) #6
  br label %rtl_write_byte.exit148.i

rtl_write_byte.exit148.i:                         ; preds = %if.then.i147.i, %do.body4.i.rtl_write_byte.exit148.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_power, i32 noundef %call8.i) #6
  br label %_rtl92de_poweroff_adapter.exit

_rtl92de_poweroff_adapter.exit:                   ; preds = %rtl_write_byte.exit148.i, %rtl_write_byte.exit136.i._rtl92de_poweroff_adapter.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %101, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.52) #6
  br label %if.end10

if.end10:                                         ; preds = %_rtl92de_poweroff_adapter.exit, %rtl_write_byte.exit82.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_check_poweroff(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 292) #6
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %and = and i32 %5, %call.i
  %6 = ptrtoint ptr %intvec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %intvec, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %7 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 292, i32 noundef %and) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32_sync.i, align 4
  %call.i8 = tail call i32 %14(ptr noundef %1, i32 noundef 292) #6
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 288, i32 noundef 0) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %1, i32 noundef 288) #6
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %12 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 296, i32 noundef 0) #6
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 296) #6
  br label %rtl92de_disable_interrupt.exit

rtl92de_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %21 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1370, i16 noundef zeroext 2) #6
  %23 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #6
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %29 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #6
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i14 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i14, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i15 = icmp eq i8 %34, 0
  br i1 %tobool.not.i15, label %rtl_write_word.exit.rtl_write_word.exit19_crit_edge, label %if.then.i18

rtl_write_word.exit.rtl_write_word.exit19_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit19

if.then.i18:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i16, align 4
  %call.i17 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1364) #6
  br label %rtl_write_word.exit19

rtl_write_word.exit19:                            ; preds = %if.then.i18, %rtl_write_word.exit.rtl_write_word.exit19_crit_edge
  %37 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #6
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i22 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i22, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i23 = icmp eq i8 %42, 0
  br i1 %tobool.not.i23, label %rtl_write_word.exit19.rtl_write_word.exit27_crit_edge, label %if.then.i26

rtl_write_word.exit19.rtl_write_word.exit27_crit_edge: ; preds = %rtl_write_word.exit19
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit27

if.then.i26:                                      ; preds = %rtl_write_word.exit19
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %43 = ptrtoint ptr %read16_sync.i24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16_sync.i24, align 4
  %call.i25 = tail call zeroext i16 %44(ptr noundef %1, i32 noundef 1296) #6
  br label %rtl_write_word.exit27

rtl_write_word.exit27:                            ; preds = %if.then.i26, %rtl_write_word.exit19.rtl_write_word.exit27_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 32) #6
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i29 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i29, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i30 = icmp eq i8 %50, 0
  br i1 %tobool.not.i30, label %rtl_write_word.exit27.rtl_write_byte.exit_crit_edge, label %if.then.i32

rtl_write_word.exit27.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i32:                                      ; preds = %rtl_write_word.exit27
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i31 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 1374) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i32, %rtl_write_word.exit27.rtl_write_byte.exit_crit_edge
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %53 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp = icmp eq i32 %54, 1
  %55 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit
  tail call void %56(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 48) #6
  %57 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i35 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i35 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i35, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i36 = icmp eq i8 %60, 0
  br i1 %tobool.not.i36, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %rtl_write_byte.exit
  tail call void %56(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 32) #6
  %61 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i43 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_readback.i43 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %write_readback.i43, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i44 = icmp eq i8 %64, 0
  br i1 %tobool.not.i44, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %read8_sync.i45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %65 = ptrtoint ptr %read8_sync.i45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read8_sync.i45, align 4
  %call.i46 = tail call zeroext i8 %66(ptr noundef %1, i32 noundef 1375) #6
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %67 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write8_async.i, align 4
  tail call void %68(ptr noundef %1, i32 noundef 1542, i8 noundef zeroext 48) #6
  %69 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i51 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %write_readback.i51 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %write_readback.i51, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i52 = icmp eq i8 %72, 0
  br i1 %tobool.not.i52, label %if.end.rtl_write_byte.exit56_crit_edge, label %if.then.i55

if.end.rtl_write_byte.exit56_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit56

if.then.i55:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i53 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %73 = ptrtoint ptr %read8_sync.i53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read8_sync.i53, align 4
  %call.i54 = tail call zeroext i8 %74(ptr noundef %1, i32 noundef 1542) #6
  br label %rtl_write_byte.exit56

rtl_write_byte.exit56:                            ; preds = %if.then.i55, %if.end.rtl_write_byte.exit56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %conv2) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %7(ptr noundef %5, i32 noundef 288, i32 noundef 0) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 288) #6
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %14 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %15(ptr noundef %5, i32 noundef 296, i32 noundef 0) #6
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i7.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i8.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %21(ptr noundef %5, i32 noundef 296) #6
  br label %rtl92de_disable_interrupt.exit

rtl92de_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %23 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %30(ptr noundef %1, i32 noundef 1364) #6
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl92de_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i9 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 7
  %35 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %36(ptr noundef %32, i32 noundef 288, i32 noundef %34) #6
  %cfg.i.i10 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i.i11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i.i11, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i12 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i12, label %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge, label %if.then.i.i15

rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i16

if.then.i.i15:                                    ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i13 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %read32_sync.i.i13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32_sync.i.i13, align 4
  %call.i.i14 = tail call i32 %42(ptr noundef %32, i32 noundef 288) #6
  br label %rtl_write_dword.exit.i16

rtl_write_dword.exit.i16:                         ; preds = %if.then.i.i15, %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  %45 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %46(ptr noundef %32, i32 noundef 296, i32 noundef %44) #6
  %47 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i12.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i13.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i16.rtl92de_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i16.rtl92de_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %51 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %52(ptr noundef %32, i32 noundef 296) #6
  br label %rtl92de_enable_interrupt.exit

rtl92de_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i16.rtl92de_enable_interrupt.exit_crit_edge
  %irq_enabled.i17 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %irq_enabled.i17 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %irq_enabled.i17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %add_msr, i32 noundef %rm_msr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_msr)
  %tobool.not = icmp eq i32 %add_msr, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mask, align 4
  %or = or i32 %3, %add_msr
  store i32 %or, ptr %irq_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rm_msr)
  %tobool3.not = icmp eq i32 %rm_msr, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %rm_msr, -1
  %irq_mask5 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_mask5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask5, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_mask5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 7
  %8 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %9(ptr noundef %7, i32 noundef 288, i32 noundef 0) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end7.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

if.end7.rtl_write_dword.exit.i_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %14 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 288) #6
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end7.rtl_write_dword.exit.i_crit_edge
  %16 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef 296, i32 noundef 0) #6
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 296) #6
  br label %rtl92de_disable_interrupt.exit

rtl92de_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92de_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %irq_enabled.i, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i17 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 7
  %29 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %30(ptr noundef %26, i32 noundef 288, i32 noundef %28) #6
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i19, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i20 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i20, label %rtl92de_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge, label %if.then.i.i23

rtl92de_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge: ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_dword.exit.i24

if.then.i.i23:                                    ; preds = %rtl92de_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %35 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %36(ptr noundef %26, i32 noundef 288) #6
  br label %rtl_write_dword.exit.i24

rtl_write_dword.exit.i24:                         ; preds = %if.then.i.i23, %rtl92de_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  %39 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %40(ptr noundef %26, i32 noundef 296, i32 noundef %38) #6
  %41 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i12.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i13.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i24.rtl92de_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i24.rtl92de_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %46(ptr noundef %26, i32 noundef 296) #6
  br label %rtl92de_enable_interrupt.exit

rtl92de_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i24.rtl92de_enable_interrupt.exit_crit_edge
  %irq_enabled.i25 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %irq_enabled.i25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %irq_enabled.i25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %pwrinfo.i.i = alloca %struct.txpower_info, align 1
  %cutvalue.i.i = alloca [2 x i8], align 1
  %params.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %1, i32 noundef 240) #6
  %and.i = and i32 %call.i.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.str.53..str.54.i = select i1 %tobool.not.i, ptr @.str.53, ptr @.str.54
  %..i = select i1 %tobool.not.i, i32 34, i32 42
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %.str.53..str.54.i) #6
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %..i, ptr %version, align 4
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %5 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %6(ptr noundef %1, i32 noundef 10) #6
  %autoload_status = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 8
  %7 = ptrtoint ptr %autoload_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call.i, ptr %autoload_status, align 4
  %conv = zext i8 %call.i to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.24..str.23 = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  %8 = lshr exact i32 %and, 3
  %9 = trunc i32 %8 to i16
  %10 = xor i16 %9, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.24..str.23) #6
  %11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %10, ptr %11, align 2
  %and7 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.end, label %if.then9

if.then9:                                         ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.25) #6
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %13 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %autoload_failflag, align 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #6
  %16 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl92de_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not.i26 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i26, label %if.then9._rtl92de_read_adapter_info.exit_crit_edge, label %if.end.i

if.then9._rtl92de_read_adapter_info.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl92de_read_adapter_info.exit

if.end.i:                                         ; preds = %if.then9
  %call4.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %15, i32 noundef 256, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.exit.i_crit_edge

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

if.end7.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %version.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 10, i32 13
  %20 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cutvalue.i.i) #6
  %22 = ptrtoint ptr %cutvalue.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %cutvalue.i.i, align 1, !annotation !160
  %23 = getelementptr inbounds [2 x i8], ptr %cutvalue.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !160
  %intf_ops.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 33
  %25 = ptrtoint ptr %intf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf_ops.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  call void %28(ptr noundef %hw, i16 noundef zeroext 1022, ptr noundef %23) #6
  %29 = ptrtoint ptr %intf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf_ops.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  call void %32(ptr noundef %hw, i16 noundef zeroext 1023, ptr noundef nonnull %cutvalue.i.i) #6
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %23, align 1
  %conv.i.i = zext i8 %34 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %35 = ptrtoint ptr %cutvalue.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cutvalue.i.i, align 1
  %conv6.i.i = zext i8 %36 to i16
  %or.i.i = or i16 %shl.i.i, %conv6.i.i
  %37 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %or.i.i, label %sw.default.i.i [
    i16 -21931, label %sw.bb.i.i
    i16 -26266, label %sw.bb10.i.i
    i16 -13261, label %sw.bb12.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %or9.i.i = or i32 %21, 8192
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.56) #6
  br label %_rtl92de_efuse_update_chip_version.exit.i

sw.bb10.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %or11.i.i = or i32 %21, 12288
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.57) #6
  br label %_rtl92de_efuse_update_chip_version.exit.i

sw.bb12.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %or13.i.i = or i32 %21, 16384
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %19, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.58) #6
  br label %_rtl92de_efuse_update_chip_version.exit.i

sw.default.i.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %or14.i.i = or i32 %21, 12288
  %call.i.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #9
  br label %_rtl92de_efuse_update_chip_version.exit.i

_rtl92de_efuse_update_chip_version.exit.i:        ; preds = %sw.default.i.i, %sw.bb12.i.i, %sw.bb10.i.i, %sw.bb.i.i
  %chipver.0.i.i = phi i32 [ %or14.i.i, %sw.default.i.i ], [ %or13.i.i, %sw.bb12.i.i ], [ %or11.i.i, %sw.bb10.i.i ], [ %or9.i.i, %sw.bb.i.i ]
  %38 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %chipver.0.i.i, ptr %version.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cutvalue.i.i) #6
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 8
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 8
  %43 = and i8 %42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i = icmp eq i8 %43, 0
  %macphymode3.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 10, i32 52
  %.lobit.i.i.i = lshr exact i8 %43, 3
  %44 = xor i8 %.lobit.i.i.i, 1
  %45 = zext i8 %44 to i32
  %.str.62..str.61.i.i.i = select i1 %tobool.not.i.i.i, ptr @.str.62, ptr @.str.61
  %46 = ptrtoint ptr %macphymode3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %macphymode3.i.i.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %40, i64 noundef 4, i32 noundef 4, ptr noundef nonnull %.str.62..str.61.i.i.i) #6
  call void @rtl92d_phy_config_macphymode(ptr noundef %hw) #6
  call void @rtl92d_phy_config_macphymode_info(ptr noundef %hw) #6
  %interfaceindex.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 10, i32 56
  %47 = ptrtoint ptr %interfaceindex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %interfaceindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i, label %_rtl92de_efuse_update_chip_version.exit.i.if.end12.i_crit_edge, label %for.body.preheader.i

_rtl92de_efuse_update_chip_version.exit.i.if.end12.i_crit_edge: ; preds = %_rtl92de_efuse_update_chip_version.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

for.body.preheader.i:                             ; preds = %_rtl92de_efuse_update_chip_version.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 91
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i, align 2
  %arrayidx10.i = getelementptr %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 19, i32 0
  %51 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %arrayidx10.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %call7.i.i.i, i32 93
  %52 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.1.i, align 2
  %arrayidx10.1.i = getelementptr %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 19, i32 2
  %54 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %arrayidx10.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %call7.i.i.i, i32 95
  %55 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.2.i, align 2
  %arrayidx10.2.i = getelementptr %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 19, i32 4
  %57 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %arrayidx10.2.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.body.preheader.i, %_rtl92de_efuse_update_chip_version.exit.i.if.end12.i_crit_edge
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_hw_reg.i, align 4
  %dev_addr13.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 19
  call void %63(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %dev_addr13.i) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %15, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.55, ptr noundef %dev_addr13.i) #6
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 7
  %64 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool17.not.i = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 174, ptr nonnull %pwrinfo.i.i) #6
  %68 = call ptr @memset(ptr %pwrinfo.i.i, i32 0, i32 174)
  br i1 %tobool17.not.i, label %for.cond40.preheader.preheader.i.i.i, label %_rtl92de_readpowervalue_fromprom.exit.i.i.thread

_rtl92de_readpowervalue_fromprom.exit.i.i.thread: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %pwrinfo.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 44, ptr %pwrinfo.i.i, align 1
  %70 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 0, i32 0
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 44, ptr %70, align 1
  %arrayidx15.i.peel.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 0
  %72 = ptrtoint ptr %arrayidx15.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %arrayidx15.i.peel.i.i, align 1
  %arrayidx17.i.peel.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 0
  %73 = ptrtoint ptr %arrayidx17.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %arrayidx17.i.peel.i.i, align 1
  %arrayidx6.1.i.peel.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 0
  %74 = ptrtoint ptr %arrayidx6.1.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 44, ptr %arrayidx6.1.i.peel.i.i, align 1
  %75 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 1, i32 0
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 44, ptr %75, align 1
  %arrayidx15.1.i.peel.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 0
  %77 = ptrtoint ptr %arrayidx15.1.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %arrayidx15.1.i.peel.i.i, align 1
  %arrayidx17.1.i.peel.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 0
  %78 = ptrtoint ptr %arrayidx17.1.i.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %arrayidx17.1.i.peel.i.i, align 1
  %arrayidx6.i.peel319.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx6.i.peel319.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 44, ptr %arrayidx6.i.peel319.i.i, align 1
  %80 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 44, ptr %80, align 1
  %arrayidx15.i.peel323.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx15.i.peel323.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 2, ptr %arrayidx15.i.peel323.i.i, align 1
  %arrayidx17.i.peel324.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx17.i.peel324.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %arrayidx17.i.peel324.i.i, align 1
  %arrayidx6.1.i.peel328.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx6.1.i.peel328.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 44, ptr %arrayidx6.1.i.peel328.i.i, align 1
  %85 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 1, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 44, ptr %85, align 1
  %arrayidx15.1.i.peel332.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx15.1.i.peel332.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %arrayidx15.1.i.peel332.i.i, align 1
  %arrayidx17.1.i.peel333.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx17.1.i.peel333.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 4, ptr %arrayidx17.1.i.peel333.i.i, align 1
  %arrayidx6.i.peel342.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx6.i.peel342.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 44, ptr %arrayidx6.i.peel342.i.i, align 1
  %90 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 44, ptr %90, align 1
  %arrayidx15.i.peel346.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx15.i.peel346.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %arrayidx15.i.peel346.i.i, align 1
  %arrayidx17.i.peel347.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx17.i.peel347.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %arrayidx17.i.peel347.i.i, align 1
  %arrayidx6.1.i.peel351.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %arrayidx6.1.i.peel351.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 44, ptr %arrayidx6.1.i.peel351.i.i, align 1
  %95 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 1, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 44, ptr %95, align 1
  %arrayidx15.1.i.peel355.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 2
  %97 = ptrtoint ptr %arrayidx15.1.i.peel355.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 2, ptr %arrayidx15.1.i.peel355.i.i, align 1
  %arrayidx17.1.i.peel356.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 2
  %98 = ptrtoint ptr %arrayidx17.1.i.peel356.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %arrayidx17.1.i.peel356.i.i, align 1
  %uglygep.i = getelementptr inbounds i8, ptr %pwrinfo.i.i, i32 27
  %99 = call ptr @memset(ptr %uglygep.i, i32 34, i32 9)
  %uglygep66.i = getelementptr inbounds i8, ptr %pwrinfo.i.i, i32 39
  %100 = call ptr @memset(ptr %uglygep66.i, i32 34, i32 9)
  %uglygep = getelementptr inbounds i8, ptr %pwrinfo.i.i, i32 51
  %101 = call ptr @memset(ptr %uglygep, i32 0, i32 9)
  %uglygep32 = getelementptr inbounds i8, ptr %pwrinfo.i.i, i32 63
  %102 = call ptr @memset(ptr %uglygep32, i32 0, i32 9)
  %arrayidx15.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 3
  %103 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 2, ptr %arrayidx15.i.i.i, align 1
  %arrayidx17.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 3
  %104 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 4, ptr %arrayidx17.i.i.i, align 1
  %arrayidx21.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx21.i.i.i, align 1
  %arrayidx15.1.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 3
  %106 = ptrtoint ptr %arrayidx15.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %arrayidx15.1.i.i.i, align 1
  %arrayidx17.1.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 3
  %107 = ptrtoint ptr %arrayidx17.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 4, ptr %arrayidx17.1.i.i.i, align 1
  %arrayidx21.1.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 3
  %108 = ptrtoint ptr %arrayidx21.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx21.1.i.i.i, align 1
  %arrayidx15.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 4
  %109 = ptrtoint ptr %arrayidx15.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %arrayidx15.i.i.i.1, align 1
  %arrayidx17.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 4
  %110 = ptrtoint ptr %arrayidx17.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 4, ptr %arrayidx17.i.i.i.1, align 1
  %arrayidx21.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 4
  %111 = ptrtoint ptr %arrayidx21.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx21.i.i.i.1, align 1
  %arrayidx15.1.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 4
  %112 = ptrtoint ptr %arrayidx15.1.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 2, ptr %arrayidx15.1.i.i.i.1, align 1
  %arrayidx17.1.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 4
  %113 = ptrtoint ptr %arrayidx17.1.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 4, ptr %arrayidx17.1.i.i.i.1, align 1
  %arrayidx21.1.i.i.i.1 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 4
  %114 = ptrtoint ptr %arrayidx21.1.i.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx21.1.i.i.i.1, align 1
  %arrayidx15.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 5
  %115 = ptrtoint ptr %arrayidx15.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 2, ptr %arrayidx15.i.i.i.2, align 1
  %arrayidx17.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 5
  %116 = ptrtoint ptr %arrayidx17.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 4, ptr %arrayidx17.i.i.i.2, align 1
  %arrayidx21.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 5
  %117 = ptrtoint ptr %arrayidx21.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx21.i.i.i.2, align 1
  %arrayidx15.1.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 5
  %118 = ptrtoint ptr %arrayidx15.1.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %arrayidx15.1.i.i.i.2, align 1
  %arrayidx17.1.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 5
  %119 = ptrtoint ptr %arrayidx17.1.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 4, ptr %arrayidx17.1.i.i.i.2, align 1
  %arrayidx21.1.i.i.i.2 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 5
  %120 = ptrtoint ptr %arrayidx21.1.i.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %arrayidx21.1.i.i.i.2, align 1
  %arrayidx15.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 6
  %121 = ptrtoint ptr %arrayidx15.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 2, ptr %arrayidx15.i.i.i.3, align 1
  %arrayidx17.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 6
  %122 = ptrtoint ptr %arrayidx17.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 4, ptr %arrayidx17.i.i.i.3, align 1
  %arrayidx21.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 6
  %123 = ptrtoint ptr %arrayidx21.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx21.i.i.i.3, align 1
  %arrayidx15.1.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 6
  %124 = ptrtoint ptr %arrayidx15.1.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %arrayidx15.1.i.i.i.3, align 1
  %arrayidx17.1.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 6
  %125 = ptrtoint ptr %arrayidx17.1.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 4, ptr %arrayidx17.1.i.i.i.3, align 1
  %arrayidx21.1.i.i.i.3 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 6
  %126 = ptrtoint ptr %arrayidx21.1.i.i.i.3 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %arrayidx21.1.i.i.i.3, align 1
  %arrayidx15.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 7
  %127 = ptrtoint ptr %arrayidx15.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %arrayidx15.i.i.i.4, align 1
  %arrayidx17.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx17.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 4, ptr %arrayidx17.i.i.i.4, align 1
  %arrayidx21.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 7
  %129 = ptrtoint ptr %arrayidx21.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx21.i.i.i.4, align 1
  %arrayidx15.1.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 7
  %130 = ptrtoint ptr %arrayidx15.1.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 2, ptr %arrayidx15.1.i.i.i.4, align 1
  %arrayidx17.1.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 7
  %131 = ptrtoint ptr %arrayidx17.1.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %arrayidx17.1.i.i.i.4, align 1
  %arrayidx21.1.i.i.i.4 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 7
  %132 = ptrtoint ptr %arrayidx21.1.i.i.i.4 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx21.1.i.i.i.4, align 1
  %arrayidx15.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 8
  %133 = ptrtoint ptr %arrayidx15.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 2, ptr %arrayidx15.i.i.i.5, align 1
  %arrayidx17.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 8
  %134 = ptrtoint ptr %arrayidx17.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 4, ptr %arrayidx17.i.i.i.5, align 1
  %arrayidx21.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 8
  %135 = ptrtoint ptr %arrayidx21.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx21.i.i.i.5, align 1
  %arrayidx15.1.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 8
  %136 = ptrtoint ptr %arrayidx15.1.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 2, ptr %arrayidx15.1.i.i.i.5, align 1
  %arrayidx17.1.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 8
  %137 = ptrtoint ptr %arrayidx17.1.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 4, ptr %arrayidx17.1.i.i.i.5, align 1
  %arrayidx21.1.i.i.i.5 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 8
  %138 = ptrtoint ptr %arrayidx21.1.i.i.i.5 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx21.1.i.i.i.5, align 1
  %arrayidx15.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 9
  %139 = ptrtoint ptr %arrayidx15.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %arrayidx15.i.i.i.6, align 1
  %arrayidx17.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 9
  %140 = ptrtoint ptr %arrayidx17.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 4, ptr %arrayidx17.i.i.i.6, align 1
  %arrayidx21.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 9
  %141 = ptrtoint ptr %arrayidx21.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %arrayidx21.i.i.i.6, align 1
  %arrayidx15.1.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 9
  %142 = ptrtoint ptr %arrayidx15.1.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %arrayidx15.1.i.i.i.6, align 1
  %arrayidx17.1.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 9
  %143 = ptrtoint ptr %arrayidx17.1.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 4, ptr %arrayidx17.1.i.i.i.6, align 1
  %arrayidx21.1.i.i.i.6 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 9
  %144 = ptrtoint ptr %arrayidx21.1.i.i.i.6 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx21.1.i.i.i.6, align 1
  %arrayidx15.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 10
  %145 = ptrtoint ptr %arrayidx15.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 2, ptr %arrayidx15.i.i.i.7, align 1
  %arrayidx17.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 10
  %146 = ptrtoint ptr %arrayidx17.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 4, ptr %arrayidx17.i.i.i.7, align 1
  %arrayidx19.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 0, i32 10
  %147 = ptrtoint ptr %arrayidx19.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx19.i.i.i.7, align 1
  %arrayidx21.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 10
  %148 = ptrtoint ptr %arrayidx21.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %arrayidx21.i.i.i.7, align 1
  %arrayidx15.1.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 10
  %149 = ptrtoint ptr %arrayidx15.1.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 2, ptr %arrayidx15.1.i.i.i.7, align 1
  %arrayidx17.1.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 10
  %150 = ptrtoint ptr %arrayidx17.1.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 4, ptr %arrayidx17.1.i.i.i.7, align 1
  %arrayidx19.1.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 1, i32 10
  %151 = ptrtoint ptr %arrayidx19.1.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %arrayidx19.1.i.i.i.7, align 1
  %arrayidx21.1.i.i.i.7 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 10
  %152 = ptrtoint ptr %arrayidx21.1.i.i.i.7 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx21.1.i.i.i.7, align 1
  %arrayidx15.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 11
  %153 = ptrtoint ptr %arrayidx15.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 2, ptr %arrayidx15.i.i.i.8, align 1
  %arrayidx17.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 11
  %154 = ptrtoint ptr %arrayidx17.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 4, ptr %arrayidx17.i.i.i.8, align 1
  %arrayidx19.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 0, i32 11
  %155 = ptrtoint ptr %arrayidx19.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx19.i.i.i.8, align 1
  %arrayidx21.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 11
  %156 = ptrtoint ptr %arrayidx21.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %arrayidx21.i.i.i.8, align 1
  %arrayidx15.1.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 11
  %157 = ptrtoint ptr %arrayidx15.1.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 2, ptr %arrayidx15.1.i.i.i.8, align 1
  %arrayidx17.1.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 11
  %158 = ptrtoint ptr %arrayidx17.1.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 4, ptr %arrayidx17.1.i.i.i.8, align 1
  %arrayidx19.1.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 1, i32 11
  %159 = ptrtoint ptr %arrayidx19.1.i.i.i.8 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %arrayidx19.1.i.i.i.8, align 1
  %arrayidx21.1.i.i.i.8 = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 11
  %160 = call ptr @memset(ptr %arrayidx21.1.i.i.i.8, i32 0, i32 7)
  br label %if.else.i.i

for.cond40.preheader.preheader.i.i.i:             ; preds = %if.end12.i
  %arrayidx45.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 97
  %161 = ptrtoint ptr %arrayidx45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx45.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %cmp47.i.i.i = icmp eq i8 %162, -1
  %..i.i.i = select i1 %cmp47.i.i.i, i8 44, i8 %162
  %163 = ptrtoint ptr %pwrinfo.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %..i.i.i, ptr %pwrinfo.i.i, align 1
  %arrayidx45.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 98
  %164 = ptrtoint ptr %arrayidx45.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx45.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp47.1.i.i.i = icmp eq i8 %165, -1
  %..1.i.i.i = select i1 %cmp47.1.i.i.i, i8 44, i8 %165
  %arrayidx57.1.i.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %arrayidx57.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %..1.i.i.i, ptr %arrayidx57.1.i.i.i, align 1
  %arrayidx45.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 99
  %167 = ptrtoint ptr %arrayidx45.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx45.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %168)
  %cmp47.2.i.i.i = icmp eq i8 %168, -1
  %..2.i.i.i = select i1 %cmp47.2.i.i.i, i8 44, i8 %168
  %arrayidx57.2.i.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx57.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %..2.i.i.i, ptr %arrayidx57.2.i.i.i, align 1
  %arrayidx45.1486.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 100
  %170 = ptrtoint ptr %arrayidx45.1486.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx45.1486.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %171)
  %cmp47.1487.i.i.i = icmp eq i8 %171, -1
  %..1488.i.i.i = select i1 %cmp47.1487.i.i.i, i8 44, i8 %171
  %arrayidx57.1489.i.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 0
  %172 = ptrtoint ptr %arrayidx57.1489.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %..1488.i.i.i, ptr %arrayidx57.1489.i.i.i, align 1
  %arrayidx45.1.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 101
  %173 = ptrtoint ptr %arrayidx45.1.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx45.1.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %174)
  %cmp47.1.1.i.i.i = icmp eq i8 %174, -1
  %..1.1.i.i.i = select i1 %cmp47.1.1.i.i.i, i8 44, i8 %174
  %arrayidx57.1.1.i.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %arrayidx57.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %..1.1.i.i.i, ptr %arrayidx57.1.1.i.i.i, align 1
  %arrayidx45.2.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 102
  %176 = ptrtoint ptr %arrayidx45.2.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx45.2.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %cmp47.2.1.i.i.i = icmp eq i8 %177, -1
  %..2.1.i.i.i = select i1 %cmp47.2.1.i.i.i, i8 44, i8 %177
  %arrayidx57.2.1.i.i.i = getelementptr inbounds [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 2
  %178 = ptrtoint ptr %arrayidx57.2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %..2.1.i.i.i, ptr %arrayidx57.2.1.i.i.i, align 1
  br label %for.body71.i.i.i

for.body71.i.i.i:                                 ; preds = %for.body71.i.i.i.for.body71.i.i.i_crit_edge, %for.cond40.preheader.preheader.i.i.i
  %group.2471.i.i.i = phi i32 [ 0, %for.cond40.preheader.preheader.i.i.i ], [ %inc95.i.i.i, %for.body71.i.i.i.for.body71.i.i.i_crit_edge ]
  %div.lhs.trunc.i.i.i = trunc i32 %group.2471.i.i.i to i8
  %div.lhs.trunc.i.i.i.frozen = freeze i8 %div.lhs.trunc.i.i.i
  %div466.i.i.i = udiv i8 %div.lhs.trunc.i.i.i.frozen, 3
  %div.zext.i.i.i = zext i8 %div466.i.i.i to i32
  %179 = mul i8 %div466.i.i.i, 3
  %rem467.i.i.i.decomposed = sub i8 %div.lhs.trunc.i.i.i.frozen, %179
  %narrow.i.i.i = add nuw nsw i8 %rem467.i.i.i.decomposed, 103
  %add74.i.i.i = zext i8 %narrow.i.i.i to i32
  %mul75.i.i.i = mul nuw nsw i32 %div.zext.i.i.i, 21
  %add76.i.i.i = add nuw nsw i32 %mul75.i.i.i, %add74.i.i.i
  %arrayidx77.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add76.i.i.i
  %180 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx77.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %181)
  %cmp79.i.i.i = icmp eq i8 %181, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %add76.i.i.i)
  %cmp82.i.i.i = icmp ugt i32 %add76.i.i.i, 123
  %cond84.i.i.i = select i1 %cmp82.i.i.i, i8 34, i8 44
  %cond89.i.i.i = select i1 %cmp79.i.i.i, i8 %cond84.i.i.i, i8 %181
  %arrayidx93.i.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 0, i32 %group.2471.i.i.i
  %182 = ptrtoint ptr %arrayidx93.i.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %cond89.i.i.i, ptr %arrayidx93.i.i.i, align 1
  %inc95.i.i.i = add nuw nsw i32 %group.2471.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc95.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %for.body71.i.i.i.for.body71.1.i.i.i_crit_edge, label %for.body71.i.i.i.for.body71.i.i.i_crit_edge

for.body71.i.i.i.for.body71.i.i.i_crit_edge:      ; preds = %for.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71.i.i.i

for.body71.i.i.i.for.body71.1.i.i.i_crit_edge:    ; preds = %for.body71.i.i.i
  br label %for.body71.1.i.i.i

for.body71.1.i.i.i:                               ; preds = %for.body71.1.i.i.i.for.body71.1.i.i.i_crit_edge, %for.body71.i.i.i.for.body71.1.i.i.i_crit_edge
  %group.2471.1.i.i.i = phi i32 [ %inc95.1.i.i.i, %for.body71.1.i.i.i.for.body71.1.i.i.i_crit_edge ], [ 0, %for.body71.i.i.i.for.body71.1.i.i.i_crit_edge ]
  %div.lhs.trunc.1.i.i.i = trunc i32 %group.2471.1.i.i.i to i8
  %div.lhs.trunc.1.i.i.i.frozen = freeze i8 %div.lhs.trunc.1.i.i.i
  %div466.1.i.i.i = udiv i8 %div.lhs.trunc.1.i.i.i.frozen, 3
  %div.zext.1.i.i.i = zext i8 %div466.1.i.i.i to i32
  %183 = mul i8 %div466.1.i.i.i, 3
  %rem467.1.i.i.i.decomposed = sub i8 %div.lhs.trunc.1.i.i.i.frozen, %183
  %narrow507.i.i.i = add nuw nsw i8 %rem467.1.i.i.i.decomposed, 106
  %add74.1.i.i.i = zext i8 %narrow507.i.i.i to i32
  %mul75.1.i.i.i = mul nuw nsw i32 %div.zext.1.i.i.i, 21
  %add76.1.i.i.i = add nuw nsw i32 %mul75.1.i.i.i, %add74.1.i.i.i
  %arrayidx77.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add76.1.i.i.i
  %184 = ptrtoint ptr %arrayidx77.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx77.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %185)
  %cmp79.1.i.i.i = icmp eq i8 %185, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %add76.1.i.i.i)
  %cmp82.1.i.i.i = icmp ugt i32 %add76.1.i.i.i, 123
  %cond84.1.i.i.i = select i1 %cmp82.1.i.i.i, i8 34, i8 44
  %cond89.1.i.i.i = select i1 %cmp79.1.i.i.i, i8 %cond84.1.i.i.i, i8 %185
  %arrayidx93.1.i.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 1, i32 %group.2471.1.i.i.i
  %186 = ptrtoint ptr %arrayidx93.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %cond89.1.i.i.i, ptr %arrayidx93.1.i.i.i, align 1
  %inc95.1.i.i.i = add nuw nsw i32 %group.2471.1.i.i.i, 1
  %exitcond.1.not.i.i.i = icmp eq i32 %inc95.1.i.i.i, 12
  br i1 %exitcond.1.not.i.i.i, label %for.body71.1.i.i.i.for.cond104.preheader.i.i.i_crit_edge, label %for.body71.1.i.i.i.for.body71.1.i.i.i_crit_edge

for.body71.1.i.i.i.for.body71.1.i.i.i_crit_edge:  ; preds = %for.body71.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71.1.i.i.i

for.body71.1.i.i.i.for.cond104.preheader.i.i.i_crit_edge: ; preds = %for.body71.1.i.i.i
  br label %for.cond104.preheader.i.i.i

for.cond104.preheader.i.i.i:                      ; preds = %for.cond104.preheader.i.i.i.for.cond104.preheader.i.i.i_crit_edge, %for.body71.1.i.i.i.for.cond104.preheader.i.i.i_crit_edge
  %group.3479.i.i.i = phi i32 [ %inc237.i.i.i, %for.cond104.preheader.i.i.i.for.cond104.preheader.i.i.i_crit_edge ], [ 0, %for.body71.1.i.i.i.for.cond104.preheader.i.i.i_crit_edge ]
  %group.3479.i.i.i.frozen = freeze i32 %group.3479.i.i.i
  %div108.i.i.i = udiv i32 %group.3479.i.i.i.frozen, 3
  %187 = mul i32 %div108.i.i.i, 3
  %rem109.i.i.i.decomposed = sub i32 %group.3479.i.i.i.frozen, %187
  %mul111.i.i.i = mul i32 %div108.i.i.i, 21
  %add110.i.i.i = add i32 %mul111.i.i.i, %rem109.i.i.i.decomposed
  %add112.i.i.i = add i32 %add110.i.i.i, 109
  %arrayidx113.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add112.i.i.i
  %add135.i.i.i = add i32 %add110.i.i.i, 112
  %arrayidx136.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add135.i.i.i
  %add160.i.i.i = add i32 %add110.i.i.i, 115
  %arrayidx161.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add160.i.i.i
  %add185.i.i.i = add i32 %add110.i.i.i, 118
  %arrayidx186.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add185.i.i.i
  %add210.i.i.i = add i32 %add110.i.i.i, 121
  %arrayidx211.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add210.i.i.i
  %188 = ptrtoint ptr %arrayidx113.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx113.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %189)
  %cmp115.not.i.i.i = icmp eq i8 %189, -1
  %conv124.i.i.i = and i8 %189, 15
  %spec.select.i.i.i = select i1 %cmp115.not.i.i.i, i8 0, i8 %conv124.i.i.i
  %190 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 2, i32 0, i32 %group.3479.i.i.i
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %spec.select.i.i.i, ptr %190, align 1
  %192 = ptrtoint ptr %arrayidx136.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx136.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %193)
  %cmp138.not.i.i.i = icmp eq i8 %193, -1
  %conv149.i.i.i = and i8 %193, 15
  %conv149.sink.i.i.i = select i1 %cmp138.not.i.i.i, i8 2, i8 %conv149.i.i.i
  %194 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 %group.3479.i.i.i
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv149.sink.i.i.i, ptr %194, align 1
  %196 = ptrtoint ptr %arrayidx161.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx161.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %197)
  %cmp163.not.i.i.i = icmp eq i8 %197, -1
  %conv174.i.i.i = and i8 %197, 15
  %conv174.sink.i.i.i = select i1 %cmp163.not.i.i.i, i8 4, i8 %conv174.i.i.i
  %198 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 %group.3479.i.i.i
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv174.sink.i.i.i, ptr %198, align 1
  %200 = ptrtoint ptr %arrayidx186.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx186.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %201)
  %cmp188.not.i.i.i = icmp eq i8 %201, -1
  %conv199.i.i.i = and i8 %201, 15
  %conv199.sink.i.i.i = select i1 %cmp188.not.i.i.i, i8 0, i8 %conv199.i.i.i
  %202 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 0, i32 %group.3479.i.i.i
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv199.sink.i.i.i, ptr %202, align 1
  %204 = ptrtoint ptr %arrayidx211.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx211.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %205)
  %cmp213.not.i.i.i = icmp eq i8 %205, -1
  %conv224.i.i.i = and i8 %205, 15
  %conv224.sink.i.i.i = select i1 %cmp213.not.i.i.i, i8 0, i8 %conv224.i.i.i
  %206 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 %group.3479.i.i.i
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv224.sink.i.i.i, ptr %206, align 1
  %208 = lshr i8 %189, 4
  %conv124.1.sink.i.i.i = select i1 %cmp115.not.i.i.i, i8 0, i8 %208
  %209 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 2, i32 1, i32 %group.3479.i.i.i
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv124.1.sink.i.i.i, ptr %209, align 1
  %211 = lshr i8 %193, 4
  %conv149.1.sink.i.i.i = select i1 %cmp138.not.i.i.i, i8 2, i8 %211
  %212 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 %group.3479.i.i.i
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv149.1.sink.i.i.i, ptr %212, align 1
  %214 = lshr i8 %197, 4
  %conv174.1.sink.i.i.i = select i1 %cmp163.not.i.i.i, i8 4, i8 %214
  %215 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 %group.3479.i.i.i
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv174.1.sink.i.i.i, ptr %215, align 1
  %217 = lshr i8 %201, 4
  %conv199.1.sink.i.i.i = select i1 %cmp188.not.i.i.i, i8 0, i8 %217
  %218 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 1, i32 %group.3479.i.i.i
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv199.1.sink.i.i.i, ptr %218, align 1
  %220 = lshr i8 %205, 4
  %conv224.1.sink.i.i.i = select i1 %cmp213.not.i.i.i, i8 0, i8 %220
  %221 = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 %group.3479.i.i.i
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv224.1.sink.i.i.i, ptr %221, align 1
  %inc237.i.i.i = add nuw nsw i32 %group.3479.i.i.i, 1
  %exitcond491.not.i.i.i = icmp eq i32 %inc237.i.i.i, 12
  br i1 %exitcond491.not.i.i.i, label %for.end238.i.i.i, label %for.cond104.preheader.i.i.i.for.cond104.preheader.i.i.i_crit_edge

for.cond104.preheader.i.i.i.for.cond104.preheader.i.i.i_crit_edge: ; preds = %for.cond104.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i.i.i

for.end238.i.i.i:                                 ; preds = %for.cond104.preheader.i.i.i
  %arrayidx239.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 190
  %223 = ptrtoint ptr %arrayidx239.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx239.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %224)
  %cmp241.not.i.i.i = icmp eq i8 %224, -1
  br i1 %cmp241.not.i.i.i, label %for.body296.preheader.i.i.i, label %if.then243.i.i.i

for.body296.preheader.i.i.i:                      ; preds = %for.end238.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep.i.i.i = getelementptr inbounds i8, ptr %pwrinfo.i.i, i32 168
  %225 = call ptr @memset(ptr %uglygep.i.i.i, i32 0, i32 6)
  br label %_rtl92de_readpowervalue_fromprom.exit.i.i

if.then243.i.i.i:                                 ; preds = %for.end238.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %226 = and i8 %224, 63
  %tssi_a248.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 7
  %227 = ptrtoint ptr %tssi_a248.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %tssi_a248.i.i.i, align 1
  %arrayidx250.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 191
  %228 = ptrtoint ptr %arrayidx250.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx250.i.i.i, align 1
  %230 = and i8 %229, 63
  %tssi_b254.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 8
  %231 = ptrtoint ptr %tssi_b254.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %tssi_b254.i.i.i, align 1
  %arrayidx256.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 192
  %232 = ptrtoint ptr %arrayidx256.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx256.i.i.i, align 8
  %234 = and i8 %233, 63
  %arrayidx261.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 7, i32 1
  %235 = ptrtoint ptr %arrayidx261.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx261.i.i.i, align 1
  %236 = lshr i8 %233, 6
  %arrayidx266.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %237 = ptrtoint ptr %arrayidx266.i.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx266.i.i.i, align 1
  %239 = shl i8 %238, 2
  %240 = and i8 %239, 60
  %or464.i.i.i = or i8 %240, %236
  %arrayidx271.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 8, i32 1
  %241 = ptrtoint ptr %arrayidx271.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %or464.i.i.i, ptr %arrayidx271.i.i.i, align 1
  %242 = lshr i8 %238, 4
  %arrayidx276.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 194
  %243 = ptrtoint ptr %arrayidx276.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx276.i.i.i, align 2
  %245 = shl i8 %244, 4
  %246 = and i8 %245, 48
  %or280465.i.i.i = or i8 %246, %242
  %arrayidx283.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 7, i32 2
  %247 = ptrtoint ptr %arrayidx283.i.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %or280465.i.i.i, ptr %arrayidx283.i.i.i, align 1
  %248 = lshr i8 %244, 2
  %arrayidx290.i.i.i = getelementptr inbounds %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 8, i32 2
  %249 = ptrtoint ptr %arrayidx290.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %arrayidx290.i.i.i, align 1
  br label %_rtl92de_readpowervalue_fromprom.exit.i.i

_rtl92de_readpowervalue_fromprom.exit.i.i:        ; preds = %if.then243.i.i.i, %for.body296.preheader.i.i.i
  br i1 %tobool17.not.i, label %if.then.i.i, label %_rtl92de_readpowervalue_fromprom.exit.i.i.if.else.i.i_crit_edge

_rtl92de_readpowervalue_fromprom.exit.i.i.if.else.i.i_crit_edge: ; preds = %_rtl92de_readpowervalue_fromprom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %_rtl92de_readpowervalue_fromprom.exit.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 196
  %250 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx.i.i, align 4
  %252 = and i8 %251, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 54
  %253 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %eeprom_regulatory.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %call7.i.i.i, i32 195
  %254 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx4.i.i, align 1
  %256 = and i8 %255, 31
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 55
  %257 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %eeprom_thermalmeter.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %call7.i.i.i, i32 189
  %258 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx8.i.i, align 1
  %crystalcap.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 58
  %260 = ptrtoint ptr %crystalcap.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %crystalcap.i.i, align 2
  %arrayidx9.i.i = getelementptr i8, ptr %call7.i.i.i, i32 188
  %261 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx9.i.i, align 4
  %263 = lshr i8 %262, 2
  %txpwr_fromeprom.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 23
  %264 = ptrtoint ptr %txpwr_fromeprom.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %txpwr_fromeprom.i.i, align 4
  %version.i56.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 10, i32 13
  %265 = ptrtoint ptr %version.i56.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %version.i56.i, align 4
  %267 = trunc i32 %266 to i16
  %trunc.i.i = and i16 %267, -4089
  %268 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %trunc.i.i, label %if.then.i.i.if.end.i.i_crit_edge [
    i16 16386, label %if.then.i.i.if.then46.i.i_crit_edge
    i16 12290, label %if.then.i.i.if.then46.i.i_crit_edge41
  ]

if.then.i.i.if.then46.i.i_crit_edge41:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i.i

if.then.i.i.if.then46.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then46.i.i:                                    ; preds = %if.then.i.i.if.then46.i.i_crit_edge, %if.then.i.i.if.then46.i.i_crit_edge41
  %arrayidx47.i.i = getelementptr i8, ptr %call7.i.i.i, i32 190
  %269 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx47.i.i, align 2
  %271 = lshr i8 %270, 6
  %.lobit.i.i = and i8 %271, 1
  %272 = xor i8 %.lobit.i.i, 1
  %internal_pa_5g.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 32
  %273 = ptrtoint ptr %internal_pa_5g.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %internal_pa_5g.i.i, align 2
  %arrayidx54.i.i = getelementptr i8, ptr %call7.i.i.i, i32 191
  %274 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx54.i.i, align 1
  %276 = lshr i8 %275, 6
  %.lobit307.i.i = and i8 %276, 1
  %277 = xor i8 %.lobit307.i.i, 1
  %arrayidx63.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 32, i32 1
  %278 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %arrayidx63.i.i, align 1
  %conv66.i.i = zext i8 %272 to i32
  %conv69.i.i = zext i8 %277 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.63, i32 noundef %conv66.i.i, i32 noundef %conv69.i.i) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then46.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %arrayidx70.i.i = getelementptr i8, ptr %call7.i.i.i, i32 201
  %279 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx70.i.i, align 1
  %eeprom_c9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 33
  %281 = ptrtoint ptr %eeprom_c9.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %eeprom_c9.i.i, align 4
  %arrayidx71.i.i = getelementptr i8, ptr %call7.i.i.i, i32 204
  %282 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx71.i.i, align 4
  %eeprom_cc.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 34
  %284 = ptrtoint ptr %eeprom_cc.i.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %eeprom_cc.i.i, align 1
  %phi.cast365.i.i = trunc i8 %263 to i2
  %285 = shl i8 %262, 3
  %286 = and i8 %285, 24
  %287 = xor i8 %286, 16
  %phi.bo = zext i8 %287 to i32
  br label %if.end77.i.i

if.else.i.i:                                      ; preds = %_rtl92de_readpowervalue_fromprom.exit.i.i.if.else.i.i_crit_edge, %_rtl92de_readpowervalue_fromprom.exit.i.i.thread
  %eeprom_regulatory72.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 54
  %288 = ptrtoint ptr %eeprom_regulatory72.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %eeprom_regulatory72.i.i, align 1
  %eeprom_thermalmeter73.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 55
  %289 = ptrtoint ptr %eeprom_thermalmeter73.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 18, ptr %eeprom_thermalmeter73.i.i, align 4
  %crystalcap74.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 58
  %290 = ptrtoint ptr %crystalcap74.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %crystalcap74.i.i, align 2
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.else.i.i, %if.end.i.i
  %tempval.sroa.11.0.i.i = phi i2 [ -1, %if.else.i.i ], [ %phi.cast365.i.i, %if.end.i.i ]
  %tempval.sroa.0.0.i.i = phi i32 [ 8, %if.else.i.i ], [ %phi.bo, %if.end.i.i ]
  %eeprom_thermalmeter78.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 55
  %291 = ptrtoint ptr %eeprom_thermalmeter78.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %eeprom_thermalmeter78.i.i, align 4
  %293 = add i8 %292, -29
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %293)
  %294 = icmp ult i8 %293, -23
  br i1 %294, label %if.then87.i.i, label %if.end77.i.i.if.end89.i.i_crit_edge

if.end77.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89.i.i

if.then87.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %295 = ptrtoint ptr %eeprom_thermalmeter78.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 18, ptr %eeprom_thermalmeter78.i.i, align 4
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then87.i.i, %if.end77.i.i.if.end89.i.i_crit_edge
  %296 = ptrtoint ptr %eeprom_thermalmeter78.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %eeprom_thermalmeter78.i.i, align 4
  %thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 56
  %298 = ptrtoint ptr %thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %thermalmeter.i.i, align 1
  %crystalcap92.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 58
  %299 = ptrtoint ptr %crystalcap92.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %crystalcap92.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %300)
  %cmp94.i.i = icmp eq i8 %300, -1
  br i1 %cmp94.i.i, label %if.then96.i.i, label %if.end89.i.i.if.end98.i.i_crit_edge

if.end89.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i.i

if.then96.i.i:                                    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %301 = ptrtoint ptr %crystalcap92.i.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 0, ptr %crystalcap92.i.i, align 2
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then96.i.i, %if.end89.i.i.if.end98.i.i_crit_edge
  %eeprom_regulatory99.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 54
  %302 = ptrtoint ptr %eeprom_regulatory99.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %eeprom_regulatory99.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %303)
  %cmp101.i.i = icmp ugt i8 %303, 3
  br i1 %cmp101.i.i, label %if.then103.i.i, label %if.end98.i.i.if.end105.i.i_crit_edge

if.end98.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i.i

if.then103.i.i:                                   ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %304 = ptrtoint ptr %eeprom_regulatory99.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %eeprom_regulatory99.i.i, align 1
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.then103.i.i, %if.end98.i.i.if.end105.i.i_crit_edge
  %switch.downshift = lshr i32 67436547, %tempval.sroa.0.0.i.i
  %switch.masked = trunc i32 %switch.downshift to i8
  %305 = zext i2 %tempval.sroa.11.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.80)
  switch i2 %tempval.sroa.11.0.i.i, label %for.inc.1.i.i [
    i2 0, label %sw.bb.1.i.i
    i2 1, label %sw.bb113.1.i.i
    i2 -2, label %if.end105.i.i.if.then127.i.i_crit_edge
  ]

if.end105.i.i.if.then127.i.i_crit_edge:           ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then127.i.i

sw.bb113.1.i.i:                                   ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then127.i.i

sw.bb.1.i.i:                                      ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then127.i.i

for.inc.1.i.i:                                    ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %delta_iqk.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 59
  %306 = ptrtoint ptr %delta_iqk.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %switch.masked, ptr %delta_iqk.i.i, align 1
  br label %if.end131.i.i

if.then127.i.i:                                   ; preds = %sw.bb.1.i.i, %sw.bb113.1.i.i, %if.end105.i.i.if.then127.i.i_crit_edge
  %tempval.sroa.11.1.ph.i.i = phi i8 [ 2, %if.end105.i.i.if.then127.i.i_crit_edge ], [ 3, %sw.bb113.1.i.i ], [ 4, %sw.bb.1.i.i ]
  %delta_iqk368.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 59
  %307 = ptrtoint ptr %delta_iqk368.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %switch.masked, ptr %delta_iqk368.i.i, align 1
  %delta_lck.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 60
  %308 = ptrtoint ptr %delta_lck.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %tempval.sroa.11.1.ph.i.i, ptr %delta_lck.i.i, align 4
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %if.then127.i.i, %for.inc.1.i.i
  %delta_iqk371.i.i = phi ptr [ %delta_iqk368.i.i, %if.then127.i.i ], [ %delta_iqk.i.i, %for.inc.1.i.i ]
  %eeprom_c9132.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 33
  %309 = ptrtoint ptr %eeprom_c9132.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %eeprom_c9132.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %310)
  %cmp134.i.i = icmp eq i8 %310, -1
  br i1 %cmp134.i.i, label %if.then136.i.i, label %if.end131.i.i.if.end138.i.i_crit_edge

if.end131.i.i.if.end138.i.i_crit_edge:            ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138.i.i

if.then136.i.i:                                   ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %311 = ptrtoint ptr %eeprom_c9132.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %eeprom_c9132.i.i, align 4
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.then136.i.i, %if.end131.i.i.if.end138.i.i_crit_edge
  %312 = ptrtoint ptr %eeprom_regulatory99.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %eeprom_regulatory99.i.i, align 1
  %conv140.i.i = zext i8 %313 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %conv140.i.i) #6
  %314 = ptrtoint ptr %eeprom_thermalmeter78.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %eeprom_thermalmeter78.i.i, align 4
  %conv142.i.i = zext i8 %315 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %conv142.i.i) #6
  %316 = ptrtoint ptr %crystalcap92.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %crystalcap92.i.i, align 2
  %conv144.i.i = zext i8 %317 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %conv144.i.i) #6
  %318 = ptrtoint ptr %delta_iqk371.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %delta_iqk371.i.i, align 1
  %conv146.i.i = zext i8 %319 to i32
  %delta_lck147.i.i = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 60
  %320 = ptrtoint ptr %delta_lck147.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %delta_lck147.i.i, align 4
  %conv148.i.i = zext i8 %321 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %67, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef %conv146.i.i, i32 noundef %conv148.i.i) #6
  br label %for.body156.i.i

for.body156.i.i:                                  ; preds = %if.end166.i.i.for.body156.i.i_crit_edge, %if.end138.i.i
  %ch.0312.i.i = phi i32 [ 0, %if.end138.i.i ], [ %inc205.i.i, %if.end166.i.i.for.body156.i.i_crit_edge ]
  %conv157.i.i = trunc i32 %ch.0312.i.i to i8
  %call.i58.i = call zeroext i8 @rtl92d_get_chnlgroup_fromarray(i8 noundef zeroext %conv157.i.i) #6
  %conv158.i.i = zext i8 %call.i58.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %ch.0312.i.i)
  %cmp159.i.i = icmp ult i32 %ch.0312.i.i, 14
  br i1 %cmp159.i.i, label %if.then161.i.i, label %for.body156.i.i.if.end166.i.i_crit_edge

for.body156.i.i.if.end166.i.i_crit_edge:          ; preds = %for.body156.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166.i.i

if.then161.i.i:                                   ; preds = %for.body156.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx163.i.i = getelementptr [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 0, i32 %conv158.i.i
  %322 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx163.i.i, align 1
  %arrayidx165.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 38, i32 0, i32 %ch.0312.i.i
  %324 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx165.i.i, align 1
  br label %if.end166.i.i

if.end166.i.i:                                    ; preds = %if.then161.i.i, %for.body156.i.i.if.end166.i.i_crit_edge
  %arrayidx168.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 0, i32 %conv158.i.i
  %325 = ptrtoint ptr %arrayidx168.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx168.i.i, align 1
  %arrayidx170.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 39, i32 0, i32 %ch.0312.i.i
  %327 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %arrayidx170.i.i, align 1
  %arrayidx172.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 0, i32 %conv158.i.i
  %328 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx172.i.i, align 1
  %arrayidx174.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 42, i32 0, i32 %ch.0312.i.i
  %330 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %arrayidx174.i.i, align 1
  %arrayidx176.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 0, i32 %conv158.i.i
  %331 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx176.i.i, align 1
  %arrayidx178.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 44, i32 0, i32 %ch.0312.i.i
  %333 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %arrayidx178.i.i, align 1
  %arrayidx180.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 0, i32 %conv158.i.i
  %334 = ptrtoint ptr %arrayidx180.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx180.i.i, align 1
  %arrayidx182.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 36, i32 0, i32 %ch.0312.i.i
  %336 = ptrtoint ptr %arrayidx182.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %arrayidx182.i.i, align 1
  %arrayidx184.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 0, i32 %conv158.i.i
  %337 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx184.i.i, align 1
  %arrayidx186.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 37, i32 0, i32 %ch.0312.i.i
  %339 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %338, ptr %arrayidx186.i.i, align 1
  %340 = load i8, ptr %arrayidx168.i.i, align 1
  %arrayidx191.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 2, i32 0, i32 %conv158.i.i
  %341 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx191.i.i, align 1
  %343 = call i8 @llvm.usub.sat.i8(i8 %340, i8 %342) #6
  %arrayidx203.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 40, i32 0, i32 %ch.0312.i.i
  %344 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %arrayidx203.i.i, align 1
  %inc205.i.i = add nuw nsw i32 %ch.0312.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc205.i.i, 59
  br i1 %exitcond.not.i.i, label %if.end166.i.i.for.body156.1.i.i_crit_edge, label %if.end166.i.i.for.body156.i.i_crit_edge

if.end166.i.i.for.body156.i.i_crit_edge:          ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body156.i.i

if.end166.i.i.for.body156.1.i.i_crit_edge:        ; preds = %if.end166.i.i
  br label %for.body156.1.i.i

for.body156.1.i.i:                                ; preds = %if.end166.1.i.i.for.body156.1.i.i_crit_edge, %if.end166.i.i.for.body156.1.i.i_crit_edge
  %ch.0312.1.i.i = phi i32 [ %inc205.1.i.i, %if.end166.1.i.i.for.body156.1.i.i_crit_edge ], [ 0, %if.end166.i.i.for.body156.1.i.i_crit_edge ]
  %conv157.1.i.i = trunc i32 %ch.0312.1.i.i to i8
  %call.1.i.i = call zeroext i8 @rtl92d_get_chnlgroup_fromarray(i8 noundef zeroext %conv157.1.i.i) #6
  %conv158.1.i.i = zext i8 %call.1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %ch.0312.1.i.i)
  %cmp159.1.i.i = icmp ult i32 %ch.0312.1.i.i, 14
  br i1 %cmp159.1.i.i, label %if.then161.1.i.i, label %for.body156.1.i.i.if.end166.1.i.i_crit_edge

for.body156.1.i.i.if.end166.1.i.i_crit_edge:      ; preds = %for.body156.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166.1.i.i

if.then161.1.i.i:                                 ; preds = %for.body156.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx163.1.i.i = getelementptr [2 x [12 x i8]], ptr %pwrinfo.i.i, i32 0, i32 1, i32 %conv158.1.i.i
  %345 = ptrtoint ptr %arrayidx163.1.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx163.1.i.i, align 1
  %arrayidx165.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 38, i32 1, i32 %ch.0312.1.i.i
  %347 = ptrtoint ptr %arrayidx165.1.i.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %arrayidx165.1.i.i, align 1
  br label %if.end166.1.i.i

if.end166.1.i.i:                                  ; preds = %if.then161.1.i.i, %for.body156.1.i.i.if.end166.1.i.i_crit_edge
  %arrayidx168.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 1, i32 1, i32 %conv158.1.i.i
  %348 = ptrtoint ptr %arrayidx168.1.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx168.1.i.i, align 1
  %arrayidx170.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 39, i32 1, i32 %ch.0312.1.i.i
  %350 = ptrtoint ptr %arrayidx170.1.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %arrayidx170.1.i.i, align 1
  %arrayidx172.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 3, i32 1, i32 %conv158.1.i.i
  %351 = ptrtoint ptr %arrayidx172.1.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx172.1.i.i, align 1
  %arrayidx174.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 42, i32 1, i32 %ch.0312.1.i.i
  %353 = ptrtoint ptr %arrayidx174.1.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %352, ptr %arrayidx174.1.i.i, align 1
  %arrayidx176.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 4, i32 1, i32 %conv158.1.i.i
  %354 = ptrtoint ptr %arrayidx176.1.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx176.1.i.i, align 1
  %arrayidx178.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 44, i32 1, i32 %ch.0312.1.i.i
  %356 = ptrtoint ptr %arrayidx178.1.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %arrayidx178.1.i.i, align 1
  %arrayidx180.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 6, i32 1, i32 %conv158.1.i.i
  %357 = ptrtoint ptr %arrayidx180.1.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx180.1.i.i, align 1
  %arrayidx182.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 36, i32 1, i32 %ch.0312.1.i.i
  %359 = ptrtoint ptr %arrayidx182.1.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %358, ptr %arrayidx182.1.i.i, align 1
  %arrayidx184.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 5, i32 1, i32 %conv158.1.i.i
  %360 = ptrtoint ptr %arrayidx184.1.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx184.1.i.i, align 1
  %arrayidx186.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 37, i32 1, i32 %ch.0312.1.i.i
  %362 = ptrtoint ptr %arrayidx186.1.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %361, ptr %arrayidx186.1.i.i, align 1
  %363 = load i8, ptr %arrayidx168.1.i.i, align 1
  %arrayidx191.1.i.i = getelementptr %struct.txpower_info, ptr %pwrinfo.i.i, i32 0, i32 2, i32 1, i32 %conv158.1.i.i
  %364 = ptrtoint ptr %arrayidx191.1.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx191.1.i.i, align 1
  %366 = call i8 @llvm.usub.sat.i8(i8 %363, i8 %365) #6
  %arrayidx203.1.i.i = getelementptr %struct.rtl_priv, ptr %67, i32 0, i32 17, i32 40, i32 1, i32 %ch.0312.1.i.i
  %367 = ptrtoint ptr %arrayidx203.1.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %arrayidx203.1.i.i, align 1
  %inc205.1.i.i = add nuw nsw i32 %ch.0312.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc205.1.i.i, 59
  br i1 %exitcond.1.not.i.i, label %_rtl92de_read_txpower_info.exit.i, label %if.end166.1.i.i.for.body156.1.i.i_crit_edge

if.end166.1.i.i.for.body156.1.i.i_crit_edge:      ; preds = %if.end166.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body156.1.i.i

_rtl92de_read_txpower_info.exit.i:                ; preds = %if.end166.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 174, ptr nonnull %pwrinfo.i.i) #6
  %bandset.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 10, i32 55
  %368 = ptrtoint ptr %bandset.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %bandset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %369)
  %370 = icmp ult i32 %369, 3
  %switch.cast37 = trunc i32 %369 to i24
  %switch.shiftamt38 = shl i24 %switch.cast37, 3
  %switch.downshift39 = lshr i24 8, %switch.shiftamt38
  %switch.masked40 = trunc i24 %switch.downshift39 to i8
  %.sink.i = select i1 %370, i8 %switch.masked40, i8 0
  %channel_plan22.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 65
  %371 = ptrtoint ptr %channel_plan22.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %.sink.i, ptr %channel_plan22.i, align 1
  %txpwr_fromeprom.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 17, i32 23
  %372 = ptrtoint ptr %txpwr_fromeprom.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 1, ptr %txpwr_fromeprom.i, align 4
  br label %exit.i

exit.i:                                           ; preds = %_rtl92de_read_txpower_info.exit.i, %if.end.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %_rtl92de_read_adapter_info.exit

_rtl92de_read_adapter_info.exit:                  ; preds = %exit.i, %if.then9._rtl92de_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #6
  br label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end, %_rtl92de_read_adapter_info.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %value.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !159
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
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %6 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ht_cap.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #6
  %8 = getelementptr inbounds [2 x i32], ptr %value.i, i32 0, i32 1
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %mimo_ps14.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 28, i32 9
  %9 = ptrtoint ptr %mimo_ps14.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mimo_ps14.i, align 1
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %11 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opmode.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %14, label %if.then.if.end27.i_crit_edge [
    i32 2, label %if.then.i
    i32 3, label %if.then.if.then24.i_crit_edge
    i32 1, label %if.then.if.then24.i_crit_edge19
  ]

if.then.if.then24.i_crit_edge19:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.then.if.then24.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.then.if.end27.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %16 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bw_40.i, align 1
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.then.if.then24.i_crit_edge, %if.then.if.then24.i_crit_edge19
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %18 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %aid.i, align 2
  %20 = add i16 %19, 1
  %21 = and i16 %20, 255
  %phi.cast.i = zext i16 %21 to i32
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.then.i, %if.then.if.end27.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %17, %if.then.i ], [ %conv.i, %if.then24.i ], [ %conv.i, %if.then.if.end27.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then24.i ], [ 0, %if.then.if.end27.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %22 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp28.i = icmp eq i32 %23, 1
  br i1 %cmp28.i, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %25, 4
  br label %if.end34.i

if.else31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sta, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else31.i, %if.then30.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then30.i ], [ %27, %if.else31.i ]
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx36.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %29 to i32
  %shl38.i = shl nuw nsw i32 %conv37.i, 20
  %30 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mcs.i, align 1
  %conv43.i = zext i8 %31 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 12
  %or.i = or i32 %shl38.i, %ratr_bitmap.0.i
  %or45.i = or i32 %or.i, %shl44.i
  %32 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %12, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb53.i
    i16 1, label %sw.bb69.i
    i16 16, label %if.end34.i.if.end76.i_crit_edge
    i16 32, label %if.else75.i
  ]

if.end34.i.if.end76.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

sw.bb.i:                                          ; preds = %if.end34.i
  %and46.i = and i32 %ratr_bitmap.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else50.i, label %if.then48.i

if.then48.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %and49.i = and i32 %ratr_bitmap.0.i, 13
  br label %sw.epilog.i

if.else50.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %and51.i = and i32 %ratr_bitmap.0.i, 15
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end34.i
  %33 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %rssi_level, label %if.else65.i [
    i8 1, label %if.then57.i
    i8 2, label %if.then63.i
  ]

if.then57.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #8
  %and58.i = and i32 %ratr_bitmap.0.i, 3840
  br label %sw.epilog.i

if.then63.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #8
  %and64.i = and i32 %ratr_bitmap.0.i, 4080
  br label %sw.epilog.i

if.else65.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #8
  %and66.i = and i32 %ratr_bitmap.0.i, 4085
  br label %sw.epilog.i

sw.bb69.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %and70.i = and i32 %ratr_bitmap.0.i, 4080
  br label %sw.epilog.i

if.else75.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else75.i, %if.end34.i.if.end76.i_crit_edge
  %ratr_index.0.i = phi i8 [ 1, %if.else75.i ], [ 0, %if.end34.i.if.end76.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp78.i = icmp eq i8 %10, 2
  br i1 %cmp78.i, label %if.then80.i, label %if.else96.i

if.then80.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp.i = icmp eq i8 %rssi_level, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 520192, i32 520197
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp8.i = icmp eq i8 %rssi_level, 1
  %switch.select9.i = select i1 %switch.selectcmp8.i, i32 458752, i32 %switch.select.i
  br label %if.end176.i

if.else96.i:                                      ; preds = %if.end76.i
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %34 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %switch.i = icmp ult i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool106.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  br i1 %switch.i, label %if.then105.i, label %if.else140.i

if.then105.i:                                     ; preds = %if.else96.i
  br i1 %tobool106.not.i, label %if.else123.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp10.i = icmp eq i8 %rssi_level, 2
  %switch.select11.i = select i1 %switch.selectcmp10.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp12.i = icmp eq i8 %rssi_level, 1
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 983040, i32 %switch.select11.i
  br label %if.end176.i

if.else123.i:                                     ; preds = %if.then105.i
  %36 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %rssi_level, label %if.else135.i [
    i8 1, label %if.then127.i
    i8 2, label %if.then133.i
  ]

if.then127.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #8
  %and128.i = and i32 %or45.i, 983040
  br label %lor.lhs.false181.i

if.then133.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #8
  %and134.i = and i32 %or45.i, 1044480
  br label %lor.lhs.false181.i

if.else135.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #8
  %and136.i = and i32 %or45.i, 1044485
  br label %lor.lhs.false181.i

if.else140.i:                                     ; preds = %if.else96.i
  br i1 %tobool106.not.i, label %if.else158.i, label %if.then142.i

if.then142.i:                                     ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp14.i = icmp eq i8 %rssi_level, 2
  %switch.select15.i = select i1 %switch.selectcmp14.i, i32 252702720, i32 252702741
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp16.i = icmp eq i8 %rssi_level, 1
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 252641280, i32 %switch.select15.i
  br label %if.end176.i

if.else158.i:                                     ; preds = %if.else140.i
  %37 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %rssi_level, label %if.else170.i [
    i8 1, label %if.then162.i
    i8 2, label %if.then168.i
  ]

if.then162.i:                                     ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #8
  %and163.i = and i32 %or45.i, 252641280
  br label %lor.lhs.false181.i

if.then168.i:                                     ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #8
  %and169.i = and i32 %or45.i, 252702720
  br label %lor.lhs.false181.i

if.else170.i:                                     ; preds = %if.else158.i
  call void @__sanitizer_cov_trace_pc() #8
  %and171.i = and i32 %or45.i, 252702725
  br label %lor.lhs.false181.i

if.end176.i:                                      ; preds = %if.then142.i, %if.then107.i, %if.then80.i
  %.sink.i = phi i32 [ %switch.select9.i, %if.then80.i ], [ %switch.select13.i, %if.then107.i ], [ %switch.select17.i, %if.then142.i ]
  %and112.i = and i32 %.sink.i, %or45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool178.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  %38 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool180.not.i = icmp eq i16 %38, 0
  %or.cond.i = select i1 %tobool178.not.i, i1 true, i1 %tobool180.not.i
  br i1 %or.cond.i, label %if.end176.i.lor.lhs.false181.i_crit_edge, label %if.end176.i.if.then186.i_crit_edge

if.end176.i.if.then186.i_crit_edge:               ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then186.i

if.end176.i.lor.lhs.false181.i_crit_edge:         ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false181.i

lor.lhs.false181.i:                               ; preds = %if.end176.i.lor.lhs.false181.i_crit_edge, %if.else170.i, %if.then168.i, %if.then162.i, %if.else135.i, %if.then133.i, %if.then127.i
  %ratr_bitmap.17.i = phi i32 [ %and112.i, %if.end176.i.lor.lhs.false181.i_crit_edge ], [ %and171.i, %if.else170.i ], [ %and169.i, %if.then168.i ], [ %and163.i, %if.then162.i ], [ %and136.i, %if.else135.i ], [ %and134.i, %if.then133.i ], [ %and128.i, %if.then127.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool182.not.i = icmp ne i8 %curtxbw_40mhz.0.i, 0
  %39 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool185.not.i = icmp eq i16 %39, 0
  %or.cond1.i = select i1 %tobool182.not.i, i1 true, i1 %tobool185.not.i
  br i1 %or.cond1.i, label %lor.lhs.false181.i.sw.epilog.i_crit_edge, label %lor.lhs.false181.i.if.then186.i_crit_edge

lor.lhs.false181.i.if.then186.i_crit_edge:        ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then186.i

lor.lhs.false181.i.sw.epilog.i_crit_edge:         ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then186.i:                                     ; preds = %lor.lhs.false181.i.if.then186.i_crit_edge, %if.end176.i.if.then186.i_crit_edge
  %ratr_bitmap.16.i = phi i32 [ %ratr_bitmap.17.i, %lor.lhs.false181.i.if.then186.i_crit_edge ], [ %and112.i, %if.end176.i.if.then186.i_crit_edge ]
  %trunc.i = trunc i32 %macid.0.i to i16
  %40 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %trunc.i, label %sw.epilog.fold.split.i [
    i16 0, label %if.then186.i.sw.epilog.i_crit_edge
    i16 1, label %if.then195.i
  ]

if.then186.i.sw.epilog.i_crit_edge:               ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then195.i:                                     ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end34.i
  %rf_type199.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %41 = ptrtoint ptr %rf_type199.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rf_type199.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp201.i = icmp eq i8 %42, 1
  br i1 %cmp201.i, label %if.then203.i, label %if.else205.i

if.then203.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %and204.i = and i32 %or45.i, 1044735
  br label %sw.epilog.i

if.else205.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %and206.i = and i32 %or45.i, 252702975
  br label %sw.epilog.i

sw.epilog.fold.split.i:                           ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.fold.split.i, %if.else205.i, %if.then203.i, %if.then195.i, %if.then186.i.sw.epilog.i_crit_edge, %lor.lhs.false181.i.sw.epilog.i_crit_edge, %sw.bb69.i, %if.else65.i, %if.then63.i, %if.then57.i, %if.else50.i, %if.then48.i
  %ratr_bitmap.2.i = phi i32 [ %and204.i, %if.then203.i ], [ %and206.i, %if.else205.i ], [ %ratr_bitmap.16.i, %if.then195.i ], [ %ratr_bitmap.17.i, %lor.lhs.false181.i.sw.epilog.i_crit_edge ], [ %and70.i, %sw.bb69.i ], [ %and58.i, %if.then57.i ], [ %and64.i, %if.then63.i ], [ %and66.i, %if.else65.i ], [ %and49.i, %if.then48.i ], [ %and51.i, %if.else50.i ], [ %ratr_bitmap.16.i, %if.then186.i.sw.epilog.i_crit_edge ], [ %ratr_bitmap.16.i, %sw.epilog.fold.split.i ]
  %ratr_index.1.i = phi i8 [ 0, %if.then203.i ], [ 0, %if.else205.i ], [ %ratr_index.0.i, %if.then195.i ], [ %ratr_index.0.i, %lor.lhs.false181.i.sw.epilog.i_crit_edge ], [ 5, %sw.bb69.i ], [ 4, %if.then57.i ], [ 4, %if.then63.i ], [ 4, %if.else65.i ], [ 6, %if.then48.i ], [ 6, %if.else50.i ], [ %ratr_index.0.i, %if.then186.i.sw.epilog.i_crit_edge ], [ %ratr_index.0.i, %sw.epilog.fold.split.i ]
  %shortgi.0.off0.i = phi i32 [ 0, %if.then203.i ], [ 0, %if.else205.i ], [ 0, %if.then195.i ], [ 0, %lor.lhs.false181.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb69.i ], [ 0, %if.then57.i ], [ 0, %if.then63.i ], [ 0, %if.else65.i ], [ 0, %if.then48.i ], [ 0, %if.else50.i ], [ 32, %if.then186.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.fold.split.i ]
  %conv209.i = zext i8 %ratr_index.1.i to i32
  %shl210.i = shl nuw nsw i32 %conv209.i, 28
  %or211.i = or i32 %shl210.i, %ratr_bitmap.2.i
  %43 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or211.i, ptr %value.i, align 4
  %or217.i = or i32 %macid.0.i, %shortgi.0.off0.i
  %or218.i = or i32 %or217.i, 128
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or218.i, ptr %8, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.68, i32 noundef %ratr_bitmap.2.i, i32 noundef %or211.i, i32 noundef %or218.i) #6
  call void @rtl92d_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 6, i32 noundef 5, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %macid.0.i)
  %cmp224.not.i = icmp eq i32 %macid.0.i, 0
  br i1 %cmp224.not.i, label %sw.epilog.i.rtl92de_update_hal_rate_mask.exit_crit_edge, label %if.then226.i

sw.epilog.i.rtl92de_update_hal_rate_mask.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_update_hal_rate_mask.exit

if.then226.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %ratr_index227.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %45 = ptrtoint ptr %ratr_index227.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %ratr_index.1.i, ptr %ratr_index227.i, align 1
  br label %rtl92de_update_hal_rate_mask.exit

rtl92de_update_hal_rate_mask.exit:                ; preds = %if.then226.i, %sw.epilog.i.rtl92de_update_hal_rate_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %46 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %48 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %50 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %52 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %54 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i = icmp eq i32 %55, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %57, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %59, %if.else.i ]
  %mcs.i12 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx17.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %61 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 20
  %62 = ptrtoint ptr %mcs.i12 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mcs.i12, align 1
  %conv24.i = zext i8 %63 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 12
  %or.i13 = or i32 %shl19.i, %ratr_value.0.i
  %or26.i = or i32 %or.i13, %shl25.i
  %64 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %53, label %sw.default.i16 [
    i16 1, label %sw.bb.i14
    i16 2, label %sw.bb28.i
    i16 4, label %sw.bb36.i
    i16 16, label %if.end.i.if.else44.i_crit_edge
    i16 32, label %if.end.i.if.else44.i_crit_edge20
  ]

if.end.i.if.else44.i_crit_edge20:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else44.i

if.end.i.if.else44.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else44.i

sw.bb.i14:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and27.i = and i32 %ratr_value.0.i, 4080
  br label %sw.epilog.i17

sw.bb28.i:                                        ; preds = %if.end.i
  %and29.i = and i32 %ratr_value.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else33.i, label %if.then31.i

if.then31.i:                                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #8
  %and32.i = and i32 %ratr_value.0.i, 13
  br label %sw.epilog.i17

if.else33.i:                                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #8
  %and34.i = and i32 %ratr_value.0.i, 15
  br label %sw.epilog.i17

sw.bb36.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and37.i = and i32 %ratr_value.0.i, 4085
  br label %sw.epilog.i17

if.else44.i:                                      ; preds = %if.end.i.if.else44.i_crit_edge, %if.end.i.if.else44.i_crit_edge20
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %65 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %67 = icmp ult i8 %66, 2
  %ratr_mask.0.i = select i1 %67, i32 1044485, i32 252702725
  %and55.i = and i32 %ratr_mask.0.i, %or26.i
  br label %land.lhs.true.i

sw.default.i16:                                   ; preds = %if.end.i
  %rf_type.i15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %68 = ptrtoint ptr %rf_type.i15 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rf_type.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp58.i = icmp eq i8 %69, 1
  br i1 %cmp58.i, label %if.then60.i, label %if.else62.i

if.then60.i:                                      ; preds = %sw.default.i16
  call void @__sanitizer_cov_trace_pc() #8
  %and61.i = and i32 %or26.i, 1044735
  br label %sw.epilog.i17

if.else62.i:                                      ; preds = %sw.default.i16
  call void @__sanitizer_cov_trace_pc() #8
  %and63.i = and i32 %or26.i, 252702975
  br label %sw.epilog.i17

sw.epilog.i17:                                    ; preds = %if.else62.i, %if.then60.i, %sw.bb36.i, %if.else33.i, %if.then31.i, %sw.bb.i14
  %ratr_value.1.i = phi i32 [ %and61.i, %if.then60.i ], [ %and63.i, %if.else62.i ], [ %and37.i, %sw.bb36.i ], [ %and32.i, %if.then31.i ], [ %and34.i, %if.else33.i ], [ %and27.i, %sw.bb.i14 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool67.not.i = icmp eq i8 %47, 0
  br i1 %tobool67.not.i, label %sw.epilog.i17.if.end100.i_crit_edge, label %sw.epilog.i17.land.lhs.true.i_crit_edge

sw.epilog.i17.land.lhs.true.i_crit_edge:          ; preds = %sw.epilog.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

sw.epilog.i17.if.end100.i_crit_edge:              ; preds = %sw.epilog.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i17.land.lhs.true.i_crit_edge, %if.else44.i
  %and65145.i = phi i32 [ %and55.i, %if.else44.i ], [ %ratr_value.1.i, %sw.epilog.i17.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool69.not.i = icmp eq i8 %49, 0
  %70 = and i16 %51, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool72.not.i = icmp eq i16 %70, 0
  %or.cond.i18 = select i1 %tobool69.not.i, i1 true, i1 %tobool72.not.i
  br i1 %or.cond.i18, label %lor.lhs.false73.i, label %land.lhs.true.i.if.then78.i_crit_edge

land.lhs.true.i.if.then78.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78.i

lor.lhs.false73.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool74.not.i = icmp ne i8 %49, 0
  %71 = and i16 %51, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool77.not.i = icmp eq i16 %71, 0
  %or.cond137.i = select i1 %tobool74.not.i, i1 true, i1 %tobool77.not.i
  br i1 %or.cond137.i, label %lor.lhs.false73.i.if.end100.i_crit_edge, label %lor.lhs.false73.i.if.then78.i_crit_edge

lor.lhs.false73.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78.i

lor.lhs.false73.i.if.end100.i_crit_edge:          ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.i

if.then78.i:                                      ; preds = %lor.lhs.false73.i.if.then78.i_crit_edge, %land.lhs.true.i.if.then78.i_crit_edge
  %or79.i = or i32 %and65145.i, 268435456
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then78.i, %lor.lhs.false73.i.if.end100.i_crit_edge, %sw.epilog.i17.if.end100.i_crit_edge
  %ratr_value.2.i = phi i32 [ %and65145.i, %lor.lhs.false73.i.if.end100.i_crit_edge ], [ %ratr_value.1.i, %sw.epilog.i17.if.end100.i_crit_edge ], [ %or79.i, %if.then78.i ]
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %72 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %73(ptr noundef %1, i32 noundef 1092, i32 noundef %ratr_value.2.i) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %write_readback.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i.i, label %if.end100.i.rtl92de_update_hal_rate_table.exit_crit_edge, label %if.then.i.i

if.end100.i.rtl92de_update_hal_rate_table.exit_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl92de_update_hal_rate_table.exit

if.then.i.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %78 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %79(ptr noundef %1, i32 noundef 1092) #6
  br label %rtl92de_update_hal_rate_table.exit

rtl92de_update_hal_rate_table.exit:               ; preds = %if.then.i.i, %if.end100.i.rtl92de_update_hal_rate_table.exit_crit_edge
  %read32_sync.i139.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %80 = ptrtoint ptr %read32_sync.i139.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32_sync.i139.i, align 4
  %call.i140.i = tail call i32 %81(ptr noundef %1, i32 noundef 1092) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.69, i32 noundef %call.i140.i) #6
  br label %if.end

if.end:                                           ; preds = %rtl92de_update_hal_rate_table.exit, %rtl92de_update_hal_rate_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sifs_timer = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sifs_timer) #6
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
  tail call void %7(ptr noundef %hw, i8 noundef zeroext 18, ptr noundef %slot_time) #6
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %8 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %. = select i1 %tobool.not, i16 2570, i16 4112
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
  call void %16(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92de_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %being_init_adapter, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %swrf_processing = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %swrf_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %swrf_processing, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.body7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfchange_inprogress, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call8) #6
  br label %cleanup

if.else:                                          ; preds = %do.body7
  %8 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call8) #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 67) #6
  %11 = and i8 %call.i, -9
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %11) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.rtl_write_byte.exit_crit_edge, label %if.then.i

if.else.rtl_write_byte.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i124 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 67) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.else.rtl_write_byte.exit_crit_edge
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i126 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 66) #6
  %22 = and i8 %call.i126, 8
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %23 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hwradiooff, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not = icmp eq i8 %22, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %if.else32, label %rtl_write_byte.exit.do.body45_crit_edge

rtl_write_byte.exit.do.body45_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.else32:                                        ; preds = %rtl_write_byte.exit
  %or.cond122 = select i1 %tobool26.not, i1 %tobool25.not, i1 false
  br i1 %or.cond122, label %if.else32.do.body45_crit_edge, label %if.else62

if.else32.do.body45_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

do.body45:                                        ; preds = %if.else32.do.body45_crit_edge, %rtl_write_byte.exit.do.body45_crit_edge
  %.str.29.sink = phi ptr [ @.str.28, %rtl_write_byte.exit.do.body45_crit_edge ], [ @.str.29, %if.else32.do.body45_crit_edge ]
  %storemerge = phi i8 [ 0, %rtl_write_byte.exit.do.body45_crit_edge ], [ 1, %if.else32.do.body45_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.29.sink) #6
  %25 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %hwradiooff, align 4
  br label %if.end85

if.else62:                                        ; preds = %if.else32
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %26 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_rfps_level, align 4
  %and63 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else62.if.end85_crit_edge, label %if.then65

if.else62.if.end85_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then65:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %28 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %29, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then65, %if.else62.if.end85_crit_edge, %do.body45
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #6
  %30 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call77) #6
  %31 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %valid, align 1
  %32 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hwradiooff, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool87.not = icmp eq i8 %33, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then12 ], [ %tobool87.not, %if.end85 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %clear_all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.30) #6
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 0) #6
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 0) #6
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 61)
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 0
  %3 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx20, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 1) #6
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 1) #6
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 1
  %4 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 61)
  %arrayidx20.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx20.1, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 2) #6
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 2) #6
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 2
  %6 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 61)
  %arrayidx20.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20.2, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 3) #6
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 3) #6
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 3
  %8 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 61)
  %arrayidx20.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 3
  %9 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx20.3, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 4) #6
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 4) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.else.do.end_crit_edge
  %conv21 = zext i8 %enc_algo to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv21) #9
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl92de_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %enc_algo.addr.0 = phi i32 [ 2, %do.end ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then31_crit_edge, label %lor.lhs.false

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl92de_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end55

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end55_crit_edge, label %if.else37

if.else34.if.end55_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp38 = icmp eq i32 %19, 3
  br i1 %cmp38, label %if.then40, label %if.else37.if.end55_crit_edge

if.else37.if.end55_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then40:                                        ; preds = %if.else37
  %call41 = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #6
  %conv42 = zext i8 %call41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call41)
  %cmp43 = icmp ugt i8 %call41, 31
  br i1 %cmp43, label %do.end48, label %if.then40.if.end55_crit_edge

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end55:                                         ; preds = %if.then40.if.end55_crit_edge, %if.else37.if.end55_crit_edge, %if.else34.if.end55_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl92de_set_key.cam_const_broad, %if.else34.if.end55_crit_edge ], [ %p_macaddr, %if.else37.if.end55_crit_edge ], [ %p_macaddr, %if.then40.if.end55_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end55_crit_edge ], [ 4, %if.else37.if.end55_crit_edge ], [ %conv42, %if.then40.if.end55_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end55_crit_edge ], [ true, %if.else37.if.end55_crit_edge ], [ true, %if.then40.if.end55_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end55_crit_edge ], [ 0, %if.else37.if.end55_crit_edge ], [ 0, %if.then40.if.end55_crit_edge ]
  %key_len57 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8
  %arrayidx58 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp60 = icmp eq i8 %21, 0
  br i1 %cmp60, label %if.then62, label %if.else69

if.then62:                                        ; preds = %if.end55
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.35, i32 noundef %entry_id.1) #6
  %opmode63 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %22 = ptrtoint ptr %opmode63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp64 = icmp eq i32 %23, 3
  br i1 %cmp64, label %if.then66, label %if.then62.if.end67_crit_edge

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then62.if.end67_crit_edge
  %call68 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #6
  br label %cleanup

if.else69:                                        ; preds = %if.end55
  %24 = ptrtoint ptr %key_len57 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key_len57, align 1
  %conv73 = zext i8 %25 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %conv73) #6
  %key_buf75 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7
  %26 = ptrtoint ptr %key_buf75 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_buf75, align 8
  %conv78 = zext i8 %27 to i32
  %arrayidx82 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %29 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %conv78, i32 noundef %conv83) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.38) #6
  br i1 %is_pairwise.0.off0, label %if.then85, label %if.else97

if.then85:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #8
  %pairwise_key = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 9
  %30 = ptrtoint ptr %pairwise_key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pairwise_key, align 8
  %32 = ptrtoint ptr %key_len57 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_len57, align 1
  %conv90 = zext i8 %33 to i32
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef %31, i32 noundef %conv90) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.40) #6
  %arrayidx94 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call96 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx94) #6
  br label %cleanup

if.else97:                                        ; preds = %if.else69
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.41) #6
  %opmode98 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %34 = ptrtoint ptr %opmode98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %opmode98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp99 = icmp eq i32 %35, 1
  br i1 %cmp99, label %if.then101, label %if.else97.if.end109_crit_edge

if.else97.if.end109_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx106 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call108 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx106) #6
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.else97.if.end109_crit_edge
  %arrayidx113 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call115 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx113) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.then85, %if.end67, %do.end48, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_mark_invalid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_empty_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_get_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_del_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_cam_delete_one_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_add_one_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_suspend(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 248) #6
  %macphyctl_reg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 57
  %4 = ptrtoint ptr %macphyctl_reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call.i, ptr %macphyctl_reg, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92de_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %macphyctl_reg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 57
  %2 = ptrtoint ptr %macphyctl_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %macphyctl_reg, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 248, i8 noundef zeroext %3) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 248) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_poweron(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_config_maccoexist_rfpage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_firmware_selfreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_config_macphymode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_config_macphymode_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92d_get_chnlgroup_fromarray(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92de_get_hw_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92de_get_hw_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 207, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 238, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 252, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 287, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 321, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 338, i32 5}
!18 = !{ptr @rtl92de_set_hw_reg._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92de_set_hw_reg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 343, i32 3}
!22 = !{ptr @rtl92de_set_hw_reg._entry.10, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 479, i32 3}
!24 = !{ptr @rtl92de_set_hw_reg._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 854, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 859, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 870, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 897, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rtl92de_hw_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rtl92de_hw_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 905, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 917, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1159, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1331, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1373, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1386, i32 2}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1774, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1777, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1781, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1786, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rtl92de_read_eeprom_info._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtl92de_read_eeprom_info._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2062, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2068, i32 3}
!63 = !{ptr @rtl92de_set_key.cam_const_addr, !64, !"cam_const_addr", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2099, i32 12}
!65 = !{ptr @rtl92de_set_key.cam_const_broad, !66, !"cam_const_broad", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2105, i32 12}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2113, i32 3}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2139, i32 4}
!71 = !{ptr @rtl92de_set_key._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtl92de_set_key._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2156, i32 7}
!75 = !{ptr @rtl92de_set_key._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtl92de_set_key._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2167, i32 4}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2174, i32 4}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2177, i32 4}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2181, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2184, i32 5}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2189, i32 5}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2197, i32 5}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 498, i32 4}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @_rtl92de_llt_write._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @_rtl92de_llt_write._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1063, i32 3}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1073, i32 3}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1079, i32 3}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1086, i32 3}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1092, i32 3}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1096, i32 3}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @_rtl92de_set_media_status._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @_rtl92de_set_media_status._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1258, i32 2}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1273, i32 2}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1036, i32 3}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1039, i32 3}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1740, i32 2}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1690, i32 3}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1694, i32 3}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1698, i32 3}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1702, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @_rtl92de_efuse_update_chip_version._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @_rtl92de_efuse_update_chip_version._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1658, i32 3}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1662, i32 3}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1563, i32 4}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1615, i32 2}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1617, i32 2}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1619, i32 2}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1621, i32 2}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 2001, i32 2}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/hw.c", i32 1869, i32 2}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
!160 = !{!"auto-init"}
